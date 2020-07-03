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
    modifies owner#3, highestBidder#5, highestBid#7, ended#9, __balance, fallbackAmt, fallbackAddr, fallbackSucceeded, bidAddr, bidAmt, bidCalled;
{
    var addr : address_t;
    var amt : int;
    var local_balance : [address_t] int;
    var local_highestBidder : [address_t] address_t;
    var local_highestBid : [address_t] int;
    var local_ended : [address_t] bool;
    var gas : int;
    var exception : bool;

    assume(owner != contract);
    assume(bidder != contract);
    //assume(bidder != owner);

    __balance := __balance[contract := 0];
    highestBidder#5 := highestBidder#5[contract := __zero__address];
    highestBid#7 := highestBid#7[contract := 0];
    ended#9 := ended#9[contract := false];
    owner#3 := owner#3[contract := owner];

    /* Note: this will verify because if the else branch fails (i.e. runs out of gas) then the contract hasn't
        ended since the global variable isnt set*/
    while(*) {
        havoc addr;
        havoc amt;
        havoc exception;

        assume(amt >= 0);
        assume(addr != contract);

        gas := 0;
        local_balance := __balance;
        local_highestBidder := highestBidder#5;
        local_highestBid := highestBid#7;
        local_ended := ended#9;

        /*
            I think the main problem we are going to have to address is event synchronization. The way
            things are right now don't correspond to a valid run in solidity because we don't include
            gas with reset. However, once we do there will be this issue where an event will trigger
            (such as withdraw called) without us knowing if a reset will happen. Thus even events have to
            be pushed to the end. I can see two possible solutions to this:
            1) Program transformation: Store globals to fresh shadow variables and cache events in a que.
                 If no exception, store globals and trigger cached events. 
            2) Have the analysis be aware of this constraint instead. Once we have a trace it should be possible
                 to determine if we ran out of gas or not and modify the path accordingly.
            3) Use havoc'd variables and at the end choose if they are true or false. Note, you cannot cut off
                 the reset check because if you did, there would be no infinite loop.
        */
        if(*) {
            bidAddr := addr;
            bidAmt := amt;
            if(!exception) {
                bidCalled := true;
                bidCalled := false;
            }
            if (!(local_ended[contract])) {
                local_balance := local_balance[contract := (local_balance[contract] + amt)];
                assume (amt > local_highestBid[contract]);
                assume {:sourceloc "simpleAuction.sol", 18, 13} {:message ""} true;
                local_balance := local_balance[contract := (local_balance[contract] - local_highestBid[contract])];
                fallbackAmt := local_highestBid[contract];
                fallbackAddr := local_highestBidder[contract];
                if(!exception) {
                    fallbackSucceeded := true;
                    fallbackSucceeded := false;
                }
                local_highestBidder := local_highestBidder[contract := addr];
                local_highestBid := local_highestBid[contract := amt];
                gas := 1;
            }
        }
        else {
            if ((!(local_ended[contract]) && (addr == owner#3[contract]))) {
                local_balance := local_balance[contract := (local_balance[contract] - amt)];
                local_ended := local_ended[contract := true];
                ended#9 := ended#9[contract := true];
                ////////////////////////////
                // Pretend ended is separate call and always followed by a withdraw
                ////////////////////////////
                assume {:sourceloc "simpleAuction.sol", 27, 13} {:message ""} true;
                fallbackAmt := local_highestBid[contract];
                fallbackAddr := addr;
                gas := 20;
                if(!exception) {
                    fallbackSucceeded := true;
                    fallbackSucceeded := false;
                }
            }
        }

        if(gas <= 10) {
            assume(exception == false);
            __balance := local_balance;
            highestBidder#5 := local_highestBidder;
            highestBid#7 := local_highestBid;
            ended#9 := local_ended;
        }
        else {
            assume(exception == true);
        }
    }
}

// 
procedure ULTIMATE.start()
    modifies owner#3, highestBidder#5, highestBid#7, ended#9, __balance, fallbackAmt, fallbackAddr, fallbackSucceeded, bidAddr, bidAmt, bidCalled;
{
    bidCalled := false;
    fallbackSucceeded := false;

    call main();
}
