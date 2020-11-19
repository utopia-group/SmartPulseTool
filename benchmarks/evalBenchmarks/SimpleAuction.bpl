// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:SimpleAuction.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// LTLVariables: user:Ref,val:int
// LTLFairness: [](<>(finished(SimpleAuction.withdraw, (user == msg.sender))))
// LTLProperty: []((finished(SimpleAuction.bid, (user == old(this.highestBidder) && val == old(this.highestBid) && user != 0))) ==> (<>(finished(send(from, to, amt), (to == user && amt >= val)))))

// LTLVariables: user:Ref,val:int,ben:Ref
// LTLFairness: <>(finished(SimpleAuction.auctionEnd, (ben == beneficiary_SimpleAuction[this])))
// LTLProperty: []((finished(SimpleAuction.bid, (user == this.highestBidder && val == msg.value)) && (X([](!finished(SimpleAuction.bid, (user == old(this.highestBidder))))))) ==> (<>(finished(send(from, to, amt), (to == ben && amt == val)))))

// tmp prop 1
// LTLProperty: [](!finished(*, Balance[this] < this.highestBid + sum_pendingReturns0[pendingReturns_SimpleAuction[this]]))

// tmp prop 2
// LTLVariables: a:Ref
// LTLProperty: [](!finished(*, this.pendingReturns[a] != fsum(SimpleAuction.bid, 2, msg.sender == a) - fsum(send(from, to, amt), 2, to == a)))

// tmp prop 3
// #LTLVariables: a:Ref
// #LTLFairness: <>(finished(SimpleAuction.bid, msg.sender == a && msg.value != 0)) && [](<>(started(SimpleAuction.withdraw, msg.sender == a))) && [](!reverted(send(from, to, amt), to == a)) && [](!started(SimpleAuction.withdraw, msg.sender == a && a == this.highestBidder))
// #LTLProperty: <>(finished(send(from, to, amt), to == a && amt == fsum(SimpleAuction.bid, 2, msg.sender == a))) && [](finished(send(from, to, amt), to == a && amt == fsum(SimpleAuction.bid, 2, msg.sender == a)) ==> [](!started(send(from, to, amt), to == a && amt == fsum(SimpleAuction.bid, 2, msg.sender == a))))

type Ref = int;

type ContractName = int;

const unique null: Ref;

const unique SimpleAuction: ContractName;

function {:smtdefined "x"} ConstantToRef(x: int) : Ref;

function BoogieRefToInt(x: Ref) : int;

function {:bvbuiltin "mod"} modBpl(x: int, y: int) : int;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefIntArr() : [Ref]int;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntIntArr() : [int]int;

function {:smtdefined "((as const (Array Int Bool)) false)"} zeroRefBoolArr() : [Ref]bool;

function {:smtdefined "((as const (Array Int Bool)) false)"} zeroIntBoolArr() : [int]bool;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefRefArr() : [Ref]Ref;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntRefArr() : [int]Ref;

function nonlinearMul(x: int, y: int) : int;

function nonlinearDiv(x: int, y: int) : int;

