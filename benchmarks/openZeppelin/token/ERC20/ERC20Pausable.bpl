// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /noVerify /pretty:1 /print:ERC20Pausable.bpl __SolToBoogieTest_out.bpl

type Ref;

type ContractName;

const unique null: Ref;

const unique Context: ContractName;

const unique ERC20: ContractName;

const unique ERC20Pausable: ContractName;

const unique IERC20: ContractName;

const unique Pausable: ContractName;

const unique PauserRole: ContractName;

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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc;



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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
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



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s140: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s140: Ref)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s140);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s140);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s155: Ref, 
    amount_s155: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s155: Ref, 
    amount_s155: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transfer_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s174: Ref, 
    amount_s174: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s190: Ref, 
    spender_s190: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s190: Ref, 
    spender_s190: Ref)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s190, spender_s190);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s190, spender_s190);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s205: Ref, 
    amount_s205: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s205: Ref, 
    amount_s205: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} approve_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s224: Ref, 
    amount_s224: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s242: Ref, 
    recipient_s242: Ref, 
    amount_s242: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s242: Ref, 
    recipient_s242: Ref, 
    amount_s242: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transferFrom_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s277: Ref, 
    recipient_s277: Ref, 
    amount_s277: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s292: Ref, 
    addedValue_s292: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s292: Ref, 
    addedValue_s292: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} increaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s319: Ref, 
    addedValue_s319: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s334: Ref, 
    subtractedValue_s334: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s334: Ref, 
    subtractedValue_s334: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s361: Ref, 
    subtractedValue_s361: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s417: Ref, 
    recipient_s417: Ref, 
    amount_s417: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s430: Ref, 
    amount_s430: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s473: Ref, 
    amount_s473: int);
  modifies revert, _totalSupply_ERC20, M_Ref_int;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s516: Ref, 
    amount_s516: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s558: Ref, 
    spender_s558: Ref, 
    amount_s558: int);
  modifies revert, M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s586: Ref, 
    amount_s586: int);
  modifies revert, M_Ref_int, _totalSupply_ERC20;



procedure {:inline 1} ERC20Pausable_ERC20Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Pausable_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, _paused_Pausable, M_Ref_bool;



implementation ERC20Pausable_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call ERC20Pausable_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Pausable_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s24: Ref, value_s24: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transfer_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s24: Ref, value_s24: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transfer_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, to_s24, value_s24);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, to_s24, value_s24);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s44: Ref, 
    to_s44: Ref, 
    value_s44: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation transferFrom_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s44: Ref, 
    to_s44: Ref, 
    value_s44: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := transferFrom_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, from_s44, to_s44, value_s44);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, from_s44, to_s44, value_s44);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s61: Ref, 
    value_s61: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation approve_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s61: Ref, 
    value_s61: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := approve_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, spender_s61, value_s61);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, spender_s61, value_s61);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseAllowance_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s78: Ref, 
    addedValue_s78: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation increaseAllowance_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s78: Ref, 
    addedValue_s78: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := increaseAllowance_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, spender_s78, addedValue_s78);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, spender_s78, addedValue_s78);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseAllowance_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s95: Ref, 
    subtractedValue_s95: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



implementation decreaseAllowance_ERC20Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s95: Ref, 
    subtractedValue_s95: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := decreaseAllowance_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, spender_s95, subtractedValue_s95);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, spender_s95, subtractedValue_s95);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s705: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s714: Ref, 
    amount_s714: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s723: Ref, 
    spender_s723: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s732: Ref, 
    amount_s732: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s743: Ref, 
    recipient_s743: Ref, 
    amount_s743: int)
   returns (__ret_0_: bool);



var _paused_Pausable: [Ref]bool;

procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _paused_Pausable;



procedure {:constructor} {:public} {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable, M_Ref_bool;



implementation Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} paused_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



implementation paused_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := paused_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := paused_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable;



implementation pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call pause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call pause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable;



implementation unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call unpause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call unpause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var _pausers_PauserRole: [Ref]Ref;

procedure {:inline 1} PauserRole_PauserRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:constructor} {:public} {:inline 1} PauserRole_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_bool;



implementation PauserRole_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s946: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



implementation isPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s946: Ref)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call __ret_0_ := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s946);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s946);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s958: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_bool;



implementation addPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s958: Ref)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s958);
        assume revert || gas < 0;
    }
    else
    {
        call addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s958);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} renouncePauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_bool;



implementation renouncePauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        call renouncePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call renouncePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s983: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} _removePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s999: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
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
    role_s1032: Ref, 
    account_s1032: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1056: Ref, 
    account_s1056: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1080: Ref, 
    account_s1080: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
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



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s787: int, b_s787: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s812: int, b_s812: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s846: int, b_s846: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s871: int, b_s871: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s892: int, b_s892: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, _paused_Pausable, M_Ref_int, M_Ref_bool;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, _paused_Pausable, M_Ref_int, M_Ref_bool;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, revert, gas, Balance, _paused_Pausable, M_Ref_int, M_Ref_bool;



procedure BoogieEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



procedure BoogieEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure BoogieEntry_ERC20Pausable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable, M_Ref_int, M_Ref_bool;



procedure BoogieEntry_IERC20();
  modifies gas;



procedure BoogieEntry_Pausable();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable, M_Ref_bool;



procedure BoogieEntry_PauserRole();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_bool;



procedure BoogieEntry_Roles();
  modifies gas;



