// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:Crowdsale.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// Spec r0
// LTLProperty: [](!success(Escrow.claimRefund(addr)) {Balance[this] != old(Balance[this]) - old(M_Ref_int[deposits_Escrow[this]][addr])})

// Spec r1
// use this one:
// LTLProperty: [](INV {state_Escrow[escrow_Crowdsale[this]] != 1 ==> Balance[escrow_Crowdsale[this]] >= sum(deposits_Escrow[escrow_Crowdsale[this]])})
// LTLProperty: [](!INV {state_Escrow[escrow_Crowdsale[this]] != 1 && Balance[escrow_Crowdsale[this]] < sum(deposits_Escrow[escrow_Crowdsale[this]])})

// Spec r2
// LTLProperty: [](!(<>(success(Escrow.claimRefund) {}) && <>(success(Escrow.withdraw) {})))
// I'm pretty sure we can express r2 as:
// LTLProperty: !(<>(success(Escrow.claimRefund) {}) && <>(success(Escrow.withdraw) {}))

// Spec r3
// Use this one
// #LTLProperty: [](callSuccess(Escrow.claimRefund) {} ==> [](INV {sum(deposits_Escrow[escrow_Crowdsale[this]]) < goal_Crowdsale[this]}))
// LTLProperty: [](callSuccess(Escrow.claimRefund) {} ==> [](!INV {sum(deposits_Escrow[escrow_Crowdsale[this]]) >= goal_Crowdsale[this]}))

type Ref = int;

type ContractName = int;

var null: Ref;

var Escrow: ContractName;

var Crowdsale: ContractName;

function ConstantToRef(x: int) : Ref;

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

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int: [Ref][Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var sum: [Ref]int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



var deposits_Escrow: [Ref]Ref;

var state_Escrow: [Ref]int;

var owner_Escrow: [Ref]Ref;

var beneficiary_Escrow: [Ref]Ref;

procedure {:inline 1} Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref);
  modifies owner_Escrow, beneficiary_Escrow, deposits_Escrow, M_Ref_int, sum, state_Escrow, Alloc, Balance;



procedure {:constructor} {:public} {:inline 1} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, owner_Escrow, beneficiary_Escrow, deposits_Escrow, M_Ref_int, sum, state_Escrow, Alloc, Balance;



implementation Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, b_s35);
        assume revert || gas < 0;
    }
    else
    {
        call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, b_s35);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s54: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, gas, Balance, sum, M_Ref_int;



implementation deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s54: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call deposit_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, p_s54);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_Escrow__success(this, msgsender_MSG, msgvalue_MSG, p_s54);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, gas, Balance, state_Escrow, raised_Crowdsale, sum, M_Ref_int;



implementation withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} claimRefund_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s105: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, gas, sum, M_Ref_int, Balance, state_Escrow, raised_Crowdsale;



implementation claimRefund_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s105: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call claimRefund_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, p_s105);
        assume revert || gas < 0;
    }
    else
    {
        call claimRefund_Escrow__success(this, msgsender_MSG, msgvalue_MSG, p_s105);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} close_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, gas, state_Escrow;



implementation close_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call close_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call close_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} refund_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, gas, state_Escrow;



implementation refund_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call refund_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call refund_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var escrow_Crowdsale: [Ref]Ref;

var raised_Crowdsale: [Ref]int;

var goal_Crowdsale: [Ref]int;

var closeTime_Crowdsale: [Ref]int;

procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies raised_Crowdsale, goal_Crowdsale, closeTime_Crowdsale, escrow_Crowdsale, Alloc, owner_Escrow, beneficiary_Escrow, deposits_Escrow, M_Ref_int, sum, state_Escrow, Balance;



procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, raised_Crowdsale, goal_Crowdsale, closeTime_Crowdsale, escrow_Crowdsale, Alloc, owner_Escrow, beneficiary_Escrow, deposits_Escrow, M_Ref_int, sum, state_Escrow, Balance;



implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} invest_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, gas, Balance, raised_Crowdsale, sum, M_Ref_int;



implementation invest_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call invest_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call invest_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} close_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, gas, state_Escrow;