function nonlinearPow(x: int, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int_pendingReturns0: [Ref][Ref]int;

var sum_pendingReturns0: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



var {:access "this.auctionStart=auctionStart_SimpleAuction[this]"} auctionStart_SimpleAuction: [Ref]int;

var {:access "this.biddingTime=biddingTime_SimpleAuction[this]"} biddingTime_SimpleAuction: [Ref]int;

var {:access "this.highestBidder=highestBidder_SimpleAuction[this]"} highestBidder_SimpleAuction: [Ref]Ref;

var {:access "this.highestBid=highestBid_SimpleAuction[this]"} highestBid_SimpleAuction: [Ref]int;

var {:access "this.pendingReturns[i0]=M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][i0]"} {:sum "sum(this.pendingReturns)=sum_pendingReturns0[pendingReturns_SimpleAuction[this]]"} pendingReturns_SimpleAuction: [Ref]Ref;

var {:access "this.ended=ended_SimpleAuction[this]"} ended_SimpleAuction: [Ref]bool;

var {:access "this._beneficiary=_beneficiary_SimpleAuction[this]"} _beneficiary_SimpleAuction: [Ref]Ref;

var {:access "this.beneficiary=beneficiary_SimpleAuction[this]"} beneficiary_SimpleAuction: [Ref]Ref;

procedure {:inline 1} SimpleAuction_SimpleAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, auctionStart_SimpleAuction, biddingTime_SimpleAuction, highestBidder_SimpleAuction, highestBid_SimpleAuction, pendingReturns_SimpleAuction, M_Ref_int_pendingReturns0, sum_pendingReturns0, ended_SimpleAuction, _beneficiary_SimpleAuction, beneficiary_SimpleAuction, Alloc;



procedure {:constructor} {:public} {:inline 1} SimpleAuction_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, Balance, auctionStart_SimpleAuction, biddingTime_SimpleAuction, highestBidder_SimpleAuction, highestBid_SimpleAuction, pendingReturns_SimpleAuction, M_Ref_int_pendingReturns0, sum_pendingReturns0, ended_SimpleAuction, _beneficiary_SimpleAuction, beneficiary_SimpleAuction, Alloc;



implementation SimpleAuction_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
        __tmp__sum_pendingReturns0 := sum_pendingReturns0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__auctionStart_SimpleAuction := auctionStart_SimpleAuction;
        __tmp__biddingTime_SimpleAuction := biddingTime_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__pendingReturns_SimpleAuction := pendingReturns_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        __tmp___beneficiary_SimpleAuction := _beneficiary_SimpleAuction;
        __tmp__beneficiary_SimpleAuction := beneficiary_SimpleAuction;
        call SimpleAuction_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SimpleAuction_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} bid_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, gas, Balance, sum_pendingReturns0, M_Ref_int_pendingReturns0, highestBidder_SimpleAuction, highestBid_SimpleAuction;



implementation bid_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
        __tmp__sum_pendingReturns0 := sum_pendingReturns0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__auctionStart_SimpleAuction := auctionStart_SimpleAuction;
        __tmp__biddingTime_SimpleAuction := biddingTime_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__pendingReturns_SimpleAuction := pendingReturns_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        __tmp___beneficiary_SimpleAuction := _beneficiary_SimpleAuction;
        __tmp__beneficiary_SimpleAuction := beneficiary_SimpleAuction;
        call bid_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call bid_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, gas, sum_pendingReturns0, M_Ref_int_pendingReturns0, Balance;



implementation withdraw_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
        __tmp__sum_pendingReturns0 := sum_pendingReturns0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__auctionStart_SimpleAuction := auctionStart_SimpleAuction;
        __tmp__biddingTime_SimpleAuction := biddingTime_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__pendingReturns_SimpleAuction := pendingReturns_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        __tmp___beneficiary_SimpleAuction := _beneficiary_SimpleAuction;
        __tmp__beneficiary_SimpleAuction := beneficiary_SimpleAuction;
        call __ret_0_ := withdraw_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := withdraw_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} auctionEndTime_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, gas;



implementation auctionEndTime_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
        __tmp__sum_pendingReturns0 := sum_pendingReturns0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__auctionStart_SimpleAuction := auctionStart_SimpleAuction;
        __tmp__biddingTime_SimpleAuction := biddingTime_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__pendingReturns_SimpleAuction := pendingReturns_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        __tmp___beneficiary_SimpleAuction := _beneficiary_SimpleAuction;
        __tmp__beneficiary_SimpleAuction := beneficiary_SimpleAuction;
        call __ret_0_ := auctionEndTime_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := auctionEndTime_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} auctionEnd_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, gas, ended_SimpleAuction, Balance;



implementation auctionEnd_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
        __tmp__sum_pendingReturns0 := sum_pendingReturns0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__auctionStart_SimpleAuction := auctionStart_SimpleAuction;
        __tmp__biddingTime_SimpleAuction := biddingTime_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__pendingReturns_SimpleAuction := pendingReturns_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        __tmp___beneficiary_SimpleAuction := _beneficiary_SimpleAuction;
        __tmp__beneficiary_SimpleAuction := beneficiary_SimpleAuction;
        call auctionEnd_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call auctionEnd_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, revert, Balance;