procedure BoogieEntry_SafeMath();
  modifies gas;



procedure whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure onlyPauser_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure CorralChoice_Context(this: Ref);



procedure CorralEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure CorralEntry_ERC20();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_int;



procedure CorralChoice_ERC20Pausable(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable, M_Ref_int, M_Ref_bool;



procedure CorralEntry_ERC20Pausable();
  modifies gas, _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable, M_Ref_int, M_Ref_bool;



procedure CorralChoice_IERC20(this: Ref);



procedure CorralEntry_IERC20();
  modifies gas;



procedure CorralChoice_Pausable(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable, M_Ref_bool;



procedure CorralEntry_Pausable();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, _paused_Pausable, M_Ref_bool;



procedure CorralChoice_PauserRole(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_bool;



procedure CorralEntry_PauserRole();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, M_Ref_bool;



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

var __tmp___paused_Pausable: [Ref]bool;

var __tmp___pausers_PauserRole: [Ref]Ref;

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



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s140: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s140: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s155: Ref, 
    amount_s155: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s155: Ref, 
    amount_s155: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transfer_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s174: Ref, 
    amount_s174: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s190: Ref, 
    spender_s190: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s190: Ref, 
    spender_s190: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s205: Ref, 
    amount_s205: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s205: Ref, 
    amount_s205: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} approve_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s224: Ref, 
    amount_s224: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s242: Ref, 
    recipient_s242: Ref, 
    amount_s242: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s242: Ref, 
    recipient_s242: Ref, 
    amount_s242: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s277: Ref, 
    recipient_s277: Ref, 
    amount_s277: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s292: Ref, 
    addedValue_s292: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s292: Ref, 
    addedValue_s292: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s319: Ref, 
    addedValue_s319: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s334: Ref, 
    subtractedValue_s334: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s334: Ref, 
    subtractedValue_s334: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s361: Ref, 
    subtractedValue_s361: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s417: Ref, 
    recipient_s417: Ref, 
    amount_s417: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s430: Ref, 
    amount_s430: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _mint_ERC20_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s473: Ref, 
    amount_s473: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__M_Ref_int;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s516: Ref, 
    amount_s516: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} _approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s558: Ref, 
    spender_s558: Ref, 
    amount_s558: int);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s586: Ref, 
    amount_s586: int);
  modifies revert, __tmp__M_Ref_int, __tmp___totalSupply_ERC20;



procedure {:inline 1} ERC20Pausable_ERC20Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ERC20Pausable_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _totalSupply_ERC20, _balances_ERC20, _allowances_ERC20, Alloc, _paused_Pausable, revert, M_Ref_bool;



procedure {:inline 1} ERC20Pausable_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___totalSupply_ERC20, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp__Alloc, __tmp___paused_Pausable, revert, __tmp__M_Ref_bool;



procedure {:inline 1} transfer_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s24: Ref, value_s24: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transfer_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s24: Ref, value_s24: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} transferFrom_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s44: Ref, 
    to_s44: Ref, 
    value_s44: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} transferFrom_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s44: Ref, 
    to_s44: Ref, 
    value_s44: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} approve_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s61: Ref, 
    value_s61: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} approve_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s61: Ref, 
    value_s61: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s78: Ref, 
    addedValue_s78: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} increaseAllowance_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s78: Ref, 
    addedValue_s78: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s95: Ref, 
    subtractedValue_s95: int)
   returns (__ret_0_: bool);
  modifies revert, M_Ref_int;



procedure {:inline 1} decreaseAllowance_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s95: Ref, 
    subtractedValue_s95: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__M_Ref_int;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___paused_Pausable;



procedure {:constructor} {:inline 1} Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _paused_Pausable, revert, M_Ref_bool;



procedure {:constructor} {:inline 1} Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___paused_Pausable, revert, __tmp__M_Ref_bool;



procedure {:inline 1} paused_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} paused_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _paused_Pausable, revert;



procedure {:inline 1} pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___paused_Pausable, revert;



procedure {:inline 1} unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _paused_Pausable, revert;



procedure {:inline 1} unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___paused_Pausable, revert;



procedure {:inline 1} PauserRole_PauserRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__M_Ref_bool;



procedure {:constructor} {:inline 1} PauserRole_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:constructor} {:inline 1} PauserRole_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} isPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s946: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} isPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s946: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s958: Ref);
  modifies revert, M_Ref_bool;



procedure {:inline 1} addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s958: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} renouncePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, M_Ref_bool;



procedure {:inline 1} renouncePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} _addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s983: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} _removePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s999: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1032: Ref, 
    account_s1032: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1056: Ref, 
    account_s1056: Ref);
  modifies revert, __tmp__M_Ref_bool;



procedure {:inline 1} has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1080: Ref, 
    account_s1080: Ref)
   returns (__ret_0_: bool);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s787: int, b_s787: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s812: int, b_s812: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s846: int, b_s846: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s871: int, b_s871: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s892: int, b_s892: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp___paused_Pausable, __tmp__M_Ref_int, __tmp__M_Ref_bool;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp___paused_Pausable, __tmp__M_Ref_int, __tmp__M_Ref_bool;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__M_Ref_Ref, __tmp__M_Ref_bool, __tmp__Length, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp___paused_Pausable, __tmp___pausers_PauserRole, __tmp__bearer_Roles.Role, revert, gas;



procedure whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure onlyPauser_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s140: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s140];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s140: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[_balances_ERC20[this]][account_s140];
    return;
}



