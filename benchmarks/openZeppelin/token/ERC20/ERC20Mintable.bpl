// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /noVerify /pretty:1 /print:ERC20Mintable.bpl __SolToBoogieTest_out.bpl

type Ref;

type ContractName;

const unique null: Ref;

const unique Context: ContractName;

const unique ERC20: ContractName;

const unique ERC20Mintable: ContractName;

const unique IERC20: ContractName;

const unique MinterRole: ContractName;

const unique Roles: ContractName;

const unique Roles.Role: ContractName;

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

var M_Ref_bool: [Ref][Ref]bool;

var Length: [Ref]int;

var revert: bool;

var gas: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} HavocAllocMany__success();
  modifies Alloc;



procedure {:inline 1} Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
  modifies bearer_Roles.Role;



procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s84: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s84: Ref)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s84);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s84);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s99: Ref, 
    amount_s99: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s99: Ref, 
    amount_s99: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transfer_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s118: Ref, 
    amount_s118: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s134: Ref, 
    spender_s134: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s134: Ref, 
    spender_s134: Ref)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s134, spender_s134);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s134, spender_s134);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s149: Ref, 
    amount_s149: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s149: Ref, 
    amount_s149: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} approve_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s168: Ref, 
    amount_s168: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s186: Ref, 
    recipient_s186: Ref, 
    amount_s186: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s186: Ref, 
    recipient_s186: Ref, 
    amount_s186: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transferFrom_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s221: Ref, 
    recipient_s221: Ref, 
    amount_s221: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s236: Ref, 
    addedValue_s236: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s236: Ref, 
    addedValue_s236: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} increaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s263: Ref, 
    addedValue_s263: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s278: Ref, 
    subtractedValue_s278: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s278: Ref, 
    subtractedValue_s278: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s305: Ref, 
    subtractedValue_s305: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s361: Ref, 
    recipient_s361: Ref, 
    amount_s361: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s374: Ref, 
    amount_s374: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s417: Ref, 
    amount_s417: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    amount_s460: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s502: Ref, 
    spender_s502: Ref, 
    amount_s502: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s530: Ref, 
    amount_s530: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, M_Ref_bool;



implementation ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call ERC20Mintable_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} mint_ERC20Mintable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s26: Ref, 
    amount_s26: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, M_Ref_int;



implementation mint_ERC20Mintable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s26: Ref, 
    amount_s26: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := mint_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG, account_s26, amount_s26);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := mint_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG, account_s26, amount_s26);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _mint_ERC20Mintable_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s39: Ref, 
    amount_s39: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s668: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s677: Ref, 
    amount_s677: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s686: Ref, 
    spender_s686: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s695: Ref, 
    amount_s695: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s706: Ref, 
    recipient_s706: Ref, 
    amount_s706: int)
   returns (__ret_0_: bool);



var _minters_MinterRole: [Ref]Ref;

procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:constructor} {:public} {:inline 1} MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



implementation MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s584: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s584: Ref)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s584);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s584);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s596: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



implementation addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s596: Ref)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s596);
        assume revert || gas < 0;
    }
    else
    {
        call addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s596);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



implementation renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call renounceMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call renounceMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s637: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call Roles_Roles__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var bearer_Roles.Role: [Ref]Ref;

procedure {:inline 1} add_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s888: Ref, 
    account_s888: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s912: Ref, 
    account_s912: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s936: Ref, 
    account_s936: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s775: int, b_s775: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s834: int, b_s834: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s855: int, b_s855: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, revert, gas, Balance, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure BoogieEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



procedure BoogieEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure BoogieEntry_ERC20Mintable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int, M_Ref_bool;



procedure BoogieEntry_IERC20();
  modifies gas;



procedure BoogieEntry_MinterRole();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



procedure BoogieEntry_Roles();
  modifies gas;



procedure BoogieEntry_SafeMath();
  modifies gas;



procedure onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure CorralChoice_Context(this: Ref);



