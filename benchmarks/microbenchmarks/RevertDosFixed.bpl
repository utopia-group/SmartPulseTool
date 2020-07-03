// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:RevertDosFixed.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// #LTLFairness: [](<>(started(SecureAuction.bid, msg.value > this.currentBid)))
// #LTLProperty: [](<>(finished(SecureAuction.bid)))

type Ref = int;

type ContractName = int;

var null: Ref;

var SecureAuction: ContractName;

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

var M_Ref_int_refunds0: [Ref][Ref]int;

var sum_refunds0: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} SecureAuction_SecureAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int_refunds0, sum_refunds0, Alloc;



procedure {:inline 1} SecureAuction_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, Balance, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int_refunds0, sum_refunds0, Alloc;



implementation SecureAuction_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_refunds0 := M_Ref_int_refunds0;
        __tmp__sum_refunds0 := sum_refunds0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__currentFrontrunner_SecureAuction := currentFrontrunner_SecureAuction;
        __tmp__currentBid_SecureAuction := currentBid_SecureAuction;
        __tmp__refunds_SecureAuction := refunds_SecureAuction;
        call SecureAuction_SecureAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SecureAuction_SecureAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.currentFrontrunner=currentFrontrunner_SecureAuction[this]"} currentFrontrunner_SecureAuction: [Ref]Ref;

var {:access "this.currentBid=currentBid_SecureAuction[this]"} currentBid_SecureAuction: [Ref]int;

var {:access "this.refunds[i0]=M_Ref_int_refunds0[refunds_SecureAuction[this]][i0]"} {:sum "sum(this.refunds)=sum_refunds0[refunds_SecureAuction[this]]"} refunds_SecureAuction: [Ref]Ref;

procedure {:public} {:inline 1} bid_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, gas, Balance, sum_refunds0, M_Ref_int_refunds0, currentFrontrunner_SecureAuction, currentBid_SecureAuction;



implementation bid_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_refunds0 := M_Ref_int_refunds0;
        __tmp__sum_refunds0 := sum_refunds0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__currentFrontrunner_SecureAuction := currentFrontrunner_SecureAuction;
        __tmp__currentBid_SecureAuction := currentBid_SecureAuction;
        __tmp__refunds_SecureAuction := refunds_SecureAuction;
        call bid_SecureAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call bid_SecureAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, gas, sum_refunds0, M_Ref_int_refunds0, Balance, currentFrontrunner_SecureAuction, currentBid_SecureAuction;



implementation withdraw_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_refunds0 := M_Ref_int_refunds0;
        __tmp__sum_refunds0 := sum_refunds0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__currentFrontrunner_SecureAuction := currentFrontrunner_SecureAuction;
        __tmp__currentBid_SecureAuction := currentBid_SecureAuction;
        __tmp__refunds_SecureAuction := refunds_SecureAuction;
        call withdraw_SecureAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_SecureAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, sum_refunds0, M_Ref_int_refunds0, currentFrontrunner_SecureAuction, currentBid_SecureAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, sum_refunds0, M_Ref_int_refunds0, currentFrontrunner_SecureAuction, currentBid_SecureAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, revert, gas, Balance, sum_refunds0, M_Ref_int_refunds0, currentFrontrunner_SecureAuction, currentBid_SecureAuction;



procedure CorralChoice_SecureAuction(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, Balance, sum_refunds0, M_Ref_int_refunds0, currentFrontrunner_SecureAuction, currentBid_SecureAuction;



procedure main();
  modifies gas, Alloc, Balance, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int_refunds0, sum_refunds0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_refunds0: [Ref][Ref]int;

var __tmp__sum_refunds0: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__currentFrontrunner_SecureAuction: [Ref]Ref;

var __tmp__currentBid_SecureAuction: [Ref]int;

var __tmp__refunds_SecureAuction: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} SecureAuction_SecureAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Alloc;



procedure {:inline 1} SecureAuction_SecureAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int_refunds0, sum_refunds0, Alloc;



procedure {:inline 1} SecureAuction_SecureAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Alloc;



procedure {:inline 1} bid_SecureAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, sum_refunds0, M_Ref_int_refunds0, currentFrontrunner_SecureAuction, currentBid_SecureAuction;



procedure {:inline 1} bid_SecureAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__sum_refunds0, __tmp__M_Ref_int_refunds0, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction;



procedure {:inline 1} withdraw_SecureAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, sum_refunds0, M_Ref_int_refunds0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, Balance, currentFrontrunner_SecureAuction, currentBid_SecureAuction;



