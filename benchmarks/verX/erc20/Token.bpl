// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:Token.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// spec1
// LTLProperty: [](!finished(*, _totalSupply_ERC20[this] > old(_totalSupply_ERC20[this]) && old(M_Ref_bool[bearer_Roles.Role[_minters_MinterRole[this]]][msg.sender]) == false))

// spec2
// LTLProperty: [](!finished(ERC20.transfer, old(M_Ref_int__balances0[_balances_ERC20[this]][123]) > M_Ref_int__balances0[_balances_ERC20[this]][123] && msg.sender != 123))

// spec3
// LTLProperty: [](!finished(*, sum__balances0[_balances_ERC20[this]] != _totalSupply_ERC20[this]))

// spec4
// LTLProperty: [](!finished(*, M_Ref_bool[bearer_Roles.Role[_minters_MinterRole[this]]][123] == false && old(M_Ref_bool[bearer_Roles.Role[_minters_MinterRole[this]]][123]) == true && msg.sender != 123))

// spec5
// Doesn't work: []((!finished(ERC20Mintable.mint)) ==> <>(finished(*, _totalSupply_ERC20[this] == old(_totalSupply_ERC20[this]))))
// #LTLProperty: []((finished(ERC20.totalSupply) || finished(ERC20.balanceOf) || finished(ERC20.transfer) || finished(ERC20.allowance) || finished(ERC20.approve) || finished(ERC20.transferFrom) || finished(ERC20Detailed.name) || finished(ERC20Detailed.symbol) || finished(ERC20Detailed.decimals) || finished(ERC20.increaseAllowance) || finished(ERC20.decreaseAllowance) || finished(MinterRole.isMinter) || finished(MinterRole.addMinter) || finished(MinterRole.renounceMinter)) ==> <>(finished(*, _totalSupply_ERC20[this] == old(_totalSupply_ERC20[this]))))

// spec6
// LTLProperty: [](!finished(ERC20.transferFrom(from, to, value), from != to && (M_Ref_int__balances0[_balances_ERC20[this]][from] != (old(M_Ref_int__balances0[_balances_ERC20[this]][from]) - value) || M_Ref_int__balances0[_balances_ERC20[this]][to] != (old(M_Ref_int__balances0[_balances_ERC20[this]][to]) + value) || old(M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][from]][msg.sender]) < value || M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][from]][msg.sender] != (old(M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][from]][msg.sender]) - value))))

// spec7
// LTLProperty: [](!finished(*, _name_ERC20Detailed[this] != old(_name_ERC20Detailed[this])))

// spec8
// LTLProperty: [](!finished(*, _symbol_ERC20Detailed[this] != old(_symbol_ERC20Detailed[this])))

// spec9
// LTLProperty: [](!finished(*, _decimals_ERC20Detailed[this] != old(_decimals_ERC20Detailed[this])))

type Ref = int;

type ContractName = int;

var null: Ref;

var IERC20: ContractName;

var ERC20Detailed: ContractName;

var SafeMath: ContractName;

var ERC20: ContractName;

var Roles: ContractName;

var Roles.Role: ContractName;

var MinterRole: ContractName;

var ERC20Mintable: ContractName;

var Address: ContractName;

var Token: ContractName;

var Deployer: ContractName;

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

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int__balances0: [Ref][Ref]int;

var sum__balances0: [Ref]int;

var M_Ref_int__allowances1: [Ref][Ref]int;

var M_Ref_Ref__allowances1: [Ref][Ref]Ref;

var sum__allowances1: [Ref]int;

var M_Ref_bool: [Ref][Ref]bool;

var sum: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
  modifies bearer_Roles.Role;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, Balance;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s13: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s22: Ref, 
    amount_s22: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s31: Ref, 
    spender_s31: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s40: Ref, 
    amount_s40: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s51: Ref, 
    recipient_s51: Ref, 
    amount_s51: int)
   returns (__ret_0_: bool);



var {:access "this._name=_name_ERC20Detailed[this]"} _name_ERC20Detailed: [Ref]int;

var {:access "this._symbol=_symbol_ERC20Detailed[this]"} _symbol_ERC20Detailed: [Ref]int;

var {:access "this._decimals=_decimals_ERC20Detailed[this]"} _decimals_ERC20Detailed: [Ref]int;

procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:public} {:inline 1} ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



implementation ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, name_s98, symbol_s98, decimals_s98);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, name_s98, symbol_s98, decimals_s98);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := decimals_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decimals_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, Balance;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s148: int, b_s148: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, Alloc;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this._balances[i0]=M_Ref_int__balances0[_balances_ERC20[this]][i0]"} {:sum "sum(this._balances)=sum__balances0[_balances_ERC20[this]]"} _balances_ERC20: [Ref]Ref;

var {:access "this._allowances[i0][i1]=M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][i0]][i1]"} {:sum "sum(this._allowances)=sum__allowances1[_allowances_ERC20[this]]"} _allowances_ERC20: [Ref]Ref;

var {:access "this._totalSupply=_totalSupply_ERC20[this]"} _totalSupply_ERC20: [Ref]int;

procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s211: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s211: Ref)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s211);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s211);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, sum__balances0, M_Ref_int__balances0;



implementation transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s230: Ref, 
    amount_s230: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s230, amount_s230);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s230, amount_s230);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s246: Ref, 
    spender_s246: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s246: Ref, 
    spender_s246: Ref)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s246, spender_s246);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s246, spender_s246);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s265: Ref, 
    value_s265: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s265: Ref, 
    value_s265: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s265, value_s265);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s265, value_s265);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s300: Ref, 
    recipient_s300: Ref, 
    amount_s300: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, sum__balances0, M_Ref_int__balances0, Alloc;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s300: Ref, 
    recipient_s300: Ref, 
    amount_s300: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s327: Ref, 
    addedValue_s327: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s327: Ref, 
    addedValue_s327: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s327, addedValue_s327);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s327, addedValue_s327);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s354: Ref, 
    subtractedValue_s354: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s354: Ref, 
    subtractedValue_s354: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s354, subtractedValue_s354);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s354, subtractedValue_s354);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s410: Ref, 
    recipient_s410: Ref, 
    amount_s410: int);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s453: Ref, 
    amount_s453: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s496: Ref, 
    value_s496: int);
  modifies revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, gas;



