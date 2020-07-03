// Global declarations and definitions related to the address type
// #LTLProperty: []((AP(bidCalled == true) && AP(bidAddr == bidder) && AP(ended#9[contract] == false) && X(AP(bidCalled == false) U AP(ended#9[contract] == true))) ==> <>(AP(fallbackSucceeded == true) && AP(fallbackAmt == highestBid#7[contract]) && AP(fallbackAddr == owner)))
type address_t = int;
//type address_t;
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
procedure main()
    modifies owner#3, highestBidder#5, highestBid#7, ended#9, __balance, fallbackAmt, fallbackAddr, fallbackSucceeded, bidAddr, bidAmt, bidCalled, ended;
{
    var addr : address_t;
    var amt : int;
    var error : bool; 
    var l__balance: [address_t]int;
    var lowner#3: [address_t]address_t;
    var lhighestBidder#5: [address_t]address_t;
    var lhighestBid#7: [address_t]int;
    var lended#9: [address_t]bool;

    assume(owner != contract);
    assume(bidder != contract);
    //assume(bidder != owner);

    __balance := __balance[contract := 0];
    highestBidder#5 := highestBidder#5[contract := __zero__address];
    highestBid#7 := highestBid#7[contract := 0];
    ended#9 := ended#9[contract := false];
    owner#3 := owner#3[contract := owner];


    while(*) {
        havoc addr;
        havoc amt;
        error := false;

        assume(amt >= 0);
        assume(addr != contract);

        l__balance := __balance;
        lowner#3 := owner#3;
        lhighestBidder#5 := highestBidder#5;
        lhighestBid#7 := highestBid#7;
        lended#9 := ended#9;

        if(*) {
            bidAddr := addr;
            bidAmt := amt;
            bidCalled := true;
            bidCalled := false;
            if (!(lended#9[contract])) {
                l__balance := l__balance[contract := (l__balance[contract] + amt)];
                assume (amt > lhighestBid#7[contract]);
                assume {:sourceloc "simpleAuction.sol", 18, 13} {:message ""} true;
                fallbackAmt := lhighestBid#7[contract];
                fallbackAddr := lhighestBidder#5[contract];
                fallbackSucceeded := true;
                fallbackSucceeded := false;
                lhighestBidder#5 := lhighestBidder#5[contract := addr];
                lhighestBid#7 := lhighestBid#7[contract := amt];
            }
        }
        else {
            if ((!(lended#9[contract]) && (addr == lowner#3[contract]))) {
                lended#9 := lended#9[contract := true];
                ended := true;
                assume {:sourceloc "simpleAuction.sol", 27, 13} {:message ""} true;
                fallbackAmt := lhighestBid#7[contract];
                fallbackAddr := owner;
                fallbackSucceeded := true;
                fallbackSucceeded := false;
            }
        }
        if(!error) {
            __balance := l__balance;
            owner#3 := lowner#3;
            highestBidder#5 := lhighestBidder#5;
            highestBid#7 := lhighestBid#7;
            ended#9 := lended#9;
        }
    }
}

// 
procedure ULTIMATE.start()
    modifies owner#3, highestBidder#5, highestBid#7, ended#9, __balance, fallbackAmt, fallbackAddr, fallbackSucceeded, bidAddr, bidAmt, bidCalled, ended;
{
    bidCalled := false;
    fallbackSucceeded := false;
    ended := false;

    call main();
}
