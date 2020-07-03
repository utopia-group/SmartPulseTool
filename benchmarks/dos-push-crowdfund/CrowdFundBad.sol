pragma solidity >=0.4.15;

// Property: (always eventually) refundDos succeeds

// *** This property does not hold due to unbounded data structure ***

contract CrowdFundBad {
  address payable [] private refundAddresses;
  mapping(address => uint) public refundAmount;
  
  function donate() public payable {
    require(msg.value > 0);

    if (refundAmount[msg.sender] == 0) {
      refundAddresses.push(msg.sender);
    }

    refundAmount[msg.sender] += msg.value;
  }

  function refundDos() public {
    for(uint i; i < refundAddresses.length; i++) {
      // Ignore malicious users
      refundAddresses[i].send(refundAmount[refundAddresses[i]]);
    }
  }
}
