// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /pretty:1 /print:CrowdFundBad.bpl __SolToBoogieTest_out.bpl

// Spec1
// #LTLProperty: [](call(CrowdFundBad.refundDos) {} ==> <>(success(CrowdFundBad.refundDos) {}))

// Spec2
// LTLFairness: [](<>(call(CrowdFundBad.refundDos) {}))
// LTLProperty: [](<>(success(CrowdFundBad.refundDos) {}))

type Ref = int;

type ContractName = int;

var null: Ref;

var CrowdFundBad: ContractName;

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

var M_int_Ref: [Ref][int]Ref;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} CrowdFundBad_CrowdFundBad_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad, M_Ref_int, Alloc;



procedure {:inline 1} CrowdFundBad_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad, M_Ref_int, Alloc;



implementation CrowdFundBad_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFundBad := refundAddresses_CrowdFundBad;
        __tmp__refundAmount_CrowdFundBad := refundAmount_CrowdFundBad;
        call CrowdFundBad_CrowdFundBad__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call CrowdFundBad_CrowdFundBad__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var refundAddresses_CrowdFundBad: [Ref]Ref;

var refundAmount_CrowdFundBad: [Ref]Ref;

procedure {:public} {:inline 1} donate_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, gas, Balance, M_int_Ref, Length, M_Ref_int;



implementation donate_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFundBad := refundAddresses_CrowdFundBad;
        __tmp__refundAmount_CrowdFundBad := refundAmount_CrowdFundBad;
        call donate_CrowdFundBad__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call donate_CrowdFundBad__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} refundDos_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, gas, Balance;



implementation refundDos_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFundBad := refundAddresses_CrowdFundBad;
        __tmp__refundAmount_CrowdFundBad := refundAmount_CrowdFundBad;
        call refundDos_CrowdFundBad__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call refundDos_CrowdFundBad__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, revert, Balance;



procedure BoogieEntry_CrowdFundBad();
  modifies gas, now, refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad, M_Ref_int, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, Balance, M_int_Ref, Length;



procedure CorralChoice_CrowdFundBad(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, Balance, M_int_Ref, Length, M_Ref_int;



procedure main();
  modifies gas, refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad, M_Ref_int, Alloc, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, Balance, M_int_Ref, Length;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int: [Ref][Ref]int;

var __tmp__M_int_Ref: [Ref][int]Ref;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__refundAddresses_CrowdFundBad: [Ref]Ref;

var __tmp__refundAmount_CrowdFundBad: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} CrowdFundBad_CrowdFundBad_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, __tmp__M_Ref_int, __tmp__Alloc;



procedure {:inline 1} CrowdFundBad_CrowdFundBad__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad, M_Ref_int, Alloc;



procedure {:inline 1} CrowdFundBad_CrowdFundBad__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, __tmp__M_Ref_int, __tmp__Alloc;



procedure {:inline 1} donate_CrowdFundBad__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, M_int_Ref, Length, M_Ref_int;



procedure {:inline 1} donate_CrowdFundBad__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__M_int_Ref, __tmp__Length, __tmp__M_Ref_int;



procedure {:inline 1} refundDos_CrowdFundBad__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, revert, Balance;



procedure {:inline 1} refundDos_CrowdFundBad__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_int_Ref, __tmp__Length, __tmp__now, __tmp__refundAddresses_CrowdFundBad, __tmp__refundAmount_CrowdFundBad, revert;



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



implementation CrowdFundBad_CrowdFundBad_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__refundAddresses_CrowdFundBad[this] := __var_1;
    assume __tmp__Length[__tmp__refundAddresses_CrowdFundBad[this]] == 0;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__refundAmount_CrowdFundBad[this] := __var_2;
    __tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]] := zeroRefIntArr();
}



implementation CrowdFundBad_CrowdFundBad_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    refundAddresses_CrowdFundBad[this] := __var_1;
    assume Length[refundAddresses_CrowdFundBad[this]] == 0;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    refundAmount_CrowdFundBad[this] := __var_2;
    M_Ref_int[refundAmount_CrowdFundBad[this]] := zeroRefIntArr();
}



implementation CrowdFundBad_CrowdFundBad__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call CrowdFundBad_CrowdFundBad_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation CrowdFundBad_CrowdFundBad__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call CrowdFundBad_CrowdFundBad_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation donate_CrowdFundBad__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 28;
    assume msgvalue_MSG >= 0;
    if (!(msgvalue_MSG > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 304;
    assume __tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]][msgsender_MSG] >= 0;
    if (__tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]][msgsender_MSG] == 0)
    {
        gas := gas - 20364;
        __var_3 := __tmp__Length[__tmp__refundAddresses_CrowdFundBad[this]];
        __tmp__M_int_Ref[__tmp__refundAddresses_CrowdFundBad[this]][__var_3] := msgsender_MSG;
        __tmp__Length[__tmp__refundAddresses_CrowdFundBad[this]] := __var_3 + 1;
    }

    gas := gas - 20327;
    assume __tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]][msgsender_MSG] >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]][msgsender_MSG] := __tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]][msgsender_MSG]
       + msgvalue_MSG;
}