procedure {:inline 1} _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s538: Ref, 
    spender_s538: Ref, 
    value_s538: int);
  modifies gas, revert, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s566: Ref, 
    amount_s566: int);
  modifies M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, gas, Alloc;



procedure {:inline 1} Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, Balance;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
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
    role_s597: Ref, 
    account_s597: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s621: Ref, 
    account_s621: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s645: Ref, 
    account_s645: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



var {:access "this._minters=_minters_MinterRole[this]"} _minters_MinterRole: [Ref]Ref;

procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _minters_MinterRole, Alloc, gas, revert, M_Ref_bool;



procedure {:constructor} {:public} {:inline 1} MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, Balance, _minters_MinterRole, Alloc, M_Ref_bool;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s693: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas;



implementation isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s693: Ref)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s693);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s693);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s705: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, M_Ref_bool;



implementation addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s705: Ref)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s705);
        assume revert || gas < 0;
    }
    else
    {
        call addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s705);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, M_Ref_bool;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call renounceMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call renounceMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s730: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s746: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, Alloc, _minters_MinterRole, M_Ref_bool;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
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
    account_s770: Ref, 
    amount_s770: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



implementation mint_ERC20Mintable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s770: Ref, 
    amount_s770: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call __ret_0_ := mint_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := mint_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Address_Address_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Address_Address(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, Balance;



implementation Address_Address(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call Address_Address__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Address_Address__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} isContract_Address(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s787: Ref)
   returns (__ret_0_: bool);



procedure {:inline 1} Token_Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:constructor} {:public} {:inline 1} Token_Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, Alloc, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _minters_MinterRole, M_Ref_bool;



implementation Token_Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call Token_Token__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Token_Token__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.t=t_Deployer[this]"} t_Deployer: [Ref]Ref;

procedure {:inline 1} Deployer_Deployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, t_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _minters_MinterRole, gas, revert, M_Ref_bool;



procedure {:constructor} {:public} {:inline 1} Deployer_Deployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, gas, Balance, t_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _minters_MinterRole, M_Ref_bool;



implementation Deployer_Deployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
        call Deployer_Deployer__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Deployer_Deployer__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, revert, Balance;



procedure {:inline 1} onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_IERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_IERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20Detailed(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer;



procedure CorralEntry_ERC20Detailed();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, now, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, sum__allowances1;



procedure CorralChoice_Roles(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Roles();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_MinterRole(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, M_Ref_bool;



procedure CorralEntry_MinterRole();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, now, Balance, _minters_MinterRole, M_Ref_bool;



procedure CorralChoice_ERC20Mintable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, sum__balances0, M_Ref_int__balances0, _totalSupply_ERC20, M_Ref_bool;



procedure CorralEntry_ERC20Mintable();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, _minters_MinterRole, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, sum__allowances1, M_Ref_bool;



procedure CorralChoice_Address(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Address();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_Token(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, sum__balances0, M_Ref_int__balances0, _totalSupply_ERC20, M_Ref_bool;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, now, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, _totalSupply_ERC20, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _minters_MinterRole, M_Ref_bool;



procedure CorralChoice_Deployer(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Deployer();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, now, Balance, t_Deployer, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _minters_MinterRole, M_Ref_bool;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int__balances0: [Ref][Ref]int;

var __tmp__sum__balances0: [Ref]int;

var __tmp__M_Ref_int__allowances1: [Ref][Ref]int;

var __tmp__M_Ref_Ref__allowances1: [Ref][Ref]Ref;

var __tmp__sum__allowances1: [Ref]int;

var __tmp__M_Ref_bool: [Ref][Ref]bool;

var __tmp__sum: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp___name_ERC20Detailed: [Ref]int;

var __tmp___symbol_ERC20Detailed: [Ref]int;

var __tmp___decimals_ERC20Detailed: [Ref]int;

var __tmp___balances_ERC20: [Ref]Ref;

var __tmp___allowances_ERC20: [Ref]Ref;

var __tmp___totalSupply_ERC20: [Ref]int;

var __tmp__bearer_Roles.Role: [Ref]Ref;

var __tmp___minters_MinterRole: [Ref]Ref;

var __tmp__t_Deployer: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
  modifies __tmp__bearer_Roles.Role;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int);
  modifies __tmp__Balance, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int);
  modifies __tmp__Balance, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:inline 1} name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s148: int, b_s148: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowances_ERC20, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowances_ERC20, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s211: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s211: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s246: Ref, 
    spender_s246: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc;



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s246: Ref, 
    spender_s246: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp__sum__allowances1, __tmp__Alloc;



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s265: Ref, 
    value_s265: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s265: Ref, 
    value_s265: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp__sum__allowances1, __tmp__Alloc;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s300: Ref, 
    recipient_s300: Ref, 
    amount_s300: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, revert, sum__balances0, M_Ref_int__balances0, Alloc;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s300: Ref, 
    recipient_s300: Ref, 
    amount_s300: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp__sum__allowances1, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, __tmp__Alloc;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s327: Ref, 
    addedValue_s327: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc, revert;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s327: Ref, 
    addedValue_s327: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp__sum__allowances1, __tmp__Alloc, revert;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s354: Ref, 
    subtractedValue_s354: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref__allowances1, M_Ref_int__allowances1, sum__allowances1, Alloc, revert;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s354: Ref, 
    subtractedValue_s354: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp__sum__allowances1, __tmp__Alloc, revert;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s410: Ref, 
    recipient_s410: Ref, 
    amount_s410: int);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s453: Ref, 
    amount_s453: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s496: Ref, 
    value_s496: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, gas;



procedure {:inline 1} _approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s538: Ref, 
    spender_s538: Ref, 
    value_s538: int);
  modifies gas, revert, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp__sum__allowances1, __tmp__Alloc;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s566: Ref, 
    amount_s566: int);
  modifies __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp__sum__allowances1, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, gas, __tmp__Alloc;



procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} add_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s597: Ref, 
    account_s597: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s621: Ref, 
    account_s621: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s645: Ref, 
    account_s645: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___minters_MinterRole, __tmp__Alloc, gas, revert, __tmp__M_Ref_bool;



procedure {:constructor} {:inline 1} MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _minters_MinterRole, Alloc, gas, revert, M_Ref_bool;