implementation transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s155: Ref, 
    amount_s155: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
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
    recipient_s155: Ref, 
    amount_s155: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    if (DType[this] == ERC20Pausable)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
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
    recipient_s174: Ref, 
    amount_s174: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
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

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s174, amount_s174);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s174, amount_s174);
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
    recipient_s174: Ref, 
    amount_s174: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;

    if (DType[this] == ERC20Pausable)
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

    if (DType[this] == ERC20Pausable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s174, amount_s174);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s174, amount_s174);
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
    owner_s190: Ref, 
    spender_s190: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s190]][spender_s190];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s190: Ref, 
    spender_s190: Ref)
   returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s190]][spender_s190];
    return;
}



implementation approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s205: Ref, 
    amount_s205: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
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
    spender_s205: Ref, 
    amount_s205: int)
   returns (__ret_0_: bool)
{
  var __var_5: bool;

    if (DType[this] == ERC20Pausable)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_5 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
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
    spender_s224: Ref, 
    amount_s224: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
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

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s224, amount_s224);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s224, amount_s224);
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
    spender_s224: Ref, 
    amount_s224: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;

    if (DType[this] == ERC20Pausable)
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

    if (DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s224, amount_s224);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_6, spender_s224, amount_s224);
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
    sender_s242: Ref, 
    recipient_s242: Ref, 
    amount_s242: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
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
    sender_s242: Ref, 
    recipient_s242: Ref, 
    amount_s242: int)
   returns (__ret_0_: bool)
{
  var __var_7: bool;

    if (DType[this] == ERC20Pausable)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_7 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
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
    sender_s277: Ref, 
    recipient_s277: Ref, 
    amount_s277: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s277, recipient_s277, amount_s277);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s277, recipient_s277, amount_s277);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Pausable)
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

    if (__tmp__DType[this] == ERC20Pausable)
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

    call __var_9 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s277]][__var_10], amount_s277);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s277, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s277, __var_8, __var_9);
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
    sender_s277: Ref, 
    recipient_s277: Ref, 
    amount_s277: int)
   returns (__ret_0_: bool)
{
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: Ref;

    if (DType[this] == ERC20Pausable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s277, recipient_s277, amount_s277);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s277, recipient_s277, amount_s277);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Pausable)
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

    if (DType[this] == ERC20Pausable)
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

    call __var_9 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][sender_s277]][__var_10], amount_s277);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s277, __var_8, __var_9);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s277, __var_8, __var_9);
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
    spender_s292: Ref, 
    addedValue_s292: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
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
    spender_s292: Ref, 
    addedValue_s292: int)
   returns (__ret_0_: bool)
{
  var __var_11: bool;

    if (DType[this] == ERC20Pausable)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_11 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
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
    spender_s319: Ref, 
    addedValue_s319: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
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

    if (__tmp__DType[this] == ERC20Pausable)
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

    call __var_13 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_14]][spender_s319], addedValue_s319);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s319, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s319, __var_13);
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
    spender_s319: Ref, 
    addedValue_s319: int)
   returns (__ret_0_: bool)
{
  var __var_12: Ref;
  var __var_13: int;
  var __var_14: Ref;

    if (DType[this] == ERC20Pausable)
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

    if (DType[this] == ERC20Pausable)
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

    call __var_13 := add_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_14]][spender_s319], addedValue_s319);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s319, __var_13);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_12, spender_s319, __var_13);
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
    spender_s334: Ref, 
    subtractedValue_s334: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
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
    spender_s334: Ref, 
    subtractedValue_s334: int)
   returns (__ret_0_: bool)
{
  var __var_15: bool;

    if (DType[this] == ERC20Pausable)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call __var_15 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
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
    spender_s361: Ref, 
    subtractedValue_s361: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
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

    if (__tmp__DType[this] == ERC20Pausable)
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

    call __var_17 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_18]][spender_s361], subtractedValue_s361);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s361, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s361, __var_17);
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
    spender_s361: Ref, 
    subtractedValue_s361: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    if (DType[this] == ERC20Pausable)
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

    if (DType[this] == ERC20Pausable)
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

    call __var_17 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_18]][spender_s361], subtractedValue_s361);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s361, __var_17);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_16, spender_s361, __var_17);
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
    sender_s417: Ref, 
    recipient_s417: Ref, 
    amount_s417: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s417 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s417 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s417], amount_s417);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s417] := __var_21;
    call __var_22 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s417], amount_s417);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s417] := __var_22;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s417: Ref, 
    recipient_s417: Ref, 
    amount_s417: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    __var_19 := null;
    if (!(sender_s417 != null))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(recipient_s417 != null))
    {
        revert := true;
        return;
    }

    call __var_21 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][sender_s417], amount_s417);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][sender_s417] := __var_21;
    call __var_22 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][recipient_s417], amount_s417);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][recipient_s417] := __var_22;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s430: Ref, 
    amount_s430: int)
{
    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s430, amount_s430);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s430, amount_s430);
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
    account_s430: Ref, 
    amount_s430: int)
{
    if (DType[this] == ERC20Pausable)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s430, amount_s430);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s430, amount_s430);
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
    account_s473: Ref, 
    amount_s473: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s473 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s473);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s473], amount_s473);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s473] := __var_25;
}



