pragma solidity ^0.5.0;

contract CrowdFund {
  mapping(address => uint) public refundAmount;
  bool closed = false;

  function buy() payable public {
    require(!closed);
    require(msg.value > 0); 
    
    refundAmount[msg.sender] += msg.value;
  }

  function close() public {
    require(!closed);
    closed = true;
  }

  function refund() public {
    require(closed);
    uint refund = refundAmount[msg.sender];
    refundAmount[msg.sender] = 0;
    msg.sender.transfer(refund);
  }
}

