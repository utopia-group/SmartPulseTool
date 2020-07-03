// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /noVerify /pretty:1 /print:ERC20Burnable __SolToBoogieTest_out.bpl

type Ref;

type ContractName;

const unique null: Ref;

const unique Context: ContractName;

const unique ERC20: ContractName;

const unique ERC20Burnable: ContractName;

const unique IERC20: ContractName;

const unique SafeMath: ContractName;

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

var M_Ref_int: [Ref][Ref]int;

var M_Ref_Ref: [Ref][Ref]Ref;

var Length: [Ref]int;

var revert: bool;

var gas: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} HavocAllocMany__success();
  modifies Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
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



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var _balances_ERC20: [Ref]Ref;

var _allowances_ERC20: [Ref]Ref;

var _totalSupply_ERC20: [Ref]int;

procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



implementation totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s93: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s93: Ref)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s93);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s93);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s108: Ref, 
    amount_s108: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



implementation transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s108: Ref, 
    amount_s108: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transfer_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s127: Ref, 
    amount_s127: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s143: Ref, 
    spender_s143: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s143: Ref, 
    spender_s143: Ref)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s143, spender_s143);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s143, spender_s143);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s158: Ref, 
    amount_s158: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s158: Ref, 
    amount_s158: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} approve_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s177: Ref, 
    amount_s177: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s195: Ref, 
    recipient_s195: Ref, 
    amount_s195: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s195: Ref, 
    recipient_s195: Ref, 
    amount_s195: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transferFrom_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s230: Ref, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s245: Ref, 
    addedValue_s245: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s245: Ref, 
    addedValue_s245: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} increaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s272: Ref, 
    addedValue_s272: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s287: Ref, 
    subtractedValue_s287: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s287: Ref, 
    subtractedValue_s287: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s314: Ref, 
    subtractedValue_s314: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s370: Ref, 
    recipient_s370: Ref, 
    amount_s370: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s383: Ref, 
    amount_s383: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s426: Ref, 
    amount_s426: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    amount_s469: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s511: Ref, 
    spender_s511: Ref, 
    amount_s511: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s539: Ref, 
    amount_s539: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Burnable_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



implementation ERC20Burnable_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call ERC20Burnable_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s19: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int, _totalSupply_ERC20;



implementation burn_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s19: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call burn_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG, amount_s19);
        assume revert || gas < 0;
    }
    else
    {
        call burn_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG, amount_s19);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burnFrom_ERC20Burnable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s32: Ref, 
    amount_s32: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int, _totalSupply_ERC20;



implementation burnFrom_ERC20Burnable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s32: Ref, 
    amount_s32: int)
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call burnFrom_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG, account_s32, amount_s32);
        assume revert || gas < 0;
    }
    else
    {
        call burnFrom_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG, account_s32, amount_s32);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s554: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s563: Ref, 
    amount_s563: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s572: Ref, 
    spender_s572: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s581: Ref, 
    amount_s581: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s592: Ref, 
    recipient_s592: Ref, 
    amount_s592: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s636: int, b_s636: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s695: int, b_s695: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s720: int, b_s720: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s741: int, b_s741: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, revert, gas, Balance, M_Ref_int, _totalSupply_ERC20;



procedure BoogieEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



procedure BoogieEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



procedure BoogieEntry_ERC20Burnable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



procedure BoogieEntry_IERC20();
  modifies gas;



procedure BoogieEntry_SafeMath();
  modifies gas;



procedure CorralChoice_Context(this: Ref);



procedure CorralEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



procedure CorralEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