implementation _mint_ERC20_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s473: Ref, 
    amount_s473: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    __var_23 := null;
    if (!(account_s473 != null))
    {
        revert := true;
        return;
    }

    call __var_24 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s473);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_24;
    call __var_25 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s473], amount_s473);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s473] := __var_25;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s516: Ref, 
    amount_s516: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s516 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s516], amount_s516);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s516] := __var_27;
    call __var_28 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s516);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_28;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s516: Ref, 
    amount_s516: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: int;

    __var_26 := null;
    if (!(account_s516 != null))
    {
        revert := true;
        return;
    }

    call __var_27 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s516], amount_s516);
    if (revert)
    {
        return;
    }

    M_Ref_int[_balances_ERC20[this]][account_s516] := __var_27;
    call __var_28 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s516);
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
    owner_s558: Ref, 
    spender_s558: Ref, 
    amount_s558: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s558 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s558 != null))
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s558]][spender_s558] := amount_s558;
}



implementation _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s558: Ref, 
    spender_s558: Ref, 
    amount_s558: int)
{
  var __var_29: Ref;
  var __var_30: Ref;

    __var_29 := null;
    if (!(owner_s558 != null))
    {
        revert := true;
        return;
    }

    __var_30 := null;
    if (!(spender_s558 != null))
    {
        revert := true;
        return;
    }

    M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s558]][spender_s558] := amount_s558;
    assert {:EventEmitted "Approval_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s586: Ref, 
    amount_s586: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s586, amount_s586);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s586, amount_s586);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Pausable)
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

    if (__tmp__DType[this] == ERC20Pausable)
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

    call __var_32 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s586]][__var_33], amount_s586);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s586, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s586, __var_31, __var_32);
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
    account_s586: Ref, 
    amount_s586: int)
{
  var __var_31: Ref;
  var __var_32: int;
  var __var_33: Ref;

    if (DType[this] == ERC20Pausable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s586, amount_s586);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s586, amount_s586);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Pausable)
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

    if (DType[this] == ERC20Pausable)
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

    call __var_32 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][account_s586]][__var_33], amount_s586);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s586, __var_31, __var_32);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s586, __var_31, __var_32);
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



implementation ERC20Pausable_ERC20Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation ERC20Pausable_ERC20Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation ERC20Pausable_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Pausable_ERC20Pausable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20Pausable_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Pausable_ERC20Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transfer_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s24: Ref, value_s24: int)
   returns (__ret_0_: bool)
{
  var __var_34: bool;

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_34 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s24, value_s24);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_34;
    return;
}



implementation transfer_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s24: Ref, value_s24: int)
   returns (__ret_0_: bool)
{
  var __var_34: bool;

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call __var_34 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s24, value_s24);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_34;
    return;
}



implementation transferFrom_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s44: Ref, 
    to_s44: Ref, 
    value_s44: int)
   returns (__ret_0_: bool)
{
  var __var_35: bool;

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_35 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s44, to_s44, value_s44);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_35;
    return;
}



implementation transferFrom_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s44: Ref, 
    to_s44: Ref, 
    value_s44: int)
   returns (__ret_0_: bool)
{
  var __var_35: bool;

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call __var_35 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s44, to_s44, value_s44);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_35;
    return;
}



implementation approve_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s61: Ref, 
    value_s61: int)
   returns (__ret_0_: bool)
{
  var __var_36: bool;

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_36 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s61, value_s61);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_36;
    return;
}



implementation approve_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s61: Ref, 
    value_s61: int)
   returns (__ret_0_: bool)
{
  var __var_36: bool;

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call __var_36 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s61, value_s61);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_36;
    return;
}



implementation increaseAllowance_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s78: Ref, 
    addedValue_s78: int)
   returns (__ret_0_: bool)
{
  var __var_37: bool;

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_37 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s78, addedValue_s78);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37;
    return;
}



implementation increaseAllowance_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s78: Ref, 
    addedValue_s78: int)
   returns (__ret_0_: bool)
{
  var __var_37: bool;

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call __var_37 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s78, addedValue_s78);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37;
    return;
}



implementation decreaseAllowance_ERC20Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s95: Ref, 
    subtractedValue_s95: int)
   returns (__ret_0_: bool)
{
  var __var_38: bool;

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_38 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s95, subtractedValue_s95);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_38;
    return;
}



implementation decreaseAllowance_ERC20Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s95: Ref, 
    subtractedValue_s95: int)
   returns (__ret_0_: bool)
{
  var __var_38: bool;

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call __var_38 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s95, subtractedValue_s95);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_38;
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



implementation Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp___paused_Pausable[this] := false;
    __tmp___paused_Pausable[this] := false;
}



implementation Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    _paused_Pausable[this] := false;
    _paused_Pausable[this] := false;
}



implementation Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation paused_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    __ret_0_ := __tmp___paused_Pausable[this];
    return;
}



implementation paused_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    __ret_0_ := _paused_Pausable[this];
    return;
}



implementation pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPauser_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __tmp___paused_Pausable[this] := true;
}



implementation pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPauser_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    _paused_Pausable[this] := true;
    assert {:EventEmitted "Paused_Pausable"} true;
}



implementation unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPauser_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __tmp___paused_Pausable[this] := false;
}



implementation unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPauser_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    _paused_Pausable[this] := false;
    assert {:EventEmitted "Unpaused_Pausable"} true;
}



implementation PauserRole_PauserRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: Ref;

    assume msgsender_MSG != null;
    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_39 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Pausable)
    {
        call __var_39 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PauserRole)
    {
        call __var_39 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Pausable)
    {
        call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PauserRole)
    {
        call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_39);
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



