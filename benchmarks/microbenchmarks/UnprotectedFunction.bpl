// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:UnprotectedFunction.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// #LTLVariables: owner:Ref
// #LTLFairness: [](!started(MultiOwnable.newOwner, this.owners[msg.sender] != null))
// #LTLProperty: [](finished(TestContract.withdrawAll, owner == msg.sender) ==> [](!finished(TestContract.withdrawAll, msg.sender != owner)))

type Ref = int;

type ContractName = int;

var null: Ref;

var MultiOwnable: ContractName;

var TestContract: ContractName;

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

var M_Ref_Ref_owners0: [Ref][Ref]Ref;

var sum_owners0: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



var {:access "this.root=root_MultiOwnable[this]"} root_MultiOwnable: [Ref]Ref;

var {:access "this.owners[i0]=M_Ref_Ref_owners0[owners_MultiOwnable[this]][i0]"} {:sum "sum(this.owners)=sum_owners0[owners_MultiOwnable[this]]"} owners_MultiOwnable: [Ref]Ref;

procedure {:inline 1} MultiOwnable_MultiOwnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, root_MultiOwnable, owners_MultiOwnable, M_Ref_Ref_owners0, Alloc;



procedure {:constructor} {:public} {:inline 1} MultiOwnable_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, Balance, root_MultiOwnable, owners_MultiOwnable, M_Ref_Ref_owners0, Alloc;



implementation MultiOwnable_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_Ref_owners0 := M_Ref_Ref_owners0;
        __tmp__sum_owners0 := sum_owners0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__root_MultiOwnable := root_MultiOwnable;
        __tmp__owners_MultiOwnable := owners_MultiOwnable;
        call MultiOwnable_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MultiOwnable_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} newOwner_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s62: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, gas, M_Ref_Ref_owners0;



implementation newOwner_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s62: Ref)
   returns (__ret_0_: bool)
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
        __tmp__M_Ref_Ref_owners0 := M_Ref_Ref_owners0;
        __tmp__sum_owners0 := sum_owners0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__root_MultiOwnable := root_MultiOwnable;
        __tmp__owners_MultiOwnable := owners_MultiOwnable;
        call __ret_0_ := newOwner_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s62);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := newOwner_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owner_s62);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deleteOwner_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s105: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, gas, M_Ref_Ref_owners0;



