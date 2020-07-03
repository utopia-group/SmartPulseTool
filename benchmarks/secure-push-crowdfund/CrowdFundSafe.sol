pragma solidity >=0.4.15;

// Property: refundSafe always succeeds.

// *** This property holds ***

// TODO: Maybe we can add another property that non-malicious donors
// eventually get their refunds if refundSafe is called infinitely
// often.
contract CrowdFundSafe {
  address payable [] private refundAddresses;
  mapping(address => uint) public refundAmount;
  uint256 nextIdx;

  function donate() public payable {
    require(msg.value > 0);

    if (refundAmount[msg.sender] == 0) {
      refundAddresses.push(msg.sender);
    }

    refundAmount[msg.sender] += msg.value;
  }
  
  function refundSafe() public {
    uint256 i = nextIdx;
    while(i < refundAddresses.length &&
          // TODO 1: How expensive is to send the refund should be
          // part of the environment.
          // TODO 2: Would it be possible to automatically summarize
          // the fallbacks for which this contract is safe to use?
          gasleft() > 200000) {
      address payable refundAddress = refundAddresses[i];
      // Ignores malicious donators
      refundAddress.send(refundAmount[refundAddress]);
      i++;
    }
    nextIdx = i;
  }
}