procedure CorralChoice_SimpleAuction(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, Balance, sum_pendingReturns0, M_Ref_int_pendingReturns0, highestBidder_SimpleAuction, highestBid_SimpleAuction, ended_SimpleAuction;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, now, Balance, sum_pendingReturns0, M_Ref_int_pendingReturns0, highestBidder_SimpleAuction, highestBid_SimpleAuction, ended_SimpleAuction, auctionStart_SimpleAuction, biddingTime_SimpleAuction, pendingReturns_SimpleAuction, _beneficiary_SimpleAuction, beneficiary_SimpleAuction;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_pendingReturns0: [Ref][Ref]int;

var __tmp__sum_pendingReturns0: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__auctionStart_SimpleAuction: [Ref]int;

var __tmp__biddingTime_SimpleAuction: [Ref]int;

var __tmp__highestBidder_SimpleAuction: [Ref]Ref;

var __tmp__highestBid_SimpleAuction: [Ref]int;

var __tmp__pendingReturns_SimpleAuction: [Ref]Ref;

var __tmp__ended_SimpleAuction: [Ref]bool;

var __tmp___beneficiary_SimpleAuction: [Ref]Ref;

var __tmp__beneficiary_SimpleAuction: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} SimpleAuction_SimpleAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, __tmp__Alloc;



procedure {:constructor} {:inline 1} SimpleAuction_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, auctionStart_SimpleAuction, biddingTime_SimpleAuction, highestBidder_SimpleAuction, highestBid_SimpleAuction, pendingReturns_SimpleAuction, M_Ref_int_pendingReturns0, sum_pendingReturns0, ended_SimpleAuction, _beneficiary_SimpleAuction, beneficiary_SimpleAuction, Alloc;



procedure {:constructor} {:inline 1} SimpleAuction_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, __tmp__Alloc;



procedure {:inline 1} bid_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, sum_pendingReturns0, M_Ref_int_pendingReturns0, highestBidder_SimpleAuction, highestBid_SimpleAuction;



procedure {:inline 1} bid_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__sum_pendingReturns0, __tmp__M_Ref_int_pendingReturns0, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction;



procedure {:inline 1} withdraw_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, sum_pendingReturns0, M_Ref_int_pendingReturns0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, revert, Balance;



procedure {:inline 1} withdraw_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, __tmp__sum_pendingReturns0, __tmp__M_Ref_int_pendingReturns0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, revert;



procedure {:inline 1} auctionEndTime_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} auctionEndTime_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} auctionEnd_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, ended_SimpleAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, Balance;



procedure {:inline 1} auctionEnd_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__ended_SimpleAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_pendingReturns0, __tmp__sum_pendingReturns0, __tmp__Length, __tmp__now, __tmp__auctionStart_SimpleAuction, __tmp__biddingTime_SimpleAuction, __tmp__highestBidder_SimpleAuction, __tmp__highestBid_SimpleAuction, __tmp__pendingReturns_SimpleAuction, __tmp__ended_SimpleAuction, __tmp___beneficiary_SimpleAuction, __tmp__beneficiary_SimpleAuction, revert;



implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
    havoc newRef;
    assume __tmp__Alloc[newRef] == false;
    __tmp__Alloc[newRef] := true;
    assume newRef != null;
}



implementation FreshRefGenerator__success() returns (newRef: Ref)
{
    havoc newRef;
    assume Alloc[newRef] == false;
    Alloc[newRef] := true;
    assume newRef != null;
}