implementation deleteOwner_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s105: Ref)
   returns (__ret_0_: bool)
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
        __tmp__M_Ref_Ref_owners0 := M_Ref_Ref_owners0;
        __tmp__sum_owners0 := sum_owners0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__root_MultiOwnable := root_MultiOwnable;
        __tmp__owners_MultiOwnable := owners_MultiOwnable;
        call __ret_0_ := deleteOwner_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s105);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := deleteOwner_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owner_s105);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} TestContract_TestContract_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} TestContract_TestContract(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, Balance, root_MultiOwnable, owners_MultiOwnable, M_Ref_Ref_owners0, Alloc;



implementation TestContract_TestContract(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_Ref_owners0 := M_Ref_Ref_owners0;
        __tmp__sum_owners0 := sum_owners0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__root_MultiOwnable := root_MultiOwnable;
        __tmp__owners_MultiOwnable := owners_MultiOwnable;
        call TestContract_TestContract__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call TestContract_TestContract__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawAll_TestContract(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, gas, Balance, M_Ref_Ref_owners0;



implementation withdrawAll_TestContract(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_Ref_owners0 := M_Ref_Ref_owners0;
        __tmp__sum_owners0 := sum_owners0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__root_MultiOwnable := root_MultiOwnable;
        __tmp__owners_MultiOwnable := owners_MultiOwnable;
        call withdrawAll_TestContract__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdrawAll_TestContract__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_TestContract__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, M_Ref_Ref_owners0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, M_Ref_Ref_owners0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, revert, gas, Balance, M_Ref_Ref_owners0;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_MultiOwnable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, M_Ref_Ref_owners0;



procedure CorralEntry_MultiOwnable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, now, M_Ref_Ref_owners0, Balance, root_MultiOwnable, owners_MultiOwnable;



procedure CorralChoice_TestContract(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, M_Ref_Ref_owners0, Balance;



procedure main();
  modifies gas, Alloc, Balance, root_MultiOwnable, owners_MultiOwnable, M_Ref_Ref_owners0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_Ref_owners0: [Ref][Ref]Ref;

var __tmp__sum_owners0: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__root_MultiOwnable: [Ref]Ref;

var __tmp__owners_MultiOwnable: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} MultiOwnable_MultiOwnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, __tmp__M_Ref_Ref_owners0, __tmp__Alloc;



procedure {:constructor} {:inline 1} MultiOwnable_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, root_MultiOwnable, owners_MultiOwnable, M_Ref_Ref_owners0, Alloc;



procedure {:constructor} {:inline 1} MultiOwnable_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, __tmp__M_Ref_Ref_owners0, __tmp__Alloc;



procedure {:inline 1} newOwner_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s62: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_owners0;



procedure {:inline 1} newOwner_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s62: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_owners0;



procedure {:inline 1} deleteOwner_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s105: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_owners0;



procedure {:inline 1} deleteOwner_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s105: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_owners0;



procedure {:inline 1} TestContract_TestContract_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} TestContract_TestContract__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, root_MultiOwnable, owners_MultiOwnable, M_Ref_Ref_owners0, Alloc;



procedure {:inline 1} TestContract_TestContract__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, __tmp__M_Ref_Ref_owners0, __tmp__Alloc;



procedure {:inline 1} withdrawAll_TestContract__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, Balance, M_Ref_Ref_owners0;



procedure {:inline 1} withdrawAll_TestContract__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable;



procedure {:inline 1} FallbackMethod_TestContract__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__M_Ref_Ref_owners0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__M_Ref_Ref_owners0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_Ref_owners0, __tmp__sum_owners0, __tmp__Length, __tmp__now, __tmp__root_MultiOwnable, __tmp__owners_MultiOwnable, revert, gas;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation MultiOwnable_MultiOwnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__root_MultiOwnable[this] := null;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__owners_MultiOwnable[this] := __var_1;
    __tmp__M_Ref_Ref_owners0[__tmp__owners_MultiOwnable[this]] := zeroRefRefArr();
    __tmp__root_MultiOwnable[this] := msgsender_MSG;
    __tmp__M_Ref_Ref_owners0[__tmp__owners_MultiOwnable[this]][__tmp__root_MultiOwnable[this]] := __tmp__root_MultiOwnable[this];
}



implementation MultiOwnable_MultiOwnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    root_MultiOwnable[this] := null;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    owners_MultiOwnable[this] := __var_1;
    M_Ref_Ref_owners0[owners_MultiOwnable[this]] := zeroRefRefArr();
    root_MultiOwnable[this] := msgsender_MSG;
    M_Ref_Ref_owners0[owners_MultiOwnable[this]][root_MultiOwnable[this]] := root_MultiOwnable[this];
}



implementation MultiOwnable_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    call MultiOwnable_MultiOwnable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MultiOwnable_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    call MultiOwnable_MultiOwnable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation newOwner_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s62: Ref)
   returns (__ret_0_: bool)
{
  var __var_3: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_3 := null;
    if (!(_owner_s62 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40724;
    __tmp__M_Ref_Ref_owners0[__tmp__owners_MultiOwnable[this]][_owner_s62] := msgsender_MSG;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation newOwner_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s62: Ref)
   returns (__ret_0_: bool)
{
  var __var_3: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_3 := null;
    if (!(_owner_s62 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40724;
    M_Ref_Ref_owners0[owners_MultiOwnable[this]][_owner_s62] := msgsender_MSG;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation deleteOwner_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s105: Ref)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;
  var __var_5: Ref;

    gas := gas - 6;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 2050;
    __var_4 := null;
    if (!(__tmp__M_Ref_Ref_owners0[__tmp__owners_MultiOwnable[this]][_owner_s105]
         == msgsender_MSG
       || (__tmp__M_Ref_Ref_owners0[__tmp__owners_MultiOwnable[this]][_owner_s105] != null
         && msgsender_MSG == __tmp__root_MultiOwnable[this])))
    {
        revert := true;
        return;
    }

    gas := gas - 40726;
    __var_5 := null;
    __tmp__M_Ref_Ref_owners0[__tmp__owners_MultiOwnable[this]][_owner_s105] := __var_5;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation deleteOwner_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s105: Ref)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;
  var __var_5: Ref;

    gas := gas - 6;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 2050;
    __var_4 := null;
    if (!(M_Ref_Ref_owners0[owners_MultiOwnable[this]][_owner_s105] == msgsender_MSG
       || (M_Ref_Ref_owners0[owners_MultiOwnable[this]][_owner_s105] != null
         && msgsender_MSG == root_MultiOwnable[this])))
    {
        revert := true;
        return;
    }

    gas := gas - 40726;
    __var_5 := null;
    M_Ref_Ref_owners0[owners_MultiOwnable[this]][_owner_s105] := __var_5;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation TestContract_TestContract_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation TestContract_TestContract_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation TestContract_TestContract__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call MultiOwnable_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call TestContract_TestContract_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation TestContract_TestContract__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call MultiOwnable_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call TestContract_TestContract_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation withdrawAll_TestContract__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_6: int;
  var __var_7: Ref;
  var __var_8: bool;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36197;
    __var_6 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_6 := __var_6 - gas;
    __var_7 := this;
    assume __tmp__Balance[this] >= 0;
    call __var_8 := send__fail(this, msgsender_MSG, __tmp__Balance[this]);
    if (!__var_8)
    {
        revert := true;
        return;
    }

    gas := __var_6 + gas;
}



implementation withdrawAll_TestContract__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_6: int;
  var __var_7: Ref;
  var __var_8: bool;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36197;
    __var_6 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_6 := __var_6 - gas;
    __var_7 := this;
    assume Balance[this] >= 0;
    call __var_8 := send__success(this, msgsender_MSG, Balance[this]);
    if (!__var_8)
    {
        revert := true;
        return;
    }

    gas := __var_6 + gas;
}



implementation FallbackMethod_TestContract__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
}



