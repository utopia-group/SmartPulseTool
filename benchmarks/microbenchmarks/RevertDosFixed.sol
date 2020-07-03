pragma solidity ^0.5.0;


//Secure auction that cannot be DoS'd
contract SecureAuction {
  address payable currentFrontrunner;
  uint    currentBid;
  //Store refunds in mapping to avoid DoS
  mapping(address => uint) refunds;

  //Avoids "pushing" balance to users favoring "pull" architecture
  function bid() payable public {
    require(msg.value > currentBid);

    if (currentFrontrunner != address(0)) {
      refunds[currentFrontrunner] += currentBid;
    }

    currentFrontrunner = msg.sender;
    currentBid         = msg.value;
  }

  //Allows users to get their refund from auction
  function withdraw() public {
    //Do all state manipulation before external call to
    //avoid reentrancy attack
    uint refund = refunds[msg.sender];
    refunds[msg.sender] = 0;

    msg.sender.transfer(refund);
  }
}