procedure {:inline 1} withdraw_SecureAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__sum_refunds0, __tmp__M_Ref_int_refunds0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__sum_refunds0, __tmp__M_Ref_int_refunds0, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__refunds_SecureAuction;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__sum_refunds0, __tmp__M_Ref_int_refunds0, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__refunds_SecureAuction;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_refunds0, __tmp__sum_refunds0, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_SecureAuction, __tmp__currentBid_SecureAuction, __tmp__refunds_SecureAuction, revert, gas;



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



implementation SecureAuction_SecureAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__currentFrontrunner_SecureAuction[this] := null;
    __tmp__currentBid_SecureAuction[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__refunds_SecureAuction[this] := __var_1;
    __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]] := zeroRefIntArr();
    __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]] := 0;
}



implementation SecureAuction_SecureAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    currentFrontrunner_SecureAuction[this] := null;
    currentBid_SecureAuction[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    refunds_SecureAuction[this] := __var_1;
    M_Ref_int_refunds0[refunds_SecureAuction[this]] := zeroRefIntArr();
    sum_refunds0[refunds_SecureAuction[this]] := 0;
}



implementation SecureAuction_SecureAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SecureAuction_SecureAuction_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SecureAuction_SecureAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SecureAuction_SecureAuction_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation bid_SecureAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 228;
    assume msgvalue_MSG >= 0;
    assume __tmp__currentBid_SecureAuction[this] >= 0;
    if (!(msgvalue_MSG > __tmp__currentBid_SecureAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    __var_2 := null;
    if (__tmp__currentFrontrunner_SecureAuction[this] != null)
    {
        gas := gas - 20765;
        assume __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][__tmp__currentFrontrunner_SecureAuction[this]]
           >= 0;
        assume __tmp__currentBid_SecureAuction[this] >= 0;
        __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]] := __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]]
           - __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][__tmp__currentFrontrunner_SecureAuction[this]];
        __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][__tmp__currentFrontrunner_SecureAuction[this]] := __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][__tmp__currentFrontrunner_SecureAuction[this]]
           + __tmp__currentBid_SecureAuction[this];
        __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]] := __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]]
           + __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][__tmp__currentFrontrunner_SecureAuction[this]];
    }

    gas := gas - 20266;
    __tmp__currentFrontrunner_SecureAuction[this] := msgsender_MSG;
    gas := gas - 20013;
    assume __tmp__currentBid_SecureAuction[this] >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__currentBid_SecureAuction[this] := msgvalue_MSG;
}



implementation bid_SecureAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 228;
    assume msgvalue_MSG >= 0;
    assume currentBid_SecureAuction[this] >= 0;
    if (!(msgvalue_MSG > currentBid_SecureAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    __var_2 := null;
    if (currentFrontrunner_SecureAuction[this] != null)
    {
        gas := gas - 20765;
        assume M_Ref_int_refunds0[refunds_SecureAuction[this]][currentFrontrunner_SecureAuction[this]]
           >= 0;
        assume currentBid_SecureAuction[this] >= 0;
        sum_refunds0[refunds_SecureAuction[this]] := sum_refunds0[refunds_SecureAuction[this]]
           - M_Ref_int_refunds0[refunds_SecureAuction[this]][currentFrontrunner_SecureAuction[this]];
        M_Ref_int_refunds0[refunds_SecureAuction[this]][currentFrontrunner_SecureAuction[this]] := M_Ref_int_refunds0[refunds_SecureAuction[this]][currentFrontrunner_SecureAuction[this]]
           + currentBid_SecureAuction[this];
        sum_refunds0[refunds_SecureAuction[this]] := sum_refunds0[refunds_SecureAuction[this]]
           + M_Ref_int_refunds0[refunds_SecureAuction[this]][currentFrontrunner_SecureAuction[this]];
    }

    gas := gas - 20266;
    currentFrontrunner_SecureAuction[this] := msgsender_MSG;
    gas := gas - 20013;
    assume currentBid_SecureAuction[this] >= 0;
    assume msgvalue_MSG >= 0;
    currentBid_SecureAuction[this] := msgvalue_MSG;
}



implementation withdraw_SecureAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var refund_s68: int;
  var __var_3: int;
  var __var_4: bool;

    gas := gas - 306;
    assume refund_s68 >= 0;
    assume __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][msgsender_MSG]
       >= 0;
    refund_s68 := __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][msgsender_MSG];
    gas := gas - 5103;
    assume __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][msgsender_MSG]
       >= 0;
    __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]] := __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]]
       - __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][msgsender_MSG];
    __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][msgsender_MSG] := 0;
    __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]] := __tmp__sum_refunds0[__tmp__refunds_SecureAuction[this]]
       + __tmp__M_Ref_int_refunds0[__tmp__refunds_SecureAuction[this]][msgsender_MSG];
    gas := gas - 35786;
    __var_3 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_3 := __var_3 - gas;
    assume refund_s68 >= 0;
    call __var_4 := send__fail(this, msgsender_MSG, refund_s68);
    if (!__var_4)
    {
        revert := true;
        return;
    }

    gas := __var_3 + gas;
}



