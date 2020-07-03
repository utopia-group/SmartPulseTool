// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /noVerify /pretty:1 /print:ERC20Detailed.bpl __SolToBoogieTest_out.bpl

type Ref;

type ContractName;

const unique null: Ref;

const unique ERC20Detailed: ContractName;

const unique IERC20: ContractName;

function ConstantToRef(x: int) : Ref;

function {:bvbuiltin "mod"} modBpl(x: int, y: int) : int;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} HavocAllocMany__success();
  modifies Alloc;



var _name_ERC20Detailed: [Ref]int;

var _symbol_ERC20Detailed: [Ref]int;

var _decimals_ERC20Detailed: [Ref]int;

procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int);
  modifies _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:public} {:inline 1} ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



implementation ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int)
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
        __tmp__Length := Length;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, name_s32, symbol_s32, decimals_s32);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, name_s32, symbol_s32, decimals_s32);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



implementation name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__Length := Length;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        call __ret_0_ := name_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := name_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} symbol_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



implementation symbol_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__Length := Length;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        call __ret_0_ := symbol_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := symbol_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decimals_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



implementation decimals_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__Length := Length;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        call __ret_0_ := decimals_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decimals_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



implementation IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__Length := Length;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s71: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s80: Ref, 
    amount_s80: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s89: Ref, 
    spender_s89: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s98: Ref, 
    amount_s98: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s109: Ref, 
    recipient_s109: Ref, 
    amount_s109: int)
   returns (__ret_0_: bool);



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, revert, gas, Balance;



procedure BoogieEntry_ERC20Detailed();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure BoogieEntry_IERC20();
  modifies gas;



procedure CorralChoice_ERC20Detailed(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure CorralEntry_ERC20Detailed();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure CorralChoice_IERC20(this: Ref);



procedure CorralEntry_IERC20();
  modifies gas;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp___name_ERC20Detailed: [Ref]int;

var __tmp___symbol_ERC20Detailed: [Ref]int;

var __tmp___decimals_ERC20Detailed: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} HavocAllocMany__fail();
  modifies __tmp__Alloc;



procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int);
  modifies __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int);
  modifies _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int);
  modifies __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:inline 1} name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, revert, gas;



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



implementation HavocAllocMany__fail()
{
  var oldAlloc: [Ref]bool;

    oldAlloc := __tmp__Alloc;
    havoc __tmp__Alloc;
    assume (forall __i__0_0: Ref :: oldAlloc[__i__0_0] ==> __tmp__Alloc[__i__0_0]);
}



implementation HavocAllocMany__success()
{
  var oldAlloc: [Ref]bool;

    oldAlloc := Alloc;
    havoc Alloc;
    assume (forall __i__0_0: Ref :: oldAlloc[__i__0_0] ==> Alloc[__i__0_0]);
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int)
{
    assume msgsender_MSG != null;
    __tmp___name_ERC20Detailed[this] := 2105867162;
    __tmp___symbol_ERC20Detailed[this] := 2105867162;
    __tmp___decimals_ERC20Detailed[this] := 0;
    __tmp___name_ERC20Detailed[this] := name_s32;
    __tmp___symbol_ERC20Detailed[this] := symbol_s32;
    __tmp___decimals_ERC20Detailed[this] := decimals_s32;
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int)
{
    assume msgsender_MSG != null;
    _name_ERC20Detailed[this] := 2105867162;
    _symbol_ERC20Detailed[this] := 2105867162;
    _decimals_ERC20Detailed[this] := 0;
    _name_ERC20Detailed[this] := name_s32;
    _symbol_ERC20Detailed[this] := symbol_s32;
    _decimals_ERC20Detailed[this] := decimals_s32;
}



implementation ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, name_s32, symbol_s32, decimals_s32);
    if (revert)
    {
        return;
    }
}



implementation ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s32: int, 
    symbol_s32: int, 
    decimals_s32: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, name_s32, symbol_s32, decimals_s32);
    if (revert)
    {
        return;
    }
}



implementation name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___name_ERC20Detailed[this];
    return;
}



implementation name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _name_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___symbol_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _symbol_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___decimals_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _decimals_ERC20Detailed[this];
    return;
}



