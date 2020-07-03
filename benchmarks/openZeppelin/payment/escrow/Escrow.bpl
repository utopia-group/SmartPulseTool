// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /pretty:1 /print:Escrow.bpl /noVerify __SolToBoogieTest_out.bpl

// #LTLFairness: <>([](!call(Escrow.deposit) {}))
// #LTLProperty: <>([](!success(Escrow.withdraw) {}))

type Ref = int;

type ContractName = int;

var null: Ref;

var Context: ContractName;

var Escrow: ContractName;

var SafeMath: ContractName;

var Secondary: ContractName;

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

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary;



implementation Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _deposits_Escrow, M_Ref_int, Alloc;



procedure {:inline 1} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, _deposits_Escrow, M_Ref_int, Alloc, gas, _primary_Secondary;



implementation Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var _deposits_Escrow: [Ref]Ref;

procedure {:public} {:inline 1} depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s36: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, gas;



implementation depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s36: Ref)
   returns (__ret_0_: int)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call __ret_0_ := depositsOf_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s36);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := depositsOf_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s36);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s46: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, gas, Balance, M_Ref_int;



implementation deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s46: Ref)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call deposit_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s46);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s46);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s75: Ref);
  modifies gas, M_Ref_int, revert;



procedure {:public} {:inline 1} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s85: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, gas, M_Ref_int, Balance;



implementation withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s85: Ref)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s85);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s85);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s116: Ref);
  modifies gas, M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, Balance;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary;



implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s144: int, b_s144: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int);
  modifies revert;



var _primary_Secondary: [Ref]Ref;

procedure {:inline 1} Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _primary_Secondary, gas;



procedure {:constructor} {:public} {:inline 1} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, gas, _primary_Secondary;



implementation Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} primary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, gas;



implementation primary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call __ret_0_ := primary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := primary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s323: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, gas, _primary_Secondary;



implementation transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s323: Ref)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call transferPrimary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s323);
        assume revert || gas < 0;
    }
    else
    {
        call transferPrimary_Secondary__success(this, msgsender_MSG, msgvalue_MSG, recipient_s323);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, revert, Balance;





procedure onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_Context(this: Ref);
  modifies gas, now;



procedure CorralEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, now;



procedure CorralChoice_Escrow(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, _primary_Secondary, Balance, M_Ref_int;



procedure main();
  modifies gas, _deposits_Escrow, M_Ref_int, Alloc, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, _primary_Secondary, Balance;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now;



procedure CorralEntry_SafeMath();
  modifies gas, now;



procedure CorralChoice_Secondary(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, _primary_Secondary;



procedure CorralEntry_Secondary();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, now, _primary_Secondary;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int: [Ref][Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp___deposits_Escrow: [Ref]Ref;

var __tmp___primary_Secondary: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__Alloc;



procedure {:inline 1} Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _deposits_Escrow, M_Ref_int, Alloc, _primary_Secondary, gas;



procedure {:inline 1} Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__Alloc, __tmp___primary_Secondary, gas;



procedure {:inline 1} depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s36: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s36: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s46: Ref);
  modifies Balance, gas, M_Ref_int, revert;



procedure {:inline 1} deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s46: Ref);
  modifies __tmp__Balance, gas, __tmp__M_Ref_int, revert;



procedure {:inline 1} deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s75: Ref);
  modifies gas, __tmp__M_Ref_int, revert;



procedure {:inline 1} withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s85: Ref);
  modifies gas, M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, Balance;



procedure {:inline 1} withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s85: Ref);
  modifies gas, __tmp__M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary;



procedure {:inline 1} withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s116: Ref);
  modifies gas, __tmp__M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s144: int, b_s144: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int);
  modifies revert;


procedure {:inline 1} Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___primary_Secondary, gas;



procedure {:constructor} {:inline 1} Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _primary_Secondary, gas;



procedure {:constructor} {:inline 1} Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___primary_Secondary, gas;



procedure {:inline 1} primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s323: Ref);
  modifies gas, revert, _primary_Secondary;



procedure {:inline 1} transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s323: Ref);
  modifies gas, revert, __tmp___primary_Secondary;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___primary_Secondary, revert;



procedure onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 7;
    __ret_0_ := msgsender_MSG;
    return;
}



implementation _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 7;
    __ret_0_ := msgsender_MSG;
    return;
}



implementation Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___deposits_Escrow[this] := __var_1;
    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]] := zeroRefIntArr();
}