implementation donate_CrowdFundBad__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 28;
    assume msgvalue_MSG >= 0;
    if (!(msgvalue_MSG > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 304;
    assume M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG] >= 0;
    if (M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG] == 0)
    {
        gas := gas - 20364;
        __var_3 := Length[refundAddresses_CrowdFundBad[this]];
        M_int_Ref[refundAddresses_CrowdFundBad[this]][__var_3] := msgsender_MSG;
        Length[refundAddresses_CrowdFundBad[this]] := __var_3 + 1;
    }

    gas := gas - 20327;
    assume M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG] >= 0;
    assume msgvalue_MSG >= 0;
    M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG] := M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG] + msgvalue_MSG;
}



implementation refundDos_CrowdFundBad__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var i_s67: int;
  var __var_4: bool;
  var __var_5: int;

    gas := gas - 217;
    assume i_s67 >= 0;
    assume __tmp__Length[__tmp__refundAddresses_CrowdFundBad[this]] >= 0;
    gas := gas - 3;
    havoc i_s67;
    while (i_s67 < __tmp__Length[__tmp__refundAddresses_CrowdFundBad[this]])
    {
        gas := gas - 37115;
        assume i_s67 >= 0;
        assume __tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFundBad[this]][i_s67]]
           >= 0;
        __var_5 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_5 := __var_5 - gas;
        assume i_s67 >= 0;
        call __var_4 := send__fail(this, __tmp__M_int_Ref[__tmp__refundAddresses_CrowdFundBad[this]][i_s67], __tmp__M_Ref_int[__tmp__refundAmount_CrowdFundBad[this]][__tmp__M_int_Ref[__tmp__refundAddresses_CrowdFundBad[this]][i_s67]]);
        gas := __var_5 + gas;
        gas := gas - 19;
        assume i_s67 >= 0;
        i_s67 := i_s67 + 1;
        assume i_s67 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation refundDos_CrowdFundBad__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var i_s67: int;
  var __var_4: bool;
  var __var_5: int;

    gas := gas - 217;
    assume i_s67 >= 0;
    assume Length[refundAddresses_CrowdFundBad[this]] >= 0;
    gas := gas - 3;
    havoc i_s67;
    while (i_s67 < Length[refundAddresses_CrowdFundBad[this]])
    {
        gas := gas - 37115;
        assume i_s67 >= 0;
        assume M_Ref_int[refundAmount_CrowdFundBad[this]][M_int_Ref[refundAddresses_CrowdFundBad[this]][i_s67]]
           >= 0;
        __var_5 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_5 := __var_5 - gas;
        assume i_s67 >= 0;
        call __var_4 := send__success(this, M_int_Ref[refundAddresses_CrowdFundBad[this]][i_s67], M_Ref_int[refundAmount_CrowdFundBad[this]][M_int_Ref[refundAddresses_CrowdFundBad[this]][i_s67]]);
        gas := __var_5 + gas;
        gas := gas - 19;
        assume i_s67 >= 0;
        i_s67 := i_s67 + 1;
        assume i_s67 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == CrowdFundBad)
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
    if (DType[to] == CrowdFundBad)
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
  var __snap___tmp__M_Ref_int: [Ref][Ref]int;
  var __snap___tmp__M_int_Ref: [Ref][int]Ref;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__refundAddresses_CrowdFundBad: [Ref]Ref;
  var __snap___tmp__refundAmount_CrowdFundBad: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__M_int_Ref := __tmp__M_int_Ref;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__refundAddresses_CrowdFundBad := __tmp__refundAddresses_CrowdFundBad;
        __snap___tmp__refundAmount_CrowdFundBad := __tmp__refundAmount_CrowdFundBad;
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
        __tmp__M_int_Ref := __snap___tmp__M_int_Ref;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__refundAddresses_CrowdFundBad := __snap___tmp__refundAddresses_CrowdFundBad;
        __tmp__refundAmount_CrowdFundBad := __snap___tmp__refundAmount_CrowdFundBad;
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__refundAddresses_CrowdFundBad := refundAddresses_CrowdFundBad;
        __tmp__refundAmount_CrowdFundBad := refundAmount_CrowdFundBad;
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



implementation BoogieEntry_CrowdFundBad()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var tmpNow: int;

    assume now >= 0;
    assume DType[this] == CrowdFundBad;
    gas := gas - 53000;
    call CrowdFundBad_CrowdFundBad__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc tmpNow;
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        tmpNow := now;
        havoc now;
        assume now > tmpNow;
        if (choice == 2)
        {
            gas := gas - 21000;
            call donate_CrowdFundBad(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 1)
        {
            gas := gas - 21000;
            call refundDos_CrowdFundBad(this, msgsender_MSG, msgvalue_MSG);
        }
    }
}



implementation CorralChoice_CrowdFundBad(this: Ref)
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
    assume gas > 200000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    if (choice == 2)
    {
        gas := gas - 21000;
        call donate_CrowdFundBad(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call refundDos_CrowdFundBad(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == CrowdFundBad;
    gas := gas - 53000;
    call CrowdFundBad_CrowdFundBad__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_CrowdFundBad(this);
    }
}