implementation PauserRole_PauserRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: Ref;

    assume msgsender_MSG != null;
    if (DType[this] == ERC20Pausable)
    {
        call __var_39 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Pausable)
    {
        call __var_39 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PauserRole)
    {
        call __var_39 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Pausable)
    {
        call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Pausable)
    {
        call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PauserRole)
    {
        call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_39);
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



implementation PauserRole_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PauserRole_PauserRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation PauserRole_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PauserRole_PauserRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation isPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s946: Ref)
   returns (__ret_0_: bool)
{
  var __var_42: bool;

    call __var_42 := has_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s946);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_42;
    return;
}



implementation isPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s946: Ref)
   returns (__ret_0_: bool)
{
  var __var_42: bool;

    call __var_42 := has_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s946);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_42;
    return;
}



implementation addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s958: Ref)
{
    call onlyPauser_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Pausable)
    {
        call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PauserRole)
    {
        call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s958);
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



implementation addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s958: Ref)
{
    call onlyPauser_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (DType[this] == ERC20Pausable)
    {
        call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Pausable)
    {
        call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PauserRole)
    {
        call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s958);
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



implementation renouncePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_43: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_43 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Pausable)
    {
        call __var_43 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PauserRole)
    {
        call __var_43 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_43);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Pausable)
    {
        call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_43);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PauserRole)
    {
        call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_43);
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



implementation renouncePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_43: Ref;

    if (DType[this] == ERC20Pausable)
    {
        call __var_43 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Pausable)
    {
        call __var_43 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PauserRole)
    {
        call __var_43 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Pausable)
    {
        call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_43);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Pausable)
    {
        call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_43);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PauserRole)
    {
        call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_43);
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



implementation _addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s983: Ref)
{
    call add_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s983);
    if (revert)
    {
        return;
    }
}



implementation _addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s983: Ref)
{
    call add_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s983);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "PauserAdded_PauserRole"} true;
}



implementation _removePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s999: Ref)
{
    call remove_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s999);
    if (revert)
    {
        return;
    }
}



implementation _removePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s999: Ref)
{
    call remove_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s999);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "PauserRemoved_PauserRole"} true;
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
    role_s1032: Ref, 
    account_s1032: Ref)
{
  var __var_44: bool;

    call __var_44 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s1032, account_s1032);
    if (revert)
    {
        return;
    }

    if (!!__var_44)
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s1032]][account_s1032] := true;
}



implementation add_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1032: Ref, 
    account_s1032: Ref)
{
  var __var_44: bool;

    call __var_44 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s1032, account_s1032);
    if (revert)
    {
        return;
    }

    if (!!__var_44)
    {
        revert := true;
        return;
    }

    M_Ref_bool[bearer_Roles.Role[role_s1032]][account_s1032] := true;
}



implementation remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1056: Ref, 
    account_s1056: Ref)
{
  var __var_45: bool;

    call __var_45 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s1056, account_s1056);
    if (revert)
    {
        return;
    }

    if (!__var_45)
    {
        revert := true;
        return;
    }

    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s1056]][account_s1056] := false;
}



implementation remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1056: Ref, 
    account_s1056: Ref)
{
  var __var_45: bool;

    call __var_45 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s1056, account_s1056);
    if (revert)
    {
        return;
    }

    if (!__var_45)
    {
        revert := true;
        return;
    }

    M_Ref_bool[bearer_Roles.Role[role_s1056]][account_s1056] := false;
}



implementation has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1080: Ref, 
    account_s1080: Ref)
   returns (__ret_0_: bool)
{
  var __var_46: Ref;

    __var_46 := null;
    if (!(account_s1080 != null))
    {
        revert := true;
        return;
    }

    __ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s1080]][account_s1080];
    return;
}



implementation has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1080: Ref, 
    account_s1080: Ref)
   returns (__ret_0_: bool)
{
  var __var_46: Ref;

    __var_46 := null;
    if (!(account_s1080 != null))
    {
        revert := true;
        return;
    }

    __ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s1080]][account_s1080];
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s787: int, b_s787: int)
   returns (__ret_0_: int)
{
  var c_s786: int;

    c_s786 := a_s787 + b_s787;
    if (!(c_s786 >= a_s787))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s786;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s787: int, b_s787: int)
   returns (__ret_0_: int)
{
  var c_s786: int;

    c_s786 := a_s787 + b_s787;
    if (!(c_s786 >= a_s787))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s786;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s812: int, b_s812: int)
   returns (__ret_0_: int)
{
  var c_s811: int;

    if (!(b_s812 <= a_s812))
    {
        revert := true;
        return;
    }

    c_s811 := a_s812 - b_s812;
    __ret_0_ := c_s811;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s812: int, b_s812: int)
   returns (__ret_0_: int)
{
  var c_s811: int;

    if (!(b_s812 <= a_s812))
    {
        revert := true;
        return;
    }

    c_s811 := a_s812 - b_s812;
    __ret_0_ := c_s811;
    return;
}



implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s846: int, b_s846: int)
   returns (__ret_0_: int)
{
  var c_s845: int;

    if (a_s846 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s845 := a_s846 * b_s846;
    if (!(c_s845 div a_s846 == b_s846))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s845;
    return;
}



implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s846: int, b_s846: int)
   returns (__ret_0_: int)
{
  var c_s845: int;

    if (a_s846 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    c_s845 := a_s846 * b_s846;
    if (!(c_s845 div a_s846 == b_s846))
    {
        revert := true;
        return;
    }

    __ret_0_ := c_s845;
    return;
}



implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s871: int, b_s871: int)
   returns (__ret_0_: int)
{
  var c_s870: int;

    if (!(b_s871 > 0))
    {
        revert := true;
        return;
    }

    c_s870 := a_s871 div b_s871;
    __ret_0_ := c_s870;
    return;
}



implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s871: int, b_s871: int)
   returns (__ret_0_: int)
{
  var c_s870: int;

    if (!(b_s871 > 0))
    {
        revert := true;
        return;
    }

    c_s870 := a_s871 div b_s871;
    __ret_0_ := c_s870;
    return;
}



implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s892: int, b_s892: int)
   returns (__ret_0_: int)
{
    if (!(b_s892 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s892 mod b_s892;
    return;
}



implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s892: int, b_s892: int)
   returns (__ret_0_: int)
{
    if (!(b_s892 != 0))
    {
        revert := true;
        return;
    }

    __ret_0_ := a_s892 mod b_s892;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == PauserRole)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Pausable)
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
    if (DType[to] == PauserRole)
    {
        assume amount == 0;
    }
    else if (DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Pausable)
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
  var account_s140: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s155: Ref;
  var amount_s155: int;
  var __ret_0_transfer: bool;
  var owner_s190: Ref;
  var spender_s190: Ref;
  var __ret_0_allowance: int;
  var spender_s205: Ref;
  var amount_s205: int;
  var __ret_0_approve: bool;
  var sender_s242: Ref;
  var recipient_s242: Ref;
  var amount_s242: int;
  var __ret_0_transferFrom: bool;
  var spender_s292: Ref;
  var addedValue_s292: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s334: Ref;
  var subtractedValue_s334: int;
  var __ret_0_decreaseAllowance: bool;
  var to_s24: Ref;
  var value_s24: int;
  var spender_s61: Ref;
  var value_s61: int;
  var from_s44: Ref;
  var to_s44: Ref;
  var value_s44: int;
  var spender_s78: Ref;
  var addedValue_s78: int;
  var spender_s95: Ref;
  var subtractedValue_s95: int;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;
  var __ret_0_paused: bool;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 31)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s946);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 30)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 29)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 28)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s946);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 27)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 26)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 25)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_paused := paused_Pausable__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 24)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call pause_Pausable__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 23)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call unpause_Pausable__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s140);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20Pausable__fail(from, to, msgvalue_MSG, to_s24, value_s24);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s190, spender_s190);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s61, value_s61);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20Pausable__fail(from, to, msgvalue_MSG, from_s44, to_s44, value_s44);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s78, addedValue_s78);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s95, subtractedValue_s95);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s946);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_paused := paused_Pausable__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call pause_Pausable__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call unpause_Pausable__fail(from, to, msgvalue_MSG);
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
        call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s140);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s155, amount_s155);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s190, spender_s190);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s205, amount_s205);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s292, addedValue_s292);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s334, subtractedValue_s334);
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
  var account_s140: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s155: Ref;
  var amount_s155: int;
  var __ret_0_transfer: bool;
  var owner_s190: Ref;
  var spender_s190: Ref;
  var __ret_0_allowance: int;
  var spender_s205: Ref;
  var amount_s205: int;
  var __ret_0_approve: bool;
  var sender_s242: Ref;
  var recipient_s242: Ref;
  var amount_s242: int;
  var __ret_0_transferFrom: bool;
  var spender_s292: Ref;
  var addedValue_s292: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s334: Ref;
  var subtractedValue_s334: int;
  var __ret_0_decreaseAllowance: bool;
  var to_s24: Ref;
  var value_s24: int;
  var spender_s61: Ref;
  var value_s61: int;
  var from_s44: Ref;
  var to_s44: Ref;
  var value_s44: int;
  var spender_s78: Ref;
  var addedValue_s78: int;
  var spender_s95: Ref;
  var subtractedValue_s95: int;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;
  var __ret_0_paused: bool;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 31)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole__success(from, to, msgvalue_MSG, account_s946);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 30)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole__success(from, to, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 29)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 28)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole__success(from, to, msgvalue_MSG, account_s946);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 27)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole__success(from, to, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 26)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 25)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_paused := paused_Pausable__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 24)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call pause_Pausable__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 23)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call unpause_Pausable__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s140);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20Pausable__success(from, to, msgvalue_MSG, to_s24, value_s24);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s190, spender_s190);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s61, value_s61);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20Pausable__success(from, to, msgvalue_MSG, from_s44, to_s44, value_s44);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s78, addedValue_s78);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s95, subtractedValue_s95);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole__success(from, to, msgvalue_MSG, account_s946);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole__success(from, to, msgvalue_MSG, account_s958);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_paused := paused_Pausable__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call pause_Pausable__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call unpause_Pausable__success(from, to, msgvalue_MSG);
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
        call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s140);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s155, amount_s155);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s190, spender_s190);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s205, amount_s205);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s292, addedValue_s292);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s334, subtractedValue_s334);
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
  var __snap___tmp___paused_Pausable: [Ref]bool;
  var __snap___tmp___pausers_PauserRole: [Ref]Ref;
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
        __snap___tmp___paused_Pausable := __tmp___paused_Pausable;
        __snap___tmp___pausers_PauserRole := __tmp___pausers_PauserRole;
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
        __tmp___paused_Pausable := __snap___tmp___paused_Pausable;
        __tmp___pausers_PauserRole := __snap___tmp___pausers_PauserRole;
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
        __tmp___paused_Pausable := _paused_Pausable;
        __tmp___pausers_PauserRole := _pausers_PauserRole;
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