procedure CorralChoice_ERC20Burnable(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int, _totalSupply_ERC20;



procedure CorralEntry_ERC20Burnable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, M_Ref_int;



procedure CorralChoice_IERC20(this: Ref);



procedure CorralEntry_IERC20();
  modifies gas;



procedure CorralChoice_SafeMath(this: Ref);



procedure CorralEntry_SafeMath();
  modifies gas;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int: [Ref][Ref]int;

var __tmp__M_Ref_Ref: [Ref][Ref]Ref;

var __tmp__Length: [Ref]int;

var __tmp___balances_ERC20: [Ref]Ref;

var __tmp___allowances_ERC20: [Ref]Ref;

var __tmp___totalSupply_ERC20: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} HavocAllocMany__fail();
  modifies __tmp__Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___totalSupply_ERC20, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp__Alloc;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___totalSupply_ERC20, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp__Alloc;



procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s93: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s93: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s108: Ref, 
    amount_s108: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s108: Ref, 
    amount_s108: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transfer_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s127: Ref, 
    amount_s127: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s143: Ref, 
    spender_s143: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s143: Ref, 
    spender_s143: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s158: Ref, 
    amount_s158: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s158: Ref, 
    amount_s158: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} approve_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s177: Ref, 
    amount_s177: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s195: Ref, 
    recipient_s195: Ref, 
    amount_s195: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s195: Ref, 
    recipient_s195: Ref, 
    amount_s195: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s230: Ref, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s245: Ref, 
    addedValue_s245: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s245: Ref, 
    addedValue_s245: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s272: Ref, 
    addedValue_s272: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s287: Ref, 
    subtractedValue_s287: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s287: Ref, 
    subtractedValue_s287: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s314: Ref, 
    subtractedValue_s314: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s370: Ref, 
    recipient_s370: Ref, 
    amount_s370: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s383: Ref, 
    amount_s383: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s426: Ref, 
    amount_s426: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    amount_s469: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s511: Ref, 
    spender_s511: Ref, 
    amount_s511: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s539: Ref, 
    amount_s539: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Burnable_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



procedure {:inline 1} ERC20Burnable_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___totalSupply_ERC20, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp__Alloc;



procedure {:inline 1} burn_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s19: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} burn_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s19: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} burnFrom_ERC20Burnable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s32: Ref, 
    amount_s32: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} burnFrom_ERC20Burnable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s32: Ref, 
    amount_s32: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s636: int, b_s636: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s695: int, b_s695: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s720: int, b_s720: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s741: int, b_s741: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, revert, gas;



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
    __ret_0_ := msgsender_MSG;
    return;
}



implementation _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    __ret_0_ := msgsender_MSG;
    return;
}



implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    __tmp___totalSupply_ERC20[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___balances_ERC20[this] := __var_1;
    assume (forall __i__0_0: Ref :: 
      __tmp__M_Ref_int[__tmp___balances_ERC20[this]][__i__0_0] == 0);
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___allowances_ERC20[this] := __var_2;
    assume (forall __i__0_0: Ref :: 
      __tmp__Length[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__i__0_0]] == 0);
    assume (forall __i__0_0: Ref :: 
      !__tmp__Alloc[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__i__0_0]]);
    call HavocAllocMany__fail();
    if (revert)
    {
        return;
    }

    assume (forall __i__0_0: Ref :: 
      __tmp__Alloc[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__i__0_0]]);
    assume (forall __i__0_0: Ref, __i__0_1: Ref :: 
      { M_Ref_Ref[_allowances_ERC20[this]][__i__0_0], M_Ref_Ref[_allowances_ERC20[this]][__i__0_1] } 
      __i__0_0 == __i__0_1
         || __tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__i__0_0]
           != __tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__i__0_1]);
}



implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    _totalSupply_ERC20[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _balances_ERC20[this] := __var_1;
    assume (forall __i__0_0: Ref :: M_Ref_int[_balances_ERC20[this]][__i__0_0] == 0);
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _allowances_ERC20[this] := __var_2;
    assume (forall __i__0_0: Ref :: 
      Length[M_Ref_Ref[_allowances_ERC20[this]][__i__0_0]] == 0);
    assume (forall __i__0_0: Ref :: !Alloc[M_Ref_Ref[_allowances_ERC20[this]][__i__0_0]]);
    call HavocAllocMany__success();
    if (revert)
    {
        return;
    }

    assume (forall __i__0_0: Ref :: Alloc[M_Ref_Ref[_allowances_ERC20[this]][__i__0_0]]);
    assume (forall __i__0_0: Ref, __i__0_1: Ref :: 
      { M_Ref_Ref[_allowances_ERC20[this]][__i__0_0], M_Ref_Ref[_allowances_ERC20[this]][__i__0_1] } 
      __i__0_0 == __i__0_1
         || M_Ref_Ref[_allowances_ERC20[this]][__i__0_0]
           != M_Ref_Ref[_allowances_ERC20[this]][__i__0_1]);
}



implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___totalSupply_ERC20[this];
    return;
}



implementation totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _totalSupply_ERC20[this];
    return;
}



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s93: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s93];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s93: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[_balances_ERC20[this]][account_s93];
    return;
}



implementation transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s108: Ref, 
    amount_s108: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_3;
    return;
}



implementation transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s108: Ref, 
    amount_s108: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (DType[this] == ERC20Burnable)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_3;
    return;
}



implementation transfer_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s127: Ref, 
    amount_s127: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s127, amount_s127);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s127, amount_s127);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation transfer_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s127: Ref, 
    amount_s127: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (DType[this] == ERC20Burnable)
    {
        call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s127, amount_s127);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s127, amount_s127);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s143: Ref, 
    spender_s143: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s143]][spender_s143];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s143: Ref, 
    spender_s143: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s143]][spender_s143];
    return;
}



implementation approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s158: Ref, 
    amount_s158: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_5;
    return;
}



implementation approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s158: Ref, 
    amount_s158: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (DType[this] == ERC20Burnable)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_5;
    return;
}



implementation approve_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s177: Ref, 
    amount_s177: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_6 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_6 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s177, amount_s177);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s177, amount_s177);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation approve_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s177: Ref, 
    amount_s177: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (DType[this] == ERC20Burnable)
    {
        call __var_6 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_6 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s177, amount_s177);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s177, amount_s177);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s195: Ref, 
    recipient_s195: Ref, 
    amount_s195: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_7;
    return;
}



implementation transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s195: Ref, 
    recipient_s195: Ref, 
    amount_s195: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (DType[this] == ERC20Burnable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_7;
    return;
}



implementation transferFrom_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s230: Ref, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s230, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s230, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_8 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_8 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_10 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_10 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_9 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s230]][__var_10], amount_s230);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s230, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s230, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s230: Ref, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (DType[this] == ERC20Burnable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s230, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s230, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call __var_8 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_8 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call __var_10 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_10 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_9 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][sender_s230]][__var_10], amount_s230);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s230, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s230, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s245: Ref, 
    addedValue_s245: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_11;
    return;
}



implementation increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s245: Ref, 
    addedValue_s245: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (DType[this] == ERC20Burnable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_11;
    return;
}



implementation increaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s272: Ref, 
    addedValue_s272: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_12 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_12 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_14 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_14 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_13 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_14]][spender_s272], addedValue_s272);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s272, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s272, __var_13);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s272: Ref, 
    addedValue_s272: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (DType[this] == ERC20Burnable)
    {
        call __var_12 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_12 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call __var_14 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_14 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_13 := add_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_14]][spender_s272], addedValue_s272);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s272, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s272, __var_13);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s287: Ref, 
    subtractedValue_s287: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_15;
    return;
}



implementation decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s287: Ref, 
    subtractedValue_s287: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (DType[this] == ERC20Burnable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_15;
    return;
}



implementation decreaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s314: Ref, 
    subtractedValue_s314: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_16 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_16 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_18 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_18 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_17 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_18]][spender_s314], subtractedValue_s314);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s314, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s314, __var_17);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s314: Ref, 
    subtractedValue_s314: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (DType[this] == ERC20Burnable)
    {
        call __var_16 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_16 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call __var_18 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_18 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_17 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_18]][spender_s314], subtractedValue_s314);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s314, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s314, __var_17);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := true;
    return;
}