procedure CorralEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure CorralEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure CorralChoice_ERC20Mintable(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure CorralEntry_ERC20Mintable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int, M_Ref_bool;



procedure CorralChoice_IERC20(this: Ref);



procedure CorralEntry_IERC20();
  modifies gas;



procedure CorralChoice_MinterRole(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



procedure CorralEntry_MinterRole();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



procedure CorralChoice_Roles(this: Ref);



procedure CorralEntry_Roles();
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

var __tmp__M_Ref_bool: [Ref][Ref]bool;

var __tmp__Length: [Ref]int;

var __tmp___balances_ERC20: [Ref]Ref;

var __tmp___allowances_ERC20: [Ref]Ref;

var __tmp___totalSupply_ERC20: [Ref]int;

var __tmp___minters_MinterRole: [Ref]Ref;

var __tmp__bearer_Roles.Role: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} HavocAllocMany__fail();
  modifies __tmp__Alloc;



procedure {:inline 1} Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
  modifies __tmp__bearer_Roles.Role;



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



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s84: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s84: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s99: Ref, 
    amount_s99: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s99: Ref, 
    amount_s99: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transfer_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s118: Ref, 
    amount_s118: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s134: Ref, 
    spender_s134: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s134: Ref, 
    spender_s134: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s149: Ref, 
    amount_s149: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s149: Ref, 
    amount_s149: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} approve_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s168: Ref, 
    amount_s168: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s186: Ref, 
    recipient_s186: Ref, 
    amount_s186: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s186: Ref, 
    recipient_s186: Ref, 
    amount_s186: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s221: Ref, 
    recipient_s221: Ref, 
    amount_s221: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s236: Ref, 
    addedValue_s236: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s236: Ref, 
    addedValue_s236: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s263: Ref, 
    addedValue_s263: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s278: Ref, 
    subtractedValue_s278: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s278: Ref, 
    subtractedValue_s278: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s305: Ref, 
    subtractedValue_s305: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s361: Ref, 
    recipient_s361: Ref, 
    amount_s361: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s374: Ref, 
    amount_s374: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s417: Ref, 
    amount_s417: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    amount_s460: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s502: Ref, 
    spender_s502: Ref, 
    amount_s502: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s530: Ref, 
    amount_s530: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___totalSupply_ERC20, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp__Alloc, revert, __tmp__M_Ref_bool;



procedure {:inline 1} mint_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s26: Ref, 
    amount_s26: int)
   returns (__ret_0_: bool);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} mint_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s26: Ref, 
    amount_s26: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20Mintable_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s39: Ref, 
    amount_s39: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__M_Ref_bool;



procedure {:constructor} {:inline 1} MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:constructor} {:inline 1} MinterRole_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s584: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s584: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s596: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s596: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s637: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s888: Ref, 
    account_s888: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s912: Ref, 
    account_s912: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s936: Ref, 
    account_s936: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s775: int, b_s775: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s834: int, b_s834: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s855: int, b_s855: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int, __tmp__M_Ref_bool;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int, __tmp__M_Ref_bool;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, revert, gas;



procedure onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



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



implementation Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
    __tmp__bearer_Roles.Role[this] := bearer;
}



implementation Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
    bearer_Roles.Role[this] := bearer;
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



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s84: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s84];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s84: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[_balances_ERC20[this]][account_s84];
    return;
}



implementation transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s99: Ref, 
    amount_s99: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
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
    recipient_s99: Ref, 
    amount_s99: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (DType[this] == ERC20Mintable)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
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
    recipient_s118: Ref, 
    amount_s118: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s118, amount_s118);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s118, amount_s118);
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
    recipient_s118: Ref, 
    amount_s118: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s118, amount_s118);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s118, amount_s118);
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
    owner_s134: Ref, 
    spender_s134: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s134]][spender_s134];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s134: Ref, 
    spender_s134: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s134]][spender_s134];
    return;
}