procedure {:constructor} {:inline 1} MinterRole_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___minters_MinterRole, __tmp__Alloc, gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s693: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s693: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s705: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s705: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s730: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s746: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, Alloc, _minters_MinterRole, gas, revert, M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowances_ERC20, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp___totalSupply_ERC20, __tmp__Alloc, __tmp___minters_MinterRole, gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} mint_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s770: Ref, 
    amount_s770: int)
   returns (__ret_0_: bool);
  modifies gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} mint_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s770: Ref, 
    amount_s770: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} Address_Address_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Address_Address__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Address_Address__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Token_Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:constructor} {:inline 1} Token_Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, Alloc, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _minters_MinterRole, gas, revert, M_Ref_bool;



procedure {:constructor} {:inline 1} Token_Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowances_ERC20, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp___totalSupply_ERC20, __tmp__Alloc, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___minters_MinterRole, gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} Deployer_Deployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__t_Deployer, __tmp__Alloc, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowances_ERC20, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___minters_MinterRole, gas, revert, __tmp__M_Ref_bool;



procedure {:constructor} {:inline 1} Deployer_Deployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, t_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowances_ERC20, M_Ref_Ref__allowances1, M_Ref_int__allowances1, _totalSupply_ERC20, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _minters_MinterRole, gas, revert, M_Ref_bool;



procedure {:constructor} {:inline 1} Deployer_Deployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__t_Deployer, __tmp__Alloc, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowances_ERC20, __tmp__M_Ref_Ref__allowances1, __tmp__M_Ref_int__allowances1, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___minters_MinterRole, gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowances1, __tmp__M_Ref_Ref__allowances1, __tmp__sum__allowances1, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___balances_ERC20, __tmp___allowances_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp__t_Deployer, revert;



procedure {:inline 1} onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
    __tmp__bearer_Roles.Role[this] := bearer;
}



implementation Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
    bearer_Roles.Role[this] := bearer;
}



implementation IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
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



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___name_ERC20Detailed[this] := 428042695;
    __tmp___symbol_ERC20Detailed[this] := 428042695;
    __tmp___decimals_ERC20Detailed[this] := 0;
    __tmp___name_ERC20Detailed[this] := name_s98;
    __tmp___symbol_ERC20Detailed[this] := symbol_s98;
    assume __tmp___decimals_ERC20Detailed[this] >= 0;
    assume decimals_s98 >= 0;
    __tmp___decimals_ERC20Detailed[this] := decimals_s98;
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _name_ERC20Detailed[this] := 428042695;
    _symbol_ERC20Detailed[this] := 428042695;
    _decimals_ERC20Detailed[this] := 0;
    _name_ERC20Detailed[this] := name_s98;
    _symbol_ERC20Detailed[this] := symbol_s98;
    assume _decimals_ERC20Detailed[this] >= 0;
    assume decimals_s98 >= 0;
    _decimals_ERC20Detailed[this] := decimals_s98;
}



implementation ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, name_s98, symbol_s98, decimals_s98);
    if (revert)
    {
        return;
    }
}



implementation ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s98: int, 
    symbol_s98: int, 
    decimals_s98: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, name_s98, symbol_s98, decimals_s98);
    if (revert)
    {
        return;
    }
}



implementation name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := __tmp___name_ERC20Detailed[this];
    return;
}



implementation name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := _name_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := __tmp___symbol_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := _symbol_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 244;
    assume __tmp___decimals_ERC20Detailed[this] >= 0;
    __ret_0_ := __tmp___decimals_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 244;
    assume _decimals_ERC20Detailed[this] >= 0;
    __ret_0_ := _decimals_ERC20Detailed[this];
    return;
}



implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s148: int, b_s148: int)
   returns (__ret_0_: int)
{
  var c_s147: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s147 >= 0;
    assume a_s148 >= 0;
    assume b_s148 >= 0;
    assume a_s148 + b_s148 >= 0;
    c_s147 := a_s148 + b_s148;
    gas := gas - 1992;
    assume c_s147 >= 0;
    assume a_s148 >= 0;
    if (!(c_s147 >= a_s148))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume c_s147 >= 0;
    __ret_0_ := c_s147;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s148: int, b_s148: int)
   returns (__ret_0_: int)
{
  var c_s147: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s147 >= 0;
    assume a_s148 >= 0;
    assume b_s148 >= 0;
    assume a_s148 + b_s148 >= 0;
    c_s147 := a_s148 + b_s148;
    gas := gas - 1992;
    assume c_s147 >= 0;
    assume a_s148 >= 0;
    if (!(c_s147 >= a_s148))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume c_s147 >= 0;
    __ret_0_ := c_s147;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int)
   returns (__ret_0_: int)
{
  var c_s172: int;

    gas := gas - 9;
    gas := gas - 1992;
    assume b_s173 >= 0;
    assume a_s173 >= 0;
    if (!(b_s173 <= a_s173))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s172 >= 0;
    assume a_s173 >= 0;
    assume b_s173 >= 0;
    assume a_s173 - b_s173 >= 0;
    c_s172 := a_s173 - b_s173;
    gas := gas - 30;
    assume c_s172 >= 0;
    __ret_0_ := c_s172;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int)
   returns (__ret_0_: int)
{
  var c_s172: int;

    gas := gas - 9;
    gas := gas - 1992;
    assume b_s173 >= 0;
    assume a_s173 >= 0;
    if (!(b_s173 <= a_s173))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s172 >= 0;
    assume a_s173 >= 0;
    assume b_s173 >= 0;
    assume a_s173 - b_s173 >= 0;
    c_s172 := a_s173 - b_s173;
    gas := gas - 30;
    assume c_s172 >= 0;
    __ret_0_ := c_s172;
    return;
}



implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    __tmp___balances_ERC20[this] := __var_1;
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]] := zeroRefIntArr();
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := 0;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___allowances_ERC20[this] := __var_2;
    __tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]] := zeroRefRefArr();
    __tmp__M_Ref_int__allowances1[null] := zeroRefIntArr();
    __tmp___totalSupply_ERC20[this] := 0;
}



implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    _balances_ERC20[this] := __var_1;
    M_Ref_int__balances0[_balances_ERC20[this]] := zeroRefIntArr();
    sum__balances0[_balances_ERC20[this]] := 0;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _allowances_ERC20[this] := __var_2;
    M_Ref_Ref__allowances1[_allowances_ERC20[this]] := zeroRefRefArr();
    M_Ref_int__allowances1[null] := zeroRefIntArr();
    _totalSupply_ERC20[this] := 0;
}



implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
    gas := gas - 9;
    gas := gas - 624;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    __ret_0_ := __tmp___totalSupply_ERC20[this];
    return;
}



implementation totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 624;
    assume _totalSupply_ERC20[this] >= 0;
    __ret_0_ := _totalSupply_ERC20[this];
    return;
}



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s211: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s211] >= 0;
    __ret_0_ := __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s211];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s211: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s211] >= 0;
    __ret_0_ := M_Ref_int__balances0[_balances_ERC20[this]][account_s211];
    return;
}



implementation transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 69;
    assume amount_s230 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s230: Ref, 
    amount_s230: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 69;
    assume amount_s230 >= 0;
    if (DType[this] == Token)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s230, amount_s230);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s246: Ref, 
    spender_s246: Ref)
   returns (__ret_0_: int)
{
  var __var_3: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s246]
       == null)
    {
        call __var_3 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s246] := __var_3;
        __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s246]] := zeroRefIntArr();
        __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s246]] := 0;
    }

    assume __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s246]][spender_s246]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s246]][spender_s246];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s246: Ref, 
    spender_s246: Ref)
   returns (__ret_0_: int)
{
  var __var_3: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s246] == null)
    {
        call __var_3 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s246] := __var_3;
        M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s246]] := zeroRefIntArr();
        sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s246]] := 0;
    }

    assume M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s246]][spender_s246]
       >= 0;
    __ret_0_ := M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s246]][spender_s246];
    return;
}



implementation approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s265: Ref, 
    value_s265: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 36;
    assume value_s265 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s265, value_s265);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s265, value_s265);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s265, value_s265);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s265: Ref, 
    value_s265: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 36;
    assume value_s265 >= 0;
    if (DType[this] == Token)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s265, value_s265);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s265, value_s265);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s265, value_s265);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s300: Ref, 
    recipient_s300: Ref, 
    amount_s300: int)
   returns (__ret_0_: bool)
{
  var __var_4: int;
  var __var_5: Ref;

    gas := gas - 9;
    gas := gas - 39;
    assume amount_s300 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 1323;
    assume __var_4 >= 0;
    if (__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s300]
       == null)
    {
        call __var_5 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s300] := __var_5;
        __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s300]] := zeroRefIntArr();
        __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s300]] := 0;
    }

    assume __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s300]][msgsender_MSG]
       >= 0;
    assume amount_s300 >= 0;
    call __var_4 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s300]][msgsender_MSG], amount_s300);
    if (revert)
    {
        return;
    }

    assume __var_4 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s300, msgsender_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s300, msgsender_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s300, msgsender_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s300: Ref, 
    recipient_s300: Ref, 
    amount_s300: int)
   returns (__ret_0_: bool)
{
  var __var_4: int;
  var __var_5: Ref;

    gas := gas - 9;
    gas := gas - 39;
    assume amount_s300 >= 0;
    if (DType[this] == Token)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 1323;
    assume __var_4 >= 0;
    if (M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s300] == null)
    {
        call __var_5 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s300] := __var_5;
        M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s300]] := zeroRefIntArr();
        sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s300]] := 0;
    }

    assume M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s300]][msgsender_MSG]
       >= 0;
    assume amount_s300 >= 0;
    call __var_4 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s300]][msgsender_MSG], amount_s300);
    if (revert)
    {
        return;
    }

    assume __var_4 >= 0;
    if (DType[this] == Token)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s300, msgsender_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s300, msgsender_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s300, msgsender_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s327: Ref, 
    addedValue_s327: int)
   returns (__ret_0_: bool)
{
  var __var_6: int;
  var __var_7: Ref;

    gas := gas - 9;
    gas := gas - 1323;
    assume __var_6 >= 0;
    if (__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]
       == null)
    {
        call __var_7 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG] := __var_7;
        __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]][spender_s327]
       >= 0;
    assume addedValue_s327 >= 0;
    call __var_6 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]][spender_s327], addedValue_s327);
    if (revert)
    {
        return;
    }

    assume __var_6 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s327, __var_6);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s327, __var_6);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s327, __var_6);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s327: Ref, 
    addedValue_s327: int)
   returns (__ret_0_: bool)
{
  var __var_6: int;
  var __var_7: Ref;

    gas := gas - 9;
    gas := gas - 1323;
    assume __var_6 >= 0;
    if (M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_7 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG] := __var_7;
        M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]][spender_s327]
       >= 0;
    assume addedValue_s327 >= 0;
    call __var_6 := add_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]][spender_s327], addedValue_s327);
    if (revert)
    {
        return;
    }

    assume __var_6 >= 0;
    if (DType[this] == Token)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s327, __var_6);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s327, __var_6);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s327, __var_6);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s354: Ref, 
    subtractedValue_s354: int)
   returns (__ret_0_: bool)
{
  var __var_8: int;
  var __var_9: Ref;

    gas := gas - 9;
    gas := gas - 1323;
    assume __var_8 >= 0;
    if (__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]
       == null)
    {
        call __var_9 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG] := __var_9;
        __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]][spender_s354]
       >= 0;
    assume subtractedValue_s354 >= 0;
    call __var_8 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][msgsender_MSG]][spender_s354], subtractedValue_s354);
    if (revert)
    {
        return;
    }

    assume __var_8 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s354, __var_8);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s354, __var_8);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s354, __var_8);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s354: Ref, 
    subtractedValue_s354: int)
   returns (__ret_0_: bool)
{
  var __var_8: int;
  var __var_9: Ref;

    gas := gas - 9;
    gas := gas - 1323;
    assume __var_8 >= 0;
    if (M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_9 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG] := __var_9;
        M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]][spender_s354]
       >= 0;
    assume subtractedValue_s354 >= 0;
    call __var_8 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][msgsender_MSG]][spender_s354], subtractedValue_s354);
    if (revert)
    {
        return;
    }

    assume __var_8 >= 0;
    if (DType[this] == Token)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s354, __var_8);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s354, __var_8);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, spender_s354, __var_8);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s410: Ref, 
    recipient_s410: Ref, 
    amount_s410: int)
{
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: int;

    gas := gas - 2049;
    __var_10 := null;
    if (!(sender_s410 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 2049;
    __var_11 := null;
    if (!(recipient_s410 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s410] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s410] >= 0;
    assume amount_s410 >= 0;
    call __var_12 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s410], amount_s410);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s410];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s410] := __var_12;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s410];
    assume __var_12 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s410] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s410] >= 0;
    assume amount_s410 >= 0;
    call __var_13 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s410], amount_s410);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s410];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s410] := __var_13;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s410];
    assume __var_13 >= 0;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s410: Ref, 
    recipient_s410: Ref, 
    amount_s410: int)
{
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: int;

    gas := gas - 2049;
    __var_10 := null;
    if (!(sender_s410 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 2049;
    __var_11 := null;
    if (!(recipient_s410 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int__balances0[_balances_ERC20[this]][sender_s410] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][sender_s410] >= 0;
    assume amount_s410 >= 0;
    call __var_12 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][sender_s410], amount_s410);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][sender_s410];
    M_Ref_int__balances0[_balances_ERC20[this]][sender_s410] := __var_12;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][sender_s410];
    assume __var_12 >= 0;
    gas := gas - 61299;
    assume M_Ref_int__balances0[_balances_ERC20[this]][recipient_s410] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][recipient_s410] >= 0;
    assume amount_s410 >= 0;
    call __var_13 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][recipient_s410], amount_s410);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][recipient_s410];
    M_Ref_int__balances0[_balances_ERC20[this]][recipient_s410] := __var_13;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][recipient_s410];
    assume __var_13 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s453: Ref, 
    amount_s453: int)
{
  var __var_14: Ref;
  var __var_15: int;
  var __var_16: int;

    gas := gas - 1352;
    __var_14 := null;
    if (!(account_s453 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40494;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume amount_s453 >= 0;
    call __var_15 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s453);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_15;
    assume __var_15 >= 0;
    gas := gas - 40878;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s453] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s453] >= 0;
    assume amount_s453 >= 0;
    call __var_16 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s453], amount_s453);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s453];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s453] := __var_16;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s453];
    assume __var_16 >= 0;
}