implementation _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s370: Ref, 
    recipient_s370: Ref, 
    amount_s370: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s370 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s370 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s370], amount_s370);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s370] := __var_21;
    call __var_22 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s370], amount_s370);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s370] := __var_22;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s370: Ref, 
    recipient_s370: Ref, 
    amount_s370: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s370 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s370 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][sender_s370], amount_s370);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][sender_s370] := __var_21;
    call __var_22 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][recipient_s370], amount_s370);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][recipient_s370] := __var_22;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s383: Ref, 
    amount_s383: int)
{
    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s383, amount_s383);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s383, amount_s383);
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



implementation _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s383: Ref, 
    amount_s383: int)
{
    if (DType[this] == ERC20Burnable)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s383, amount_s383);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s383, amount_s383);
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



implementation _mint_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s426: Ref, 
    amount_s426: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s426 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s426);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s426], amount_s426);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s426] := __var_25;
}



implementation _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s426: Ref, 
    amount_s426: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s426 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s426);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s426], amount_s426);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s426] := __var_25;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    amount_s469: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s469 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s469], amount_s469);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s469] := __var_27;
    call __var_28 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s469);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_28;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    amount_s469: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s469 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s469], amount_s469);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s469] := __var_27;
    call __var_28 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s469);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_28;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s511: Ref, 
    spender_s511: Ref, 
    amount_s511: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s511 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s511 != null))
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s511]][spender_s511] := amount_s511;
}



implementation _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s511: Ref, 
    spender_s511: Ref, 
    amount_s511: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s511 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s511 != null))
    {
        revert := true;
        return;
    }

    M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s511]][spender_s511] := amount_s511;
    assert {:EventEmitted "Approval_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s539: Ref, 
    amount_s539: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s539, amount_s539);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s539, amount_s539);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_31 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_31 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_33 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_33 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_32 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s539]][__var_33], amount_s539);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s539, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s539, __var_31, __var_32);
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



implementation _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s539: Ref, 
    amount_s539: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s539, amount_s539);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s539, amount_s539);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call __var_31 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_31 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call __var_33 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_33 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_32 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][account_s539]][__var_33], amount_s539);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Burnable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s539, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s539, __var_31, __var_32);
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



implementation ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation ERC20Burnable_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20Burnable_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation burn_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s19: int)
{
  var __var_34: Ref;

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_34, amount_s19);
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



implementation burn_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s19: int)
{
  var __var_34: Ref;

    if (DType[this] == ERC20Burnable)
    {
        call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_34, amount_s19);
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



implementation burnFrom_ERC20Burnable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s32: Ref, 
    amount_s32: int)
{
    if (__tmp__DType[this] == ERC20Burnable)
    {
        call _burnFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s32, amount_s32);
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



implementation burnFrom_ERC20Burnable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s32: Ref, 
    amount_s32: int)
{
    if (DType[this] == ERC20Burnable)
    {
        call _burnFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s32, amount_s32);
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s636: int, b_s636: int)
   returns (__ret_0_: int)
{
  var c_s635: int;

    c_s635 := a_s636 + b_s636;
    if (!(c_s635 >= a_s636))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s635;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s636: int, b_s636: int)
   returns (__ret_0_: int)
{
  var c_s635: int;

    c_s635 := a_s636 + b_s636;
    if (!(c_s635 >= a_s636))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s635;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int)
   returns (__ret_0_: int)
{
  var c_s660: int;

    if (!(b_s661 <= a_s661))
    {
        revert := true;
        return;
    }

    c_s660 := a_s661 - b_s661;
    __ret_0_ := c_s660;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int)
   returns (__ret_0_: int)
{
  var c_s660: int;

    if (!(b_s661 <= a_s661))
    {
        revert := true;
        return;
    }

    c_s660 := a_s661 - b_s661;
    __ret_0_ := c_s660;
    return;
}



implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s695: int, b_s695: int)
   returns (__ret_0_: int)
{
  var c_s694: int;

    if (a_s695 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s694 := a_s695 * b_s695;
    if (!(c_s694 div a_s695 == b_s695))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s694;
    return;
}



implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s695: int, b_s695: int)
   returns (__ret_0_: int)
{
  var c_s694: int;

    if (a_s695 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s694 := a_s695 * b_s695;
    if (!(c_s694 div a_s695 == b_s695))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s694;
    return;
}



implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s720: int, b_s720: int)
   returns (__ret_0_: int)
{
  var c_s719: int;

    if (!(b_s720 > 0))
    {
        revert := true;
        return;
    }

    c_s719 := a_s720 div b_s720;
    __ret_0_ := c_s719;
    return;
}



implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s720: int, b_s720: int)
   returns (__ret_0_: int)
{
  var c_s719: int;

    if (!(b_s720 > 0))
    {
        revert := true;
        return;
    }

    c_s719 := a_s720 div b_s720;
    __ret_0_ := c_s719;
    return;
}



implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s741: int, b_s741: int)
   returns (__ret_0_: int)
{
    if (!(b_s741 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s741 mod b_s741;
    return;
}



implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s741: int, b_s741: int)
   returns (__ret_0_: int)
{
    if (!(b_s741 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s741 mod b_s741;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Burnable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
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
    if (DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Burnable)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
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
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s93: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s108: Ref;
  var amount_s108: int;
  var __ret_0_transfer: bool;
  var owner_s143: Ref;
  var spender_s143: Ref;
  var __ret_0_allowance: int;
  var spender_s158: Ref;
  var amount_s158: int;
  var __ret_0_approve: bool;
  var sender_s195: Ref;
  var recipient_s195: Ref;
  var amount_s195: int;
  var __ret_0_transferFrom: bool;
  var spender_s245: Ref;
  var addedValue_s245: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s287: Ref;
  var subtractedValue_s287: int;
  var __ret_0_decreaseAllowance: bool;
  var amount_s19: int;
  var account_s32: Ref;
  var amount_s32: int;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s93);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s143, spender_s143);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s287, subtractedValue_s287);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call burn_ERC20Burnable__fail(from, to, msgvalue_MSG, amount_s19);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call burnFrom_ERC20Burnable__fail(from, to, msgvalue_MSG, account_s32, amount_s32);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s93);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s143, spender_s143);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s287, subtractedValue_s287);
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
  var account_s93: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s108: Ref;
  var amount_s108: int;
  var __ret_0_transfer: bool;
  var owner_s143: Ref;
  var spender_s143: Ref;
  var __ret_0_allowance: int;
  var spender_s158: Ref;
  var amount_s158: int;
  var __ret_0_approve: bool;
  var sender_s195: Ref;
  var recipient_s195: Ref;
  var amount_s195: int;
  var __ret_0_transferFrom: bool;
  var spender_s245: Ref;
  var addedValue_s245: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s287: Ref;
  var subtractedValue_s287: int;
  var __ret_0_decreaseAllowance: bool;
  var amount_s19: int;
  var account_s32: Ref;
  var amount_s32: int;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s93);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s143, spender_s143);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s287, subtractedValue_s287);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call burn_ERC20Burnable__success(from, to, msgvalue_MSG, amount_s19);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call burnFrom_ERC20Burnable__success(from, to, msgvalue_MSG, account_s32, amount_s32);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s93);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s108, amount_s108);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s143, spender_s143);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s158, amount_s158);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s245, addedValue_s245);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s287, subtractedValue_s287);
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
  var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp___balances_ERC20: [Ref]Ref;
  var __snap___tmp___allowances_ERC20: [Ref]Ref;
  var __snap___tmp___totalSupply_ERC20: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
        __snap___tmp___allowances_ERC20 := __tmp___allowances_ERC20;
        __snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
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
        __tmp__M_Ref_Ref := __snap___tmp__M_Ref_Ref;
        __tmp__Length := __snap___tmp__Length;
        __tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
        __tmp___allowances_ERC20 := __snap___tmp___allowances_ERC20;
        __tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
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
        __tmp__M_Ref_Ref := M_Ref_Ref;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
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



