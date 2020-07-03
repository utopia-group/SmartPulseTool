// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /noVerify /pretty:1 /print:ERC20Capped.bpl __SolToBoogieTest_out.bpl

type Ref;

type ContractName;

const unique null: Ref;

const unique Context: ContractName;

const unique ERC20: ContractName;

const unique ERC20Capped: ContractName;

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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s141: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s141: Ref)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s141);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s141);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s156: Ref, 
    amount_s156: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s156: Ref, 
    amount_s156: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transfer_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s175: Ref, 
    amount_s175: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s191: Ref, 
    spender_s191: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s191: Ref, 
    spender_s191: Ref)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s206: Ref, 
    amount_s206: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s206: Ref, 
    amount_s206: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} approve_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    amount_s225: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s243: Ref, 
    recipient_s243: Ref, 
    amount_s243: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s243: Ref, 
    recipient_s243: Ref, 
    amount_s243: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transferFrom_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s278: Ref, 
    recipient_s278: Ref, 
    amount_s278: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s293: Ref, 
    addedValue_s293: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s293: Ref, 
    addedValue_s293: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} increaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s320: Ref, 
    addedValue_s320: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s335: Ref, 
    subtractedValue_s335: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s335: Ref, 
    subtractedValue_s335: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s362: Ref, 
    subtractedValue_s362: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s418: Ref, 
    recipient_s418: Ref, 
    amount_s418: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s431: Ref, 
    amount_s431: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s474: Ref, 
    amount_s474: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s517: Ref, 
    amount_s517: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s559: Ref, 
    spender_s559: Ref, 
    amount_s559: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s587: Ref, 
    amount_s587: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



var _cap_ERC20Capped: [Ref]int;

procedure {:inline 1} ERC20Capped_ERC20Capped_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int);
  modifies _cap_ERC20Capped, revert;



procedure {:constructor} {:public} {:inline 1} ERC20Capped_ERC20Capped(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, _cap_ERC20Capped, M_Ref_bool;



implementation ERC20Capped_ERC20Capped(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call ERC20Capped_ERC20Capped__fail(this, msgsender_MSG, msgvalue_MSG, cap_s23);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Capped_ERC20Capped__success(this, msgsender_MSG, msgvalue_MSG, cap_s23);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} cap_ERC20Capped(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation cap_ERC20Capped(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := cap_ERC20Capped__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := cap_ERC20Capped__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _mint_ERC20Capped__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s55: Ref, 
    value_s55: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, M_Ref_bool;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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
    account_s83: Ref, 
    amount_s83: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, M_Ref_int;



implementation mint_ERC20Mintable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s83: Ref, 
    amount_s83: int)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := mint_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := mint_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _mint_ERC20Mintable_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s96: Ref, 
    amount_s96: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s725: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s734: Ref, 
    amount_s734: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s743: Ref, 
    spender_s743: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s752: Ref, 
    amount_s752: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s763: Ref, 
    recipient_s763: Ref, 
    amount_s763: int)
   returns (__ret_0_: bool);



var _minters_MinterRole: [Ref]Ref;

procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:constructor} {:public} {:inline 1} MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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



procedure {:public} {:inline 1} isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s641: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



implementation isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s641: Ref)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s641);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s641);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s653: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



implementation addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s653: Ref)
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s653);
        assume revert || gas < 0;
    }
    else
    {
        call addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s653);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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



procedure {:inline 1} _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s678: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s694: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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
    role_s945: Ref, 
    account_s945: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s969: Ref, 
    account_s969: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s993: Ref, 
    account_s993: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s807: int, b_s807: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s832: int, b_s832: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s866: int, b_s866: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s891: int, b_s891: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s912: int, b_s912: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, revert, gas, Balance, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure BoogieEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



procedure BoogieEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure BoogieEntry_ERC20Capped();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, _cap_ERC20Capped, M_Ref_int, M_Ref_bool;



procedure BoogieEntry_ERC20Mintable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int, M_Ref_bool;



procedure BoogieEntry_IERC20();
  modifies gas;



procedure BoogieEntry_MinterRole();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



procedure BoogieEntry_Roles();
  modifies gas;



procedure BoogieEntry_SafeMath();
  modifies gas;



