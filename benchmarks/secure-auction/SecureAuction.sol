pragma solidity >=0.4.15;

// Liveness Property 1: A user can always out-bid the frontrunner if
// they call bid with an amount greater than the currentBid.
// *** This property holds for this contract ***

// Liveness Property 2: Withdraw always succeeds when called from a
// user with a pending refund.
// *** This property seems to hold ***

//Secure auction that cannot be DoS'd
contract SecureAuction {
  address currentFrontrunner;
  uint    currentBid;
  //Store refunds in mapping to avoid DoS
  mapping(address => uint) refunds;

  //Avoids "pushing" balance to users favoring "pull" architecture
  function bid() payable external {
    require(msg.value > currentBid);

    if (currentFrontrunner != address(0)) {
      refunds[currentFrontrunner] += currentBid;
    }

    currentFrontrunner = msg.sender;
    currentBid         = msg.value;
  }

  //Allows users to get their refund from auction
  function withdraw() external {
    //Do all state manipulation before external call to
    //avoid reentrancy attack
    uint refund = refunds[msg.sender];
    refunds[msg.sender] = 0;

    msg.sender.transfer(refund);
  }
}