implementation BoogieEntry_Context()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == Context || DType[this] == ERC20 || DType[this] == ERC20Burnable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call Context_Context(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
    }
}



implementation BoogieEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s93: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s108: Ref;
  var amount_s108: int;
  var __ret_0_transfer: bool;
  var owner_s143: Ref;
  var spender_s143: Ref;
  var __ret_0_allowance: int;
  var spender_s158: Ref;
  var amount_s158: int;
  var __ret_0_approve: bool;
  var sender_s195: Ref;
  var recipient_s195: Ref;
  var amount_s195: int;
  var __ret_0_transferFrom: bool;
  var spender_s245: Ref;
  var addedValue_s245: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s287: Ref;
  var subtractedValue_s287: int;
  var __ret_0_decreaseAllowance: bool;

    assume DType[this] == ERC20 || DType[this] == ERC20Burnable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc __ret_0_totalSupply;
        havoc account_s93;
        havoc __ret_0_balanceOf;
        havoc recipient_s108;
        havoc amount_s108;
        havoc __ret_0_transfer;
        havoc owner_s143;
        havoc spender_s143;
        havoc __ret_0_allowance;
        havoc spender_s158;
        havoc amount_s158;
        havoc __ret_0_approve;
        havoc sender_s195;
        havoc recipient_s195;
        havoc amount_s195;
        havoc __ret_0_transferFrom;
        havoc spender_s245;
        havoc addedValue_s245;
        havoc __ret_0_increaseAllowance;
        havoc spender_s287;
        havoc subtractedValue_s287;
        havoc __ret_0_decreaseAllowance;
        if (choice == 8)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 7)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s93);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s143, spender_s143);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        }
    }
}



implementation BoogieEntry_ERC20Burnable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s93: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s108: Ref;
  var amount_s108: int;
  var __ret_0_transfer: bool;
  var owner_s143: Ref;
  var spender_s143: Ref;
  var __ret_0_allowance: int;
  var spender_s158: Ref;
  var amount_s158: int;
  var __ret_0_approve: bool;
  var sender_s195: Ref;
  var recipient_s195: Ref;
  var amount_s195: int;
  var __ret_0_transferFrom: bool;
  var spender_s245: Ref;
  var addedValue_s245: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s287: Ref;
  var subtractedValue_s287: int;
  var __ret_0_decreaseAllowance: bool;
  var amount_s19: int;
  var account_s32: Ref;
  var amount_s32: int;

    assume DType[this] == ERC20Burnable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc __ret_0_totalSupply;
        havoc account_s93;
        havoc __ret_0_balanceOf;
        havoc recipient_s108;
        havoc amount_s108;
        havoc __ret_0_transfer;
        havoc owner_s143;
        havoc spender_s143;
        havoc __ret_0_allowance;
        havoc spender_s158;
        havoc amount_s158;
        havoc __ret_0_approve;
        havoc sender_s195;
        havoc recipient_s195;
        havoc amount_s195;
        havoc __ret_0_transferFrom;
        havoc spender_s245;
        havoc addedValue_s245;
        havoc __ret_0_increaseAllowance;
        havoc spender_s287;
        havoc subtractedValue_s287;
        havoc __ret_0_decreaseAllowance;
        havoc amount_s19;
        havoc account_s32;
        havoc amount_s32;
        if (choice == 10)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 9)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s93);
        }
        else if (choice == 8)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
        }
        else if (choice == 7)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s143, spender_s143);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call burn_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, amount_s19);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call burnFrom_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, account_s32, amount_s32);
        }
    }
}



implementation BoogieEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == ERC20 || DType[this] == ERC20Burnable || DType[this] == IERC20;
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