procedure onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure CorralChoice_Context(this: Ref);



procedure CorralEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure CorralEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure CorralChoice_ERC20Capped(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure CorralEntry_ERC20Capped();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, _cap_ERC20Capped, M_Ref_int, M_Ref_bool;



procedure CorralChoice_ERC20Mintable(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, M_Ref_int, M_Ref_bool;



procedure CorralEntry_ERC20Mintable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_int, M_Ref_bool;



procedure CorralChoice_IERC20(this: Ref);



procedure CorralEntry_IERC20();
  modifies gas;



procedure CorralChoice_MinterRole(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



procedure CorralEntry_MinterRole();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, M_Ref_bool;



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

var __tmp___cap_ERC20Capped: [Ref]int;

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



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s141: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s141: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s156: Ref, 
    amount_s156: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s156: Ref, 
    amount_s156: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transfer_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s175: Ref, 
    amount_s175: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s191: Ref, 
    spender_s191: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s191: Ref, 
    spender_s191: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s206: Ref, 
    amount_s206: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s206: Ref, 
    amount_s206: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} approve_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    amount_s225: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s243: Ref, 
    recipient_s243: Ref, 
    amount_s243: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s243: Ref, 
    recipient_s243: Ref, 
    amount_s243: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s278: Ref, 
    recipient_s278: Ref, 
    amount_s278: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s293: Ref, 
    addedValue_s293: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s293: Ref, 
    addedValue_s293: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s320: Ref, 
    addedValue_s320: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s335: Ref, 
    subtractedValue_s335: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s335: Ref, 
    subtractedValue_s335: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s362: Ref, 
    subtractedValue_s362: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s418: Ref, 
    recipient_s418: Ref, 
    amount_s418: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s431: Ref, 
    amount_s431: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s474: Ref, 
    amount_s474: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s517: Ref, 
    amount_s517: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s559: Ref, 
    spender_s559: Ref, 
    amount_s559: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s587: Ref, 
    amount_s587: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} ERC20Capped_ERC20Capped_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int);
  modifies __tmp___cap_ERC20Capped, revert;



procedure {:constructor} {:inline 1} ERC20Capped_ERC20Capped__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int);
  modifies _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, _cap_ERC20Capped, revert, M_Ref_bool;



procedure {:constructor} {:inline 1} ERC20Capped_ERC20Capped__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int);
  modifies __tmp___totalSupply_ERC20, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp__Alloc, __tmp___cap_ERC20Capped, revert, __tmp__M_Ref_bool;



procedure {:inline 1} cap_ERC20Capped__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} cap_ERC20Capped__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} _mint_ERC20Capped__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s55: Ref, 
    value_s55: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___totalSupply_ERC20, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp__Alloc, revert, __tmp__M_Ref_bool;



procedure {:inline 1} mint_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s83: Ref, 
    amount_s83: int)
   returns (__ret_0_: bool);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} mint_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s83: Ref, 
    amount_s83: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20Mintable_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s96: Ref, 
    amount_s96: int);
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



procedure {:inline 1} isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s641: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s641: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s653: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s653: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s678: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s694: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s945: Ref, 
    account_s945: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s969: Ref, 
    account_s969: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s993: Ref, 
    account_s993: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s807: int, b_s807: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s832: int, b_s832: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s866: int, b_s866: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s891: int, b_s891: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s912: int, b_s912: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int, __tmp__M_Ref_bool;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int, __tmp__M_Ref_bool;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___cap_ERC20Capped, __tmp___minters_MinterRole, __tmp__bearer_Roles.Role, revert, gas;



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



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s141: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s141];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s141: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[_balances_ERC20[this]][account_s141];
    return;
}



implementation transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s156: Ref, 
    amount_s156: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
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
    recipient_s156: Ref, 
    amount_s156: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (DType[this] == ERC20Capped)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
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
    recipient_s175: Ref, 
    amount_s175: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s175, amount_s175);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s175, amount_s175);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s175, amount_s175);
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
    recipient_s175: Ref, 
    amount_s175: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (DType[this] == ERC20Capped)
    {
        call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s175, amount_s175);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s175, amount_s175);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s175, amount_s175);
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
    owner_s191: Ref, 
    spender_s191: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s191]][spender_s191];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s191: Ref, 
    spender_s191: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s191]][spender_s191];
    return;
}



