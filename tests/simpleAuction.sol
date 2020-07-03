pragma solidity ^0.4.22;

contract SimpleAuction {
    address owner;

    address public highestBidder;
    uint public highestBid;

    bool ended;

    constructor() public {
        owner = msg.sender;
    }

    function bid() public payable {
        if(!ended) {
            require(msg.value > highestBid);
            highestBidder.send(highestBid);
            highestBidder = msg.sender;
            highestBid = msg.value;
        }
    }

    function auctionEnd() public {
        if(!ended && msg.sender == owner) {
            ended = true;
            msg.sender.send(highestBid);
        }
    }
}

