/**
 *Submitted for verification at Etherscan.io on 2017-02-22
*/

// This multisignature wallet is based on the wallet contract by Gav Wood.
// Only one single change was made: The contract creator is not automatically one of the wallet owners.

//sol Wallet
// Multi-sig, daily-limited account proxy/wallet.
// @authors:
// Gav Wood <g@ethdev.com>
// inheritable "property" contract that enables methods to be protected by requiring the acquiescence of either a
// single, or, crucially, each of a number of, designated owners.
// usage:
// use modifiers onlyowner (just own owned) or onlymanyowners(hash), whereby the same hash must be provided by
// some number (specified in constructor) of the set of owners (specified in the constructor, modifiable) before the
// interior is executed.
pragma solidity >=0.5.0;

contract multisig {
    // EVENTS

    // this contract can accept a confirmation, in which case
    // we record owner and operation (hash) alongside it.
    event Confirmation(address owner, uint operation);
    event Revoke(address owner, uint operation);

    // some others are in the case of an owner changing.
    event OwnerChanged(address oldOwner, address newOwner);
    event OwnerAdded(address newOwner);
    event OwnerRemoved(address oldOwner);

    // the last one is emitted if the required signatures change
    event RequirementChanged(uint newRequirement);

    // Funds has arrived into the wallet (record how much).
    event Deposit(address _from, uint value);
    // Single transaction going out of the wallet (record who signed for it, how much, and to whom it's going).
    event SingleTransact(address owner, uint value, address to, bytes data);
    // Multi-sig transaction going out of the wallet (record who signed for it last, the operation hash, how much, and to whom it's going).
    event MultiTransact(address owner, uint operation, uint value, address to, bytes data);
    // Confirmation still needed for a transaction.
    event ConfirmationNeeded(uint operation, address initiator, uint value, address to, bytes data);
}

contract multisigAbi is multisig {
    function isOwner(address _addr) view public returns (bool);

    function hasConfirmed(uint _operation, address _owner) public view returns (bool);

    function confirm(uint _h) public returns(bool);

    // (re)sets the daily limit. needs many of the owners to confirm. doesn't alter the amount already spent today.
    function setDailyLimit(uint _operation, uint _newLimit) public;

    function addOwner(uint _operation, address _owner) public;

    function removeOwner(uint _operation, address _owner) public;

    function changeRequirement(uint _operation, uint _newRequired) public;

    // Revokes a prior confirmation of the given operation
    function revoke(uint _operation) public;

    function changeOwner(uint _operation, address _from, address _to) public;

    function execute(uint _operation, address _to, uint _value, bytes memory _data) public returns(bool);
}