implementation SimpleAuction_SimpleAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__auctionStart_SimpleAuction[this] := 0;
    __tmp__biddingTime_SimpleAuction[this] := 0;
    __tmp__highestBidder_SimpleAuction[this] := null;
    __tmp__highestBid_SimpleAuction[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__pendingReturns_SimpleAuction[this] := __var_1;
    __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := zeroRefIntArr();
    __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := 0;
    __tmp__ended_SimpleAuction[this] := false;
    __var_2 := ConstantToRef(-444150703275361836912585813844736157808586986900);
    __tmp___beneficiary_SimpleAuction[this] := ConstantToRef(-444150703275361836912585813844736157808586986900);
    __tmp__beneficiary_SimpleAuction[this] := null;
    __tmp__beneficiary_SimpleAuction[this] := __tmp___beneficiary_SimpleAuction[this];
    assume __tmp__auctionStart_SimpleAuction[this] >= 0;
    assume __tmp__now >= 0;
    __tmp__auctionStart_SimpleAuction[this] := __tmp__now;
    assume __tmp__biddingTime_SimpleAuction[this] >= 0;
    __tmp__biddingTime_SimpleAuction[this] := 2587587;
}



implementation SimpleAuction_SimpleAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    auctionStart_SimpleAuction[this] := 0;
    biddingTime_SimpleAuction[this] := 0;
    highestBidder_SimpleAuction[this] := null;
    highestBid_SimpleAuction[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    pendingReturns_SimpleAuction[this] := __var_1;
    M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]] := zeroRefIntArr();
    sum_pendingReturns0[pendingReturns_SimpleAuction[this]] := 0;
    ended_SimpleAuction[this] := false;
    __var_2 := ConstantToRef(-444150703275361836912585813844736157808586986900);
    _beneficiary_SimpleAuction[this] := ConstantToRef(-444150703275361836912585813844736157808586986900);
    beneficiary_SimpleAuction[this] := null;
    beneficiary_SimpleAuction[this] := _beneficiary_SimpleAuction[this];
    assume auctionStart_SimpleAuction[this] >= 0;
    assume now >= 0;
    auctionStart_SimpleAuction[this] := now;
    assume biddingTime_SimpleAuction[this] >= 0;
    biddingTime_SimpleAuction[this] := 2587587;
}



implementation SimpleAuction_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    call SimpleAuction_SimpleAuction_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SimpleAuction_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    call SimpleAuction_SimpleAuction_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation bid_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 437;
    assume __tmp__now >= 0;
    assume __tmp__auctionStart_SimpleAuction[this] >= 0;
    assume __tmp__biddingTime_SimpleAuction[this] >= 0;
    assume __tmp__auctionStart_SimpleAuction[this] + __tmp__biddingTime_SimpleAuction[this]
       >= 0;
    if (!(__tmp__now
       <= __tmp__auctionStart_SimpleAuction[this] + __tmp__biddingTime_SimpleAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume msgvalue_MSG >= 0;
    assume __tmp__highestBid_SimpleAuction[this] >= 0;
    if (!(msgvalue_MSG > __tmp__highestBid_SimpleAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    __var_3 := null;
    if (__tmp__highestBidder_SimpleAuction[this] != null)
    {
        gas := gas - 20765;
        assume __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][__tmp__highestBidder_SimpleAuction[this]]
           >= 0;
        assume __tmp__highestBid_SimpleAuction[this] >= 0;
        __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]]
           - __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][__tmp__highestBidder_SimpleAuction[this]];
        __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][__tmp__highestBidder_SimpleAuction[this]] := __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][__tmp__highestBidder_SimpleAuction[this]]
           + __tmp__highestBid_SimpleAuction[this];
        __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]]
           + __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][__tmp__highestBidder_SimpleAuction[this]];
    }

    gas := gas - 20266;
    __tmp__highestBidder_SimpleAuction[this] := msgsender_MSG;
    gas := gas - 20013;
    assume __tmp__highestBid_SimpleAuction[this] >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__highestBid_SimpleAuction[this] := msgvalue_MSG;
}