implementation Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _deposits_Escrow[this] := __var_1;
    M_Ref_int[_deposits_Escrow[this]] := zeroRefIntArr();
}



implementation Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s36: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 304;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s36] >= 0;
    __ret_0_ := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s36];
    return;
}



implementation depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s36: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 304;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s36] >= 0;
    __ret_0_ := M_Ref_int[_deposits_Escrow[this]][payee_s36];
    return;
}



implementation deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s46: Ref)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 7;
    call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s46);
    if (revert)
    {
        return;
    }
}



implementation deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s46: Ref)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 7;
    call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s46);
    if (revert)
    {
        return;
    }
}



implementation deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s75: Ref)
{
  var amount_s74: int;
  var __var_2: int;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume amount_s74 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s74 := msgvalue_MSG;
    gas := gas - 20439;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s75] >= 0;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s75] >= 0;
    assume amount_s74 >= 0;
    call __var_2 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s75], amount_s74);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s75] := __var_2;
    assume __var_2 >= 0;
}



implementation deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s75: Ref)
{
  var amount_s74: int;
  var __var_2: int;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume amount_s74 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s74 := msgvalue_MSG;
    gas := gas - 20439;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s75] >= 0;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s75] >= 0;
    assume amount_s74 >= 0;
    call __var_2 := add_SafeMath__success(this, this, 0, M_Ref_int[_deposits_Escrow[this]][payee_s75], amount_s74);
    if (revert)
    {
        return;
    }

    M_Ref_int[_deposits_Escrow[this]][payee_s75] := __var_2;
    assume __var_2 >= 0;
    assert {:EventEmitted "Deposited_Escrow"} true;
}



implementation withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s85: Ref)
{
    gas := gas - 7;
    call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s85);
    if (revert)
    {
        return;
    }
}



implementation withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s85: Ref)
{
    gas := gas - 7;
    call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s85);
    if (revert)
    {
        return;
    }
}



implementation withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s116: Ref)
{
  var payment_s115: int;
  var __var_3: int;
  var __var_4: bool;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 307;
    assume payment_s115 >= 0;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s116] >= 0;
    payment_s115 := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s116];
    gas := gas - 5104;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s116] >= 0;
    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s116] := 0;
    gas := gas - 35787;
    __var_3 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_3 := __var_3 - gas;
    assume payment_s115 >= 0;
    call __var_4 := send__fail(this, payee_s116, payment_s115);
    if (!__var_4)
    {
        revert := true;
        return;
    }

    gas := __var_3 + gas;
}



implementation withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s116: Ref)
{
  var payment_s115: int;
  var __var_3: int;
  var __var_4: bool;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 307;
    assume payment_s115 >= 0;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s116] >= 0;
    payment_s115 := M_Ref_int[_deposits_Escrow[this]][payee_s116];
    gas := gas - 5104;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s116] >= 0;
    M_Ref_int[_deposits_Escrow[this]][payee_s116] := 0;
    gas := gas - 35787;
    __var_3 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_3 := __var_3 - gas;
    assume payment_s115 >= 0;
    call __var_4 := send__success(this, payee_s116, payment_s115);
    if (!__var_4)
    {
        revert := true;
        return;
    }

    gas := __var_3 + gas;
    assert {:EventEmitted "Withdrawn_Escrow"} true;
}



implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeMath_SafeMath_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeMath_SafeMath_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s144: int, b_s144: int)
   returns (__ret_0_: int)
{
  var c_s143: int;

    gas := gas - 3;
    gas := gas - 17;
    assume c_s143 >= 0;
    assume a_s144 >= 0;
    assume b_s144 >= 0;
    assume a_s144 + b_s144 >= 0;
    c_s143 := a_s144 + b_s144;
    gas := gas - 664;
    assume c_s143 >= 0;
    assume a_s144 >= 0;
    if (!(c_s143 >= a_s144))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume c_s143 >= 0;
    __ret_0_ := c_s143;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s144: int, b_s144: int)
   returns (__ret_0_: int)
{
  var c_s143: int;

    gas := gas - 3;
    gas := gas - 17;
    assume c_s143 >= 0;
    assume a_s144 >= 0;
    assume b_s144 >= 0;
    assume a_s144 + b_s144 >= 0;
    c_s143 := a_s144 + b_s144;
    gas := gas - 664;
    assume c_s143 >= 0;
    assume a_s144 >= 0;
    if (!(c_s143 >= a_s144))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume c_s143 >= 0;
    __ret_0_ := c_s143;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int)
{
  var c_s168: int;

    assume b_s169 >= 0;
    assume a_s169 >= 0;
    if (!(b_s169 <= a_s169))
    {
        revert := true;
        return;
    }

    assume c_s168 >= 0;
    assume a_s169 >= 0;
    assume b_s169 >= 0;
    assume a_s169 - b_s169 >= 0;
    c_s168 := a_s169 - b_s169;
    assume c_s168 >= 0;
    __ret_0_ := c_s168;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int)
{
  var c_s168: int;

    assume b_s169 >= 0;
    assume a_s169 >= 0;
    if (!(b_s169 <= a_s169))
    {
        revert := true;
        return;
    }

    assume c_s168 >= 0;
    assume a_s169 >= 0;
    assume b_s169 >= 0;
    assume a_s169 - b_s169 >= 0;
    c_s168 := a_s169 - b_s169;
    assume c_s168 >= 0;
    __ret_0_ := c_s168;
    return;
}


