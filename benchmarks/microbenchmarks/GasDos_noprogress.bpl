// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:GasDos.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// #LTLVariables: user:Ref
// #LTLFairness: <>(finished(CrowdFund.close)) && [](<>(started(CrowdFund.refund, msg.sender == user && Balance[this] >= fsum(CrowdFund.buy, 2, msg.sender == user)))) && [](!reverted(send(from, to, amt), __tmp__Balance[from] >= amt && success == false))
// #LTLProperty: [](finished(CrowdFund.buy, msg.sender == user) ==> <>(finished(send(from, to, amt), success == true && to == user && amt == fsum(CrowdFund.buy, 2, msg.sender == user))))

type Ref = int;

type ContractName = int;

var null: Ref;

var CrowdFund: ContractName;

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

function nonlinearMod(x: int, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int_refundAmount0: [Ref][Ref]int;

var sum_refundAmount0: [Ref]int;

var M_int_Ref: [Ref][int]Ref;

var sum: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} CrowdFund_CrowdFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, refundAddresses_CrowdFund, refundAmount_CrowdFund, M_Ref_int_refundAmount0, sum_refundAmount0, closed_CrowdFund, Alloc;



procedure {:inline 1} CrowdFund_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, Balance, refundAddresses_CrowdFund, refundAmount_CrowdFund, M_Ref_int_refundAmount0, sum_refundAmount0, closed_CrowdFund, Alloc;



implementation CrowdFund_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_refundAmount0 := M_Ref_int_refundAmount0;
        __tmp__sum_refundAmount0 := sum_refundAmount0;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFund := refundAddresses_CrowdFund;
        __tmp__refundAmount_CrowdFund := refundAmount_CrowdFund;
        __tmp__closed_CrowdFund := closed_CrowdFund;
        call CrowdFund_CrowdFund__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call CrowdFund_CrowdFund__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.refundAddresses[i0]=M_int_Ref[refundAddresses_CrowdFund[this]][i0]"} {:sum "sum(this.refundAddresses)=sum[refundAddresses_CrowdFund[this]]"} refundAddresses_CrowdFund: [Ref]Ref;

var {:access "this.refundAmount[i0]=M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][i0]"} {:sum "sum(this.refundAmount)=sum_refundAmount0[refundAmount_CrowdFund[this]]"} refundAmount_CrowdFund: [Ref]Ref;

var {:access "this.closed=closed_CrowdFund[this]"} closed_CrowdFund: [Ref]bool;

procedure {:public} {:inline 1} buy_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, gas, Balance, M_int_Ref, Length, sum_refundAmount0, M_Ref_int_refundAmount0;



implementation buy_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_refundAmount0 := M_Ref_int_refundAmount0;
        __tmp__sum_refundAmount0 := sum_refundAmount0;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFund := refundAddresses_CrowdFund;
        __tmp__refundAmount_CrowdFund := refundAmount_CrowdFund;
        __tmp__closed_CrowdFund := closed_CrowdFund;
        call buy_CrowdFund__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call buy_CrowdFund__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} close_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, gas, closed_CrowdFund;



implementation close_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_refundAmount0 := M_Ref_int_refundAmount0;
        __tmp__sum_refundAmount0 := sum_refundAmount0;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFund := refundAddresses_CrowdFund;
        __tmp__refundAmount_CrowdFund := refundAmount_CrowdFund;
        __tmp__closed_CrowdFund := closed_CrowdFund;
        call close_CrowdFund__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call close_CrowdFund__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} refund_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, gas, sum_refundAmount0, M_Ref_int_refundAmount0, Balance, M_int_Ref, Length, closed_CrowdFund;



implementation refund_CrowdFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_refundAmount0 := M_Ref_int_refundAmount0;
        __tmp__sum_refundAmount0 := sum_refundAmount0;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFund := refundAddresses_CrowdFund;
        __tmp__refundAmount_CrowdFund := refundAmount_CrowdFund;
        __tmp__closed_CrowdFund := closed_CrowdFund;
        call refund_CrowdFund__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call refund_CrowdFund__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, M_int_Ref, Length, sum_refundAmount0, M_Ref_int_refundAmount0, closed_CrowdFund, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, M_int_Ref, Length, sum_refundAmount0, M_Ref_int_refundAmount0, closed_CrowdFund, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, revert, gas, Balance, M_int_Ref, Length, sum_refundAmount0, M_Ref_int_refundAmount0, closed_CrowdFund;