implementation approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s149: Ref, 
    amount_s149: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
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
    spender_s149: Ref, 
    amount_s149: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (DType[this] == ERC20Mintable)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
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
    spender_s168: Ref, 
    amount_s168: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s168, amount_s168);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s168, amount_s168);
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
    spender_s168: Ref, 
    amount_s168: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s168, amount_s168);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s168, amount_s168);
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
    sender_s186: Ref, 
    recipient_s186: Ref, 
    amount_s186: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
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
    sender_s186: Ref, 
    recipient_s186: Ref, 
    amount_s186: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (DType[this] == ERC20Mintable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
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
    sender_s221: Ref, 
    recipient_s221: Ref, 
    amount_s221: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s221, recipient_s221, amount_s221);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s221, recipient_s221, amount_s221);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_9 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s221]][__var_10], amount_s221);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s221, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s221, __var_8, __var_9);
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
    sender_s221: Ref, 
    recipient_s221: Ref, 
    amount_s221: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s221, recipient_s221, amount_s221);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s221, recipient_s221, amount_s221);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Mintable)
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

    call __var_9 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][sender_s221]][__var_10], amount_s221);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s221, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s221, __var_8, __var_9);
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
    spender_s236: Ref, 
    addedValue_s236: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
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
    spender_s236: Ref, 
    addedValue_s236: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (DType[this] == ERC20Mintable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
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
    spender_s263: Ref, 
    addedValue_s263: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_13 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_14]][spender_s263], addedValue_s263);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s263, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s263, __var_13);
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
    spender_s263: Ref, 
    addedValue_s263: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Mintable)
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

    call __var_13 := add_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_14]][spender_s263], addedValue_s263);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s263, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s263, __var_13);
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
    spender_s278: Ref, 
    subtractedValue_s278: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
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
    spender_s278: Ref, 
    subtractedValue_s278: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (DType[this] == ERC20Mintable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
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
    spender_s305: Ref, 
    subtractedValue_s305: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_17 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_18]][spender_s305], subtractedValue_s305);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s305, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s305, __var_17);
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
    spender_s305: Ref, 
    subtractedValue_s305: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Mintable)
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

    call __var_17 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_18]][spender_s305], subtractedValue_s305);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s305, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s305, __var_17);
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
    sender_s361: Ref, 
    recipient_s361: Ref, 
    amount_s361: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s361 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s361 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s361], amount_s361);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s361] := __var_21;
    call __var_22 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s361], amount_s361);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s361] := __var_22;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s361: Ref, 
    recipient_s361: Ref, 
    amount_s361: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s361 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s361 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][sender_s361], amount_s361);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][sender_s361] := __var_21;
    call __var_22 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][recipient_s361], amount_s361);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][recipient_s361] := __var_22;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s374: Ref, 
    amount_s374: int)
{
    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s374, amount_s374);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s374, amount_s374);
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
    account_s374: Ref, 
    amount_s374: int)
{
    if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s374, amount_s374);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s374, amount_s374);
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
    account_s417: Ref, 
    amount_s417: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s417 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s417);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s417], amount_s417);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s417] := __var_25;
}



implementation _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s417: Ref, 
    amount_s417: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s417 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s417);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s417], amount_s417);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s417] := __var_25;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    amount_s460: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s460 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s460], amount_s460);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s460] := __var_27;
    call __var_28 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s460);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_28;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    amount_s460: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s460 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s460], amount_s460);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s460] := __var_27;
    call __var_28 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s460);
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
    owner_s502: Ref, 
    spender_s502: Ref, 
    amount_s502: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s502 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s502 != null))
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s502]][spender_s502] := amount_s502;
}



implementation _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s502: Ref, 
    spender_s502: Ref, 
    amount_s502: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s502 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s502 != null))
    {
        revert := true;
        return;
    }

    M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s502]][spender_s502] := amount_s502;
    assert {:EventEmitted "Approval_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s530: Ref, 
    amount_s530: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s530, amount_s530);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s530, amount_s530);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_32 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s530]][__var_33], amount_s530);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s530, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s530, __var_31, __var_32);
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
    account_s530: Ref, 
    amount_s530: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s530, amount_s530);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s530, amount_s530);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Mintable)
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

    call __var_32 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][account_s530]][__var_33], amount_s530);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s530, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s530, __var_31, __var_32);
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



implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation mint_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s26: Ref, 
    amount_s26: int)
   returns (__ret_0_: bool)
{
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s26, amount_s26);
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



implementation mint_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s26: Ref, 
    amount_s26: int)
   returns (__ret_0_: bool)
{
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s26, amount_s26);
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



implementation _mint_ERC20Mintable_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s39: Ref, 
    amount_s39: int)
{
    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s39, amount_s39);
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



implementation _mint_ERC20Mintable_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s39: Ref, 
    amount_s39: int)
{
    if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s39, amount_s39);
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



implementation MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_34: Ref;

    assume msgsender_MSG != null;
    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
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

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
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



implementation MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_34: Ref;

    assume msgsender_MSG != null;
    if (DType[this] == ERC20Mintable)
    {
        call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
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

    if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
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



implementation MinterRole_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_34: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MinterRole_MinterRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_34: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MinterRole_MinterRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s584: Ref)
   returns (__ret_0_: bool)
{
  var __var_37: bool;

    call __var_37 := has_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s584);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_37;
    return;
}