implementation Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s277: Ref;

    assume msgsender_MSG != null;
    __tmp___primary_Secondary[this] := null;
    if (__tmp__DType[this] == Escrow)
    {
        call msgSender_s277 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Secondary)
    {
        call msgSender_s277 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s277 := msgSender_s277;
    __tmp___primary_Secondary[this] := msgSender_s277;
}



implementation Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s277: Ref;

    assume msgsender_MSG != null;
    _primary_Secondary[this] := null;
    if (DType[this] == Escrow)
    {
        call msgSender_s277 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Secondary)
    {
        call msgSender_s277 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s277 := msgSender_s277;
    _primary_Secondary[this] := msgSender_s277;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s277: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Secondary_Secondary_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s277: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Secondary_Secondary_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := __tmp___primary_Secondary[this];
    return;
}



implementation primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := _primary_Secondary[this];
    return;
}



implementation transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s323: Ref)
{
  var __var_6: Ref;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 683;
    __var_6 := null;
    if (!(recipient_s323 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp___primary_Secondary[this] := recipient_s323;
}



implementation transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s323: Ref)
{
  var __var_6: Ref;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 683;
    __var_6 := null;
    if (!(recipient_s323 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    _primary_Secondary[this] := recipient_s323;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == Secondary)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Escrow)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Context)
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
    if (DType[to] == Secondary)
    {
        assume amount == 0;
    }
    else if (DType[to] == Escrow)
    {
        assume amount == 0;
    }
    else if (DType[to] == Context)
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
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp___deposits_Escrow: [Ref]Ref;
  var __snap___tmp___primary_Secondary: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp___deposits_Escrow := __tmp___deposits_Escrow;
        __snap___tmp___primary_Secondary := __tmp___primary_Secondary;
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
        __tmp__now := __snap___tmp__now;
        __tmp___deposits_Escrow := __snap___tmp___deposits_Escrow;
        __tmp___primary_Secondary := __snap___tmp___primary_Secondary;
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___primary_Secondary := _primary_Secondary;
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



implementation onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_5: Ref;

    gas := gas - 2773;
    if (__tmp__DType[this] == Escrow)
    {
        call __var_5 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Secondary)
    {
        call __var_5 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!(__var_5 == __tmp___primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_5: Ref;

    gas := gas - 2773;
    if (DType[this] == Escrow)
    {
        call __var_5 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Secondary)
    {
        call __var_5 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!(__var_5 == _primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}


implementation CorralChoice_Context(this: Ref)
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
}



implementation CorralEntry_Context()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == Context || DType[this] == Escrow || DType[this] == Secondary;
    gas := gas - 53000;
    call Context_Context(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Context(this);
    }
}



implementation CorralChoice_Escrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s323: Ref;
  var payee_s36: Ref;
  var __ret_0_depositsOf: int;
  var payee_s46: Ref;
  var payee_s85: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s323;
    havoc payee_s36;
    havoc __ret_0_depositsOf;
    havoc payee_s46;
    havoc payee_s85;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s323);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s36);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s46);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call withdraw_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s85);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == Escrow;
    gas := gas - 53000;
    call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Escrow(this);
    }
}



implementation CorralChoice_SafeMath(this: Ref)
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
}



implementation CorralEntry_SafeMath()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == SafeMath;
    gas := gas - 53000;
    call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SafeMath(this);
    }
}



implementation CorralChoice_Secondary(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s323: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s323;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s323);
    }
}



implementation CorralEntry_Secondary()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == Escrow || DType[this] == Secondary;
    gas := gas - 53000;
    call Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Secondary(this);
    }
}