implementation bid_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 437;
    assume now >= 0;
    assume auctionStart_SimpleAuction[this] >= 0;
    assume biddingTime_SimpleAuction[this] >= 0;
    assume auctionStart_SimpleAuction[this] + biddingTime_SimpleAuction[this] >= 0;
    if (!(now <= auctionStart_SimpleAuction[this] + biddingTime_SimpleAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume msgvalue_MSG >= 0;
    assume highestBid_SimpleAuction[this] >= 0;
    if (!(msgvalue_MSG > highestBid_SimpleAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    __var_3 := null;
    if (highestBidder_SimpleAuction[this] != null)
    {
        gas := gas - 20765;
        assume M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][highestBidder_SimpleAuction[this]]
           >= 0;
        assume highestBid_SimpleAuction[this] >= 0;
        sum_pendingReturns0[pendingReturns_SimpleAuction[this]] := sum_pendingReturns0[pendingReturns_SimpleAuction[this]]
           - M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][highestBidder_SimpleAuction[this]];
        M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][highestBidder_SimpleAuction[this]] := M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][highestBidder_SimpleAuction[this]]
           + highestBid_SimpleAuction[this];
        sum_pendingReturns0[pendingReturns_SimpleAuction[this]] := sum_pendingReturns0[pendingReturns_SimpleAuction[this]]
           + M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][highestBidder_SimpleAuction[this]];
    }

    gas := gas - 20266;
    highestBidder_SimpleAuction[this] := msgsender_MSG;
    gas := gas - 20013;
    assume highestBid_SimpleAuction[this] >= 0;
    assume msgvalue_MSG >= 0;
    highestBid_SimpleAuction[this] := msgvalue_MSG;
    assert {:EventEmitted "HighestBidIncreased_SimpleAuction"} true;
}



implementation withdraw_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var amount_s143: int;
  var __var_4: bool;
  var __var_5: int;

    gas := gas - 3;
    gas := gas - 306;
    assume amount_s143 >= 0;
    assume __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG]
       >= 0;
    amount_s143 := __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG];
    gas := gas - 9;
    assume amount_s143 >= 0;
    if (amount_s143 > 0)
    {
        gas := gas - 5109;
        assume __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG]
           >= 0;
        __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]]
           - __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG];
        __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG] := 0;
        __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]]
           + __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG];
        gas := gas - 35781;
        assume amount_s143 >= 0;
        __var_5 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_5 := __var_5 - gas;
        call __var_4 := send__fail(this, msgsender_MSG, amount_s143);
        gas := __var_5 + gas;
        if (!__var_4)
        {
            gas := gas - 20109;
            assume __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG]
               >= 0;
            assume amount_s143 >= 0;
            __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]]
               - __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG];
            __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG] := amount_s143;
            __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]] := __tmp__sum_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]]
               + __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_SimpleAuction[this]][msgsender_MSG];
            gas := gas - 21;
            __ret_0_ := false;
            return;
        }
    }

    gas := gas - 10;
    __ret_0_ := true;
    return;
}



implementation withdraw_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var amount_s143: int;
  var __var_4: bool;
  var __var_5: int;

    gas := gas - 3;
    gas := gas - 306;
    assume amount_s143 >= 0;
    assume M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG]
       >= 0;
    amount_s143 := M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG];
    gas := gas - 9;
    assume amount_s143 >= 0;
    if (amount_s143 > 0)
    {
        gas := gas - 5109;
        assume M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG]
           >= 0;
        sum_pendingReturns0[pendingReturns_SimpleAuction[this]] := sum_pendingReturns0[pendingReturns_SimpleAuction[this]]
           - M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG];
        M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG] := 0;
        sum_pendingReturns0[pendingReturns_SimpleAuction[this]] := sum_pendingReturns0[pendingReturns_SimpleAuction[this]]
           + M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG];
        gas := gas - 35781;
        assume amount_s143 >= 0;
        __var_5 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_5 := __var_5 - gas;
        call __var_4 := send__success(this, msgsender_MSG, amount_s143);
        gas := __var_5 + gas;
        if (!__var_4)
        {
            gas := gas - 20109;
            assume M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG]
               >= 0;
            assume amount_s143 >= 0;
            sum_pendingReturns0[pendingReturns_SimpleAuction[this]] := sum_pendingReturns0[pendingReturns_SimpleAuction[this]]
               - M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG];
            M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG] := amount_s143;
            sum_pendingReturns0[pendingReturns_SimpleAuction[this]] := sum_pendingReturns0[pendingReturns_SimpleAuction[this]]
               + M_Ref_int_pendingReturns0[pendingReturns_SimpleAuction[this]][msgsender_MSG];
            gas := gas - 21;
            __ret_0_ := false;
            return;
        }
    }

    gas := gas - 10;
    __ret_0_ := true;
    return;
}