implementation approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s206: Ref, 
    amount_s206: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
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
    spender_s206: Ref, 
    amount_s206: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (DType[this] == ERC20Capped)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
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
    spender_s225: Ref, 
    amount_s225: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_6 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s225, amount_s225);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s225, amount_s225);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s225, amount_s225);
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
    spender_s225: Ref, 
    amount_s225: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (DType[this] == ERC20Capped)
    {
        call __var_6 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s225, amount_s225);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s225, amount_s225);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s225, amount_s225);
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
    sender_s243: Ref, 
    recipient_s243: Ref, 
    amount_s243: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
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
    sender_s243: Ref, 
    recipient_s243: Ref, 
    amount_s243: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (DType[this] == ERC20Capped)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
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
    sender_s278: Ref, 
    recipient_s278: Ref, 
    amount_s278: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s278, recipient_s278, amount_s278);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s278, recipient_s278, amount_s278);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s278, recipient_s278, amount_s278);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_8 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_10 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_9 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s278]][__var_10], amount_s278);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s278, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s278, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s278, __var_8, __var_9);
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
    sender_s278: Ref, 
    recipient_s278: Ref, 
    amount_s278: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (DType[this] == ERC20Capped)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s278, recipient_s278, amount_s278);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s278, recipient_s278, amount_s278);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s278, recipient_s278, amount_s278);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Capped)
    {
        call __var_8 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call __var_10 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    call __var_9 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][sender_s278]][__var_10], amount_s278);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Capped)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s278, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s278, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s278, __var_8, __var_9);
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
    spender_s293: Ref, 
    addedValue_s293: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
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
    spender_s293: Ref, 
    addedValue_s293: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (DType[this] == ERC20Capped)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
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
    spender_s320: Ref, 
    addedValue_s320: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_12 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_14 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_13 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_14]][spender_s320], addedValue_s320);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s320, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s320, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s320, __var_13);
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
    spender_s320: Ref, 
    addedValue_s320: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (DType[this] == ERC20Capped)
    {
        call __var_12 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call __var_14 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    call __var_13 := add_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_14]][spender_s320], addedValue_s320);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Capped)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s320, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s320, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s320, __var_13);
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
    spender_s335: Ref, 
    subtractedValue_s335: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
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
    spender_s335: Ref, 
    subtractedValue_s335: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (DType[this] == ERC20Capped)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
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
    spender_s362: Ref, 
    subtractedValue_s362: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_16 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_18 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_17 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_18]][spender_s362], subtractedValue_s362);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s362, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s362, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s362, __var_17);
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
    spender_s362: Ref, 
    subtractedValue_s362: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (DType[this] == ERC20Capped)
    {
        call __var_16 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call __var_18 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    call __var_17 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_18]][spender_s362], subtractedValue_s362);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Capped)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s362, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s362, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s362, __var_17);
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
    sender_s418: Ref, 
    recipient_s418: Ref, 
    amount_s418: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s418 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s418 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s418], amount_s418);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s418] := __var_21;
    call __var_22 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s418], amount_s418);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s418] := __var_22;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s418: Ref, 
    recipient_s418: Ref, 
    amount_s418: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s418 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s418 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][sender_s418], amount_s418);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][sender_s418] := __var_21;
    call __var_22 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][recipient_s418], amount_s418);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][recipient_s418] := __var_22;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s431: Ref, 
    amount_s431: int)
{
    if (__tmp__DType[this] == ERC20Capped)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s431, amount_s431);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s431, amount_s431);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s431, amount_s431);
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
    account_s431: Ref, 
    amount_s431: int)
{
    if (DType[this] == ERC20Capped)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s431, amount_s431);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s431, amount_s431);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s431, amount_s431);
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
    account_s474: Ref, 
    amount_s474: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s474 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s474);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s474], amount_s474);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s474] := __var_25;
}



implementation _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s474: Ref, 
    amount_s474: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s474 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s474);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s474], amount_s474);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s474] := __var_25;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s517: Ref, 
    amount_s517: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s517 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s517], amount_s517);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s517] := __var_27;
    call __var_28 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s517);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_28;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s517: Ref, 
    amount_s517: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s517 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s517], amount_s517);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s517] := __var_27;
    call __var_28 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s517);
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
    owner_s559: Ref, 
    spender_s559: Ref, 
    amount_s559: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s559 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s559 != null))
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s559]][spender_s559] := amount_s559;
}