implementation FallbackMethod_TestContract__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == TestContract)
    {
        call FallbackMethod_TestContract__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == MultiOwnable)
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
    if (DType[to] == TestContract)
    {
        call FallbackMethod_TestContract__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == MultiOwnable)
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
  var _owner_s62: Ref;
  var __ret_0_newOwner: bool;
  var _owner_s105: Ref;
  var __ret_0_deleteOwner: bool;

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
        havoc _owner_s62;
        havoc __ret_0_newOwner;
        havoc _owner_s105;
        havoc __ret_0_deleteOwner;
        havoc iterate;
        if (__tmp__DType[from] == TestContract)
        {
            if (choice == 3)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call __ret_0_newOwner := newOwner_MultiOwnable__fail(from, to, msgvalue_MSG, _owner_s62);
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
                    call __ret_0_deleteOwner := deleteOwner_MultiOwnable__fail(from, to, msgvalue_MSG, _owner_s105);
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
                    call withdrawAll_TestContract__fail(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
        }
        else if (__tmp__DType[from] == MultiOwnable)
        {
            if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call __ret_0_newOwner := newOwner_MultiOwnable__fail(from, to, msgvalue_MSG, _owner_s62);
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
                    call __ret_0_deleteOwner := deleteOwner_MultiOwnable__fail(from, to, msgvalue_MSG, _owner_s105);
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
  var _owner_s62: Ref;
  var __ret_0_newOwner: bool;
  var _owner_s105: Ref;
  var __ret_0_deleteOwner: bool;

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
        havoc _owner_s62;
        havoc __ret_0_newOwner;
        havoc _owner_s105;
        havoc __ret_0_deleteOwner;
        havoc iterate;
        if (DType[from] == TestContract)
        {
            if (choice == 3)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call __ret_0_newOwner := newOwner_MultiOwnable__success(from, to, msgvalue_MSG, _owner_s62);
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
                    call __ret_0_deleteOwner := deleteOwner_MultiOwnable__success(from, to, msgvalue_MSG, _owner_s105);
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
                    call withdrawAll_TestContract__success(from, to, msgvalue_MSG);
                    if (revert)
                    {
                        return;
                    }
                }
            }
        }
        else if (DType[from] == MultiOwnable)
        {
            if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call __ret_0_newOwner := newOwner_MultiOwnable__success(from, to, msgvalue_MSG, _owner_s62);
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
                    call __ret_0_deleteOwner := deleteOwner_MultiOwnable__success(from, to, msgvalue_MSG, _owner_s105);
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
  var __snap___tmp__M_Ref_Ref_owners0: [Ref][Ref]Ref;
  var __snap___tmp__sum_owners0: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__root_MultiOwnable: [Ref]Ref;
  var __snap___tmp__owners_MultiOwnable: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_Ref_owners0 := __tmp__M_Ref_Ref_owners0;
        __snap___tmp__sum_owners0 := __tmp__sum_owners0;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__root_MultiOwnable := __tmp__root_MultiOwnable;
        __snap___tmp__owners_MultiOwnable := __tmp__owners_MultiOwnable;
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
        __tmp__M_Ref_Ref_owners0 := __snap___tmp__M_Ref_Ref_owners0;
        __tmp__sum_owners0 := __snap___tmp__sum_owners0;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__root_MultiOwnable := __snap___tmp__root_MultiOwnable;
        __tmp__owners_MultiOwnable := __snap___tmp__owners_MultiOwnable;
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
        __tmp__M_Ref_Ref_owners0 := M_Ref_Ref_owners0;
        __tmp__sum_owners0 := sum_owners0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__root_MultiOwnable := root_MultiOwnable;
        __tmp__owners_MultiOwnable := owners_MultiOwnable;
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
  var __var_2: Ref;

    gas := gas - 1125;
    __var_2 := null;
    if (!(__tmp__M_Ref_Ref_owners0[__tmp__owners_MultiOwnable[this]][msgsender_MSG]
       != null))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    gas := gas - 1125;
    __var_2 := null;
    if (!(M_Ref_Ref_owners0[owners_MultiOwnable[this]][msgsender_MSG] != null))
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_MultiOwnable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s62: Ref;
  var __ret_0_newOwner: bool;
  var _owner_s105: Ref;
  var __ret_0_deleteOwner: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s62;
    havoc __ret_0_newOwner;
    havoc _owner_s105;
    havoc __ret_0_deleteOwner;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != MultiOwnable;
    assume DType[msgsender_MSG] != TestContract;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call __ret_0_newOwner := newOwner_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owner_s62);
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call __ret_0_deleteOwner := deleteOwner_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owner_s105);
        }
    }
}



implementation CorralEntry_MultiOwnable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MultiOwnable || DType[this] == TestContract;
    gas := gas - 53000;
    call MultiOwnable_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MultiOwnable(this);
    }
}



implementation CorralChoice_TestContract(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s62: Ref;
  var __ret_0_newOwner: bool;
  var _owner_s105: Ref;
  var __ret_0_deleteOwner: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s62;
    havoc __ret_0_newOwner;
    havoc _owner_s105;
    havoc __ret_0_deleteOwner;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != MultiOwnable;
    assume DType[msgsender_MSG] != TestContract;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call __ret_0_newOwner := newOwner_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owner_s62);
        }
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call __ret_0_deleteOwner := deleteOwner_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owner_s105);
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call withdrawAll_TestContract(this, msgsender_MSG, msgvalue_MSG);
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
    assume DType[this] == TestContract;
    gas := gas - 53000;
    call TestContract_TestContract__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_TestContract(this);
    }
}