implementation auctionEndTime_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 414;
    assume __tmp__auctionStart_SimpleAuction[this] >= 0;
    assume __tmp__biddingTime_SimpleAuction[this] >= 0;
    assume __tmp__auctionStart_SimpleAuction[this] + __tmp__biddingTime_SimpleAuction[this]
       >= 0;
    __ret_0_ := __tmp__auctionStart_SimpleAuction[this] + __tmp__biddingTime_SimpleAuction[this];
    return;
}



implementation auctionEndTime_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 414;
    assume auctionStart_SimpleAuction[this] >= 0;
    assume biddingTime_SimpleAuction[this] >= 0;
    assume auctionStart_SimpleAuction[this] + biddingTime_SimpleAuction[this] >= 0;
    __ret_0_ := auctionStart_SimpleAuction[this] + biddingTime_SimpleAuction[this];
    return;
}



implementation auctionEnd_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_6: int;
  var __var_7: bool;

    gas := gas - 437;
    assume __tmp__now >= 0;
    assume __tmp__auctionStart_SimpleAuction[this] >= 0;
    assume __tmp__biddingTime_SimpleAuction[this] >= 0;
    assume __tmp__auctionStart_SimpleAuction[this] + __tmp__biddingTime_SimpleAuction[this]
       >= 0;
    if (!(__tmp__now
       >= __tmp__auctionStart_SimpleAuction[this] + __tmp__biddingTime_SimpleAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 262;
    if (!!__tmp__ended_SimpleAuction[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__ended_SimpleAuction[this] := true;
    gas := gas - 36220;
    __var_6 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_6 := __var_6 - gas;
    assume __tmp__highestBid_SimpleAuction[this] >= 0;
    call __var_7 := send__fail(this, __tmp__beneficiary_SimpleAuction[this], __tmp__highestBid_SimpleAuction[this]);
    if (!__var_7)
    {
        revert := true;
        return;
    }

    gas := __var_6 + gas;
}



implementation auctionEnd_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_6: int;
  var __var_7: bool;

    gas := gas - 437;
    assume now >= 0;
    assume auctionStart_SimpleAuction[this] >= 0;
    assume biddingTime_SimpleAuction[this] >= 0;
    assume auctionStart_SimpleAuction[this] + biddingTime_SimpleAuction[this] >= 0;
    if (!(now >= auctionStart_SimpleAuction[this] + biddingTime_SimpleAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 262;
    if (!!ended_SimpleAuction[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    ended_SimpleAuction[this] := true;
    assert {:EventEmitted "AuctionEnded_SimpleAuction"} true;
    gas := gas - 36220;
    __var_6 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_6 := __var_6 - gas;
    assume highestBid_SimpleAuction[this] >= 0;
    call __var_7 := send__success(this, beneficiary_SimpleAuction[this], highestBid_SimpleAuction[this]);
    if (!__var_7)
    {
        revert := true;
        return;
    }

    gas := __var_6 + gas;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == SimpleAuction)
    {
        assume amount == 0;
    }
    else
    {
        call Fallback_UnknownType__fail(from, to, amount);
        if (revert)
        {
            return;
        }
    }
}



implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
    if (DType[to] == SimpleAuction)
    {
        assume amount == 0;
    }
    else
    {
        call Fallback_UnknownType__success(from, to, amount);
        if (revert)
        {
            return;
        }
    }
}



implementation Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int)
{
    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
}



implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;
  var __snap___tmp__Balance: [Ref]int;
  var __snap___tmp__DType: [Ref]ContractName;
  var __snap___tmp__Alloc: [Ref]bool;
  var __snap___tmp__balance_ADDR: [Ref]int;
  var __snap___tmp__M_Ref_int_pendingReturns0: [Ref][Ref]int;
  var __snap___tmp__sum_pendingReturns0: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__auctionStart_SimpleAuction: [Ref]int;
  var __snap___tmp__biddingTime_SimpleAuction: [Ref]int;
  var __snap___tmp__highestBidder_SimpleAuction: [Ref]Ref;
  var __snap___tmp__highestBid_SimpleAuction: [Ref]int;
  var __snap___tmp__pendingReturns_SimpleAuction: [Ref]Ref;
  var __snap___tmp__ended_SimpleAuction: [Ref]bool;
  var __snap___tmp___beneficiary_SimpleAuction: [Ref]Ref;
  var __snap___tmp__beneficiary_SimpleAuction: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_pendingReturns0 := __tmp__M_Ref_int_pendingReturns0;
        __snap___tmp__sum_pendingReturns0 := __tmp__sum_pendingReturns0;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__auctionStart_SimpleAuction := __tmp__auctionStart_SimpleAuction;
        __snap___tmp__biddingTime_SimpleAuction := __tmp__biddingTime_SimpleAuction;
        __snap___tmp__highestBidder_SimpleAuction := __tmp__highestBidder_SimpleAuction;
        __snap___tmp__highestBid_SimpleAuction := __tmp__highestBid_SimpleAuction;
        __snap___tmp__pendingReturns_SimpleAuction := __tmp__pendingReturns_SimpleAuction;
        __snap___tmp__ended_SimpleAuction := __tmp__ended_SimpleAuction;
        __snap___tmp___beneficiary_SimpleAuction := __tmp___beneficiary_SimpleAuction;
        __snap___tmp__beneficiary_SimpleAuction := __tmp__beneficiary_SimpleAuction;
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
        }

        success := false;
        assume revert || gas < 0;
        __tmp__Balance := __snap___tmp__Balance;
        __tmp__DType := __snap___tmp__DType;
        __tmp__Alloc := __snap___tmp__Alloc;
        __tmp__balance_ADDR := __snap___tmp__balance_ADDR;
        __tmp__M_Ref_int_pendingReturns0 := __snap___tmp__M_Ref_int_pendingReturns0;
        __tmp__sum_pendingReturns0 := __snap___tmp__sum_pendingReturns0;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__auctionStart_SimpleAuction := __snap___tmp__auctionStart_SimpleAuction;
        __tmp__biddingTime_SimpleAuction := __snap___tmp__biddingTime_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := __snap___tmp__highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := __snap___tmp__highestBid_SimpleAuction;
        __tmp__pendingReturns_SimpleAuction := __snap___tmp__pendingReturns_SimpleAuction;
        __tmp__ended_SimpleAuction := __snap___tmp__ended_SimpleAuction;
        __tmp___beneficiary_SimpleAuction := __snap___tmp___beneficiary_SimpleAuction;
        __tmp__beneficiary_SimpleAuction := __snap___tmp__beneficiary_SimpleAuction;
        revert := false;
    }
    else
    {
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
            success := true;
        }
        else
        {
            success := false;
        }

        assume !revert && gas >= 0;
    }
}



implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;

    havoc __exception;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
        __tmp__sum_pendingReturns0 := sum_pendingReturns0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__auctionStart_SimpleAuction := auctionStart_SimpleAuction;
        __tmp__biddingTime_SimpleAuction := biddingTime_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__pendingReturns_SimpleAuction := pendingReturns_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        __tmp___beneficiary_SimpleAuction := _beneficiary_SimpleAuction;
        __tmp__beneficiary_SimpleAuction := beneficiary_SimpleAuction;
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
        }

        success := false;
        assume revert || gas < 0;
        revert := false;
    }
    else
    {
        if (Balance[from] >= amount)
        {
            call FallbackDispatch__success(from, to, amount);
            success := true;
        }
        else
        {
            success := false;
        }

        assume !revert && gas >= 0;
    }
}



implementation CorralChoice_SimpleAuction(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_withdraw: bool;
  var __ret_0_auctionEndTime: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_withdraw;
    havoc __ret_0_auctionEndTime;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SimpleAuction;
    Alloc[msgsender_MSG] := true;
    if (choice == 4)
    {
        gas := gas - 21000;
        call bid_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_withdraw := withdraw_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_auctionEndTime := auctionEndTime_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call auctionEnd_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == SimpleAuction;
    gas := gas - 53000;
    call SimpleAuction_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SimpleAuction(this);
    }
}