implementation IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Detailed)
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
    if (DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Detailed)
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
  var __ret_0_totalSupply: int;
  var account_s71: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s80: Ref;
  var amount_s80: int;
  var __ret_0_transfer: bool;
  var owner_s89: Ref;
  var spender_s89: Ref;
  var __ret_0_allowance: int;
  var spender_s98: Ref;
  var amount_s98: int;
  var __ret_0_approve: bool;
  var sender_s109: Ref;
  var recipient_s109: Ref;
  var amount_s109: int;
  var __ret_0_transferFrom: bool;
  var name_s32: int;
  var symbol_s32: int;
  var decimals_s32: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_IERC20(from, to, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_IERC20(from, to, msgvalue_MSG, account_s71);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_IERC20(from, to, msgvalue_MSG, recipient_s80, amount_s80);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_IERC20(from, to, msgvalue_MSG, owner_s89, spender_s89);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_IERC20(from, to, msgvalue_MSG, spender_s98, amount_s98);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_IERC20(from, to, msgvalue_MSG, sender_s109, recipient_s109, amount_s109);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_name := name_ERC20Detailed__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_symbol := symbol_ERC20Detailed__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decimals := decimals_ERC20Detailed__fail(from, to, msgvalue_MSG);
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
  var __ret_0_totalSupply: int;
  var account_s71: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s80: Ref;
  var amount_s80: int;
  var __ret_0_transfer: bool;
  var owner_s89: Ref;
  var spender_s89: Ref;
  var __ret_0_allowance: int;
  var spender_s98: Ref;
  var amount_s98: int;
  var __ret_0_approve: bool;
  var sender_s109: Ref;
  var recipient_s109: Ref;
  var amount_s109: int;
  var __ret_0_transferFrom: bool;
  var name_s32: int;
  var symbol_s32: int;
  var decimals_s32: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_IERC20(from, to, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_IERC20(from, to, msgvalue_MSG, account_s71);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_IERC20(from, to, msgvalue_MSG, recipient_s80, amount_s80);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_IERC20(from, to, msgvalue_MSG, owner_s89, spender_s89);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_IERC20(from, to, msgvalue_MSG, spender_s98, amount_s98);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_IERC20(from, to, msgvalue_MSG, sender_s109, recipient_s109, amount_s109);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_name := name_ERC20Detailed__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_symbol := symbol_ERC20Detailed__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decimals := decimals_ERC20Detailed__success(from, to, msgvalue_MSG);
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
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp___name_ERC20Detailed: [Ref]int;
  var __snap___tmp___symbol_ERC20Detailed: [Ref]int;
  var __snap___tmp___decimals_ERC20Detailed: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp___name_ERC20Detailed := __tmp___name_ERC20Detailed;
        __snap___tmp___symbol_ERC20Detailed := __tmp___symbol_ERC20Detailed;
        __snap___tmp___decimals_ERC20Detailed := __tmp___decimals_ERC20Detailed;
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
        __tmp__Length := __snap___tmp__Length;
        __tmp___name_ERC20Detailed := __snap___tmp___name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := __snap___tmp___symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := __snap___tmp___decimals_ERC20Detailed;
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
        __tmp__Length := Length;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
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



implementation BoogieEntry_ERC20Detailed()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s71: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s80: Ref;
  var amount_s80: int;
  var __ret_0_transfer: bool;
  var owner_s89: Ref;
  var spender_s89: Ref;
  var __ret_0_allowance: int;
  var spender_s98: Ref;
  var amount_s98: int;
  var __ret_0_approve: bool;
  var sender_s109: Ref;
  var recipient_s109: Ref;
  var amount_s109: int;
  var __ret_0_transferFrom: bool;
  var name_s32: int;
  var symbol_s32: int;
  var decimals_s32: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;

    assume DType[this] == ERC20Detailed;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Detailed_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG, name_s32, symbol_s32, decimals_s32);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc __ret_0_totalSupply;
        havoc account_s71;
        havoc __ret_0_balanceOf;
        havoc recipient_s80;
        havoc amount_s80;
        havoc __ret_0_transfer;
        havoc owner_s89;
        havoc spender_s89;
        havoc __ret_0_allowance;
        havoc spender_s98;
        havoc amount_s98;
        havoc __ret_0_approve;
        havoc sender_s109;
        havoc recipient_s109;
        havoc amount_s109;
        havoc __ret_0_transferFrom;
        havoc name_s32;
        havoc symbol_s32;
        havoc decimals_s32;
        havoc __ret_0_name;
        havoc __ret_0_symbol;
        havoc __ret_0_decimals;
        if (choice == 9)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 8)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, account_s71);
        }
        else if (choice == 7)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s80, amount_s80);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s89, spender_s89);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s98, amount_s98);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s109, recipient_s109, amount_s109);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
        }
    }
}



implementation BoogieEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == ERC20Detailed || DType[this] == IERC20;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
    }
}



implementation CorralChoice_ERC20Detailed(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s71: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s80: Ref;
  var amount_s80: int;
  var __ret_0_transfer: bool;
  var owner_s89: Ref;
  var spender_s89: Ref;
  var __ret_0_allowance: int;
  var spender_s98: Ref;
  var amount_s98: int;
  var __ret_0_approve: bool;
  var sender_s109: Ref;
  var recipient_s109: Ref;
  var amount_s109: int;
  var __ret_0_transferFrom: bool;
  var name_s32: int;
  var symbol_s32: int;
  var decimals_s32: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s71;
    havoc __ret_0_balanceOf;
    havoc recipient_s80;
    havoc amount_s80;
    havoc __ret_0_transfer;
    havoc owner_s89;
    havoc spender_s89;
    havoc __ret_0_allowance;
    havoc spender_s98;
    havoc amount_s98;
    havoc __ret_0_approve;
    havoc sender_s109;
    havoc recipient_s109;
    havoc amount_s109;
    havoc __ret_0_transferFrom;
    havoc name_s32;
    havoc symbol_s32;
    havoc decimals_s32;
    havoc __ret_0_name;
    havoc __ret_0_symbol;
    havoc __ret_0_decimals;
    if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, account_s71);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s80, amount_s80);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s89, spender_s89);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s98, amount_s98);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s109, recipient_s109, amount_s109);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_ERC20Detailed()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var name_s32: int;
  var symbol_s32: int;
  var decimals_s32: int;

    assume DType[this] == ERC20Detailed;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Detailed_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG, name_s32, symbol_s32, decimals_s32);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Detailed(this);
    }
}



implementation CorralChoice_IERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
}



implementation CorralEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Detailed || DType[this] == IERC20;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_IERC20(this);
    }
}