procedure CorralChoice_CrowdFund(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, Balance, M_int_Ref, Length, sum_refundAmount0, M_Ref_int_refundAmount0, closed_CrowdFund;



procedure main();
  modifies gas, Alloc, Balance, refundAddresses_CrowdFund, refundAmount_CrowdFund, M_Ref_int_refundAmount0, sum_refundAmount0, closed_CrowdFund, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, M_int_Ref, Length;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_refundAmount0: [Ref][Ref]int;

var __tmp__sum_refundAmount0: [Ref]int;

var __tmp__M_int_Ref: [Ref][int]Ref;

var __tmp__sum: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__refundAddresses_CrowdFund: [Ref]Ref;

var __tmp__refundAmount_CrowdFund: [Ref]Ref;

var __tmp__closed_CrowdFund: [Ref]bool;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} CrowdFund_CrowdFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__closed_CrowdFund, __tmp__Alloc;



procedure {:inline 1} CrowdFund_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, refundAddresses_CrowdFund, refundAmount_CrowdFund, M_Ref_int_refundAmount0, sum_refundAmount0, closed_CrowdFund, Alloc;



procedure {:inline 1} CrowdFund_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__closed_CrowdFund, __tmp__Alloc;



procedure {:inline 1} buy_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, M_int_Ref, Length, sum_refundAmount0, M_Ref_int_refundAmount0;



procedure {:inline 1} buy_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__M_int_Ref, __tmp__Length, __tmp__sum_refundAmount0, __tmp__M_Ref_int_refundAmount0;



procedure {:inline 1} close_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, closed_CrowdFund;



procedure {:inline 1} close_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__closed_CrowdFund;



procedure {:inline 1} refund_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, sum_refundAmount0, M_Ref_int_refundAmount0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, Balance, M_int_Ref, Length, closed_CrowdFund;



procedure {:inline 1} refund_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__sum_refundAmount0, __tmp__M_Ref_int_refundAmount0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__M_int_Ref, __tmp__Length, __tmp__sum_refundAmount0, __tmp__M_Ref_int_refundAmount0, __tmp__closed_CrowdFund, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__sum, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__M_int_Ref, __tmp__Length, __tmp__sum_refundAmount0, __tmp__M_Ref_int_refundAmount0, __tmp__closed_CrowdFund, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__sum, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refundAmount0, __tmp__sum_refundAmount0, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFund, __tmp__refundAmount_CrowdFund, __tmp__closed_CrowdFund, revert, gas;



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



implementation CrowdFund_CrowdFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__refundAddresses_CrowdFund[this] := __var_1;
    assume __tmp__Length[__tmp__refundAddresses_CrowdFund[this]] == 0;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__refundAmount_CrowdFund[this] := __var_2;
    __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]] := zeroRefIntArr();
    __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]] := 0;
    __tmp__closed_CrowdFund[this] := false;
}



implementation CrowdFund_CrowdFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    refundAddresses_CrowdFund[this] := __var_1;
    assume Length[refundAddresses_CrowdFund[this]] == 0;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    refundAmount_CrowdFund[this] := __var_2;
    M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]] := zeroRefIntArr();
    sum_refundAmount0[refundAmount_CrowdFund[this]] := 0;
    closed_CrowdFund[this] := false;
}



implementation CrowdFund_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call CrowdFund_CrowdFund_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation CrowdFund_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call CrowdFund_CrowdFund_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation buy_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 262;
    if (!!__tmp__closed_CrowdFund[this])
    {
        revert := true;
        return;
    }

    gas := gas - 28;
    assume msgvalue_MSG >= 0;
    if (!(msgvalue_MSG > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 304;
    assume __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][msgsender_MSG]
       == 0)
    {
        gas := gas - 20364;
        __var_3 := __tmp__Length[__tmp__refundAddresses_CrowdFund[this]];
        __tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][__var_3] := msgsender_MSG;
        __tmp__Length[__tmp__refundAddresses_CrowdFund[this]] := __var_3 + 1;
    }

    gas := gas - 20327;
    assume __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][msgsender_MSG]
       >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]] := __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]]
       - __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][msgsender_MSG];
    __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][msgsender_MSG] := __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][msgsender_MSG]
       + msgvalue_MSG;
    __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]] := __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]]
       + __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][msgsender_MSG];
}