implementation isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s584: Ref)
   returns (__ret_0_: bool)
{
  var __var_37: bool;

    call __var_37 := has_Roles__success(this, this, 0, _minters_MinterRole[this], account_s584);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_37;
    return;
}



implementation addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s596: Ref)
{
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s596);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s596);
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



implementation addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s596: Ref)
{
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s596);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s596);
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



implementation renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_38: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_38 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call __var_38 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_38);
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



implementation renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_38: Ref;

    if (DType[this] == ERC20Mintable)
    {
        call __var_38 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call __var_38 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_38);
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



implementation _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref)
{
    call add_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s621);
    if (revert)
    {
        return;
    }
}



implementation _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref)
{
    call add_Roles__success(this, this, 0, _minters_MinterRole[this], account_s621);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "MinterAdded_MinterRole"} true;
}



implementation _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s637: Ref)
{
    call remove_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s637);
    if (revert)
    {
        return;
    }
}



implementation _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s637: Ref)
{
    call remove_Roles__success(this, this, 0, _minters_MinterRole[this], account_s637);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "MinterRemoved_MinterRole"} true;
}



implementation Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Roles_Roles_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Roles_Roles_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation add_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s888: Ref, 
    account_s888: Ref)
{
  var __var_39: bool;

    call __var_39 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s888, account_s888);
    if (revert)
    {
        return;
    }

    if (!!__var_39)
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s888]][account_s888] := true;
}



implementation add_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s888: Ref, 
    account_s888: Ref)
{
  var __var_39: bool;

    call __var_39 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s888, account_s888);
    if (revert)
    {
        return;
    }

    if (!!__var_39)
    {
        revert := true;
        return;
    }

    M_Ref_bool[bearer_Roles.Role[role_s888]][account_s888] := true;
}



implementation remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s912: Ref, 
    account_s912: Ref)
{
  var __var_40: bool;

    call __var_40 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s912, account_s912);
    if (revert)
    {
        return;
    }

    if (!__var_40)
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s912]][account_s912] := false;
}



implementation remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s912: Ref, 
    account_s912: Ref)
{
  var __var_40: bool;

    call __var_40 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s912, account_s912);
    if (revert)
    {
        return;
    }

    if (!__var_40)
    {
        revert := true;
        return;
    }

    M_Ref_bool[bearer_Roles.Role[role_s912]][account_s912] := false;
}



implementation has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s936: Ref, 
    account_s936: Ref)
   returns (__ret_0_: bool)
{
  var __var_41: Ref;

    __var_41 := null;
    if (!(account_s936 != null))
    {
        revert := true;
        return;
    }

    __ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s936]][account_s936];
    return;
}



implementation has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s936: Ref, 
    account_s936: Ref)
   returns (__ret_0_: bool)
{
  var __var_41: Ref;

    __var_41 := null;
    if (!(account_s936 != null))
    {
        revert := true;
        return;
    }

    __ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s936]][account_s936];
    return;
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int)
{
  var c_s749: int;

    c_s749 := a_s750 + b_s750;
    if (!(c_s749 >= a_s750))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s749;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s750: int, b_s750: int)
   returns (__ret_0_: int)
{
  var c_s749: int;

    c_s749 := a_s750 + b_s750;
    if (!(c_s749 >= a_s750))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s749;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s775: int, b_s775: int)
   returns (__ret_0_: int)
{
  var c_s774: int;

    if (!(b_s775 <= a_s775))
    {
        revert := true;
        return;
    }

    c_s774 := a_s775 - b_s775;
    __ret_0_ := c_s774;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s775: int, b_s775: int)
   returns (__ret_0_: int)
{
  var c_s774: int;

    if (!(b_s775 <= a_s775))
    {
        revert := true;
        return;
    }

    c_s774 := a_s775 - b_s775;
    __ret_0_ := c_s774;
    return;
}



implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int)
{
  var c_s808: int;

    if (a_s809 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s808 := a_s809 * b_s809;
    if (!(c_s808 div a_s809 == b_s809))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s808;
    return;
}



implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s809: int, b_s809: int)
   returns (__ret_0_: int)
{
  var c_s808: int;

    if (a_s809 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s808 := a_s809 * b_s809;
    if (!(c_s808 div a_s809 == b_s809))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s808;
    return;
}



implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s834: int, b_s834: int)
   returns (__ret_0_: int)
{
  var c_s833: int;

    if (!(b_s834 > 0))
    {
        revert := true;
        return;
    }

    c_s833 := a_s834 div b_s834;
    __ret_0_ := c_s833;
    return;
}



implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s834: int, b_s834: int)
   returns (__ret_0_: int)
{
  var c_s833: int;

    if (!(b_s834 > 0))
    {
        revert := true;
        return;
    }

    c_s833 := a_s834 div b_s834;
    __ret_0_ := c_s833;
    return;
}



implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s855: int, b_s855: int)
   returns (__ret_0_: int)
{
    if (!(b_s855 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s855 mod b_s855;
    return;
}



implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s855: int, b_s855: int)
   returns (__ret_0_: int)
{
    if (!(b_s855 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s855 mod b_s855;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == MinterRole)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Mintable)
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
    if (DType[to] == MinterRole)
    {
        assume amount == 0;
    }
    else if (DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Mintable)
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
  var account_s84: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s99: Ref;
  var amount_s99: int;
  var __ret_0_transfer: bool;
  var owner_s134: Ref;
  var spender_s134: Ref;
  var __ret_0_allowance: int;
  var spender_s149: Ref;
  var amount_s149: int;
  var __ret_0_approve: bool;
  var sender_s186: Ref;
  var recipient_s186: Ref;
  var amount_s186: int;
  var __ret_0_transferFrom: bool;
  var spender_s236: Ref;
  var addedValue_s236: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s278: Ref;
  var subtractedValue_s278: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s584: Ref;
  var __ret_0_isMinter: bool;
  var account_s596: Ref;
  var account_s26: Ref;
  var amount_s26: int;
  var __ret_0_mint: bool;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 23)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s584);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s596);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s84);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s99, amount_s99);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s134, spender_s134);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s149, amount_s149);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s236, addedValue_s236);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s278, subtractedValue_s278);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s584);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s596);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable__fail(from, to, msgvalue_MSG, account_s26, amount_s26);
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
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s84);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s99, amount_s99);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s134, spender_s134);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s149, amount_s149);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s236, addedValue_s236);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s278, subtractedValue_s278);
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
  var account_s84: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s99: Ref;
  var amount_s99: int;
  var __ret_0_transfer: bool;
  var owner_s134: Ref;
  var spender_s134: Ref;
  var __ret_0_allowance: int;
  var spender_s149: Ref;
  var amount_s149: int;
  var __ret_0_approve: bool;
  var sender_s186: Ref;
  var recipient_s186: Ref;
  var amount_s186: int;
  var __ret_0_transferFrom: bool;
  var spender_s236: Ref;
  var addedValue_s236: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s278: Ref;
  var subtractedValue_s278: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s584: Ref;
  var __ret_0_isMinter: bool;
  var account_s596: Ref;
  var account_s26: Ref;
  var amount_s26: int;
  var __ret_0_mint: bool;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 23)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s584);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s596);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s84);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s99, amount_s99);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s134, spender_s134);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s149, amount_s149);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s236, addedValue_s236);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s278, subtractedValue_s278);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s584);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s596);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable__success(from, to, msgvalue_MSG, account_s26, amount_s26);
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
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s84);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s99, amount_s99);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s134, spender_s134);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s149, amount_s149);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s236, addedValue_s236);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s278, subtractedValue_s278);
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
  var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp___balances_ERC20: [Ref]Ref;
  var __snap___tmp___allowances_ERC20: [Ref]Ref;
  var __snap___tmp___totalSupply_ERC20: [Ref]int;
  var __snap___tmp___minters_MinterRole: [Ref]Ref;
  var __snap___tmp__bearer_Roles.Role: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
        __snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
        __snap___tmp___allowances_ERC20 := __tmp___allowances_ERC20;
        __snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
        __snap___tmp___minters_MinterRole := __tmp___minters_MinterRole;
        __snap___tmp__bearer_Roles.Role := __tmp__bearer_Roles.Role;
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
        __tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
        __tmp__Length := __snap___tmp__Length;
        __tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
        __tmp___allowances_ERC20 := __snap___tmp___allowances_ERC20;
        __tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
        __tmp___minters_MinterRole := __snap___tmp___minters_MinterRole;
        __tmp__bearer_Roles.Role := __snap___tmp__bearer_Roles.Role;
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
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__Length := Length;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
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