contract WalletLibrary is multisig {
    // TYPES

    // struct for the status of a pending operation.
    struct PendingState {
        uint yetNeeded;
        //uint ownersDone;
        //bool[c_maxOwners] ownersDone;
        bool[] ownersDone;
        uint index;
    }

    // Transaction structure to remember details of transaction lest it need be saved for a later call.
    struct Transaction {
        address to;
        uint value;
        bytes data;
    }

    /******************************
     ***** MULTI OWNED SECTION ****
     ******************************/

    // MODIFIERS

    // simple single-sig function modifier.
    modifier onlyowner {
        if (isOwner(msg.sender))
            _;
    }
    // multi-sig function modifier: the operation must have an intrinsic hash in order
    // that later attempts can be realised as the same underlying operation and
    // thus count as confirmations.
    modifier onlymanyowners(uint _operation) {
        if (confirmAndCheck(_operation))
            _;
    }

    // METHODS

    // constructor is given number of sigs required to do protected "onlymanyowners" transactions
    // as well as the selection of addresses capable of confirming them.
    // change from original: msg.sender is not automatically owner
    function initMultiowned(address[] memory _owners, uint _required) public {
        m_numOwners = _owners.length ;
        m_required = _required;

        for (uint i = 0; i < _owners.length; ++i)
        {
            m_owners[1 + i] = uint(_owners[i]);
            m_ownerIndex[uint(_owners[i])] = 1 + i;
        }
    }

    // Revokes a prior confirmation of the given operation
    function revoke(uint _operation) public {
        uint ownerIndex = m_ownerIndex[uint(msg.sender)];
        // make sure they're an owner
        if (ownerIndex == 0) return;
        //uint ownerIndexBit = 2**ownerIndex;
        PendingState memory pending = m_pending[_operation];
        //if (pending.ownersDone & ownerIndexBit > 0) {
        if (pending.ownersDone[ownerIndex]) {
            pending.yetNeeded++;
            //pending.ownersDone -= ownerIndexBit;
            pending.ownersDone[ownerIndex] = false;
            emit Revoke(msg.sender, _operation);
        }
    }

    // Replaces an owner `_from` with another `_to`.
    function changeOwner(uint _operation, address _from, address _to) public onlymanyowners(_operation) {
        if (isOwner(_to)) return;
        uint ownerIndex = m_ownerIndex[uint(_from)];
        if (ownerIndex == 0) return;

        clearPending();
        m_owners[ownerIndex] = uint(_to);
        m_ownerIndex[uint(_from)] = 0;
        m_ownerIndex[uint(_to)] = ownerIndex;
        emit OwnerChanged(_from, _to);
    }

    function addOwner(uint _operation, address _owner) public onlymanyowners(_operation) {
        if (isOwner(_owner)) return;

        clearPending();
        if (m_numOwners >= c_maxOwners)
            reorganizeOwners();
        if (m_numOwners >= c_maxOwners)
            return;
        m_numOwners++;
        m_owners[m_numOwners] = uint(_owner);
        m_ownerIndex[uint(_owner)] = m_numOwners;
        emit OwnerAdded(_owner);
    }

    function removeOwner(uint _operation, address _owner) public onlymanyowners(_operation) {
        uint ownerIndex = m_ownerIndex[uint(_owner)];
        if (ownerIndex == 0) return;
        if (m_required > m_numOwners - 1) return;

        m_owners[ownerIndex] = 0;
        m_ownerIndex[uint(_owner)] = 0;
        clearPending();
        reorganizeOwners(); //make sure m_numOwner is equal to the number of owners and always points to the optimal free slot
        emit OwnerRemoved(_owner);
    }

    function changeRequirement(uint _operation, uint _newRequired) public onlymanyowners(_operation) {
        if (_newRequired > m_numOwners) return;
        m_required = _newRequired;
        clearPending();
        emit RequirementChanged(_newRequired);
    }

    function isOwner(address _addr) view public returns (bool) {
        return m_ownerIndex[uint(_addr)] > 0;
    }


    function hasConfirmed(uint _operation, address _owner) public view returns (bool) {
        PendingState memory pending = m_pending[_operation];
        uint ownerIndex = m_ownerIndex[uint(_owner)];

        // make sure they're an owner
        if (ownerIndex == 0) return false;

        // determine the bit to set for this owner.
        //uint ownerIndexBit = 2**ownerIndex;
        //return !(pending.ownersDone & ownerIndexBit == 0);
        return pending.ownersDone[ownerIndex];
    }

    // INTERNAL METHODS

    function confirmAndCheck(uint _operation) internal returns (bool) {
        // determine what index the present sender is:
        uint ownerIndex = m_ownerIndex[uint(msg.sender)];
        // make sure they're an owner
        if (ownerIndex == 0) return false;

        PendingState storage pending = m_pending[_operation];
        // if we're not yet working on this operation, switch over and reset the confirmation status.
        if (pending.yetNeeded == 0) {
            // reset count of confirmations needed.
            pending.yetNeeded = m_required;
            // reset which owners have confirmed (none) - set our bitmap to 0.
            delete pending.ownersDone;
            pending.ownersDone.length = c_maxOwners;
            /*for(uint i = 0; i < c_maxOwners; i++) {
                pending.ownersDone[i] = false;
            }*/
            pending.index = m_pendingIndex.length++;
            m_pendingIndex[pending.index] = _operation;
        }
        // determine the bit to set for this owner.
        //uint ownerIndexBit = 2**ownerIndex;
        // make sure we (the message sender) haven't confirmed this operation previously.
        //if (pending.ownersDone & ownerIndexBit == 0) {
        if (!pending.ownersDone[ownerIndex]) {
            emit Confirmation(msg.sender, _operation);
            // ok - check if count is enough to go ahead.
            if (pending.yetNeeded <= 1) {
                // enough confirmations: reset and run interior.
                delete m_pendingIndex[m_pending[_operation].index];
                //delete m_pending[_operation];
                m_pending[_operation].yetNeeded = 0;
                return true;
            }
            else
            {
                // not enough: record that this owner in particular confirmed.
                pending.yetNeeded--;
                //pending.ownersDone |= ownerIndexBit;
                pending.ownersDone[ownerIndex] = true;
            }
        }
    }

    function reorganizeOwners() private {
        uint free = 1;
        while (free < m_numOwners)
        {
            while (free < m_numOwners && m_owners[free] != 0) free++;
            while (m_numOwners > 1 && m_owners[m_numOwners] == 0) m_numOwners--;
            if (free < m_numOwners && m_owners[m_numOwners] != 0 && m_owners[free] == 0)
            {
                m_owners[free] = m_owners[m_numOwners];
                m_ownerIndex[m_owners[free]] = free;
                m_owners[m_numOwners] = 0;
            }
        }
    }

    function clearPending() internal {
        uint length = m_pendingIndex.length;
        for (uint i = 0; i < length; ++i)
            if (m_pendingIndex[i] != 0)
                m_pending[m_pendingIndex[i]].yetNeeded = 0;
                //delete m_pending[m_pendingIndex[i]];
        delete m_pendingIndex;
    }


    /******************************
     ****** DAY LIMIT SECTION *****
     ******************************/

    // MODIFIERS

    // simple modifier for daily limit.
    modifier limitedDaily(uint _value) {
        if (underLimit(_value))
            _;
    }

    // METHODS

    // constructor - stores initial daily limit and records the present day's index.
    function initDaylimit(uint _limit) public {
        m_dailyLimit = _limit;
        m_lastDay = today();
    }
    // (re)sets the daily limit. needs many of the owners to confirm. doesn't alter the amount already spent today.
    function setDailyLimit(uint _operation, uint _newLimit) public onlymanyowners(_operation) {
        m_dailyLimit = _newLimit;
    }
    // resets the amount already spent today. needs many of the owners to confirm.
    function resetSpentToday(uint _operation) public onlymanyowners(_operation) {
        m_spentToday = 0;
    }

    // INTERNAL METHODS

    // checks to see if there is at least `_value` left from the daily limit today. if there is, subtracts it and
    // returns true. otherwise just returns false.
    function underLimit(uint _value) internal onlyowner returns (bool) {
        // reset the spend limit if we're on a different day to last time.
        if (today() > m_lastDay) {
            m_spentToday = 0;
            m_lastDay = today();
        }
        // check to see if there's enough left - if so, subtract and return true.
        // overflow protection                    // dailyLimit check
        if (m_spentToday + _value >= m_spentToday && m_spentToday + _value <= m_dailyLimit) {
            m_spentToday += _value;
            return true;
        }
        return false;
    }

    // determines today's index.
    function today() private view returns (uint) { return now / 1 days; }


    /******************************
     ********* WALLET SECTION *****
     ******************************/

    // METHODS

    // constructor - just pass on the owner array to the multiowned and
    // the limit to daylimit
    function initWallet(address[] memory _owners, uint _required, uint _daylimit) public {
        initMultiowned(_owners, _required);
        initDaylimit(_daylimit) ;
    }

    // kills the contract sending everything to `_to`.
    /*function kill(uint _operation, address payable _to) public onlymanyowners(_operation) {
        selfdestruct(_to);
    }*/

    // Outside-visible transact entry point. Executes transaction immediately if below daily spend limit.
    // If not, goes into multisig process. We provide a hash on return to allow the sender to provide
    // shortcuts for the other confirmations (allowing them to avoid replicating the _to, _value
    // and _data arguments). They still get the option of using them if they want, anyways.
    function execute(uint _operation, address _to, uint _value, bytes memory _data) public onlyowner returns(bool _callValue) {
        // first, take the opportunity to check that we're under the daily limit.
        if (underLimit(_value)) {
            emit SingleTransact(msg.sender, _value, _to, _data);
            // yes - just execute the call.
            //_callValue =_to.call.value(_value)(_data);
            bool success;
            bytes memory data;
            (success, data) =_to.call.value(_value)("");
            _callValue = success;
        } else {
            // determine our operation hash.
            //bytes32 _r = keccak256(abi.encodePacked(msg.data, block.number));
            if (!confirm(_operation) && m_txs[_operation].to == address(0)) {
                m_txs[_operation].to = _to;
                m_txs[_operation].value = _value;
                m_txs[_operation].data = _data;
                emit ConfirmationNeeded(_operation, msg.sender, _value, _to, _data);
            }
        }
    }

    // confirm a transaction through just the hash. we use the previous transactions map, m_txs, in order
    // to determine the body of the transaction from the hash provided.
    function confirm(uint _h) public onlymanyowners(_h) returns (bool) {
        if (m_txs[_h].to != address(0)) {
            //m_txs[_h].to.call.value(m_txs[_h].value)(m_txs[_h].data);
            bool success;
            bytes memory data;
            (success, data) = address(m_txs[_h].to).call.value(m_txs[_h].value)("");
            emit MultiTransact(msg.sender, _h, m_txs[_h].value, m_txs[_h].to, m_txs[_h].data);
            //delete m_txs[_h];
            m_txs[_h].to = address(0);
            return true;
        }
    }

    // INTERNAL METHODS

    function clearWalletPending() internal {
        uint length = m_pendingIndex.length;
        for (uint i = 0; i < length; ++i)
            m_txs[m_pendingIndex[i]].to = address(0);
            //delete m_txs[m_pendingIndex[i]];
        clearPending();
    }

    // FIELDS
    //address constant _walletLibrary = 0x4f2875f631f4fc66b8e051defba0c9f9106d7d5a;
    WalletLibrary constant _walletLibrary = WalletLibrary(0x4f2875F631f4fc66B8E051dEfBA0C9F9106d7D5a);

    // the number of owners that must confirm the same operation before it is run.
    uint m_required;
    // pointer used to find a free slot in m_owners
    uint m_numOwners;

    uint public m_dailyLimit;
    uint public m_spentToday;
    uint public m_lastDay;

    // list of owners
    uint[256] m_owners;
    uint constant c_maxOwners = 250;

    // index on the list of owners to allow reverse lookup
    mapping(uint => uint) m_ownerIndex;
    // the ongoing operations.
    mapping(uint => PendingState) m_pending;
    uint[] m_pendingIndex;

    // pending transactions we have at present.
    mapping (uint => Transaction) m_txs;
}


