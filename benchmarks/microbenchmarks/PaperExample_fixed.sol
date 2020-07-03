pragma solidity ^0.5.0;

contract Auction {
  address payable[] private bidders;
  mapping(address => uint) public refunds;
  bool closed = false;
  address payable winner;
  uint public currentBid;
  address owner;
  
  constructor (address _owner) internal {
    owner = _owner;
  }  
  
  function bid() payable public {
    require(!closed && refunds[msg.sender] == 0 && msg.sender != winner);
    require(msg.value > currentBid);
    bidders.push(msg.sender);
    
    refunds[winner] = currentBid;

    winner = msg.sender;
    currentBid = msg.value;
  }

  function close() public {
    require(msg.sender == owner);
    closed = true;
  }

  function withdraw() public {
    require(closed);
    uint refund = refunds[msg.sender];
    refunds[msg.sender] = 0;
    msg.sender.transfer(refund);
  }
}