implementation _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s559: Ref, 
    spender_s559: Ref, 
    amount_s559: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s559 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s559 != null))
    {
        revert := true;
        return;
    }

    M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s559]][spender_s559] := amount_s559;
    assert {:EventEmitted "Approval_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s587: Ref, 
    amount_s587: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s587, amount_s587);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s587, amount_s587);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s587, amount_s587);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_31 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_33 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    call __var_32 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s587]][__var_33], amount_s587);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s587, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s587, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s587, __var_31, __var_32);
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
    account_s587: Ref, 
    amount_s587: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (DType[this] == ERC20Capped)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s587, amount_s587);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s587, amount_s587);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s587, amount_s587);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Capped)
    {
        call __var_31 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call __var_33 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    call __var_32 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][account_s587]][__var_33], amount_s587);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Capped)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s587, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s587, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s587, __var_31, __var_32);
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



implementation ERC20Capped_ERC20Capped_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int)
{
    assume msgsender_MSG != null;
    __tmp___cap_ERC20Capped[this] := 0;
    if (!(cap_s23 > 0))
    {
        revert := true;
        return;
    }

    __tmp___cap_ERC20Capped[this] := cap_s23;
}



implementation ERC20Capped_ERC20Capped_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int)
{
    assume msgsender_MSG != null;
    _cap_ERC20Capped[this] := 0;
    if (!(cap_s23 > 0))
    {
        revert := true;
        return;
    }

    _cap_ERC20Capped[this] := cap_s23;
}



implementation ERC20Capped_ERC20Capped__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int)
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

    call ERC20Mintable_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Capped_ERC20Capped_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, cap_s23);
    if (revert)
    {
        return;
    }
}



implementation ERC20Capped_ERC20Capped__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s23: int)
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

    call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Capped_ERC20Capped_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, cap_s23);
    if (revert)
    {
        return;
    }
}



implementation cap_ERC20Capped__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___cap_ERC20Capped[this];
    return;
}



implementation cap_ERC20Capped__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _cap_ERC20Capped[this];
    return;
}



implementation _mint_ERC20Capped__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s55: Ref, 
    value_s55: int)
{
  var __var_34: int;
  var __var_35: int;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_35 := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_34 := add_SafeMath__fail(this, this, 0, __var_35, value_s55);
    if (revert)
    {
        return;
    }

    if (!(__var_34 <= __tmp___cap_ERC20Capped[this]))
    {
        revert := true;
        return;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _mint_ERC20Mintable_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG, account_s55, value_s55);
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



implementation _mint_ERC20Capped__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s55: Ref, 
    value_s55: int)
{
  var __var_34: int;
  var __var_35: int;

    if (DType[this] == ERC20Capped)
    {
        call __var_35 := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_34 := add_SafeMath__success(this, this, 0, __var_35, value_s55);
    if (revert)
    {
        return;
    }

    if (!(__var_34 <= _cap_ERC20Capped[this]))
    {
        revert := true;
        return;
    }

    if (DType[this] == ERC20Capped)
    {
        call _mint_ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG, account_s55, value_s55);
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
    account_s83: Ref, 
    amount_s83: int)
   returns (__ret_0_: bool)
{
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _mint_ERC20Capped__fail(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
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
    account_s83: Ref, 
    amount_s83: int)
   returns (__ret_0_: bool)
{
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Capped)
    {
        call _mint_ERC20Capped__success(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
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
    account_s96: Ref, 
    amount_s96: int)
{
    if (__tmp__DType[this] == ERC20Capped)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s96, amount_s96);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s96, amount_s96);
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
    account_s96: Ref, 
    amount_s96: int)
{
    if (DType[this] == ERC20Capped)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s96, amount_s96);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s96, amount_s96);
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
  var __var_36: Ref;

    assume msgsender_MSG != null;
    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_36 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_36);
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
  var __var_36: Ref;

    assume msgsender_MSG != null;
    if (DType[this] == ERC20Capped)
    {
        call __var_36 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_36);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_36);
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
  var __var_36: Ref;

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
  var __var_36: Ref;

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