implementation close_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
        call close_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call close_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, state_Escrow, raised_Crowdsale, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, state_Escrow, raised_Crowdsale, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, revert, gas, Balance, state_Escrow, raised_Crowdsale, sum, M_Ref_int;



procedure onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_Escrow(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, Balance, sum, M_Ref_int, state_Escrow, raised_Crowdsale;



procedure CorralEntry_Escrow();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, now, Balance, sum, M_Ref_int, state_Escrow, owner_Escrow, beneficiary_Escrow, deposits_Escrow, Alloc, raised_Crowdsale;



procedure CorralChoice_Crowdsale(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, Balance, raised_Crowdsale, state_Escrow, sum, M_Ref_int;



procedure main();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, now, Balance, raised_Crowdsale, goal_Crowdsale, closeTime_Crowdsale, escrow_Crowdsale, Alloc, owner_Escrow, beneficiary_Escrow, deposits_Escrow, M_Ref_int, sum, state_Escrow;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int: [Ref][Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__sum: [Ref]int;

var __tmp__now: int;

var __tmp__deposits_Escrow: [Ref]Ref;

var __tmp__state_Escrow: [Ref]int;

var __tmp__owner_Escrow: [Ref]Ref;

var __tmp__beneficiary_Escrow: [Ref]Ref;

var __tmp__escrow_Crowdsale: [Ref]Ref;

var __tmp__raised_Crowdsale: [Ref]int;

var __tmp__goal_Crowdsale: [Ref]int;

var __tmp__closeTime_Crowdsale: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref);
  modifies __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__state_Escrow, __tmp__Alloc;



procedure {:constructor} {:inline 1} Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref);
  modifies owner_Escrow, beneficiary_Escrow, deposits_Escrow, M_Ref_int, sum, state_Escrow, Alloc, Balance;



procedure {:constructor} {:inline 1} Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref);
  modifies __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__state_Escrow, __tmp__Alloc;



procedure {:inline 1} deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s54: Ref);
  modifies Balance, gas, sum, M_Ref_int, revert;



procedure {:inline 1} deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s54: Ref);
  modifies __tmp__Balance, gas, __tmp__sum, __tmp__M_Ref_int, revert;



procedure {:inline 1} withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, Balance, state_Escrow, raised_Crowdsale, sum, M_Ref_int;



procedure {:inline 1} withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale;



procedure {:inline 1} claimRefund_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s105: Ref);
  modifies gas, revert, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, Balance, state_Escrow, raised_Crowdsale;



procedure {:inline 1} claimRefund_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s105: Ref);
  modifies gas, revert, __tmp__sum, __tmp__M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale;



procedure {:inline 1} close_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, state_Escrow, revert;



procedure {:inline 1} close_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__state_Escrow, revert;



procedure {:inline 1} refund_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, state_Escrow, revert;



procedure {:inline 1} refund_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__state_Escrow, revert;



procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, __tmp__escrow_Crowdsale, __tmp__Alloc, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__state_Escrow;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies raised_Crowdsale, goal_Crowdsale, closeTime_Crowdsale, escrow_Crowdsale, Alloc, owner_Escrow, beneficiary_Escrow, deposits_Escrow, M_Ref_int, sum, state_Escrow, Balance;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, __tmp__escrow_Crowdsale, __tmp__Alloc, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__state_Escrow;



procedure {:inline 1} invest_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, raised_Crowdsale, sum, M_Ref_int;



procedure {:inline 1} invest_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__raised_Crowdsale, __tmp__sum, __tmp__M_Ref_int;



procedure {:inline 1} close_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, state_Escrow;



procedure {:inline 1} close_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__state_Escrow;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__state_Escrow, __tmp__raised_Crowdsale, __tmp__sum, __tmp__M_Ref_int, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__deposits_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__state_Escrow, __tmp__raised_Crowdsale, __tmp__sum, __tmp__M_Ref_int, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__deposits_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__deposits_Escrow, __tmp__state_Escrow, __tmp__owner_Escrow, __tmp__beneficiary_Escrow, __tmp__escrow_Crowdsale, __tmp__raised_Crowdsale, __tmp__goal_Crowdsale, __tmp__closeTime_Crowdsale, revert, gas;



procedure onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



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