implementation whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    if (!!__tmp___paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    if (!!_paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    if (!__tmp___paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    if (!_paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation onlyPauser_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_40: bool;
  var __var_41: Ref;

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_41 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Pausable)
    {
        call __var_41 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PauserRole)
    {
        call __var_41 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == ERC20Pausable)
    {
        call __var_40 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_41);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Pausable)
    {
        call __var_40 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_41);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PauserRole)
    {
        call __var_40 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_41);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_40)
    {
        revert := true;
        return;
    }
}



implementation onlyPauser_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_40: bool;
  var __var_41: Ref;

    if (DType[this] == ERC20Pausable)
    {
        call __var_41 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Pausable)
    {
        call __var_41 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PauserRole)
    {
        call __var_41 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == ERC20Pausable)
    {
        call __var_40 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_41);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Pausable)
    {
        call __var_40 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_41);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PauserRole)
    {
        call __var_40 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_41);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_40)
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
       || DType[this] == ERC20Pausable
       || DType[this] == Pausable
       || DType[this] == PauserRole;
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
  var account_s140: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s155: Ref;
  var amount_s155: int;
  var __ret_0_transfer: bool;
  var owner_s190: Ref;
  var spender_s190: Ref;
  var __ret_0_allowance: int;
  var spender_s205: Ref;
  var amount_s205: int;
  var __ret_0_approve: bool;
  var sender_s242: Ref;
  var recipient_s242: Ref;
  var amount_s242: int;
  var __ret_0_transferFrom: bool;
  var spender_s292: Ref;
  var addedValue_s292: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s334: Ref;
  var subtractedValue_s334: int;
  var __ret_0_decreaseAllowance: bool;

    assume DType[this] == ERC20 || DType[this] == ERC20Pausable;
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
        havoc account_s140;
        havoc __ret_0_balanceOf;
        havoc recipient_s155;
        havoc amount_s155;
        havoc __ret_0_transfer;
        havoc owner_s190;
        havoc spender_s190;
        havoc __ret_0_allowance;
        havoc spender_s205;
        havoc amount_s205;
        havoc __ret_0_approve;
        havoc sender_s242;
        havoc recipient_s242;
        havoc amount_s242;
        havoc __ret_0_transferFrom;
        havoc spender_s292;
        havoc addedValue_s292;
        havoc __ret_0_increaseAllowance;
        havoc spender_s334;
        havoc subtractedValue_s334;
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
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s140);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s190, spender_s190);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
        }
    }
}



implementation BoogieEntry_ERC20Pausable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s140: Ref;
  var __ret_0_balanceOf: int;
  var to_s24: Ref;
  var value_s24: int;
  var __ret_0_transfer: bool;
  var owner_s190: Ref;
  var spender_s190: Ref;
  var __ret_0_allowance: int;
  var spender_s61: Ref;
  var value_s61: int;
  var __ret_0_approve: bool;
  var from_s44: Ref;
  var to_s44: Ref;
  var value_s44: int;
  var __ret_0_transferFrom: bool;
  var spender_s78: Ref;
  var addedValue_s78: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s95: Ref;
  var subtractedValue_s95: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;
  var __ret_0_paused: bool;

    assume DType[this] == ERC20Pausable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Pausable_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc __ret_0_totalSupply;
        havoc account_s140;
        havoc __ret_0_balanceOf;
        havoc to_s24;
        havoc value_s24;
        havoc __ret_0_transfer;
        havoc owner_s190;
        havoc spender_s190;
        havoc __ret_0_allowance;
        havoc spender_s61;
        havoc value_s61;
        havoc __ret_0_approve;
        havoc from_s44;
        havoc to_s44;
        havoc value_s44;
        havoc __ret_0_transferFrom;
        havoc spender_s78;
        havoc addedValue_s78;
        havoc __ret_0_increaseAllowance;
        havoc spender_s95;
        havoc subtractedValue_s95;
        havoc __ret_0_decreaseAllowance;
        havoc account_s946;
        havoc __ret_0_isPauser;
        havoc account_s958;
        havoc __ret_0_paused;
        if (choice == 14)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 13)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s140);
        }
        else if (choice == 12)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transfer := transfer_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, to_s24, value_s24);
        }
        else if (choice == 11)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s190, spender_s190);
        }
        else if (choice == 10)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_approve := approve_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s61, value_s61);
        }
        else if (choice == 9)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_transferFrom := transferFrom_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, from_s44, to_s44, value_s44);
        }
        else if (choice == 8)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_increaseAllowance := increaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s78, addedValue_s78);
        }
        else if (choice == 7)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_decreaseAllowance := decreaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s95, subtractedValue_s95);
        }
        else if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s946);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s958);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
        }
    }
}



implementation BoogieEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume DType[this] == ERC20 || DType[this] == ERC20Pausable || DType[this] == IERC20;
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



implementation BoogieEntry_Pausable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;
  var __ret_0_paused: bool;

    assume DType[this] == ERC20Pausable || DType[this] == Pausable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call Pausable_Pausable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc account_s946;
        havoc __ret_0_isPauser;
        havoc account_s958;
        havoc __ret_0_paused;
        if (choice == 6)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s946);
        }
        else if (choice == 5)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s958);
        }
        else if (choice == 4)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
        }
    }
}