implementation isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s641: Ref)
   returns (__ret_0_: bool)
{
  var __var_39: bool;

    call __var_39 := has_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s641);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_39;
    return;
}



implementation isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s641: Ref)
   returns (__ret_0_: bool)
{
  var __var_39: bool;

    call __var_39 := has_Roles__success(this, this, 0, _minters_MinterRole[this], account_s641);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_39;
    return;
}



implementation addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s653: Ref)
{
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s653);
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



implementation addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s653: Ref)
{
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Capped)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s653);
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
  var __var_40: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_40 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_40 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call __var_40 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Capped)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_40);
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
  var __var_40: Ref;

    if (DType[this] == ERC20Capped)
    {
        call __var_40 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_40 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call __var_40 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Capped)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_40);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_40);
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



implementation _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s678: Ref)
{
    call add_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s678);
    if (revert)
    {
        return;
    }
}



implementation _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s678: Ref)
{
    call add_Roles__success(this, this, 0, _minters_MinterRole[this], account_s678);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "MinterAdded_MinterRole"} true;
}



implementation _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s694: Ref)
{
    call remove_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s694);
    if (revert)
    {
        return;
    }
}



implementation _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s694: Ref)
{
    call remove_Roles__success(this, this, 0, _minters_MinterRole[this], account_s694);
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
    role_s945: Ref, 
    account_s945: Ref)
{
  var __var_41: bool;

    call __var_41 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s945, account_s945);
    if (revert)
    {
        return;
    }

    if (!!__var_41)
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s945]][account_s945] := true;
}



implementation add_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s945: Ref, 
    account_s945: Ref)
{
  var __var_41: bool;

    call __var_41 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s945, account_s945);
    if (revert)
    {
        return;
    }

    if (!!__var_41)
    {
        revert := true;
        return;
    }

    M_Ref_bool[bearer_Roles.Role[role_s945]][account_s945] := true;
}



implementation remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s969: Ref, 
    account_s969: Ref)
{
  var __var_42: bool;

    call __var_42 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s969, account_s969);
    if (revert)
    {
        return;
    }

    if (!__var_42)
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s969]][account_s969] := false;
}



implementation remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s969: Ref, 
    account_s969: Ref)
{
  var __var_42: bool;

    call __var_42 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s969, account_s969);
    if (revert)
    {
        return;
    }

    if (!__var_42)
    {
        revert := true;
        return;
    }

    M_Ref_bool[bearer_Roles.Role[role_s969]][account_s969] := false;
}



implementation has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s993: Ref, 
    account_s993: Ref)
   returns (__ret_0_: bool)
{
  var __var_43: Ref;

    __var_43 := null;
    if (!(account_s993 != null))
    {
        revert := true;
        return;
    }

    __ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s993]][account_s993];
    return;
}



implementation has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s993: Ref, 
    account_s993: Ref)
   returns (__ret_0_: bool)
{
  var __var_43: Ref;

    __var_43 := null;
    if (!(account_s993 != null))
    {
        revert := true;
        return;
    }

    __ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s993]][account_s993];
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s807: int, b_s807: int)
   returns (__ret_0_: int)
{
  var c_s806: int;

    c_s806 := a_s807 + b_s807;
    if (!(c_s806 >= a_s807))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s806;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s807: int, b_s807: int)
   returns (__ret_0_: int)
{
  var c_s806: int;

    c_s806 := a_s807 + b_s807;
    if (!(c_s806 >= a_s807))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s806;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s832: int, b_s832: int)
   returns (__ret_0_: int)
{
  var c_s831: int;

    if (!(b_s832 <= a_s832))
    {
        revert := true;
        return;
    }

    c_s831 := a_s832 - b_s832;
    __ret_0_ := c_s831;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s832: int, b_s832: int)
   returns (__ret_0_: int)
{
  var c_s831: int;

    if (!(b_s832 <= a_s832))
    {
        revert := true;
        return;
    }

    c_s831 := a_s832 - b_s832;
    __ret_0_ := c_s831;
    return;
}



implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s866: int, b_s866: int)
   returns (__ret_0_: int)
{
  var c_s865: int;

    if (a_s866 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s865 := a_s866 * b_s866;
    if (!(c_s865 div a_s866 == b_s866))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s865;
    return;
}



implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s866: int, b_s866: int)
   returns (__ret_0_: int)
{
  var c_s865: int;

    if (a_s866 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s865 := a_s866 * b_s866;
    if (!(c_s865 div a_s866 == b_s866))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s865;
    return;
}



implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s891: int, b_s891: int)
   returns (__ret_0_: int)
{
  var c_s890: int;

    if (!(b_s891 > 0))
    {
        revert := true;
        return;
    }

    c_s890 := a_s891 div b_s891;
    __ret_0_ := c_s890;
    return;
}



implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s891: int, b_s891: int)
   returns (__ret_0_: int)
{
  var c_s890: int;

    if (!(b_s891 > 0))
    {
        revert := true;
        return;
    }

    c_s890 := a_s891 div b_s891;
    __ret_0_ := c_s890;
    return;
}



implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s912: int, b_s912: int)
   returns (__ret_0_: int)
{
    if (!(b_s912 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s912 mod b_s912;
    return;
}



implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s912: int, b_s912: int)
   returns (__ret_0_: int)
{
    if (!(b_s912 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s912 mod b_s912;
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
    else if (__tmp__DType[to] == ERC20Capped)
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
    else if (DType[to] == ERC20Capped)
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
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;
  var account_s83: Ref;
  var amount_s83: int;
  var __ret_0_mint: bool;
  var cap_s23: int;
  var __ret_0_cap: int;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 36)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s641);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 35)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 34)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 33)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 32)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s141);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 31)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 30)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s191, spender_s191);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 29)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 28)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 27)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 26)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 25)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s641);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 24)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 23)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable__fail(from, to, msgvalue_MSG, account_s83, amount_s83);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s141);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s191, spender_s191);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s641);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable__fail(from, to, msgvalue_MSG, account_s83, amount_s83);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_cap := cap_ERC20Capped__fail(from, to, msgvalue_MSG);
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
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s141);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s191, spender_s191);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s335, subtractedValue_s335);
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
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;
  var account_s83: Ref;
  var amount_s83: int;
  var __ret_0_mint: bool;
  var cap_s23: int;
  var __ret_0_cap: int;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 36)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s641);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 35)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 34)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 33)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 32)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s141);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 31)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 30)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s191, spender_s191);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 29)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 28)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 27)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 26)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 25)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s641);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 24)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 23)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable__success(from, to, msgvalue_MSG, account_s83, amount_s83);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s141);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s191, spender_s191);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s335, subtractedValue_s335);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s641);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s653);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable__success(from, to, msgvalue_MSG, account_s83, amount_s83);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_cap := cap_ERC20Capped__success(from, to, msgvalue_MSG);
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
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s141);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s156, amount_s156);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s191, spender_s191);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s206, amount_s206);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s293, addedValue_s293);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s335, subtractedValue_s335);
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
  var __snap___tmp___cap_ERC20Capped: [Ref]int;
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
        __snap___tmp___cap_ERC20Capped := __tmp___cap_ERC20Capped;
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
        __tmp___cap_ERC20Capped := __snap___tmp___cap_ERC20Capped;
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
        __tmp___cap_ERC20Capped := _cap_ERC20Capped;
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
  var __var_37: bool;
  var __var_38: Ref;

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_38 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
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

    if (__tmp__DType[this] == ERC20Capped)
    {
        call __var_37 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_37 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call __var_37 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_37)
    {
        revert := true;
        return;
    }
}



implementation onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_37: bool;
  var __var_38: Ref;

    if (DType[this] == ERC20Capped)
    {
        call __var_38 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
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

    if (DType[this] == ERC20Capped)
    {
        call __var_37 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_37 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call __var_37 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, __var_38);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_37)
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
       || DType[this] == ERC20Capped
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
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;

    assume DType[this] == ERC20
       || DType[this] == ERC20Capped
       || DType[this] == ERC20Mintable;
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
        havoc account_s141;
        havoc __ret_0_balanceOf;
        havoc recipient_s156;
        havoc amount_s156;
        havoc __ret_0_transfer;
        havoc owner_s191;
        havoc spender_s191;
        havoc __ret_0_allowance;
        havoc spender_s206;
        havoc amount_s206;
        havoc __ret_0_approve;
        havoc sender_s243;
        havoc recipient_s243;
        havoc amount_s243;
        havoc __ret_0_transferFrom;
        havoc spender_s293;
        havoc addedValue_s293;
        havoc __ret_0_increaseAllowance;
        havoc spender_s335;
        havoc subtractedValue_s335;
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
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s141);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        }
    }
}