implementation buy_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 262;
    if (!!closed_CrowdFund[this])
    {
        revert := true;
        return;
    }

    gas := gas - 28;
    assume msgvalue_MSG >= 0;
    if (!(msgvalue_MSG > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 304;
    assume M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][msgsender_MSG] >= 0;
    if (M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][msgsender_MSG] == 0)
    {
        gas := gas - 20364;
        __var_3 := Length[refundAddresses_CrowdFund[this]];
        M_int_Ref[refundAddresses_CrowdFund[this]][__var_3] := msgsender_MSG;
        Length[refundAddresses_CrowdFund[this]] := __var_3 + 1;
    }

    gas := gas - 20327;
    assume M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][msgsender_MSG] >= 0;
    assume msgvalue_MSG >= 0;
    sum_refundAmount0[refundAmount_CrowdFund[this]] := sum_refundAmount0[refundAmount_CrowdFund[this]]
       - M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][msgsender_MSG];
    M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][msgsender_MSG] := M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][msgsender_MSG]
       + msgvalue_MSG;
    sum_refundAmount0[refundAmount_CrowdFund[this]] := sum_refundAmount0[refundAmount_CrowdFund[this]]
       + M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][msgsender_MSG];
}



implementation close_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 262;
    if (!!__tmp__closed_CrowdFund[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__closed_CrowdFund[this] := true;
}



implementation close_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 262;
    if (!!closed_CrowdFund[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    closed_CrowdFund[this] := true;
}



implementation refund_CrowdFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var i_s101: int;
  var __var_4: int;
  var __var_5: bool;

    gas := gas - 259;
    if (!__tmp__closed_CrowdFund[this])
    {
        revert := true;
        return;
    }

    gas := gas - 217;
    assume i_s101 >= 0;
    assume __tmp__Length[__tmp__refundAddresses_CrowdFund[this]] >= 0;
    gas := gas - 11;
    assume i_s101 >= 0;
    i_s101 := 0;
    while (i_s101 < __tmp__Length[__tmp__refundAddresses_CrowdFund[this]])
    {
        gas := gas - 37118;
        __var_4 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_4 := __var_4 - gas;
        assume i_s101 >= 0;
        assume __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][i_s101]]
           >= 0;
        assume i_s101 >= 0;
        call __var_5 := send__fail(this, __tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][i_s101], __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][i_s101]]);
        if (!__var_5)
        {
            revert := true;
            return;
        }

        gas := __var_4 + gas;
        gas := gas - 5626;
        assume i_s101 >= 0;
        assume __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][i_s101]]
           >= 0;
        __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]] := __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]]
           - __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][i_s101]];
        __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][i_s101]] := 0;
        __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]] := __tmp__sum_refundAmount0[__tmp__refundAmount_CrowdFund[this]]
           + __tmp__M_Ref_int_refundAmount0[__tmp__refundAmount_CrowdFund[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFund[this]][i_s101]];
        gas := gas - 19;
        assume i_s101 >= 0;
        i_s101 := i_s101 + 1;
        assume i_s101 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation refund_CrowdFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var i_s101: int;
  var __var_4: int;
  var __var_5: bool;

    gas := gas - 259;
    if (!closed_CrowdFund[this])
    {
        revert := true;
        return;
    }

    gas := gas - 217;
    assume i_s101 >= 0;
    assume Length[refundAddresses_CrowdFund[this]] >= 0;
    gas := gas - 11;
    assume i_s101 >= 0;
    i_s101 := 0;
    while (i_s101 < Length[refundAddresses_CrowdFund[this]])
    {
        gas := gas - 37118;
        __var_4 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_4 := __var_4 - gas;
        assume i_s101 >= 0;
        assume M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][M_int_Ref[refundAddresses_CrowdFund[this]][i_s101]]
           >= 0;
        assume i_s101 >= 0;
        call __var_5 := send__success(this, M_int_Ref[refundAddresses_CrowdFund[this]][i_s101], M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][M_int_Ref[refundAddresses_CrowdFund[this]][i_s101]]);
        if (!__var_5)
        {
            revert := true;
            return;
        }

        gas := __var_4 + gas;
        gas := gas - 5626;
        assume i_s101 >= 0;
        assume M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][M_int_Ref[refundAddresses_CrowdFund[this]][i_s101]]
           >= 0;
        sum_refundAmount0[refundAmount_CrowdFund[this]] := sum_refundAmount0[refundAmount_CrowdFund[this]]
           - M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][M_int_Ref[refundAddresses_CrowdFund[this]][i_s101]];
        M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][M_int_Ref[refundAddresses_CrowdFund[this]][i_s101]] := 0;
        sum_refundAmount0[refundAmount_CrowdFund[this]] := sum_refundAmount0[refundAmount_CrowdFund[this]]
           + M_Ref_int_refundAmount0[refundAmount_CrowdFund[this]][M_int_Ref[refundAddresses_CrowdFund[this]][i_s101]];
        gas := gas - 19;
        assume i_s101 >= 0;
        i_s101 := i_s101 + 1;
        assume i_s101 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == CrowdFund)
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
    if (DType[to] == CrowdFund)
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
  var iterate: bool;
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 0)
    {
        revert := true;
        return;
    }

    if (gas < 21000)
    {
        return;
    }

    while (iterate && gas >= 21000)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc iterate;
        if (__tmp__DType[from] == CrowdFund)
        {
            if (choice == 3)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call buy_CrowdFund__fail(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call close_CrowdFund__fail(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 1)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call refund_CrowdFund__fail(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
        }
    }
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
  var iterate: bool;
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 0)
    {
        revert := true;
        return;
    }

    if (gas < 21000)
    {
        return;
    }

    while (iterate && gas >= 21000)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc iterate;
        if (DType[from] == CrowdFund)
        {
            if (choice == 3)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call buy_CrowdFund__success(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call close_CrowdFund__success(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 1)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call refund_CrowdFund__success(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
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
  var __snap___tmp__M_Ref_int_refundAmount0: [Ref][Ref]int;
  var __snap___tmp__sum_refundAmount0: [Ref]int;
  var __snap___tmp__M_int_Ref: [Ref][int]Ref;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__refundAddresses_CrowdFund: [Ref]Ref;
  var __snap___tmp__refundAmount_CrowdFund: [Ref]Ref;
  var __snap___tmp__closed_CrowdFund: [Ref]bool;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_refundAmount0 := __tmp__M_Ref_int_refundAmount0;
        __snap___tmp__sum_refundAmount0 := __tmp__sum_refundAmount0;
        __snap___tmp__M_int_Ref := __tmp__M_int_Ref;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__refundAddresses_CrowdFund := __tmp__refundAddresses_CrowdFund;
        __snap___tmp__refundAmount_CrowdFund := __tmp__refundAmount_CrowdFund;
        __snap___tmp__closed_CrowdFund := __tmp__closed_CrowdFund;
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
        __tmp__M_Ref_int_refundAmount0 := __snap___tmp__M_Ref_int_refundAmount0;
        __tmp__sum_refundAmount0 := __snap___tmp__sum_refundAmount0;
        __tmp__M_int_Ref := __snap___tmp__M_int_Ref;
        __tmp__sum := __snap___tmp__sum;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__refundAddresses_CrowdFund := __snap___tmp__refundAddresses_CrowdFund;
        __tmp__refundAmount_CrowdFund := __snap___tmp__refundAmount_CrowdFund;
        __tmp__closed_CrowdFund := __snap___tmp__closed_CrowdFund;
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
        __tmp__M_Ref_int_refundAmount0 := M_Ref_int_refundAmount0;
        __tmp__sum_refundAmount0 := sum_refundAmount0;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFund := refundAddresses_CrowdFund;
        __tmp__refundAmount_CrowdFund := refundAmount_CrowdFund;
        __tmp__closed_CrowdFund := closed_CrowdFund;
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



implementation CorralChoice_CrowdFund(this: Ref)
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
    assume gas > 100000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != CrowdFund;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG >= 0;
            call buy_CrowdFund(this, msgsender_MSG, msgvalue_MSG);
        }
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call close_CrowdFund(this, msgsender_MSG, msgvalue_MSG);
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call refund_CrowdFund(this, msgsender_MSG, msgvalue_MSG);
        }
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
    assume DType[this] == CrowdFund;
    gas := gas - 53000;
    call CrowdFund_CrowdFund__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_CrowdFund(this);
    }
}


