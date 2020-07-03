pragma solidity >=0.5.0;

// Abstract contract for a not yet agreed upon standard for non-fungible
// on chain goods

interface Asset {
    function owner(uint _recordId) external returns (address ownerAddress);

    function setOwner(uint _recordId, address _newOwner) external returns (bool success);    
}