implementation BoogieEntry_ERC20Capped()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;
  var account_s83: Ref;
  var amount_s83: int;
  var __ret_0_mint: bool;
  var cap_s23: int;
  var __ret_0_cap: int;

    assume DType[this] == ERC20Capped;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Capped_ERC20Capped(this, msgsender_MSG, msgvalue_MSG, cap_s23);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc __ret_0_totalSupply;
        havoc account_s141;
        havoc __ret_0_balanceOf;
        havoc recipient_s156;
        havoc amount_s156;
        havoc __ret_0_transfer;
        havoc owner_s191;
        havoc spender_s191;
        havoc __ret_0_allowance;
        havoc spender_s206;
        havoc amount_s206;
        havoc __ret_0_approve;
        havoc sender_s243;
        havoc recipient_s243;
        havoc amount_s243;
        havoc __ret_0_transferFrom;
        havoc spender_s293;
        havoc addedValue_s293;
        havoc __ret_0_increaseAllowance;
        havoc spender_s335;
        havoc subtractedValue_s335;
        havoc __ret_0_decreaseAllowance;
        havoc account_s641;
        havoc __ret_0_isMinter;
        havoc account_s653;
        havoc account_s83;
        havoc amount_s83;
        havoc __ret_0_mint;
        havoc cap_s23;
        havoc __ret_0_cap;
        if (choice == 13)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 12)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s141);
        }
        else if (choice == 11)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        }
        else if (choice == 10)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
        }
        else if (choice == 9)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        }
        else if (choice == 8)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        }
        else if (choice == 7)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s641);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s653);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_cap := cap_ERC20Capped(this, msgsender_MSG, msgvalue_MSG);
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
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;
  var account_s83: Ref;
  var amount_s83: int;
  var __ret_0_mint: bool;

    assume DType[this] == ERC20Capped || DType[this] == ERC20Mintable;
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
        havoc account_s141;
        havoc __ret_0_balanceOf;
        havoc recipient_s156;
        havoc amount_s156;
        havoc __ret_0_transfer;
        havoc owner_s191;
        havoc spender_s191;
        havoc __ret_0_allowance;
        havoc spender_s206;
        havoc amount_s206;
        havoc __ret_0_approve;
        havoc sender_s243;
        havoc recipient_s243;
        havoc amount_s243;
        havoc __ret_0_transferFrom;
        havoc spender_s293;
        havoc addedValue_s293;
        havoc __ret_0_increaseAllowance;
        havoc spender_s335;
        havoc subtractedValue_s335;
        havoc __ret_0_decreaseAllowance;
        havoc account_s641;
        havoc __ret_0_isMinter;
        havoc account_s653;
        havoc account_s83;
        havoc amount_s83;
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
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s141);
        }
        else if (choice == 10)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
        }
        else if (choice == 9)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
        }
        else if (choice == 8)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
        }
        else if (choice == 7)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s641);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s653);
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
            call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
        }
    }
}



implementation BoogieEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == ERC20
       || DType[this] == ERC20Capped
       || DType[this] == ERC20Mintable
       || DType[this] == IERC20;
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
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;

    assume DType[this] == ERC20Capped
       || DType[this] == ERC20Mintable
       || DType[this] == MinterRole;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call MinterRole_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc account_s641;
        havoc __ret_0_isMinter;
        havoc account_s653;
        if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s641);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s653);
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
       || DType[this] == ERC20Capped
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
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s141;
    havoc __ret_0_balanceOf;
    havoc recipient_s156;
    havoc amount_s156;
    havoc __ret_0_transfer;
    havoc owner_s191;
    havoc spender_s191;
    havoc __ret_0_allowance;
    havoc spender_s206;
    havoc amount_s206;
    havoc __ret_0_approve;
    havoc sender_s243;
    havoc recipient_s243;
    havoc amount_s243;
    havoc __ret_0_transferFrom;
    havoc spender_s293;
    havoc addedValue_s293;
    havoc __ret_0_increaseAllowance;
    havoc spender_s335;
    havoc subtractedValue_s335;
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
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s141);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
    }
}