implementation _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s453: Ref, 
    amount_s453: int)
{
  var __var_14: Ref;
  var __var_15: int;
  var __var_16: int;

    gas := gas - 1352;
    __var_14 := null;
    if (!(account_s453 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40494;
    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume amount_s453 >= 0;
    call __var_15 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s453);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_15;
    assume __var_15 >= 0;
    gas := gas - 40878;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s453] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s453] >= 0;
    assume amount_s453 >= 0;
    call __var_16 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s453], amount_s453);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s453];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s453] := __var_16;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s453];
    assume __var_16 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s496: Ref, 
    value_s496: int)
{
  var __var_17: Ref;
  var __var_18: int;
  var __var_19: int;

    __var_17 := null;
    if (!(account_s496 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s496 >= 0;
    call __var_18 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s496);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_18;
    assume __var_18 >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s496] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s496] >= 0;
    assume value_s496 >= 0;
    call __var_19 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s496], value_s496);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s496];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s496] := __var_19;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s496];
    assume __var_19 >= 0;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s496: Ref, 
    value_s496: int)
{
  var __var_17: Ref;
  var __var_18: int;
  var __var_19: int;

    __var_17 := null;
    if (!(account_s496 != null))
    {
        revert := true;
        return;
    }

    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s496 >= 0;
    call __var_18 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s496);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_18;
    assume __var_18 >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s496] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s496] >= 0;
    assume value_s496 >= 0;
    call __var_19 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s496], value_s496);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s496];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s496] := __var_19;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s496];
    assume __var_19 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s538: Ref, 
    spender_s538: Ref, 
    value_s538: int)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: Ref;

    gas := gas - 2049;
    __var_20 := null;
    if (!(owner_s538 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 2049;
    __var_21 := null;
    if (!(spender_s538 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60600;
    if (__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]
       == null)
    {
        call __var_22 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538] := __var_22;
        __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]] := zeroRefIntArr();
        __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]] := 0;
    }

    assume __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]][spender_s538]
       >= 0;
    assume value_s538 >= 0;
    __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]] := __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]]
       - __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]][spender_s538];
    __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]][spender_s538] := value_s538;
    __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]] := __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]]
       + __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s538]][spender_s538];
}



implementation _approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s538: Ref, 
    spender_s538: Ref, 
    value_s538: int)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: Ref;

    gas := gas - 2049;
    __var_20 := null;
    if (!(owner_s538 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 2049;
    __var_21 := null;
    if (!(spender_s538 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60600;
    if (M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538] == null)
    {
        call __var_22 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538] := __var_22;
        M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]] := zeroRefIntArr();
        sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]] := 0;
    }

    assume M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]][spender_s538]
       >= 0;
    assume value_s538 >= 0;
    sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]] := sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]]
       - M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]][spender_s538];
    M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]][spender_s538] := value_s538;
    sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]] := sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]]
       + M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s538]][spender_s538];
    assert {:EventEmitted "Approval_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s566: Ref, 
    amount_s566: int)
{
  var __var_23: int;
  var __var_24: Ref;

    assume amount_s566 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s566, amount_s566);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s566, amount_s566);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s566, amount_s566);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_23 >= 0;
    if (__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s566]
       == null)
    {
        call __var_24 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s566] := __var_24;
        __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s566]] := zeroRefIntArr();
        __tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s566]] := 0;
    }

    assume __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s566]][msgsender_MSG]
       >= 0;
    assume amount_s566 >= 0;
    call __var_23 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s566]][msgsender_MSG], amount_s566);
    if (revert)
    {
        return;
    }

    assume __var_23 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s566, msgsender_MSG, __var_23);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s566, msgsender_MSG, __var_23);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s566, msgsender_MSG, __var_23);
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
    account_s566: Ref, 
    amount_s566: int)
{
  var __var_23: int;
  var __var_24: Ref;

    assume amount_s566 >= 0;
    if (DType[this] == Token)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s566, amount_s566);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s566, amount_s566);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s566, amount_s566);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_23 >= 0;
    if (M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s566] == null)
    {
        call __var_24 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s566] := __var_24;
        M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s566]] := zeroRefIntArr();
        sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s566]] := 0;
    }

    assume M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s566]][msgsender_MSG]
       >= 0;
    assume amount_s566 >= 0;
    call __var_23 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s566]][msgsender_MSG], amount_s566);
    if (revert)
    {
        return;
    }

    assume __var_23 >= 0;
    if (DType[this] == Token)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s566, msgsender_MSG, __var_23);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s566, msgsender_MSG, __var_23);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s566, msgsender_MSG, __var_23);
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