implementation BoogieEntry_SafeMath()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == SafeMath;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
    }
}



implementation CorralChoice_Context(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
}



implementation CorralEntry_Context()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == Context || DType[this] == ERC20 || DType[this] == ERC20Burnable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call Context_Context(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Context(this);
    }
}



implementation CorralChoice_ERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s93: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s108: Ref;
  var amount_s108: int;
  var __ret_0_transfer: bool;
  var owner_s143: Ref;
  var spender_s143: Ref;
  var __ret_0_allowance: int;
  var spender_s158: Ref;
  var amount_s158: int;
  var __ret_0_approve: bool;
  var sender_s195: Ref;
  var recipient_s195: Ref;
  var amount_s195: int;
  var __ret_0_transferFrom: bool;
  var spender_s245: Ref;
  var addedValue_s245: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s287: Ref;
  var subtractedValue_s287: int;
  var __ret_0_decreaseAllowance: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s93;
    havoc __ret_0_balanceOf;
    havoc recipient_s108;
    havoc amount_s108;
    havoc __ret_0_transfer;
    havoc owner_s143;
    havoc spender_s143;
    havoc __ret_0_allowance;
    havoc spender_s158;
    havoc amount_s158;
    havoc __ret_0_approve;
    havoc sender_s195;
    havoc recipient_s195;
    havoc amount_s195;
    havoc __ret_0_transferFrom;
    havoc spender_s245;
    havoc addedValue_s245;
    havoc __ret_0_increaseAllowance;
    havoc spender_s287;
    havoc subtractedValue_s287;
    havoc __ret_0_decreaseAllowance;
    if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s93);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s143, spender_s143);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
    }
}



implementation CorralEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20 || DType[this] == ERC20Burnable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_ERC20Burnable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s93: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s108: Ref;
  var amount_s108: int;
  var __ret_0_transfer: bool;
  var owner_s143: Ref;
  var spender_s143: Ref;
  var __ret_0_allowance: int;
  var spender_s158: Ref;
  var amount_s158: int;
  var __ret_0_approve: bool;
  var sender_s195: Ref;
  var recipient_s195: Ref;
  var amount_s195: int;
  var __ret_0_transferFrom: bool;
  var spender_s245: Ref;
  var addedValue_s245: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s287: Ref;
  var subtractedValue_s287: int;
  var __ret_0_decreaseAllowance: bool;
  var amount_s19: int;
  var account_s32: Ref;
  var amount_s32: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s93;
    havoc __ret_0_balanceOf;
    havoc recipient_s108;
    havoc amount_s108;
    havoc __ret_0_transfer;
    havoc owner_s143;
    havoc spender_s143;
    havoc __ret_0_allowance;
    havoc spender_s158;
    havoc amount_s158;
    havoc __ret_0_approve;
    havoc sender_s195;
    havoc recipient_s195;
    havoc amount_s195;
    havoc __ret_0_transferFrom;
    havoc spender_s245;
    havoc addedValue_s245;
    havoc __ret_0_increaseAllowance;
    havoc spender_s287;
    havoc subtractedValue_s287;
    havoc __ret_0_decreaseAllowance;
    havoc amount_s19;
    havoc account_s32;
    havoc amount_s32;
    if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s93);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s108, amount_s108);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s143, spender_s143);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s158, amount_s158);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s195, recipient_s195, amount_s195);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s245, addedValue_s245);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s287, subtractedValue_s287);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call burn_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, amount_s19);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call burnFrom_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, account_s32, amount_s32);
    }
}



implementation CorralEntry_ERC20Burnable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Burnable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Burnable(this);
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

    assume DType[this] == ERC20 || DType[this] == ERC20Burnable || DType[this] == IERC20;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_IERC20(this);
    }
}



implementation CorralChoice_SafeMath(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
}



implementation CorralEntry_SafeMath()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == SafeMath;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SafeMath(this);
    }
}