implementation CorralEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20
       || DType[this] == ERC20Capped
       || DType[this] == ERC20Mintable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_ERC20Capped(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;
  var account_s83: Ref;
  var amount_s83: int;
  var __ret_0_mint: bool;
  var cap_s23: int;
  var __ret_0_cap: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s141;
    havoc __ret_0_balanceOf;
    havoc recipient_s156;
    havoc amount_s156;
    havoc __ret_0_transfer;
    havoc owner_s191;
    havoc spender_s191;
    havoc __ret_0_allowance;
    havoc spender_s206;
    havoc amount_s206;
    havoc __ret_0_approve;
    havoc sender_s243;
    havoc recipient_s243;
    havoc amount_s243;
    havoc __ret_0_transferFrom;
    havoc spender_s293;
    havoc addedValue_s293;
    havoc __ret_0_increaseAllowance;
    havoc spender_s335;
    havoc subtractedValue_s335;
    havoc __ret_0_decreaseAllowance;
    havoc account_s641;
    havoc __ret_0_isMinter;
    havoc account_s653;
    havoc account_s83;
    havoc amount_s83;
    havoc __ret_0_mint;
    havoc cap_s23;
    havoc __ret_0_cap;
    if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s141);
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s641);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s653);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_cap := cap_ERC20Capped(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_ERC20Capped()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var cap_s23: int;

    assume DType[this] == ERC20Capped;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Capped_ERC20Capped(this, msgsender_MSG, msgvalue_MSG, cap_s23);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Capped(this);
    }
}



implementation CorralChoice_ERC20Mintable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s141: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s156: Ref;
  var amount_s156: int;
  var __ret_0_transfer: bool;
  var owner_s191: Ref;
  var spender_s191: Ref;
  var __ret_0_allowance: int;
  var spender_s206: Ref;
  var amount_s206: int;
  var __ret_0_approve: bool;
  var sender_s243: Ref;
  var recipient_s243: Ref;
  var amount_s243: int;
  var __ret_0_transferFrom: bool;
  var spender_s293: Ref;
  var addedValue_s293: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s335: Ref;
  var subtractedValue_s335: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;
  var account_s83: Ref;
  var amount_s83: int;
  var __ret_0_mint: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s141;
    havoc __ret_0_balanceOf;
    havoc recipient_s156;
    havoc amount_s156;
    havoc __ret_0_transfer;
    havoc owner_s191;
    havoc spender_s191;
    havoc __ret_0_allowance;
    havoc spender_s206;
    havoc amount_s206;
    havoc __ret_0_approve;
    havoc sender_s243;
    havoc recipient_s243;
    havoc amount_s243;
    havoc __ret_0_transferFrom;
    havoc spender_s293;
    havoc addedValue_s293;
    havoc __ret_0_increaseAllowance;
    havoc spender_s335;
    havoc subtractedValue_s335;
    havoc __ret_0_decreaseAllowance;
    havoc account_s641;
    havoc __ret_0_isMinter;
    havoc account_s653;
    havoc account_s83;
    havoc amount_s83;
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
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s141);
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s156, amount_s156);
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s191, spender_s191);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s206, amount_s206);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s243, recipient_s243, amount_s243);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s293, addedValue_s293);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s335, subtractedValue_s335);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s641);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s653);
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
        call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s83, amount_s83);
    }
}



implementation CorralEntry_ERC20Mintable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Capped || DType[this] == ERC20Mintable;
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

    assume DType[this] == ERC20
       || DType[this] == ERC20Capped
       || DType[this] == ERC20Mintable
       || DType[this] == IERC20;
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
  var account_s641: Ref;
  var __ret_0_isMinter: bool;
  var account_s653: Ref;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc account_s641;
    havoc __ret_0_isMinter;
    havoc account_s653;
    if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s641);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s653);
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

    assume DType[this] == ERC20Capped
       || DType[this] == ERC20Mintable
       || DType[this] == MinterRole;
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