implementation Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
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
    role_s597: Ref, 
    account_s597: Ref)
{
  var __var_25: bool;

    gas := gas - 1330;
    call __var_25 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s597, account_s597);
    if (revert)
    {
        return;
    }

    if (!!__var_25)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s597]][account_s597] := true;
}



implementation add_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s597: Ref, 
    account_s597: Ref)
{
  var __var_25: bool;

    gas := gas - 1330;
    call __var_25 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s597, account_s597);
    if (revert)
    {
        return;
    }

    if (!!__var_25)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    M_Ref_bool[bearer_Roles.Role[role_s597]][account_s597] := true;
}



implementation remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s621: Ref, 
    account_s621: Ref)
{
  var __var_26: bool;

    gas := gas - 1360;
    call __var_26 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s621, account_s621);
    if (revert)
    {
        return;
    }

    if (!__var_26)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s621]][account_s621] := false;
}



implementation remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s621: Ref, 
    account_s621: Ref)
{
  var __var_26: bool;

    gas := gas - 1360;
    call __var_26 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s621, account_s621);
    if (revert)
    {
        return;
    }

    if (!__var_26)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    M_Ref_bool[bearer_Roles.Role[role_s621]][account_s621] := false;
}



implementation has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s645: Ref, 
    account_s645: Ref)
   returns (__ret_0_: bool)
{
  var __var_27: Ref;

    gas := gas - 6;
    gas := gas - 1366;
    __var_27 := null;
    if (!(account_s645 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 692;
    __ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s645]][account_s645];
    return;
}



implementation has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s645: Ref, 
    account_s645: Ref)
   returns (__ret_0_: bool)
{
  var __var_27: Ref;

    gas := gas - 6;
    gas := gas - 1366;
    __var_27 := null;
    if (!(account_s645 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 692;
    __ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s645]][account_s645];
    return;
}



implementation MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_28: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_28 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___minters_MinterRole[this] := __var_28;
    if (__tmp__DType[this] == Token)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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
  var __var_28: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_28 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _minters_MinterRole[this] := __var_28;
    if (DType[this] == Token)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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
  var __var_28: Ref;

    call MinterRole_MinterRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_28: Ref;

    call MinterRole_MinterRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s693: Ref)
   returns (__ret_0_: bool)
{
  var __var_30: bool;

    gas := gas - 6;
    gas := gas - 82;
    call __var_30 := has_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s693);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_30;
    return;
}



implementation isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s693: Ref)
   returns (__ret_0_: bool)
{
  var __var_30: bool;

    gas := gas - 6;
    gas := gas - 82;
    call __var_30 := has_Roles__success(this, this, 0, _minters_MinterRole[this], account_s693);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_30;
    return;
}



implementation addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s705: Ref)
{
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 14;
    if (__tmp__DType[this] == Token)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s705);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s705);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s705);
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



implementation addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s705: Ref)
{
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 14;
    if (DType[this] == Token)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s705);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s705);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s705);
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
    gas := gas - 12;
    if (__tmp__DType[this] == Token)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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
    gas := gas - 12;
    if (DType[this] == Token)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s730: Ref)
{
    gas := gas - 72;
    call add_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s730);
    if (revert)
    {
        return;
    }
}



implementation _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s730: Ref)
{
    gas := gas - 72;
    call add_Roles__success(this, this, 0, _minters_MinterRole[this], account_s730);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "MinterAdded_MinterRole"} true;
}



implementation _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s746: Ref)
{
    gas := gas - 72;
    call remove_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s746);
    if (revert)
    {
        return;
    }
}



implementation _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s746: Ref)
{
    gas := gas - 72;
    call remove_Roles__success(this, this, 0, _minters_MinterRole[this], account_s746);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "MinterRemoved_MinterRole"} true;
}



implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
    account_s770: Ref, 
    amount_s770: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s770 >= 0;
    if (__tmp__DType[this] == Token)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation mint_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s770: Ref, 
    amount_s770: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s770 >= 0;
    if (DType[this] == Token)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation Address_Address_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Address_Address_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation Address_Address__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Address_Address_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Address_Address__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Address_Address_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Token_Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Token_Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation Token_Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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

    call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, 1443047931, -1104554534, 18);
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

    call Token_Token_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Token_Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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

    call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, 1443047931, -1104554534, 18);
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

    call Token_Token_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Deployer_Deployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: int;
  var __var_34: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_32 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_32] == Token;
    call Token_Token__fail(__var_32, this, 0);
    if (revert)
    {
        return;
    }

    __var_31 := __var_32;
    __tmp__t_Deployer[this] := __var_31;
    __var_34 := ConstantToRef(291);
    if (__tmp__DType[__tmp__t_Deployer[this]] == Token)
    {
        call addMinter_MinterRole__fail(__tmp__t_Deployer[this], this, __var_33, ConstantToRef(291));
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__t_Deployer[this]] == ERC20Mintable)
    {
        call addMinter_MinterRole__fail(__tmp__t_Deployer[this], this, __var_33, ConstantToRef(291));
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__t_Deployer[this]] == MinterRole)
    {
        call addMinter_MinterRole__fail(__tmp__t_Deployer[this], this, __var_33, ConstantToRef(291));
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



implementation Deployer_Deployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: int;
  var __var_34: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_32 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_32] == Token;
    call Token_Token__success(__var_32, this, 0);
    if (revert)
    {
        return;
    }

    __var_31 := __var_32;
    t_Deployer[this] := __var_31;
    __var_34 := ConstantToRef(291);
    if (DType[t_Deployer[this]] == Token)
    {
        call addMinter_MinterRole__success(t_Deployer[this], this, __var_33, ConstantToRef(291));
        if (revert)
        {
            return;
        }
    }
    else if (DType[t_Deployer[this]] == ERC20Mintable)
    {
        call addMinter_MinterRole__success(t_Deployer[this], this, __var_33, ConstantToRef(291));
        if (revert)
        {
            return;
        }
    }
    else if (DType[t_Deployer[this]] == MinterRole)
    {
        call addMinter_MinterRole__success(t_Deployer[this], this, __var_33, ConstantToRef(291));
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



implementation Deployer_Deployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: int;
  var __var_34: Ref;

    call Deployer_Deployer_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Deployer_Deployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: int;
  var __var_34: Ref;

    call Deployer_Deployer_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == Deployer)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Token)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Mintable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MinterRole)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == IERC20)
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
    if (DType[to] == Deployer)
    {
        assume amount == 0;
    }
    else if (DType[to] == Token)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Mintable)
    {
        assume amount == 0;
    }
    else if (DType[to] == MinterRole)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (DType[to] == IERC20)
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
  var __snap___tmp__M_Ref_int__balances0: [Ref][Ref]int;
  var __snap___tmp__sum__balances0: [Ref]int;
  var __snap___tmp__M_Ref_int__allowances1: [Ref][Ref]int;
  var __snap___tmp__M_Ref_Ref__allowances1: [Ref][Ref]Ref;
  var __snap___tmp__sum__allowances1: [Ref]int;
  var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp___name_ERC20Detailed: [Ref]int;
  var __snap___tmp___symbol_ERC20Detailed: [Ref]int;
  var __snap___tmp___decimals_ERC20Detailed: [Ref]int;
  var __snap___tmp___balances_ERC20: [Ref]Ref;
  var __snap___tmp___allowances_ERC20: [Ref]Ref;
  var __snap___tmp___totalSupply_ERC20: [Ref]int;
  var __snap___tmp__bearer_Roles.Role: [Ref]Ref;
  var __snap___tmp___minters_MinterRole: [Ref]Ref;
  var __snap___tmp__t_Deployer: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int__balances0 := __tmp__M_Ref_int__balances0;
        __snap___tmp__sum__balances0 := __tmp__sum__balances0;
        __snap___tmp__M_Ref_int__allowances1 := __tmp__M_Ref_int__allowances1;
        __snap___tmp__M_Ref_Ref__allowances1 := __tmp__M_Ref_Ref__allowances1;
        __snap___tmp__sum__allowances1 := __tmp__sum__allowances1;
        __snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp___name_ERC20Detailed := __tmp___name_ERC20Detailed;
        __snap___tmp___symbol_ERC20Detailed := __tmp___symbol_ERC20Detailed;
        __snap___tmp___decimals_ERC20Detailed := __tmp___decimals_ERC20Detailed;
        __snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
        __snap___tmp___allowances_ERC20 := __tmp___allowances_ERC20;
        __snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
        __snap___tmp__bearer_Roles.Role := __tmp__bearer_Roles.Role;
        __snap___tmp___minters_MinterRole := __tmp___minters_MinterRole;
        __snap___tmp__t_Deployer := __tmp__t_Deployer;
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
        __tmp__M_Ref_int__balances0 := __snap___tmp__M_Ref_int__balances0;
        __tmp__sum__balances0 := __snap___tmp__sum__balances0;
        __tmp__M_Ref_int__allowances1 := __snap___tmp__M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := __snap___tmp__M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := __snap___tmp__sum__allowances1;
        __tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
        __tmp__sum := __snap___tmp__sum;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp___name_ERC20Detailed := __snap___tmp___name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := __snap___tmp___symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := __snap___tmp___decimals_ERC20Detailed;
        __tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
        __tmp___allowances_ERC20 := __snap___tmp___allowances_ERC20;
        __tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
        __tmp__bearer_Roles.Role := __snap___tmp__bearer_Roles.Role;
        __tmp___minters_MinterRole := __snap___tmp___minters_MinterRole;
        __tmp__t_Deployer := __snap___tmp__t_Deployer;
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
        __tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
        __tmp__sum__allowances1 := sum__allowances1;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowances_ERC20 := _allowances_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp__t_Deployer := t_Deployer;
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
  var __var_29: bool;

    gas := gas - 2682;
    if (__tmp__DType[this] == Token)
    {
        call __var_29 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_29 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call __var_29 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_29)
    {
        revert := true;
        return;
    }
}



implementation onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_29: bool;

    gas := gas - 2682;
    if (DType[this] == Token)
    {
        call __var_29 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_29 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call __var_29 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_29)
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_IERC20(this: Ref)
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
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == IERC20
       || DType[this] == ERC20Detailed
       || DType[this] == ERC20
       || DType[this] == ERC20Mintable
       || DType[this] == Token;
    gas := gas - 53000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_IERC20(this);
    }
}



implementation CorralChoice_ERC20Detailed(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s13: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s22: Ref;
  var amount_s22: int;
  var __ret_0_transfer: bool;
  var owner_s31: Ref;
  var spender_s31: Ref;
  var __ret_0_allowance: int;
  var spender_s40: Ref;
  var amount_s40: int;
  var __ret_0_approve: bool;
  var sender_s51: Ref;
  var recipient_s51: Ref;
  var amount_s51: int;
  var __ret_0_transferFrom: bool;
  var name_s98: int;
  var symbol_s98: int;
  var decimals_s98: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s13;
    havoc __ret_0_balanceOf;
    havoc recipient_s22;
    havoc amount_s22;
    havoc __ret_0_transfer;
    havoc owner_s31;
    havoc spender_s31;
    havoc __ret_0_allowance;
    havoc spender_s40;
    havoc amount_s40;
    havoc __ret_0_approve;
    havoc sender_s51;
    havoc recipient_s51;
    havoc amount_s51;
    havoc __ret_0_transferFrom;
    havoc name_s98;
    havoc symbol_s98;
    havoc decimals_s98;
    havoc __ret_0_name;
    havoc __ret_0_symbol;
    havoc __ret_0_decimals;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, account_s13);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s22, amount_s22);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s31, spender_s31);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s40, amount_s40);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s51, recipient_s51, amount_s51);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_ERC20Detailed()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var name_s98: int;
  var symbol_s98: int;
  var decimals_s98: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Detailed || DType[this] == Token;
    gas := gas - 53000;
    call ERC20Detailed_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG, name_s98, symbol_s98, decimals_s98);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Detailed(this);
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
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_SafeMath()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
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



