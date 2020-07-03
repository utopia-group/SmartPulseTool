pragma solidity >=0.5.0;

// This is the main contract that governs execution of auctions
// of non-fungible on-chain assets. Any user can initiate an auction
// for an item that conforms to the Asset interface described in
// Asset.sol

import "./Asset.sol";

contract AuctionHouse {

    /*struct Bid {
        address bidder;
        uint256 amount;
        uint timestamp;
    }*/

    enum AuctionStatus {Pending, Active, Inactive}

    struct Auction {
        // Location and ownership information of the item for sale
        address seller;
        address contractAddress; // Contract where the item exists
        uint recordId;         // RecordID within the contract as per the Asset interface

        // Auction metadata
        string title;
        string description;      // Optionally markdown formatted?
        uint blockNumberOfDeadline;
        AuctionStatus status;

        // Distribution bonus
        uint distributionCut;    // In percent, ie 10 is a 10% cut to the distribution address
        address distributionAddress; 

        // Pricing
        uint256 startingPrice;   // In wei
        uint256 reservePrice;
        uint256 currentBid;

        //Bid[] bids;
        address[] bidsBidder;
        uint256[] bidsAmount;
        uint[] bidsTimestamp;
    }

    Auction[] public auctions;          // All auctions
    mapping(address => uint[]) public auctionsRunByUser; // Pointer to auctions index for auctions run by this user

    mapping(address => uint[]) public auctionsBidOnByUser; // Pointer to auctions index for auctions this user has bid on

    mapping(address => bool) activeContractRecordConcat;

    mapping(address => uint) refunds;

    address owner;

    // Events
    event AuctionCreated(uint id, string title, uint256 startingPrice, uint256 reservePrice);
    event AuctionActivated(uint id);
    event AuctionCancelled(uint id);
    event BidPlaced(uint auctionId, address bidder, uint256 amount);
    event AuctionEndedWithWinner(uint auctionId, address winningBidder, uint256 amount);
    event AuctionEndedWithoutWinner(uint auctionId, uint256 topBid, uint256 reservePrice);

    event LogFailure(string message);

    modifier onlyOwner {
        require(owner == msg.sender);
        _;
    }

    modifier onlySeller(uint auctionId) {
        require(auctions[auctionId].seller == msg.sender);
        _;
    }

    modifier onlyLive(uint auctionId) {
        /*Auction storage a = auctions[auctionId];
        if (a.status != AuctionStatus.Active) {
            throw;
        }

        // Auction should not be over
        if (block.number >= a.blockNumberOfDeadline) {
            throw;
        }*/

        require(auctions[auctionId].status == AuctionStatus.Active);
        require(block.number < auctions[auctionId].blockNumberOfDeadline);

        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    // Create an auction, transfer the item to this contract, activate the auction
    function createAuction(
                           string memory _title,
                           string memory _description,
                           address _contractAddressOfAsset,
                           uint _recordIdOfAsset,
                           uint _deadline,   // in blocknumber
                           uint256 _startingPrice,
                           uint256 _reservePrice,
                           uint _distributionCut,
                           address _distributionCutAddress) public returns (uint auctionId) {

        // Check to see if the seller owns the asset at the contract
        /*if (!partyOwnsAsset(msg.sender, _contractAddressOfAsset, _recordIdOfAsset)) {
            LogFailure("Seller does not own this asset");
            throw;
        }

        // Check to see if the auction deadline is in the future
        if (block.number >= _deadline) {
            LogFailure("Block number is not in the future");
            throw;
        }

        // Price validations
        if (_startingPrice < 0 || _reservePrice < 0) {
            LogFailure("StartingPrice or ReservePrice was below zero");
            throw;
        }

        // Distribution validations
        if (_distributionCut < 0 || _distributionCut > 100) {
            LogFailure("DistributionCut is invalid");
            throw;
        }

        if (activeContractRecordConcat[strConcat(addrToString(_contractAddressOfAsset), _recordIdOfAsset)] == true) {
            LogFailure("Item already on auction");
            throw;
        }*/

        require(partyOwnsAsset(msg.sender, _contractAddressOfAsset, _recordIdOfAsset), "Seller does not own this asset");
        require(block.number < _deadline, "Block number is not in the future");
        require(_startingPrice >= 0 && _reservePrice >= 0, "StartingPrice or ReservePrice was below zero");
        require(_distributionCut >= 0 && _distributionCut <= 100, "DistributionCut is invalid");
        require(activeContractRecordConcat[_contractAddressOfAsset] == false, "Item already on auction");

        auctionId = auctions.length++;
        Auction storage a = auctions[auctionId];
        a.seller = msg.sender;
        a.contractAddress = _contractAddressOfAsset;
        a.recordId = _recordIdOfAsset;
        a.title = _title;
        a.description = _description;
        a.blockNumberOfDeadline = _deadline;
        a.status = AuctionStatus.Pending;
        a.distributionCut = _distributionCut;
        a.distributionAddress = _distributionCutAddress;
        a.startingPrice = _startingPrice;
        a.reservePrice = _reservePrice;
        a.currentBid = _startingPrice;

        auctionsRunByUser[a.seller].push(auctionId);
        //activeContractRecordConcat[strConcat(addrToString(_contractAddressOfAsset), _recordIdOfAsset)] = true;
        activeContractRecordConcat[_contractAddressOfAsset] = true;

        emit AuctionCreated(auctionId, a.title, a.startingPrice, a.reservePrice);

        return auctionId;
    }

    function partyOwnsAsset(address _party, address _contract, uint _recordId) public returns (bool success) {
        Asset assetContract = Asset(_contract);
        return assetContract.owner(_recordId) == _party;
    }

    /**
     * The auction fields are indexed in the return val as follows
     * [0]  -> Auction.seller
     * [1]  -> Auction.contractAddress
     * [2]  -> Auction.recordId
     * [3]  -> Auction.title
     * [4]  -> Auction.description
     * [5]  -> Auction.blockNumberOfDeadline
     * [6]  -> Auction.distributionCut
     * [7]  -> Auction.distributionAddress
     * [8]  -> Auction.startingPrice
     * [9] -> Auction.reservePrice
     * [10] -> Auction.currentBid
     * [11] -> Auction.bids.length      
     * []  -> Auction.status (Not included right now)
     */
    function getAuction(uint idx) public view returns (address, address, uint, string memory, string memory, uint, uint, address, uint256, uint256, uint256, uint) {
        Auction storage a = auctions[idx];
        /*if (a.seller == 0) {
            throw;
        }*/
        require(a.seller != address(0));

        return (a.seller,
                a.contractAddress,
                a.recordId,
                a.title,
                a.description,
                a.blockNumberOfDeadline,
                a.distributionCut,
                a.distributionAddress,
                a.startingPrice,
                a.reservePrice,
                a.currentBid,
                a.bidsBidder.length
                );
    }

    function getAuctionCount() public view returns (uint) {
        return auctions.length;
    }

    function getStatus(uint idx) public view returns (uint) {
        Auction storage a = auctions[idx];
        return uint(a.status);
    }

    function getAuctionsCountForUser(address addr) public view returns (uint) {
        return auctionsRunByUser[addr].length;
    }

    function getAuctionIdForUserAndIdx(address addr, uint idx) public view returns (uint) {
        return auctionsRunByUser[addr][idx];
    }

    function getActiveContractRecordConcat(address _contractRecordConcat) public view returns (bool) {
        return activeContractRecordConcat[_contractRecordConcat];
    }

    // Checks if this contract address is the owner of the item for the auction
    function activateAuction(uint auctionId) onlySeller(auctionId) public returns (bool){
        Auction storage a = auctions[auctionId];

        //if (!partyOwnsAsset(this, a.contractAddress, a.recordId)) throw;
        require(partyOwnsAsset(address(this), a.contractAddress, a.recordId));

        a.status = AuctionStatus.Active;
        emit AuctionActivated(auctionId);
        return true;
    }

    function cancelAuction(uint auctionId) onlySeller(auctionId) public returns (bool) {
        Auction storage a = auctions[auctionId];

        //if (!partyOwnsAsset(this, a.contractAddress, a.recordId)) throw;
        require(partyOwnsAsset(address(this), a.contractAddress, a.recordId));
        //if (a.currentBid >= a.reservePrice) throw;   // Can't cancel the auction if someone has already outbid the reserve.
        require(a.currentBid < a.reservePrice);

        Asset asset = Asset(a.contractAddress);
        /*if(!asset.setOwner(a.recordId, a.seller)) {
            throw;
        }*/
        require(asset.setOwner(a.recordId, a.seller));

        // Refund to the bidder
        uint bidsLength = a.bidsBidder.length;
        if (bidsLength > 0) {
            //Bid storage topBid = a.bids[bidsLength - 1];
            uint ind = bidsLength - 1;
            refunds[a.bidsBidder[ind]] += a.bidsAmount[ind];

            //activeContractRecordConcat[strConcat(addrToString(a.contractAddress), a.recordId)] = false;
            activeContractRecordConcat[a.contractAddress] = false;
        }

        emit AuctionCancelled(auctionId);
        a.status = AuctionStatus.Inactive;
        return true;
    }

    /* BIDS */
    function getBidCountForAuction(uint auctionId) view public returns (uint) {
        Auction storage a = auctions[auctionId];
        return a.bidsBidder.length;
    }

    function getBidForAuctionByIdx(uint auctionId, uint idx) view public returns (address bidder, uint256 amount, uint timestamp) {
        Auction storage a = auctions[auctionId];
        /*if(idx > a.bids.length - 1) {
            throw;
        }*/
        require(idx < a.bidsBidder.length);

        //Bid storage b = a.bids[idx];
        //return (b.bidder, b.amount, b.timestamp);
        return (a.bidsBidder[idx], a.bidsAmount[idx], a.bidsTimestamp[idx]);
    }

    function placeBid(uint auctionId) payable onlyLive(auctionId) public returns (bool success) {
        uint256 amount = msg.value;
        Auction storage a = auctions[auctionId];

        //if (a.currentBid >= amount) throw;
        require(a.currentBid < amount);

        /*uint bidIdx = a.bids.length++;
        Bid storage b = a.bids[bidIdx];
        b.bidder = msg.sender;
        b.amount = amount;
        b.timestamp = now;*/
        uint bidIdx = a.bidsBidder.length;
        a.bidsBidder.push(msg.sender);
        a.bidsAmount.push(amount);
        a.bidsTimestamp.push(now);
        a.currentBid = amount;

        auctionsBidOnByUser[msg.sender].push(auctionId);

        // Log refunds for the previous bidder
        if (bidIdx > 0) {
            //Bid storage previousBid = a.bids[bidIdx - 1];
            refunds[a.bidsBidder[bidIdx - 1]] += a.bidsAmount[bidIdx - 1];
        }

        emit BidPlaced(auctionId, msg.sender, amount);
        return true;
    }

    function getRefundValue() view public returns (uint) {
        return refunds[msg.sender];
    }

    function withdrawRefund() public {
        uint refund = refunds[msg.sender];
        refunds[msg.sender] = 0;
        if (!msg.sender.send(refund))
            refunds[msg.sender] = refund;
    }

    function endAuction(uint auctionId) public returns (bool success) {
        // Check if the auction is passed the end date
        Auction storage a = auctions[auctionId];
        //activeContractRecordConcat[strConcat(addrToString(a.contractAddress), a.recordId)] = false;
        activeContractRecordConcat[a.contractAddress] = false;

        // Make sure auction hasn't already been ended
        /*if (a.status != AuctionStatus.Active) {
            LogFailure("Can not end an auction that's already ended");
            throw;
        }
        
        if (block.number < a.blockNumberOfDeadline) {
            LogFailure("Can not end an auction that hasn't hit the deadline yet");
            throw; 
        }*/
        require(a.status == AuctionStatus.Active, "Can not end an auction that's already ended");
        require(block.number >= a.blockNumberOfDeadline, "Can not end an auction that hasn't hit the deadline yet");

        Asset asset = Asset(a.contractAddress);

        // No bids, make the auction inactive
        if (a.bidsBidder.length == 0) {
            /*if(!asset.setOwner(a.recordId, a.seller)) {
                throw;
            }*/
            require(asset.setOwner(a.recordId, a.seller));
            a.status = AuctionStatus.Inactive;
            return true;
        }

        uint bidIdx = a.bidsBidder.length - 1;
        address topBidder = a.bidsBidder[bidIdx];
        //Bid storage topBid = a.bids[a.bids.length - 1];

        // If the auction hit its reserve price
        if (a.currentBid >= a.reservePrice) {
            uint distributionShare = a.currentBid * a.distributionCut / 100;  // Calculate the distribution cut
            uint sellerShare = a.currentBid - distributionShare;

            /*if(!asset.setOwner(a.recordId, topBid.bidder)) {
                throw;
            } // Set the items new owner*/
            require(asset.setOwner(a.recordId, topBidder));

            refunds[a.distributionAddress] += distributionShare;
            refunds[a.seller] += sellerShare;

            emit AuctionEndedWithWinner(auctionId, topBidder, a.currentBid);
        } else {
            // Return the item to the owner and the money to the top bidder
            /*if(!asset.setOwner(a.recordId, a.seller)) {
                throw;
            }*/
            require(asset.setOwner(a.recordId, a.seller));

            refunds[topBidder] += a.currentBid;

            emit AuctionEndedWithoutWinner(auctionId, a.currentBid, a.reservePrice);
        }

        a.status = AuctionStatus.Inactive;
        return true;
    }

    function() external {
        // Don't allow ether to be sent blindly to this contract
        //throw;
        revert();
    }

    function strConcat(string memory _a, string memory _b) internal pure returns (string memory) {
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        bytes memory ab = new bytes (_ba.length + _bb.length);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) ab[k++] = _ba[i];
        for (uint i = 0; i < _bb.length; i++) ab[k++] = _bb[i];
        return string(ab);
    }

    function addrToString(address x) internal pure returns (string memory) {
        bytes memory b = new bytes(20);
        for (uint i = 0; i < 20; i++)
            b[i] = byte(uint8(uint(x) / (2**(8*(19 - i)))));
        return string(b);
    }
}