implementation Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    __tmp__owner_Escrow[this] := null;
    __tmp__beneficiary_Escrow[this] := null;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__deposits_Escrow[this] := __var_1;
    __tmp__M_Ref_int[__tmp__deposits_Escrow[this]] := zeroRefIntArr();
    __tmp__sum[__tmp__deposits_Escrow[this]] := 0;
    __tmp__beneficiary_Escrow[this] := b_s35;
    __tmp__owner_Escrow[this] := msgsender_MSG;
    __tmp__state_Escrow[this] := 0;
}



implementation Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    owner_Escrow[this] := null;
    beneficiary_Escrow[this] := null;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    deposits_Escrow[this] := __var_1;
    M_Ref_int[deposits_Escrow[this]] := zeroRefIntArr();
    sum[deposits_Escrow[this]] := 0;
    beneficiary_Escrow[this] := b_s35;
    owner_Escrow[this] := msgsender_MSG;
    state_Escrow[this] := 0;
    assume(msgvalue_MSG >= 0);
    Balance[this] := msgvalue_MSG;

}



implementation Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref)
{
  var __var_1: Ref;

    call Escrow_Escrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, b_s35);
    if (revert)
    {
        return;
    }
}



implementation Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, b_s35: Ref)
{
  var __var_1: Ref;

    call Escrow_Escrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, b_s35);
    if (revert)
    {
        return;
    }
}



implementation deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s54: Ref)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20405;
    assume __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s54] >= 0;
    assume __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s54] >= 0;
    assume msgvalue_MSG >= 0;
    assume __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s54] + msgvalue_MSG >= 0;
    __tmp__sum[__tmp__deposits_Escrow[this]] := __tmp__sum[__tmp__deposits_Escrow[this]]
       - __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s54];
    __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s54] := __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s54] + msgvalue_MSG;
    __tmp__sum[__tmp__deposits_Escrow[this]] := __tmp__sum[__tmp__deposits_Escrow[this]]
       + __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s54];
}



implementation deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s54: Ref)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20405;
    assume M_Ref_int[deposits_Escrow[this]][p_s54] >= 0;
    assume M_Ref_int[deposits_Escrow[this]][p_s54] >= 0;
    assume msgvalue_MSG >= 0;
    assume M_Ref_int[deposits_Escrow[this]][p_s54] + msgvalue_MSG >= 0;
    sum[deposits_Escrow[this]] := sum[deposits_Escrow[this]] - M_Ref_int[deposits_Escrow[this]][p_s54];
    M_Ref_int[deposits_Escrow[this]][p_s54] := M_Ref_int[deposits_Escrow[this]][p_s54] + msgvalue_MSG;
    sum[deposits_Escrow[this]] := sum[deposits_Escrow[this]] + M_Ref_int[deposits_Escrow[this]][p_s54];
}



implementation withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: int;
  var __var_3: Ref;
  var __var_4: bool;

    gas := gas - 317;
    if (!(__tmp__state_Escrow[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 36434;
    __var_2 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_2 := __var_2 - gas;
    __var_3 := this;
    assume __tmp__Balance[this] >= 0;
    call __var_4 := send__fail(this, __tmp__beneficiary_Escrow[this], __tmp__Balance[this]);
    if (!__var_4)
    {
        revert := true;
        return;
    }

    gas := __var_2 + gas;
}



implementation withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: int;
  var __var_3: Ref;
  var __var_4: bool;

    gas := gas - 317;
    if (!(state_Escrow[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 36434;
    __var_2 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_2 := __var_2 - gas;
    __var_3 := this;
    assume Balance[this] >= 0;
    call __var_4 := send__success(this, beneficiary_Escrow[this], Balance[this]);
    if (!__var_4)
    {
        revert := true;
        return;
    }

    gas := __var_2 + gas;
}



implementation claimRefund_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s105: Ref)
{
  var amount_s104: int;
  var __var_5: int;
  var __var_6: bool;

    gas := gas - 317;
    if (!(__tmp__state_Escrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 307;
    assume amount_s104 >= 0;
    assume __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s105] >= 0;
    amount_s104 := __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s105];
    gas := gas - 5104;
    assume __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s105] >= 0;
    __tmp__sum[__tmp__deposits_Escrow[this]] := __tmp__sum[__tmp__deposits_Escrow[this]]
       - __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s105];
    __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s105] := 0;
    __tmp__sum[__tmp__deposits_Escrow[this]] := __tmp__sum[__tmp__deposits_Escrow[this]]
       + __tmp__M_Ref_int[__tmp__deposits_Escrow[this]][p_s105];
    gas := gas - 35787;
    __var_5 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_5 := __var_5 - gas;
    assume amount_s104 >= 0;
    call __var_6 := send__fail(this, p_s105, amount_s104);
    if (!__var_6)
    {
        revert := true;
        return;
    }

    gas := __var_5 + gas;
}