implementation CorralChoice_ERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s211: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s230: Ref;
  var amount_s230: int;
  var __ret_0_transfer: bool;
  var owner_s246: Ref;
  var spender_s246: Ref;
  var __ret_0_allowance: int;
  var spender_s265: Ref;
  var value_s265: int;
  var __ret_0_approve: bool;
  var sender_s300: Ref;
  var recipient_s300: Ref;
  var amount_s300: int;
  var __ret_0_transferFrom: bool;
  var spender_s327: Ref;
  var addedValue_s327: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s354: Ref;
  var subtractedValue_s354: int;
  var __ret_0_decreaseAllowance: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s211;
    havoc __ret_0_balanceOf;
    havoc recipient_s230;
    havoc amount_s230;
    havoc __ret_0_transfer;
    havoc owner_s246;
    havoc spender_s246;
    havoc __ret_0_allowance;
    havoc spender_s265;
    havoc value_s265;
    havoc __ret_0_approve;
    havoc sender_s300;
    havoc recipient_s300;
    havoc amount_s300;
    havoc __ret_0_transferFrom;
    havoc spender_s327;
    havoc addedValue_s327;
    havoc __ret_0_increaseAllowance;
    havoc spender_s354;
    havoc subtractedValue_s354;
    havoc __ret_0_decreaseAllowance;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s211);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s230, amount_s230);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s246, spender_s246);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s265, value_s265);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s327, addedValue_s327);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s354, subtractedValue_s354);
    }
}



implementation CorralEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20 || DType[this] == ERC20Mintable || DType[this] == Token;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_Roles(this: Ref)
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
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_Roles()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Roles;
    gas := gas - 53000;
    call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Roles(this);
    }
}



implementation CorralChoice_MinterRole(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s693: Ref;
  var __ret_0_isMinter: bool;
  var account_s705: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc account_s693;
    havoc __ret_0_isMinter;
    havoc account_s705;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s693);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s705);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_MinterRole()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MinterRole
       || DType[this] == ERC20Mintable
       || DType[this] == Token;
    gas := gas - 53000;
    call MinterRole_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MinterRole(this);
    }
}



implementation CorralChoice_ERC20Mintable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s211: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s230: Ref;
  var amount_s230: int;
  var __ret_0_transfer: bool;
  var owner_s246: Ref;
  var spender_s246: Ref;
  var __ret_0_allowance: int;
  var spender_s265: Ref;
  var value_s265: int;
  var __ret_0_approve: bool;
  var sender_s300: Ref;
  var recipient_s300: Ref;
  var amount_s300: int;
  var __ret_0_transferFrom: bool;
  var spender_s327: Ref;
  var addedValue_s327: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s354: Ref;
  var subtractedValue_s354: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s693: Ref;
  var __ret_0_isMinter: bool;
  var account_s705: Ref;
  var account_s770: Ref;
  var amount_s770: int;
  var __ret_0_mint: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s211;
    havoc __ret_0_balanceOf;
    havoc recipient_s230;
    havoc amount_s230;
    havoc __ret_0_transfer;
    havoc owner_s246;
    havoc spender_s246;
    havoc __ret_0_allowance;
    havoc spender_s265;
    havoc value_s265;
    havoc __ret_0_approve;
    havoc sender_s300;
    havoc recipient_s300;
    havoc amount_s300;
    havoc __ret_0_transferFrom;
    havoc spender_s327;
    havoc addedValue_s327;
    havoc __ret_0_increaseAllowance;
    havoc spender_s354;
    havoc subtractedValue_s354;
    havoc __ret_0_decreaseAllowance;
    havoc account_s693;
    havoc __ret_0_isMinter;
    havoc account_s705;
    havoc account_s770;
    havoc amount_s770;
    havoc __ret_0_mint;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s211);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s230, amount_s230);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s246, spender_s246);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s265, value_s265);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s327, addedValue_s327);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s354, subtractedValue_s354);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s693);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s705);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
    }
}



implementation CorralEntry_ERC20Mintable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Mintable || DType[this] == Token;
    gas := gas - 53000;
    call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Mintable(this);
    }
}



implementation CorralChoice_Address(this: Ref)
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
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_Address()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Address;
    gas := gas - 53000;
    call Address_Address__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Address(this);
    }
}



implementation CorralChoice_Token(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var account_s211: Ref;
  var __ret_0_balanceOf: int;
  var recipient_s230: Ref;
  var amount_s230: int;
  var __ret_0_transfer: bool;
  var owner_s246: Ref;
  var spender_s246: Ref;
  var __ret_0_allowance: int;
  var spender_s265: Ref;
  var value_s265: int;
  var __ret_0_approve: bool;
  var sender_s300: Ref;
  var recipient_s300: Ref;
  var amount_s300: int;
  var __ret_0_transferFrom: bool;
  var name_s98: int;
  var symbol_s98: int;
  var decimals_s98: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;
  var spender_s327: Ref;
  var addedValue_s327: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s354: Ref;
  var subtractedValue_s354: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s693: Ref;
  var __ret_0_isMinter: bool;
  var account_s705: Ref;
  var account_s770: Ref;
  var amount_s770: int;
  var __ret_0_mint: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc account_s211;
    havoc __ret_0_balanceOf;
    havoc recipient_s230;
    havoc amount_s230;
    havoc __ret_0_transfer;
    havoc owner_s246;
    havoc spender_s246;
    havoc __ret_0_allowance;
    havoc spender_s265;
    havoc value_s265;
    havoc __ret_0_approve;
    havoc sender_s300;
    havoc recipient_s300;
    havoc amount_s300;
    havoc __ret_0_transferFrom;
    havoc name_s98;
    havoc symbol_s98;
    havoc decimals_s98;
    havoc __ret_0_name;
    havoc __ret_0_symbol;
    havoc __ret_0_decimals;
    havoc spender_s327;
    havoc addedValue_s327;
    havoc __ret_0_increaseAllowance;
    havoc spender_s354;
    havoc subtractedValue_s354;
    havoc __ret_0_decreaseAllowance;
    havoc account_s693;
    havoc __ret_0_isMinter;
    havoc account_s705;
    havoc account_s770;
    havoc amount_s770;
    havoc __ret_0_mint;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s211);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s230, amount_s230);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s246, spender_s246);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s265, value_s265);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s300, recipient_s300, amount_s300);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s327, addedValue_s327);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s354, subtractedValue_s354);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s693);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s705);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, account_s770, amount_s770);
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
    assume DType[this] == Token;
    gas := gas - 53000;
    call Token_Token(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Token(this);
    }
}



implementation CorralChoice_Deployer(this: Ref)
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
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != Address;
    assume DType[msgsender_MSG] != Token;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_Deployer()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Deployer;
    gas := gas - 53000;
    call Deployer_Deployer(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Deployer(this);
    }
}