implementation onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_35: bool;
  var __var_36: Ref;

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_36 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call __var_36 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_35 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call __var_35 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_35)
    {
        revert := true;
        return;
    }
}



implementation onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_35: bool;
  var __var_36: Ref;

    if (DType[this] == ERC20Mintable)
    {
        call __var_36 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call __var_36 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Mintable)
    {
        call __var_35 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call __var_35 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_35)
    {
        revert := true;
        return;
    }
}



implementation BoogieEntry_Context()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == Context
       || DType[this] == ERC20
       || DType[this] == ERC20Mintable
       || DType[this] == MinterRole;
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
  var account_s84: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s99: Ref;
  var amount_s99: int;
  var __ret_0_transfer: bool;
  var owner_s134: Ref;
  var spender_s134: Ref;
  var __ret_0_allowance: int;
  var spender_s149: Ref;
  var amount_s149: int;
  var __ret_0_approve: bool;
  var sender_s186: Ref;
  var recipient_s186: Ref;
  var amount_s186: int;
  var __ret_0_transferFrom: bool;
  var spender_s236: Ref;
  var addedValue_s236: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s278: Ref;
  var subtractedValue_s278: int;
  var __ret_0_decreaseAllowance: bool;

    assume DType[this] == ERC20 || DType[this] == ERC20Mintable;
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
        havoc account_s84;
        havoc __ret_0_balanceOf;
        havoc recipient_s99;
        havoc amount_s99;
        havoc __ret_0_transfer;
        havoc owner_s134;
        havoc spender_s134;
        havoc __ret_0_allowance;
        havoc spender_s149;
        havoc amount_s149;
        havoc __ret_0_approve;
        havoc sender_s186;
        havoc recipient_s186;
        havoc amount_s186;
        havoc __ret_0_transferFrom;
        havoc spender_s236;
        havoc addedValue_s236;
        havoc __ret_0_increaseAllowance;
        havoc spender_s278;
        havoc subtractedValue_s278;
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
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s84);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s134, spender_s134);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
        }
    }
}



implementation BoogieEntry_ERC20Mintable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s84: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s99: Ref;
  var amount_s99: int;
  var __ret_0_transfer: bool;
  var owner_s134: Ref;
  var spender_s134: Ref;
  var __ret_0_allowance: int;
  var spender_s149: Ref;
  var amount_s149: int;
  var __ret_0_approve: bool;
  var sender_s186: Ref;
  var recipient_s186: Ref;
  var amount_s186: int;
  var __ret_0_transferFrom: bool;
  var spender_s236: Ref;
  var addedValue_s236: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s278: Ref;
  var subtractedValue_s278: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s584: Ref;
  var __ret_0_isMinter: bool;
  var account_s596: Ref;
  var account_s26: Ref;
  var amount_s26: int;
  var __ret_0_mint: bool;

    assume DType[this] == ERC20Mintable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc __ret_0_totalSupply;
        havoc account_s84;
        havoc __ret_0_balanceOf;
        havoc recipient_s99;
        havoc amount_s99;
        havoc __ret_0_transfer;
        havoc owner_s134;
        havoc spender_s134;
        havoc __ret_0_allowance;
        havoc spender_s149;
        havoc amount_s149;
        havoc __ret_0_approve;
        havoc sender_s186;
        havoc recipient_s186;
        havoc amount_s186;
        havoc __ret_0_transferFrom;
        havoc spender_s236;
        havoc addedValue_s236;
        havoc __ret_0_increaseAllowance;
        havoc spender_s278;
        havoc subtractedValue_s278;
        havoc __ret_0_decreaseAllowance;
        havoc account_s584;
        havoc __ret_0_isMinter;
        havoc account_s596;
        havoc account_s26;
        havoc amount_s26;
        havoc __ret_0_mint;
        if (choice == 12)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 11)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s84);
        }
        else if (choice == 10)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
        }
        else if (choice == 9)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s134, spender_s134);
        }
        else if (choice == 8)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
        }
        else if (choice == 7)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s584);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s596);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s26, amount_s26);
        }
    }
}



implementation BoogieEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == ERC20 || DType[this] == ERC20Mintable || DType[this] == IERC20;
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