implementation claimRefund_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, p_s105: Ref)
{
  var amount_s104: int;
  var __var_5: int;
  var __var_6: bool;

    gas := gas - 317;
    if (!(state_Escrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 307;
    assume amount_s104 >= 0;
    assume M_Ref_int[deposits_Escrow[this]][p_s105] >= 0;
    amount_s104 := M_Ref_int[deposits_Escrow[this]][p_s105];
    gas := gas - 5104;
    assume M_Ref_int[deposits_Escrow[this]][p_s105] >= 0;
    sum[deposits_Escrow[this]] := sum[deposits_Escrow[this]] - M_Ref_int[deposits_Escrow[this]][p_s105];
    M_Ref_int[deposits_Escrow[this]][p_s105] := 0;
    sum[deposits_Escrow[this]] := sum[deposits_Escrow[this]] + M_Ref_int[deposits_Escrow[this]][p_s105];
    gas := gas - 35787;
    __var_5 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_5 := __var_5 - gas;
    assume amount_s104 >= 0;
    call __var_6 := send__success(this, p_s105, amount_s104);
    if (!__var_6)
    {
        revert := true;
        return;
    }

    gas := __var_5 + gas;
}



implementation close_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    __tmp__state_Escrow[this] := 1;
}



implementation close_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    state_Escrow[this] := 1;
}



implementation refund_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    __tmp__state_Escrow[this] := 2;
}



implementation refund_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    state_Escrow[this] := 2;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    assume msgsender_MSG != null;
    __tmp__raised_Crowdsale[this] := 0;
    __tmp__goal_Crowdsale[this] := 10000000000000000000000;
    assume __tmp__now >= 0;
    assume __tmp__now + 30 >= 0;
    __tmp__closeTime_Crowdsale[this] := __tmp__now + 30;
    call __var_8 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_10 := ConstantToRef(-559038737);
    assume __tmp__DType[__var_8] == Escrow;
    call Escrow_Escrow__fail(__var_8, this, 0, ConstantToRef(-559038737));
    if (revert)
    {
        return;
    }

    __var_7 := __var_8;
    __tmp__escrow_Crowdsale[this] := __var_7;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    assume msgsender_MSG != null;
    raised_Crowdsale[this] := 0;
    goal_Crowdsale[this] := 10000000000000000000000;
    assume now >= 0;
    assume now + 30 >= 0;
    closeTime_Crowdsale[this] := now + 30;
    call __var_8 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_10 := ConstantToRef(-559038737);
    assume DType[__var_8] == Escrow;
    call Escrow_Escrow__success(__var_8, this, 0, ConstantToRef(-559038737));
    if (revert)
    {
        return;
    }

    __var_7 := __var_8;
    escrow_Crowdsale[this] := __var_7;
    assume(msgvalue_MSG >= 0);
    Balance[this] := msgvalue_MSG;
}



implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation invest_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 231;
    assume __tmp__now >= 0;
    assume __tmp__closeTime_Crowdsale[this] >= 0;
    if (!(__tmp__now <= __tmp__closeTime_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 429;
    assume __tmp__raised_Crowdsale[this] >= 0;
    assume __tmp__goal_Crowdsale[this] >= 0;
    if (!(__tmp__raised_Crowdsale[this] < __tmp__goal_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 36810;
    assume msgvalue_MSG >= 0;
    call deposit_Escrow__fail(__tmp__escrow_Crowdsale[this], this, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20232;
    assume __tmp__raised_Crowdsale[this] >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__raised_Crowdsale[this] := __tmp__raised_Crowdsale[this] + msgvalue_MSG;
}



implementation invest_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 231;
    assume now >= 0;
    assume closeTime_Crowdsale[this] >= 0;
    if (!(now <= closeTime_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 429;
    assume raised_Crowdsale[this] >= 0;
    assume goal_Crowdsale[this] >= 0;
    if (!(raised_Crowdsale[this] < goal_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 36810;
    assume msgvalue_MSG >= 0;
    call deposit_Escrow__success(escrow_Crowdsale[this], this, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20232;
    assume raised_Crowdsale[this] >= 0;
    assume msgvalue_MSG >= 0;
    raised_Crowdsale[this] := raised_Crowdsale[this] + msgvalue_MSG;
}



implementation close_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_11: int;
  var __var_12: int;

    gas := gas - 659;
    assume __tmp__now >= 0;
    assume __tmp__closeTime_Crowdsale[this] >= 0;
    assume __tmp__raised_Crowdsale[this] >= 0;
    assume __tmp__goal_Crowdsale[this] >= 0;
    if (!(__tmp__now > __tmp__closeTime_Crowdsale[this]
       || __tmp__raised_Crowdsale[this] >= __tmp__goal_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 409;
    assume __tmp__raised_Crowdsale[this] >= 0;
    assume __tmp__goal_Crowdsale[this] >= 0;
    if (__tmp__raised_Crowdsale[this] >= __tmp__goal_Crowdsale[this])
    {
        gas := gas - 27761;
        if (__tmp__DType[__tmp__escrow_Crowdsale[this]] == Crowdsale)
        {
            call close_Crowdsale__fail(__tmp__escrow_Crowdsale[this], this, __var_11);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[__tmp__escrow_Crowdsale[this]] == Escrow)
        {
            call close_Escrow__fail(__tmp__escrow_Crowdsale[this], this, __var_11);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
        gas := gas - 27761;
        call refund_Escrow__fail(__tmp__escrow_Crowdsale[this], this, __var_12);
        if (revert)
        {
            return;
        }
    }
}



implementation close_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_11: int;
  var __var_12: int;

    gas := gas - 659;
    assume now >= 0;
    assume closeTime_Crowdsale[this] >= 0;
    assume raised_Crowdsale[this] >= 0;
    assume goal_Crowdsale[this] >= 0;
    if (!(now > closeTime_Crowdsale[this]
       || raised_Crowdsale[this] >= goal_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 409;
    assume raised_Crowdsale[this] >= 0;
    assume goal_Crowdsale[this] >= 0;
    if (raised_Crowdsale[this] >= goal_Crowdsale[this])
    {
        gas := gas - 27761;
        if (DType[escrow_Crowdsale[this]] == Crowdsale)
        {
            call close_Crowdsale__success(escrow_Crowdsale[this], this, __var_11);
            if (revert)
            {
                return;
            }
        }
        else if (DType[escrow_Crowdsale[this]] == Escrow)
        {
            call close_Escrow__success(escrow_Crowdsale[this], this, __var_11);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
        gas := gas - 27761;
        call refund_Escrow__success(escrow_Crowdsale[this], this, __var_12);
        if (revert)
        {
            return;
        }
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == Crowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Escrow)
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
    if (DType[to] == Crowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == Escrow)
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
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var b_s35: Ref;
  var p_s54: Ref;
  var p_s105: Ref;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 7)
    {
        gas := gas - 21000;
        call close_Crowdsale__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call invest_Crowdsale__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call deposit_Escrow__fail(from, to, msgvalue_MSG, p_s54);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call withdraw_Escrow__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call claimRefund_Escrow__fail(from, to, msgvalue_MSG, p_s105);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call close_Escrow__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call refund_Escrow__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var b_s35: Ref;
  var p_s54: Ref;
  var p_s105: Ref;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 7)
    {
        gas := gas - 21000;
        call close_Crowdsale__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call invest_Crowdsale__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call deposit_Escrow__success(from, to, msgvalue_MSG, p_s54);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call withdraw_Escrow__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call claimRefund_Escrow__success(from, to, msgvalue_MSG, p_s105);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call close_Escrow__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call refund_Escrow__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
}



implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;
  var __snap___tmp__Balance: [Ref]int;
  var __snap___tmp__DType: [Ref]ContractName;
  var __snap___tmp__Alloc: [Ref]bool;
  var __snap___tmp__balance_ADDR: [Ref]int;
  var __snap___tmp__M_Ref_int: [Ref][Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__deposits_Escrow: [Ref]Ref;
  var __snap___tmp__state_Escrow: [Ref]int;
  var __snap___tmp__owner_Escrow: [Ref]Ref;
  var __snap___tmp__beneficiary_Escrow: [Ref]Ref;
  var __snap___tmp__escrow_Crowdsale: [Ref]Ref;
  var __snap___tmp__raised_Crowdsale: [Ref]int;
  var __snap___tmp__goal_Crowdsale: [Ref]int;
  var __snap___tmp__closeTime_Crowdsale: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__deposits_Escrow := __tmp__deposits_Escrow;
        __snap___tmp__state_Escrow := __tmp__state_Escrow;
        __snap___tmp__owner_Escrow := __tmp__owner_Escrow;
        __snap___tmp__beneficiary_Escrow := __tmp__beneficiary_Escrow;
        __snap___tmp__escrow_Crowdsale := __tmp__escrow_Crowdsale;
        __snap___tmp__raised_Crowdsale := __tmp__raised_Crowdsale;
        __snap___tmp__goal_Crowdsale := __tmp__goal_Crowdsale;
        __snap___tmp__closeTime_Crowdsale := __tmp__closeTime_Crowdsale;
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
        __tmp__M_Ref_int := __snap___tmp__M_Ref_int;
        __tmp__Length := __snap___tmp__Length;
        __tmp__sum := __snap___tmp__sum;
        __tmp__now := __snap___tmp__now;
        __tmp__deposits_Escrow := __snap___tmp__deposits_Escrow;
        __tmp__state_Escrow := __snap___tmp__state_Escrow;
        __tmp__owner_Escrow := __snap___tmp__owner_Escrow;
        __tmp__beneficiary_Escrow := __snap___tmp__beneficiary_Escrow;
        __tmp__escrow_Crowdsale := __snap___tmp__escrow_Crowdsale;
        __tmp__raised_Crowdsale := __snap___tmp__raised_Crowdsale;
        __tmp__goal_Crowdsale := __snap___tmp__goal_Crowdsale;
        __tmp__closeTime_Crowdsale := __snap___tmp__closeTime_Crowdsale;
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__deposits_Escrow := deposits_Escrow;
        __tmp__state_Escrow := state_Escrow;
        __tmp__owner_Escrow := owner_Escrow;
        __tmp__beneficiary_Escrow := beneficiary_Escrow;
        __tmp__escrow_Crowdsale := escrow_Crowdsale;
        __tmp__raised_Crowdsale := raised_Crowdsale;
        __tmp__goal_Crowdsale := goal_Crowdsale;
        __tmp__closeTime_Crowdsale := closeTime_Crowdsale;
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



implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 978;
    if (!(__tmp__owner_Escrow[this] == msgsender_MSG))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 978;
    if (!(owner_Escrow[this] == msgsender_MSG))
    {
        revert := true;
        return;
    }
}


implementation CorralChoice_Escrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var b_s35: Ref;
  var p_s54: Ref;
  var p_s105: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc b_s35;
    havoc p_s54;
    havoc p_s105;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume(DType[msgsender_MSG] != Crowdsale && DType[msgsender_MSG] != Escrow);
    if (choice == 5)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, p_s54);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call withdraw_Escrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call claimRefund_Escrow(this, msgsender_MSG, msgvalue_MSG, p_s105);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call close_Escrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call refund_Escrow(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_Escrow()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var b_s35: Ref;

    assume now >= 0;
    assume DType[this] == Escrow;
    gas := gas - 53000;
    call Escrow_Escrow(this, msgsender_MSG, msgvalue_MSG, b_s35);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Escrow(this);
    }
}



implementation CorralChoice_Crowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume(DType[msgsender_MSG] != Crowdsale && DType[msgsender_MSG] != Escrow);
    if (choice == 2)
    {
        gas := gas - 21000;
        call close_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call invest_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3) {
        call CorralChoice_Escrow(escrow_Crowdsale[this]);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Crowdsale;
    gas := gas - 53000;
    call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Crowdsale(this);
    }
}