implementation BoogieEntry_PauserRole()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;

    assume DType[this] == ERC20Pausable
       || DType[this] == Pausable
       || DType[this] == PauserRole;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call PauserRole_PauserRole(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc account_s946;
        havoc __ret_0_isPauser;
        havoc account_s958;
        if (choice == 3)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s946);
        }
        else if (choice == 2)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s958);
        }
        else if (choice == 1)
        {
            havoc gas;
            assume gas > 4000000 && gas <= 8000000;
            call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
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
       || DType[this] == ERC20Pausable
       || DType[this] == Pausable
       || DType[this] == PauserRole;
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
  var account_s140: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s155: Ref;
  var amount_s155: int;
  var __ret_0_transfer: bool;
  var owner_s190: Ref;
  var spender_s190: Ref;
  var __ret_0_allowance: int;
  var spender_s205: Ref;
  var amount_s205: int;
  var __ret_0_approve: bool;
  var sender_s242: Ref;
  var recipient_s242: Ref;
  var amount_s242: int;
  var __ret_0_transferFrom: bool;
  var spender_s292: Ref;
  var addedValue_s292: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s334: Ref;
  var subtractedValue_s334: int;
  var __ret_0_decreaseAllowance: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s140;
    havoc __ret_0_balanceOf;
    havoc recipient_s155;
    havoc amount_s155;
    havoc __ret_0_transfer;
    havoc owner_s190;
    havoc spender_s190;
    havoc __ret_0_allowance;
    havoc spender_s205;
    havoc amount_s205;
    havoc __ret_0_approve;
    havoc sender_s242;
    havoc recipient_s242;
    havoc amount_s242;
    havoc __ret_0_transferFrom;
    havoc spender_s292;
    havoc addedValue_s292;
    havoc __ret_0_increaseAllowance;
    havoc spender_s334;
    havoc subtractedValue_s334;
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
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s140);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s155, amount_s155);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s190, spender_s190);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s205, amount_s205);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s242, recipient_s242, amount_s242);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s292, addedValue_s292);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s334, subtractedValue_s334);
    }
}



implementation CorralEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20 || DType[this] == ERC20Pausable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_ERC20Pausable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s140: Ref;
  var __ret_0_balanceOf: int;
  var to_s24: Ref;
  var value_s24: int;
  var __ret_0_transfer: bool;
  var owner_s190: Ref;
  var spender_s190: Ref;
  var __ret_0_allowance: int;
  var spender_s61: Ref;
  var value_s61: int;
  var __ret_0_approve: bool;
  var from_s44: Ref;
  var to_s44: Ref;
  var value_s44: int;
  var __ret_0_transferFrom: bool;
  var spender_s78: Ref;
  var addedValue_s78: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s95: Ref;
  var subtractedValue_s95: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;
  var __ret_0_paused: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s140;
    havoc __ret_0_balanceOf;
    havoc to_s24;
    havoc value_s24;
    havoc __ret_0_transfer;
    havoc owner_s190;
    havoc spender_s190;
    havoc __ret_0_allowance;
    havoc spender_s61;
    havoc value_s61;
    havoc __ret_0_approve;
    havoc from_s44;
    havoc to_s44;
    havoc value_s44;
    havoc __ret_0_transferFrom;
    havoc spender_s78;
    havoc addedValue_s78;
    havoc __ret_0_increaseAllowance;
    havoc spender_s95;
    havoc subtractedValue_s95;
    havoc __ret_0_decreaseAllowance;
    havoc account_s946;
    havoc __ret_0_isPauser;
    havoc account_s958;
    havoc __ret_0_paused;
    if (choice == 14)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s140);
    }
    else if (choice == 12)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transfer := transfer_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, to_s24, value_s24);
    }
    else if (choice == 11)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s190, spender_s190);
    }
    else if (choice == 10)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_approve := approve_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s61, value_s61);
    }
    else if (choice == 9)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_transferFrom := transferFrom_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, from_s44, to_s44, value_s44);
    }
    else if (choice == 8)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s78, addedValue_s78);
    }
    else if (choice == 7)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s95, subtractedValue_s95);
    }
    else if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s946);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s958);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_ERC20Pausable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Pausable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call ERC20Pausable_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Pausable(this);
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

    assume DType[this] == ERC20 || DType[this] == ERC20Pausable || DType[this] == IERC20;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_IERC20(this);
    }
}



implementation CorralChoice_Pausable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;
  var __ret_0_paused: bool;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc account_s946;
    havoc __ret_0_isPauser;
    havoc account_s958;
    havoc __ret_0_paused;
    if (choice == 6)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s946);
    }
    else if (choice == 5)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s958);
    }
    else if (choice == 4)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_Pausable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Pausable || DType[this] == Pausable;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call Pausable_Pausable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Pausable(this);
    }
}



implementation CorralChoice_PauserRole(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s946: Ref;
  var __ret_0_isPauser: bool;
  var account_s958: Ref;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc account_s946;
    havoc __ret_0_isPauser;
    havoc account_s958;
    if (choice == 3)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s946);
    }
    else if (choice == 2)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s958);
    }
    else if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_PauserRole()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == ERC20Pausable
       || DType[this] == Pausable
       || DType[this] == PauserRole;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call PauserRole_PauserRole(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PauserRole(this);
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