contract Wallet is multisig {

    // WALLET CONSTRUCTOR
    //   calls the `initWallet` method of the Library in this context
    constructor(address[] memory _owners, uint _required, uint _daylimit) public {
        // Signature of the Wallet Library's init function
        /*bytes4 sig = bytes4(keccak256("initWallet(address[],uint256,uint256)"));
        address target = _walletLibrary;

        // Compute the size of the call data : arrays has 2
        // 32bytes for offset and length, plus 32bytes per element ;
        // plus 2 32bytes for each uint
        uint argarraysize = (2 + _owners.length);
        uint argsize = (2 + argarraysize) * 32;

        assembly {
            // Add the signature first to memory
            mstore(0x0, sig)
            // Add the call data, which is at the end of the
            // code
            codecopy(0x4,  sub(codesize, argsize), argsize)
            // Delegate call to the library
            delegatecall(sub(gas, 10000), target, 0x0, add(argsize, 0x4), 0x0, 0x0)
        }*/

        _walletLibrary.initWallet(_owners, _required, _daylimit);
    }

    // METHODS

    // gets called when no other function matches
    function() external payable {
        // just being sent some cash?
        if (msg.value > 0)
            emit Deposit(msg.sender, msg.value);
        else {
            bool success;
            bytes memory data;
            (success, data) = address(_walletLibrary).call("");
            //_walletLibrary.delegatecall(msg.data);
        }
        /*else if (msg.data.length > 0) {
            bool success;
            bytes memory data;
            (success, data) = address(_walletLibrary).call("");
            //_walletLibrary.delegatecall(msg.data);
        }*/
    }

    // Gets an owner by 0-indexed position (using numOwners as the count)
    function getOwner(uint ownerIndex) public view returns (address) {
        return address(m_owners[ownerIndex + 1]);
    }

    // As return statement unavailable in fallback, explicit the method here

    function hasConfirmed(uint _operation, address _owner) public view returns (bool) {
        //return _walletLibrary.delegatecall(msg.data);
        return _walletLibrary.hasConfirmed(_operation, _owner);
    }

    function isOwner(address _addr) view public returns (bool) {
        //return _walletLibrary.delegatecall(msg.data);
        return _walletLibrary.isOwner(_addr);
    }

    // FIELDS
    //address constant _walletLibrary = 0x4f2875f631f4fc66b8e051defba0c9f9106d7d5a;
    WalletLibrary constant _walletLibrary = WalletLibrary(0x4f2875F631f4fc66B8E051dEfBA0C9F9106d7D5a);

    // the number of owners that must confirm the same operation before it is run.
    uint public m_required;
    // pointer used to find a free slot in m_owners
    uint public m_numOwners;

    uint public m_dailyLimit;
    uint public m_spentToday;
    uint public m_lastDay;

    // list of owners
    uint[256] m_owners;
}