implementation withdraw_SecureAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var refund_s68: int;
  var __var_3: int;
  var __var_4: bool;

    gas := gas - 306;
    assume refund_s68 >= 0;
    assume M_Ref_int_refunds0[refunds_SecureAuction[this]][msgsender_MSG] >= 0;
    refund_s68 := M_Ref_int_refunds0[refunds_SecureAuction[this]][msgsender_MSG];
    gas := gas - 5103;
    assume M_Ref_int_refunds0[refunds_SecureAuction[this]][msgsender_MSG] >= 0;
    sum_refunds0[refunds_SecureAuction[this]] := sum_refunds0[refunds_SecureAuction[this]]
       - M_Ref_int_refunds0[refunds_SecureAuction[this]][msgsender_MSG];
    M_Ref_int_refunds0[refunds_SecureAuction[this]][msgsender_MSG] := 0;
    sum_refunds0[refunds_SecureAuction[this]] := sum_refunds0[refunds_SecureAuction[this]]
       + M_Ref_int_refunds0[refunds_SecureAuction[this]][msgsender_MSG];
    gas := gas - 35786;
    __var_3 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_3 := __var_3 - gas;
    assume refund_s68 >= 0;
    call __var_4 := send__success(this, msgsender_MSG, refund_s68);
    if (!__var_4)
    {
        revert := true;
        return;
    }

    gas := __var_3 + gas;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == SecureAuction)
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
    if (DType[to] == SecureAuction)
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
        if (__tmp__DType[from] == SecureAuction)
        {
            if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call bid_SecureAuction__fail(from, to, msgvalue_MSG);
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
                    call withdraw_SecureAuction__fail(from, to, msgvalue_MSG);
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
        if (DType[from] == SecureAuction)
        {
            if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call bid_SecureAuction__success(from, to, msgvalue_MSG);
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
                    call withdraw_SecureAuction__success(from, to, msgvalue_MSG);
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
  var __snap___tmp__M_Ref_int_refunds0: [Ref][Ref]int;
  var __snap___tmp__sum_refunds0: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__currentFrontrunner_SecureAuction: [Ref]Ref;
  var __snap___tmp__currentBid_SecureAuction: [Ref]int;
  var __snap___tmp__refunds_SecureAuction: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_refunds0 := __tmp__M_Ref_int_refunds0;
        __snap___tmp__sum_refunds0 := __tmp__sum_refunds0;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__currentFrontrunner_SecureAuction := __tmp__currentFrontrunner_SecureAuction;
        __snap___tmp__currentBid_SecureAuction := __tmp__currentBid_SecureAuction;
        __snap___tmp__refunds_SecureAuction := __tmp__refunds_SecureAuction;
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
        __tmp__M_Ref_int_refunds0 := __snap___tmp__M_Ref_int_refunds0;
        __tmp__sum_refunds0 := __snap___tmp__sum_refunds0;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__currentFrontrunner_SecureAuction := __snap___tmp__currentFrontrunner_SecureAuction;
        __tmp__currentBid_SecureAuction := __snap___tmp__currentBid_SecureAuction;
        __tmp__refunds_SecureAuction := __snap___tmp__refunds_SecureAuction;
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
        __tmp__M_Ref_int_refunds0 := M_Ref_int_refunds0;
        __tmp__sum_refunds0 := sum_refunds0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__currentFrontrunner_SecureAuction := currentFrontrunner_SecureAuction;
        __tmp__currentBid_SecureAuction := currentBid_SecureAuction;
        __tmp__refunds_SecureAuction := refunds_SecureAuction;
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



implementation CorralChoice_SecureAuction(this: Ref)
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
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SecureAuction;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG >= 0;
            call bid_SecureAuction(this, msgsender_MSG, msgvalue_MSG);
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call withdraw_SecureAuction(this, msgsender_MSG, msgvalue_MSG);
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
    assume DType[this] == SecureAuction;
    gas := gas - 53000;
    call SecureAuction_SecureAuction__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SecureAuction(this);
    }
}