implementation BoogieEntry_MinterRole()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s584: Ref;
  var __ret_0_isMinter: bool;
  var account_s596: Ref;

    assume DType[this] == ERC20Mintable || DType[this] == MinterRole;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call MinterRole_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc account_s584;
        havoc __ret_0_isMinter;
        havoc account_s596;
        if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s584);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s596);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
        }
    }
}



implementation BoogieEntry_Roles()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == Roles;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
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

    assume DType[this] == Context
       || DType[this] == ERC20
       || DType[this] == ERC20Mintable
       || DType[this] == MinterRole;
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
  var account_s84: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s99: Ref;
  var amount_s99: int;
  var __ret_0_transfer: bool;
  var owner_s134: Ref;
  var spender_s134: Ref;
  var __ret_0_allowance: int;
  var spender_s149: Ref;
  var amount_s149: int;
  var __ret_0_approve: bool;
  var sender_s186: Ref;
  var recipient_s186: Ref;
  var amount_s186: int;
  var __ret_0_transferFrom: bool;
  var spender_s236: Ref;
  var addedValue_s236: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s278: Ref;
  var subtractedValue_s278: int;
  var __ret_0_decreaseAllowance: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s84;
    havoc __ret_0_balanceOf;
    havoc recipient_s99;
    havoc amount_s99;
    havoc __ret_0_transfer;
    havoc owner_s134;
    havoc spender_s134;
    havoc __ret_0_allowance;
    havoc spender_s149;
    havoc amount_s149;
    havoc __ret_0_approve;
    havoc sender_s186;
    havoc recipient_s186;
    havoc amount_s186;
    havoc __ret_0_transferFrom;
    havoc spender_s236;
    havoc addedValue_s236;
    havoc __ret_0_increaseAllowance;
    havoc spender_s278;
    havoc subtractedValue_s278;
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
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s84);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s134, spender_s134);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
    }
}



implementation CorralEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20 || DType[this] == ERC20Mintable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_ERC20Mintable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s84: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s99: Ref;
  var amount_s99: int;
  var __ret_0_transfer: bool;
  var owner_s134: Ref;
  var spender_s134: Ref;
  var __ret_0_allowance: int;
  var spender_s149: Ref;
  var amount_s149: int;
  var __ret_0_approve: bool;
  var sender_s186: Ref;
  var recipient_s186: Ref;
  var amount_s186: int;
  var __ret_0_transferFrom: bool;
  var spender_s236: Ref;
  var addedValue_s236: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s278: Ref;
  var subtractedValue_s278: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s584: Ref;
  var __ret_0_isMinter: bool;
  var account_s596: Ref;
  var account_s26: Ref;
  var amount_s26: int;
  var __ret_0_mint: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s84;
    havoc __ret_0_balanceOf;
    havoc recipient_s99;
    havoc amount_s99;
    havoc __ret_0_transfer;
    havoc owner_s134;
    havoc spender_s134;
    havoc __ret_0_allowance;
    havoc spender_s149;
    havoc amount_s149;
    havoc __ret_0_approve;
    havoc sender_s186;
    havoc recipient_s186;
    havoc amount_s186;
    havoc __ret_0_transferFrom;
    havoc spender_s236;
    havoc addedValue_s236;
    havoc __ret_0_increaseAllowance;
    havoc spender_s278;
    havoc subtractedValue_s278;
    havoc __ret_0_decreaseAllowance;
    havoc account_s584;
    havoc __ret_0_isMinter;
    havoc account_s596;
    havoc account_s26;
    havoc amount_s26;
    havoc __ret_0_mint;
    if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s84);
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s99, amount_s99);
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s134, spender_s134);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s149, amount_s149);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s186, recipient_s186, amount_s186);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s236, addedValue_s236);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s278, subtractedValue_s278);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s584);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s596);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s26, amount_s26);
    }
}



implementation CorralEntry_ERC20Mintable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Mintable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Mintable(this);
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

    assume DType[this] == ERC20 || DType[this] == ERC20Mintable || DType[this] == IERC20;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_IERC20(this);
    }
}



implementation CorralChoice_MinterRole(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s584: Ref;
  var __ret_0_isMinter: bool;
  var account_s596: Ref;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc account_s584;
    havoc __ret_0_isMinter;
    havoc account_s596;
    if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s584);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s596);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_MinterRole()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Mintable || DType[this] == MinterRole;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call MinterRole_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MinterRole(this);
    }
}



implementation CorralChoice_Roles(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
}



implementation CorralEntry_Roles()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == Roles;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Roles(this);
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


