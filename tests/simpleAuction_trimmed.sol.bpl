// Global declarations and definitions related to the address type
// LTLProperty: []((AP(bidCalled == true) && AP(bidAddr == bidder) && AP(ended#9[contract] == false) && X(AP(bidCalled == false) U AP(ended#9[contract] == true))) ==> <>(AP(fallbackSucceeded == true) && AP(fallbackAmt == highestBid#7[contract]) && AP(fallbackAddr == owner)))
// #LTLProperty: []((AP(a) && X(AP(!b) U AP(c))) ==> <>(AP(d)))
type address_t = int;
const unique __zero__address: address_t;
var __balance: [address_t]int;
type string_t;
var __now: int;

var contract : address_t;
var bidCalled : bool;
var bidAddr : address_t;
var bidAmt : int;
var owner : address_t;
var bidder : address_t;
var fallbackSucceeded : bool;
var fallbackAmt : int;
var fallbackAddr : address_t;
var ended : bool;
var a : bool;
var b : bool;
var c : bool;
var d : bool;

// 
// ------- Source: simpleAuction.sol -------
// Pragma: solidity^0.4.22
// 
// ------- Contract: SimpleAuction -------
// 
// State variable: owner : address
var {:sourceloc "simpleAuction.sol", 4, 5} {:message "owner"} owner#3: [address_t]address_t;
// 
// State variable: highestBidder : address
var {:sourceloc "simpleAuction.sol", 6, 5} {:message "highestBidder"} highestBidder#5: [address_t]address_t;
// 
// State variable: highestBid : uint256
var {:sourceloc "simpleAuction.sol", 7, 5} {:message "highestBid"} highestBid#7: [address_t]int;
// 
// State variable: ended : bool
var {:sourceloc "simpleAuction.sol", 9, 5} {:message "ended"} ended#9: [address_t]bool;
// 
// Function:  : function ()
procedure {:sourceloc "simpleAuction.sol", 11, 5} {:message "SimpleAuction::[constructor]"} __constructor#18(__this: address_t, __msg_sender: address_t, __msg_value: int)
    modifies owner#3, highestBidder#5, highestBid#7, ended#9, __balance;
{
  __balance := __balance[__this := 0];
  highestBidder#5 := highestBidder#5[__this := __zero__address];
  highestBid#7 := highestBid#7[__this := 0];
  ended#9 := ended#9[__this := false];
  owner#3 := owner#3[__this := __msg_sender];
  $return0:
}

procedure {:inline 1} {:message "send"} __send(__this: address_t, __msg_sender: address_t, __msg_value: int, amount: int)
  returns (__result: bool)
    modifies __balance, fallbackAmt, fallbackAddr, fallbackSucceeded, d;
{
  /*assume (__balance[__msg_sender] >= amount);
  // TODO: call fallback
  if (*) {*/
  if (__balance[__msg_sender] >= amount) {
  __balance := __balance[__this := (__balance[__this] + amount)];
  __balance := __balance[__msg_sender := (__balance[__msg_sender] - amount)];
  __result := true;
  fallbackAmt := amount;
  fallbackAddr := __this;
  fallbackSucceeded := true;
  d := fallbackAmt == highestBid#7[contract] && fallbackAddr == owner;
  d := false;
  }
  else {
  __result := false;
  }
  fallbackSucceeded := false;
}

// 
// Function: bid : function ()
procedure {:sourceloc "simpleAuction.sol", 15, 5} {:message "SimpleAuction::bid"} bid#49(__this: address_t, __msg_sender: address_t, __msg_value: int)
    modifies __balance, highestBidder#5, highestBid#7, fallbackAmt, fallbackAddr, fallbackSucceeded, bidAddr, bidAmt, bidCalled, a, b, d;
{
  
  var __send#34: bool;
  bidAddr := __msg_sender;
  bidAmt := __msg_value;
  bidCalled := true;
  bidCalled := false;
  b := true;
  b := false;
  if (!(ended#9[__this])) {
  __balance := __balance[__this := (__balance[__this] + __msg_value)];
  assume (__msg_value > highestBid#7[__this]);
  a := __msg_sender == bidder;
  a := false;
  assume {:sourceloc "simpleAuction.sol", 18, 13} {:message ""} true;
  call __send#34 := __send(highestBidder#5[__this], __this, 0, highestBid#7[__this]);
  highestBidder#5 := highestBidder#5[__this := __msg_sender];
  highestBid#7 := highestBid#7[__this := __msg_value];
  }

  $return1:
}

// 
// Function: auctionEnd : function ()
procedure {:sourceloc "simpleAuction.sol", 24, 5} {:message "SimpleAuction::auctionEnd"} auctionEnd#74(__this: address_t, __msg_sender: address_t, __msg_value: int)
    modifies __balance, ended#9, fallbackAmt, fallbackAddr, fallbackSucceeded, ended, c, d;
{
  var __send#69: bool;
  if ((!(ended#9[__this]) && (__msg_sender == owner#3[__this]))) {
  ended#9 := ended#9[__this := true];
  ended := true;
  c := true;
  c := false;
  assume {:sourceloc "simpleAuction.sol", 27, 13} {:message ""} true;
  call __send#69 := __send(__msg_sender, __this, 0, highestBid#7[__this]);
  }

  $return2:
}

procedure main()
    modifies owner#3, highestBidder#5, highestBid#7, ended#9, __balance, fallbackAmt, fallbackAddr, fallbackSucceeded, bidAddr, bidAmt, bidCalled, ended, a, b, c, d;
{
    //var contract : address_t;
    var addr : address_t;
    var amt : int;

    assume(owner != contract);
    assume(bidder != contract);
    //assume(bidder != owner);

    call __constructor#18(contract, owner, 0);

    while(*) {
        havoc addr;
        havoc amt;

        assume(amt >= 0);
        assume(addr != contract);

        if(*) {
            call bid#49(contract, addr, amt);
        }
        else {
            call auctionEnd#74(contract, addr, 0);
        }
    }
}

procedure ULTIMATE.start()
    modifies owner#3, highestBidder#5, highestBid#7, ended#9, __balance, fallbackAmt, fallbackAddr, fallbackSucceeded, bidAddr, bidAmt, bidCalled, ended, a, b, c, d;
{
    a := false;
    b := false;
    c := false;
    d := false;
    bidCalled := false;
    fallbackSucceeded := false;
    ended := false;
    call main();
}
