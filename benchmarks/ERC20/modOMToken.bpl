// *verified 15*
// LTLProperty: [](started(ERC20.totalSupply) ==> <>(finished(ERC20.totalSupply, __ret_0_ == this._totalSupply && this._totalSupply == old(this._totalSupply) && this._balances == old(this._balances) && this._allowed == old(this._allowed))))

// *verified 12*
// LTLProperty: [](started(ERC20.balanceOf) ==> <>(finished(ERC20.balanceOf(owner), __ret_0_ == this._balances[owner] && this._totalSupply == old(this._totalSupply) && this._balances == old(this._balances) && this._allowed == old(this._allowed))))

// *verified 15*
// LTLProperty: [](started(ERC20.allowance) ==> <>(finished(ERC20.allowance(owner, spender), __ret_0_ == this._allowed[owner][spender] && this._totalSupply == old(this._totalSupply) && this._balances == old(this._balances) && this._allowed == old(this._allowed))))

// *doesn't account for pausing, adding [&& this._paused == false] is verified 25*
// To be consistent with KEVM remove the spender != null
// LTLVariables: p1:Ref,p2:Ref
// LTLProperty: [](started(ERC20Pausable.approve(spender, value), spender != null && (p1 != msg.sender || p2 != spender)) ==> <>(finished(ERC20Pausable.approve(spender, value), __ret_0_ == true && this._allowed[msg.sender][spender] == value && this._totalSupply == old(this._totalSupply) && this._balances == old(this._balances) && this._allowed[p1][p2] == old(this._allowed[p1][p2]))))

// *doesn't account for pausing, adding [&& this._paused == false] is verified 61*
// To be consistent with KEVM remove the to != null
// LTLVariables: p1:Ref
// LTLProperty: [](started(ERC20Pausable.transfer(to, value), to != null && p1 != msg.sender && p1 != to && msg.sender != to && value <= this._balances[msg.sender] && this._balances[to] + value < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._balances[msg.sender] >= 0 && this._balances[msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._balances[to] >= 0 && this._balances[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._paused == false) ==> <>(finished(ERC20Pausable.transfer(to, value), this._balances[msg.sender] == old(this._balances[msg.sender]) - value && this._balances[to] == old(this._balances[to]) + value && this._totalSupply == old(this._totalSupply) && this._allowed == old(this._allowed) && this._balances[p1] == old(this._balances[p1]))))

// *doesn't account for pausing, adding [&& this._paused == false] is nonterminating*
// #LTLProperty: [](started(ERC20Pausable.transfer(to, value), to != null && msg.sender == to && value <= this._balances[msg.sender] && this._balances[msg.sender] >= 0 && this._balances[msg.sender] < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._paused == false) ==> <>(finished(ERC20Pausable.transfer(to, value), this._totalSupply == old(this._totalSupply)  && this._balances == old(this._balances) && this._allowed == old(this._allowed))))

// *verified 17*
// LTLProperty: [](started(ERC20Pausable.transfer(to, value), msg.sender != to && (value > this._balances[msg.sender] || this._balances[to] + value >= 0x10000000000000000000000000000000000000000000000000000000000000000)) ==> <>(reverted(ERC20Pausable.transfer)))

// *verified 16*
// LTLProperty: [](started(ERC20Pausable.transfer(to, value), msg.sender == to && value > this._balances[msg.sender]) ==> <>(reverted(ERC20Pausable.transfer)))

// *verified 16 -- a little sus*
// Should try to find another way of specifying this because SmartPulse runs out of memory
// LTLVariables: p1:Ref,p2:Ref,p3:Ref
// LTLProperty: [](started(ERC20Pausable.transferFrom(from, to, value), from != null && to != null && p1 != from && p1 != to && (p2 != from || p3 != msg.sender) && from != to && value <= this._balances[from] && value <= this._allowed[from][msg.sender] && this._balances[to] + value < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._balances[from] >= 0 && this._balances[from] < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._balances[to] >= 0 && this._balances[to] < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._paused == false) ==> <>(finished(ERC20Pausable.transferFrom(from, to, value), this._balances[from] == old(this._balances[from]) - value && this._balances[to] == old(this._balances[to]) + value && this._allowed[from][msg.sender] == old(this._allowed[from][msg.sender]) - value && this._totalSupply == old(this._totalSupply) && this._balances[p1] == old(this._balances[p1]) && this._allowed[p2][p3] == old(this._allowed[p2][p3]))))

// *nonterminating*
// LTLVariables: p1:Ref,p2:Ref
// LTLProperty: [](started(ERC20Pausable.transferFrom(from, to, value), from != null && (p1 != from || p2 != msg.sender) && from == to && value <= this._balances[from] && value <= this._allowed[from][msg.sender] && this._balances[from] >= 0 && this._balances[from] < 0x10000000000000000000000000000000000000000000000000000000000000000 && this._paused == false) ==> <>(finished(ERC20Pausable.transferFrom(from, to, value), this._allowed[from][msg.sender] == old(this._allowed[from][msg.sender]) - value && this._totalSupply == old(this._totalSupply) && this._balances == old(this._balances) && this._allowed[p1][p2] == old(this._allowed[p1][p2]))))

// *verified 30*
// LTLProperty: [](started(ERC20Pausable.transferFrom(from, to, value), from != to && (value > this._balances[from] || value > this._allowed[from][msg.sender] || this._balances[to] + value >= 0x10000000000000000000000000000000000000000000000000000000000000000)) ==> <>(reverted(ERC20Pausable.transferFrom)))

// *verified 28*
// LTLProperty: [](started(ERC20Pausable.transferFrom(from, to, value), from == to && (value > this._balances[from] || value > this._allowed[from][msg.sender])) ==> <>(reverted(ERC20Pausable.transferFrom)))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique IERC20: ContractName;
const unique SafeMath: ContractName;
const unique ERC20: ContractName;
const unique Roles: ContractName;
const unique Roles.Role: ContractName;
const unique PauserRole: ContractName;
const unique Pausable: ContractName;
const unique ERC20Pausable: ContractName;
const unique ERC20Detailed: ContractName;
const unique MinterRole: ContractName;
const unique ERC20Mintable: ContractName;
const unique ERC20Burnable: ContractName;
const unique OMToken: ContractName;
function {:smtdefined "x"} ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefintArr() returns (ret: [Ref]int);
function {:smtdefined "((as const (Array Int (Array Int Int))) ((as const (Array Int Int)) 0))"} zeroRefRefintArr() returns (ret: [Ref][Ref]int);
function nonlinearMul(x: int, y: int) returns (ret: int);
function nonlinearDiv(x: int, y: int) returns (ret: int);
function nonlinearPow(x: int, y: int) returns (ret: int);
function nonlinearMod(x: int, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var sum__balances0: [Ref]int;
var M_Ref_Ref: [Ref][Ref]Ref;
var sum__allowed1: [Ref]int;
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
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
implementation IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s10: Ref, value_s10: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s19: Ref, value_s19: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s30: Ref, to_s30: Ref, value_s30: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s42: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s51: Ref, spender_s51: Ref) returns (__ret_0_: int);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s101: int, b_s101: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s125: int, b_s125: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s149: int, b_s149: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s193: int, b_s193: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this._balances[i1]=_balances_ERC20[this][i1]"} {:sum "sum(this._balances)=sum__balances0[this]"} _balances_ERC20: [Ref][Ref]int;
var {:access "this._allowed[i1][i2]=_allowed_ERC20[this][i1][i2]"} {:sum "sum(this._allowed)=sum__allowed1[this]"} _allowed_ERC20: [Ref][Ref][Ref]int;
var {:access "this._totalSupply=_totalSupply_ERC20[this]"} _totalSupply_ERC20: [Ref]int;
procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s231: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s231: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s231);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s231);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s247: Ref, spender_s247: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s247: Ref, spender_s247: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s247, spender_s247);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s247, spender_s247);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s266: Ref, value_s266: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__balances0;
modifies _balances_ERC20;
implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s266: Ref, value_s266: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s266, value_s266);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s266, value_s266);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s302: Ref, value_s302: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
implementation approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s302: Ref, value_s302: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s302, value_s302);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s302, value_s302);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s351: Ref, to_s351: Ref, value_s351: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
implementation transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s351: Ref, to_s351: Ref, value_s351: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s400: Ref, addedValue_s400: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
implementation increaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s400: Ref, addedValue_s400: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s400, addedValue_s400);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s400, addedValue_s400);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s449: Ref, subtractedValue_s449: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
implementation decreaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s449: Ref, subtractedValue_s449: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s449, subtractedValue_s449);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s449, subtractedValue_s449);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s495: Ref, to_s495: Ref, value_s495: int);
modifies revert;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} _mint_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s537: Ref, value_s537: int);
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} _burn_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s579: Ref, value_s579: int);
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref, value_s621: int);
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
implementation Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call Roles_Roles__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var bearer_Roles.Role: [Ref]Ref;
procedure {:inline 1} add_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s659: Ref, account_s659: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} remove_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s690: Ref, account_s690: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} has_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s713: Ref, account_s713: Ref) returns (__ret_0_: bool);
modifies revert;
var {:access "this._pausers=_pausers_PauserRole[this]"} _pausers_PauserRole: [Ref]Ref;
procedure {:inline 1} PauserRole_PauserRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _pausers_PauserRole;
modifies Alloc;
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:public} {:inline 1} PauserRole_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _pausers_PauserRole;
modifies Alloc;
modifies M_Ref_bool;
implementation PauserRole_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} isPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s760: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation isPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s760: Ref) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s760);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s760);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} addPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s772: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
implementation addPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s772: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s772);
assume ((revert) || ((gas) < (0)));
} else {
call addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s772);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} renouncePauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
implementation renouncePauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call renouncePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call renouncePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s797: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} _removePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s813: Ref);
modifies revert;
modifies M_Ref_bool;
var {:access "this._paused=_paused_Pausable[this]"} _paused_Pausable: [Ref]bool;
procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _paused_Pausable;
procedure {:constructor} {:public} {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _pausers_PauserRole;
modifies Alloc;
modifies _paused_Pausable;
modifies M_Ref_bool;
implementation Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} paused_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation paused_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := paused_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := paused_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies _paused_Pausable;
implementation pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call pause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call pause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies _paused_Pausable;
implementation unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call unpause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call unpause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} ERC20Pausable_ERC20Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20Pausable_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _pausers_PauserRole;
modifies Alloc;
modifies _paused_Pausable;
modifies M_Ref_bool;
implementation ERC20Pausable_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call ERC20Pausable_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20Pausable_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s916: Ref, value_s916: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__balances0;
modifies _balances_ERC20;
implementation transfer_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s916: Ref, value_s916: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := transfer_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferFrom_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s937: Ref, to_s937: Ref, value_s937: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
implementation transferFrom_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s937: Ref, to_s937: Ref, value_s937: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := transferFrom_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s955: Ref, value_s955: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
implementation approve_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s955: Ref, value_s955: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := approve_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} increaseAllowance_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s973: Ref, addedValue_s973: int) returns (success_s973: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
implementation increaseAllowance_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s973: Ref, addedValue_s973: int) returns (success_s973: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call success_s973 := increaseAllowance_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
assume ((revert) || ((gas) < (0)));
} else {
call success_s973 := increaseAllowance_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decreaseAllowance_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s991: Ref, subtractedValue_s991: int) returns (success_s991: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
implementation decreaseAllowance_ERC20Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s991: Ref, subtractedValue_s991: int) returns (success_s991: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call success_s991 := decreaseAllowance_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
assume ((revert) || ((gas) < (0)));
} else {
call success_s991 := decreaseAllowance_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this._name=_name_ERC20Detailed[this]"} _name_ERC20Detailed: [Ref]int;
var {:access "this._symbol=_symbol_ERC20Detailed[this]"} _symbol_ERC20Detailed: [Ref]int;
var {:access "this._decimals=_decimals_ERC20Detailed[this]"} _decimals_ERC20Detailed: [Ref]int;
procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int);
modifies Balance;
modifies _name_ERC20Detailed;
modifies _symbol_ERC20Detailed;
modifies _decimals_ERC20Detailed;
procedure {:constructor} {:public} {:inline 1} ERC20Detailed_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _name_ERC20Detailed;
modifies _symbol_ERC20Detailed;
modifies _decimals_ERC20Detailed;
implementation ERC20Detailed_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, name_s1022, symbol_s1022, decimals_s1022);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, name_s1022, symbol_s1022, decimals_s1022);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := name_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := name_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} symbol_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation symbol_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := symbol_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := symbol_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decimals_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation decimals_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := decimals_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decimals_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this._minters=_minters_MinterRole[this]"} _minters_MinterRole: [Ref]Ref;
procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _minters_MinterRole;
modifies Alloc;
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:public} {:inline 1} MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _minters_MinterRole;
modifies Alloc;
modifies M_Ref_bool;
implementation MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1093: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
implementation isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1093: Ref) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1093);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1093);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1105: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
implementation addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1105: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1105);
assume ((revert) || ((gas) < (0)));
} else {
call addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1105);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
implementation renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call renounceMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call renounceMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1130: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1146: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _minters_MinterRole;
modifies Alloc;
modifies M_Ref_bool;
implementation ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call ERC20Mintable_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} mint_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s1170: Ref, value_s1170: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
implementation mint_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s1170: Ref, value_s1170: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call __ret_0_ := mint_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := mint_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20Burnable_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
implementation ERC20Burnable_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call ERC20Burnable_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} burn_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s1185: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
implementation burn_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s1185: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call burn_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG, value_s1185);
assume ((revert) || ((gas) < (0)));
} else {
call burn_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG, value_s1185);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} burnFrom_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s1198: Ref, value_s1198: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
implementation burnFrom_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s1198: Ref, value_s1198: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call burnFrom_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
assume ((revert) || ((gas) < (0)));
} else {
call burnFrom_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} OMToken_OMToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int);
modifies Balance;
procedure {:constructor} {:public} {:inline 1} OMToken_OMToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _pausers_PauserRole;
modifies Alloc;
modifies _paused_Pausable;
modifies _name_ERC20Detailed;
modifies _symbol_ERC20Detailed;
modifies _decimals_ERC20Detailed;
modifies _minters_MinterRole;
modifies M_Ref_bool;
implementation OMToken_OMToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
call OMToken_OMToken__fail(this, msgsender_MSG, msgvalue_MSG, name_s1230, symbol_s1230, decimals_s1230);
assume ((revert) || ((gas) < (0)));
} else {
call OMToken_OMToken__success(this, msgsender_MSG, msgvalue_MSG, name_s1230, symbol_s1230, decimals_s1230);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum__balances0;
modifies _balances_ERC20;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies _paused_Pausable;
modifies _totalSupply_ERC20;
modifies M_Ref_bool;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum__balances0;
modifies _balances_ERC20;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies _paused_Pausable;
modifies _totalSupply_ERC20;
modifies M_Ref_bool;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies revert;
modifies gas;
modifies Balance;
modifies sum__balances0;
modifies _balances_ERC20;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies _paused_Pausable;
modifies _totalSupply_ERC20;
modifies M_Ref_bool;
procedure {:inline 1} onlyPauser_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure CorralChoice_IERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_IERC20();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_SafeMath();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_ERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure CorralEntry_ERC20();
modifies gas;
modifies Alloc;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
procedure CorralChoice_Roles(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_Roles();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_PauserRole(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
procedure CorralEntry_PauserRole();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies now;
modifies Balance;
modifies _pausers_PauserRole;
modifies M_Ref_bool;
procedure CorralChoice_Pausable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies _paused_Pausable;
modifies M_Ref_bool;
procedure CorralEntry_Pausable();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies now;
modifies _paused_Pausable;
modifies Balance;
modifies _pausers_PauserRole;
modifies M_Ref_bool;
procedure CorralChoice_ERC20Pausable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies _paused_Pausable;
modifies sum__balances0;
modifies _balances_ERC20;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies M_Ref_bool;
procedure CorralEntry_ERC20Pausable();
modifies gas;
modifies Alloc;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _pausers_PauserRole;
modifies _paused_Pausable;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
procedure CorralChoice_ERC20Detailed(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
procedure CorralEntry_ERC20Detailed();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies now;
modifies Balance;
modifies _name_ERC20Detailed;
modifies _symbol_ERC20Detailed;
modifies _decimals_ERC20Detailed;
procedure CorralChoice_MinterRole(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
procedure CorralEntry_MinterRole();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies now;
modifies Balance;
modifies _minters_MinterRole;
modifies M_Ref_bool;
procedure CorralChoice_ERC20Mintable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
modifies _totalSupply_ERC20;
modifies M_Ref_bool;
procedure CorralEntry_ERC20Mintable();
modifies gas;
modifies Alloc;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _minters_MinterRole;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies M_Ref_bool;
procedure CorralChoice_ERC20Burnable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
modifies _totalSupply_ERC20;
procedure CorralEntry_ERC20Burnable();
modifies gas;
modifies Alloc;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
procedure CorralChoice_OMToken(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies _paused_Pausable;
modifies sum__balances0;
modifies _balances_ERC20;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies _totalSupply_ERC20;
modifies M_Ref_bool;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies now;
modifies _paused_Pausable;
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _pausers_PauserRole;
modifies _name_ERC20Detailed;
modifies _symbol_ERC20Detailed;
modifies _decimals_ERC20Detailed;
modifies _minters_MinterRole;
modifies M_Ref_bool;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__sum__balances0: [Ref]int;
var __tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __tmp__sum__allowed1: [Ref]int;
var __tmp__M_Ref_bool: [Ref][Ref]bool;
var __tmp__sum: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp___balances_ERC20: [Ref][Ref]int;
var __tmp___allowed_ERC20: [Ref][Ref][Ref]int;
var __tmp___totalSupply_ERC20: [Ref]int;
var __tmp__bearer_Roles.Role: [Ref]Ref;
var __tmp___pausers_PauserRole: [Ref]Ref;
var __tmp___paused_Pausable: [Ref]bool;
var __tmp___name_ERC20Detailed: [Ref]int;
var __tmp___symbol_ERC20Detailed: [Ref]int;
var __tmp___decimals_ERC20Detailed: [Ref]int;
var __tmp___minters_MinterRole: [Ref]Ref;
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
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s101: int, b_s101: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s125: int, b_s125: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s149: int, b_s149: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s193: int, b_s193: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___allowed_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___totalSupply_ERC20;
procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___allowed_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___totalSupply_ERC20;
procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s231: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s231: Ref) returns (__ret_0_: int);
procedure {:inline 1} allowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s247: Ref, spender_s247: Ref) returns (__ret_0_: int);
procedure {:inline 1} allowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s247: Ref, spender_s247: Ref) returns (__ret_0_: int);
procedure {:inline 1} transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s266: Ref, value_s266: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s266: Ref, value_s266: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s302: Ref, value_s302: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__allowed1;
modifies _allowed_ERC20;
procedure {:inline 1} approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s302: Ref, value_s302: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
procedure {:inline 1} transferFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s351: Ref, to_s351: Ref, value_s351: int) returns (__ret_0_: bool);
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies revert;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s351: Ref, to_s351: Ref, value_s351: int) returns (__ret_0_: bool);
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s400: Ref, addedValue_s400: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__allowed1;
modifies _allowed_ERC20;
procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s400: Ref, addedValue_s400: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s449: Ref, subtractedValue_s449: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__allowed1;
modifies _allowed_ERC20;
procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s449: Ref, subtractedValue_s449: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
procedure {:inline 1} _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s495: Ref, to_s495: Ref, value_s495: int);
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} _mint_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s537: Ref, value_s537: int);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} _burn_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s579: Ref, value_s579: int);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref, value_s621: int);
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} add_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s659: Ref, account_s659: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} remove_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s690: Ref, account_s690: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} has_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s713: Ref, account_s713: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} PauserRole_PauserRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___pausers_PauserRole;
modifies __tmp__Alloc;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:constructor} {:inline 1} PauserRole_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _pausers_PauserRole;
modifies Alloc;
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:inline 1} PauserRole_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___pausers_PauserRole;
modifies __tmp__Alloc;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} isPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s760: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} isPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s760: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s772: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s772: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} renouncePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} renouncePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s797: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _removePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s813: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___paused_Pausable;
procedure {:constructor} {:inline 1} Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _pausers_PauserRole;
modifies Alloc;
modifies _paused_Pausable;
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:inline 1} Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___pausers_PauserRole;
modifies __tmp__Alloc;
modifies __tmp___paused_Pausable;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} paused_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} paused_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _paused_Pausable;
modifies revert;
procedure {:inline 1} pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___paused_Pausable;
modifies revert;
procedure {:inline 1} unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _paused_Pausable;
modifies revert;
procedure {:inline 1} unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___paused_Pausable;
modifies revert;
procedure {:inline 1} ERC20Pausable_ERC20Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ERC20Pausable_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _pausers_PauserRole;
modifies Alloc;
modifies _paused_Pausable;
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} ERC20Pausable_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___allowed_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___totalSupply_ERC20;
modifies __tmp___pausers_PauserRole;
modifies __tmp__Alloc;
modifies __tmp___paused_Pausable;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} transfer_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s916: Ref, value_s916: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} transfer_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s916: Ref, value_s916: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} transferFrom_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s937: Ref, to_s937: Ref, value_s937: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} transferFrom_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s937: Ref, to_s937: Ref, value_s937: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} approve_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s955: Ref, value_s955: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__allowed1;
modifies _allowed_ERC20;
procedure {:inline 1} approve_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s955: Ref, value_s955: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
procedure {:inline 1} increaseAllowance_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s973: Ref, addedValue_s973: int) returns (success_s973: bool);
modifies revert;
modifies sum__allowed1;
modifies _allowed_ERC20;
procedure {:inline 1} increaseAllowance_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s973: Ref, addedValue_s973: int) returns (success_s973: bool);
modifies revert;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
procedure {:inline 1} decreaseAllowance_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s991: Ref, subtractedValue_s991: int) returns (success_s991: bool);
modifies revert;
modifies sum__allowed1;
modifies _allowed_ERC20;
procedure {:inline 1} decreaseAllowance_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s991: Ref, subtractedValue_s991: int) returns (success_s991: bool);
modifies revert;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int);
modifies __tmp__Balance;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int);
modifies Balance;
modifies _name_ERC20Detailed;
modifies _symbol_ERC20Detailed;
modifies _decimals_ERC20Detailed;
procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int);
modifies __tmp__Balance;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
procedure {:inline 1} name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___minters_MinterRole;
modifies __tmp__Alloc;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:constructor} {:inline 1} MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _minters_MinterRole;
modifies Alloc;
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:inline 1} MinterRole_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___minters_MinterRole;
modifies __tmp__Alloc;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1093: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1093: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1105: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1105: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1130: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1146: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _minters_MinterRole;
modifies Alloc;
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___allowed_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___totalSupply_ERC20;
modifies __tmp___minters_MinterRole;
modifies __tmp__Alloc;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} mint_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s1170: Ref, value_s1170: int) returns (__ret_0_: bool);
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} mint_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s1170: Ref, value_s1170: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ERC20Burnable_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
procedure {:inline 1} ERC20Burnable_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___allowed_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___totalSupply_ERC20;
procedure {:inline 1} burn_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s1185: int);
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} burn_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s1185: int);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} burnFrom_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s1198: Ref, value_s1198: int);
modifies sum__allowed1;
modifies _allowed_ERC20;
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies _balances_ERC20;
procedure {:inline 1} burnFrom_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s1198: Ref, value_s1198: int);
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
procedure {:inline 1} OMToken_OMToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int);
modifies __tmp__Balance;
procedure {:constructor} {:inline 1} OMToken_OMToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int);
modifies Balance;
modifies _balances_ERC20;
modifies sum__balances0;
modifies _allowed_ERC20;
modifies sum__allowed1;
modifies _totalSupply_ERC20;
modifies _pausers_PauserRole;
modifies Alloc;
modifies _paused_Pausable;
modifies _name_ERC20Detailed;
modifies _symbol_ERC20Detailed;
modifies _decimals_ERC20Detailed;
modifies _minters_MinterRole;
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:inline 1} OMToken_OMToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp___allowed_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___totalSupply_ERC20;
modifies __tmp___pausers_PauserRole;
modifies __tmp__Alloc;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
modifies __tmp___paused_Pausable;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum__balances0;
modifies __tmp___balances_ERC20;
modifies __tmp__sum__allowed1;
modifies __tmp___allowed_ERC20;
modifies __tmp___paused_Pausable;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum__allowed1;
modifies __tmp__M_Ref_bool;
modifies __tmp__sum;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowed_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___pausers_PauserRole;
modifies __tmp___paused_Pausable;
modifies __tmp___name_ERC20Detailed;
modifies __tmp___symbol_ERC20Detailed;
modifies __tmp___decimals_ERC20Detailed;
modifies __tmp___minters_MinterRole;
modifies revert;
modifies gas;
procedure {:inline 1} onlyPauser_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
havoc newRef;
assume ((__tmp__Alloc[newRef]) == (false));
__tmp__Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation FreshRefGenerator__success() returns (newRef: Ref)
{
havoc newRef;
assume ((Alloc[newRef]) == (false));
Alloc[newRef] := true;
assume ((newRef) != (null));
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
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeMath_SafeMath_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeMath_SafeMath_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s101: int, b_s101: int) returns (__ret_0_: int)
{
var c_s100: int;
if ((a_s101) == (0)) {
__ret_0_ := 0;
return;
}
c_s100 := (nonlinearMul(a_s101, b_s101)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
if (!(((nonlinearDiv(c_s100, a_s101)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936)) == (b_s101))) {
revert := true;
return;
}
__ret_0_ := c_s100;
return;
}

implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s101: int, b_s101: int) returns (__ret_0_: int)
{
var c_s100: int;
if ((a_s101) == (0)) {
__ret_0_ := 0;
return;
}
c_s100 := (nonlinearMul(a_s101, b_s101)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
if (!(((nonlinearDiv(c_s100, a_s101)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936)) == (b_s101))) {
revert := true;
return;
}
__ret_0_ := c_s100;
return;
}

implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s125: int, b_s125: int) returns (__ret_0_: int)
{
var c_s124: int;
if (!((b_s125) > (0))) {
revert := true;
return;
}
c_s124 := (nonlinearDiv(a_s125, b_s125)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
__ret_0_ := c_s124;
return;
}

implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s125: int, b_s125: int) returns (__ret_0_: int)
{
var c_s124: int;
if (!((b_s125) > (0))) {
revert := true;
return;
}
c_s124 := (nonlinearDiv(a_s125, b_s125)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
__ret_0_ := c_s124;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s149: int, b_s149: int) returns (__ret_0_: int)
{
var c_s148: int;
if (!((b_s149) <= (a_s149))) {
revert := true;
return;
}
c_s148 := ((a_s149) - (b_s149)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
__ret_0_ := c_s148;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s149: int, b_s149: int) returns (__ret_0_: int)
{
var c_s148: int;
if (!((b_s149) <= (a_s149))) {
revert := true;
return;
}
c_s148 := ((a_s149) - (b_s149)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
__ret_0_ := c_s148;
return;
}

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int) returns (__ret_0_: int)
{
var c_s172: int;
c_s172 := ((a_s173) + (b_s173)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
if (!((c_s172) >= (a_s173))) {
revert := true;
return;
}
__ret_0_ := c_s172;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s173: int, b_s173: int) returns (__ret_0_: int)
{
var c_s172: int;
c_s172 := ((a_s173) + (b_s173)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
if (!((c_s172) >= (a_s173))) {
revert := true;
return;
}
__ret_0_ := c_s172;
return;
}

implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s193: int, b_s193: int) returns (__ret_0_: int)
{
if (!((b_s193) != (0))) {
revert := true;
return;
}
__ret_0_ := (nonlinearMod(a_s193, b_s193)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
return;
}

implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s193: int, b_s193: int) returns (__ret_0_: int)
{
if (!((b_s193) != (0))) {
revert := true;
return;
}
__ret_0_ := (nonlinearMod(a_s193, b_s193)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
return;
}

implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___balances_ERC20[this] := zeroRefintArr();
__tmp__sum__balances0[this] := 0;
__tmp___allowed_ERC20[this] := zeroRefRefintArr();
__tmp__sum__allowed1[this] := 0;
__tmp___totalSupply_ERC20[this] := 0;
// end of initialization
}

implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_balances_ERC20[this] := zeroRefintArr();
sum__balances0[this] := 0;
_allowed_ERC20[this] := zeroRefRefintArr();
sum__allowed1[this] := 0;
_totalSupply_ERC20[this] := 0;
// end of initialization
}

implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
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

implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s231: Ref) returns (__ret_0_: int)
{
__ret_0_ := __tmp___balances_ERC20[this][owner_s231];
return;
}

implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s231: Ref) returns (__ret_0_: int)
{
__ret_0_ := _balances_ERC20[this][owner_s231];
return;
}

implementation allowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s247: Ref, spender_s247: Ref) returns (__ret_0_: int)
{
__ret_0_ := __tmp___allowed_ERC20[this][owner_s247][spender_s247];
return;
}

implementation allowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s247: Ref, spender_s247: Ref) returns (__ret_0_: int)
{
__ret_0_ := _allowed_ERC20[this][owner_s247][spender_s247];
return;
}

implementation transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s266: Ref, value_s266: int) returns (__ret_0_: bool)
{
if ((__tmp__DType[this]) == (OMToken)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Burnable)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s266: Ref, value_s266: int) returns (__ret_0_: bool)
{
if ((DType[this]) == (OMToken)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Burnable)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s266, value_s266);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s302: Ref, value_s302: int) returns (__ret_0_: bool)
{
var __var_1: Ref;
__var_1 := null;
if (!((spender_s302) != (null))) {
revert := true;
return;
}
__tmp__sum__allowed1[msgsender_MSG] := (__tmp__sum__allowed1[msgsender_MSG]) - (__tmp___allowed_ERC20[this][msgsender_MSG][spender_s302]);
__tmp___allowed_ERC20[this][msgsender_MSG][spender_s302] := value_s302;
__tmp__sum__allowed1[msgsender_MSG] := (__tmp__sum__allowed1[msgsender_MSG]) + (__tmp___allowed_ERC20[this][msgsender_MSG][spender_s302]);
__ret_0_ := true;
return;
}

implementation approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s302: Ref, value_s302: int) returns (__ret_0_: bool)
{
var __var_1: Ref;
__var_1 := null;
if (!((spender_s302) != (null))) {
revert := true;
return;
}
sum__allowed1[msgsender_MSG] := (sum__allowed1[msgsender_MSG]) - (_allowed_ERC20[this][msgsender_MSG][spender_s302]);
_allowed_ERC20[this][msgsender_MSG][spender_s302] := value_s302;
sum__allowed1[msgsender_MSG] := (sum__allowed1[msgsender_MSG]) + (_allowed_ERC20[this][msgsender_MSG][spender_s302]);
assert {:EventEmitted "Approval_ERC20"} (true);
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s351: Ref, to_s351: Ref, value_s351: int) returns (__ret_0_: bool)
{
var __var_2: int;
call __var_2 := sub_SafeMath__fail(this, this, 0, __tmp___allowed_ERC20[this][from_s351][msgsender_MSG], value_s351);
if (revert) {
return;
}
__tmp__sum__allowed1[from_s351] := (__tmp__sum__allowed1[from_s351]) - (__tmp___allowed_ERC20[this][from_s351][msgsender_MSG]);
__tmp___allowed_ERC20[this][from_s351][msgsender_MSG] := __var_2;
__tmp__sum__allowed1[from_s351] := (__tmp__sum__allowed1[from_s351]) + (__tmp___allowed_ERC20[this][from_s351][msgsender_MSG]);
if ((__tmp__DType[this]) == (OMToken)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Burnable)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20)) {
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s351: Ref, to_s351: Ref, value_s351: int) returns (__ret_0_: bool)
{
var __var_2: int;
call __var_2 := sub_SafeMath__success(this, this, 0, _allowed_ERC20[this][from_s351][msgsender_MSG], value_s351);
if (revert) {
return;
}
sum__allowed1[from_s351] := (sum__allowed1[from_s351]) - (_allowed_ERC20[this][from_s351][msgsender_MSG]);
_allowed_ERC20[this][from_s351][msgsender_MSG] := __var_2;
sum__allowed1[from_s351] := (sum__allowed1[from_s351]) + (_allowed_ERC20[this][from_s351][msgsender_MSG]);
if ((DType[this]) == (OMToken)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Burnable)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20)) {
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "Approval_ERC20"} (true);
__ret_0_ := true;
return;
}

implementation increaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s400: Ref, addedValue_s400: int) returns (__ret_0_: bool)
{
var __var_3: Ref;
var __var_4: int;
__var_3 := null;
if (!((spender_s400) != (null))) {
revert := true;
return;
}
call __var_4 := add_SafeMath__fail(this, this, 0, __tmp___allowed_ERC20[this][msgsender_MSG][spender_s400], addedValue_s400);
if (revert) {
return;
}
__tmp__sum__allowed1[msgsender_MSG] := (__tmp__sum__allowed1[msgsender_MSG]) - (__tmp___allowed_ERC20[this][msgsender_MSG][spender_s400]);
__tmp___allowed_ERC20[this][msgsender_MSG][spender_s400] := __var_4;
__tmp__sum__allowed1[msgsender_MSG] := (__tmp__sum__allowed1[msgsender_MSG]) + (__tmp___allowed_ERC20[this][msgsender_MSG][spender_s400]);
__ret_0_ := true;
return;
}

implementation increaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s400: Ref, addedValue_s400: int) returns (__ret_0_: bool)
{
var __var_3: Ref;
var __var_4: int;
__var_3 := null;
if (!((spender_s400) != (null))) {
revert := true;
return;
}
call __var_4 := add_SafeMath__success(this, this, 0, _allowed_ERC20[this][msgsender_MSG][spender_s400], addedValue_s400);
if (revert) {
return;
}
sum__allowed1[msgsender_MSG] := (sum__allowed1[msgsender_MSG]) - (_allowed_ERC20[this][msgsender_MSG][spender_s400]);
_allowed_ERC20[this][msgsender_MSG][spender_s400] := __var_4;
sum__allowed1[msgsender_MSG] := (sum__allowed1[msgsender_MSG]) + (_allowed_ERC20[this][msgsender_MSG][spender_s400]);
assert {:EventEmitted "Approval_ERC20"} (true);
__ret_0_ := true;
return;
}

implementation decreaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s449: Ref, subtractedValue_s449: int) returns (__ret_0_: bool)
{
var __var_5: Ref;
var __var_6: int;
__var_5 := null;
if (!((spender_s449) != (null))) {
revert := true;
return;
}
call __var_6 := sub_SafeMath__fail(this, this, 0, __tmp___allowed_ERC20[this][msgsender_MSG][spender_s449], subtractedValue_s449);
if (revert) {
return;
}
__tmp__sum__allowed1[msgsender_MSG] := (__tmp__sum__allowed1[msgsender_MSG]) - (__tmp___allowed_ERC20[this][msgsender_MSG][spender_s449]);
__tmp___allowed_ERC20[this][msgsender_MSG][spender_s449] := __var_6;
__tmp__sum__allowed1[msgsender_MSG] := (__tmp__sum__allowed1[msgsender_MSG]) + (__tmp___allowed_ERC20[this][msgsender_MSG][spender_s449]);
__ret_0_ := true;
return;
}

implementation decreaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s449: Ref, subtractedValue_s449: int) returns (__ret_0_: bool)
{
var __var_5: Ref;
var __var_6: int;
__var_5 := null;
if (!((spender_s449) != (null))) {
revert := true;
return;
}
call __var_6 := sub_SafeMath__success(this, this, 0, _allowed_ERC20[this][msgsender_MSG][spender_s449], subtractedValue_s449);
if (revert) {
return;
}
sum__allowed1[msgsender_MSG] := (sum__allowed1[msgsender_MSG]) - (_allowed_ERC20[this][msgsender_MSG][spender_s449]);
_allowed_ERC20[this][msgsender_MSG][spender_s449] := __var_6;
sum__allowed1[msgsender_MSG] := (sum__allowed1[msgsender_MSG]) + (_allowed_ERC20[this][msgsender_MSG][spender_s449]);
assert {:EventEmitted "Approval_ERC20"} (true);
__ret_0_ := true;
return;
}

implementation _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s495: Ref, to_s495: Ref, value_s495: int)
{
var __var_7: Ref;
var __var_8: int;
var __var_9: int;
__var_7 := null;
if (!((to_s495) != (null))) {
revert := true;
return;
}
call __var_8 := sub_SafeMath__fail(this, this, 0, __tmp___balances_ERC20[this][from_s495], value_s495);
if (revert) {
return;
}
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) - (__tmp___balances_ERC20[this][from_s495]);
__tmp___balances_ERC20[this][from_s495] := __var_8;
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) + (__tmp___balances_ERC20[this][from_s495]);
call __var_9 := add_SafeMath__fail(this, this, 0, __tmp___balances_ERC20[this][to_s495], value_s495);
if (revert) {
return;
}
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) - (__tmp___balances_ERC20[this][to_s495]);
__tmp___balances_ERC20[this][to_s495] := __var_9;
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) + (__tmp___balances_ERC20[this][to_s495]);
}

implementation _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s495: Ref, to_s495: Ref, value_s495: int)
{
var __var_7: Ref;
var __var_8: int;
var __var_9: int;
__var_7 := null;
if (!((to_s495) != (null))) {
revert := true;
return;
}
call __var_8 := sub_SafeMath__success(this, this, 0, _balances_ERC20[this][from_s495], value_s495);
if (revert) {
return;
}
sum__balances0[this] := (sum__balances0[this]) - (_balances_ERC20[this][from_s495]);
_balances_ERC20[this][from_s495] := __var_8;
sum__balances0[this] := (sum__balances0[this]) + (_balances_ERC20[this][from_s495]);
call __var_9 := add_SafeMath__success(this, this, 0, _balances_ERC20[this][to_s495], value_s495);
if (revert) {
return;
}
sum__balances0[this] := (sum__balances0[this]) - (_balances_ERC20[this][to_s495]);
_balances_ERC20[this][to_s495] := __var_9;
sum__balances0[this] := (sum__balances0[this]) + (_balances_ERC20[this][to_s495]);
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _mint_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s537: Ref, value_s537: int)
{
var __var_10: Ref;
var __var_11: int;
var __var_12: int;
__var_10 := null;
if (!((account_s537) != (null))) {
revert := true;
return;
}
call __var_11 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s537);
if (revert) {
return;
}
__tmp___totalSupply_ERC20[this] := __var_11;
call __var_12 := add_SafeMath__fail(this, this, 0, __tmp___balances_ERC20[this][account_s537], value_s537);
if (revert) {
return;
}
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) - (__tmp___balances_ERC20[this][account_s537]);
__tmp___balances_ERC20[this][account_s537] := __var_12;
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) + (__tmp___balances_ERC20[this][account_s537]);
}

implementation _mint_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s537: Ref, value_s537: int)
{
var __var_10: Ref;
var __var_11: int;
var __var_12: int;
__var_10 := null;
if (!((account_s537) != (null))) {
revert := true;
return;
}
call __var_11 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s537);
if (revert) {
return;
}
_totalSupply_ERC20[this] := __var_11;
call __var_12 := add_SafeMath__success(this, this, 0, _balances_ERC20[this][account_s537], value_s537);
if (revert) {
return;
}
sum__balances0[this] := (sum__balances0[this]) - (_balances_ERC20[this][account_s537]);
_balances_ERC20[this][account_s537] := __var_12;
sum__balances0[this] := (sum__balances0[this]) + (_balances_ERC20[this][account_s537]);
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _burn_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s579: Ref, value_s579: int)
{
var __var_13: Ref;
var __var_14: int;
var __var_15: int;
__var_13 := null;
if (!((account_s579) != (null))) {
revert := true;
return;
}
call __var_14 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s579);
if (revert) {
return;
}
__tmp___totalSupply_ERC20[this] := __var_14;
call __var_15 := sub_SafeMath__fail(this, this, 0, __tmp___balances_ERC20[this][account_s579], value_s579);
if (revert) {
return;
}
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) - (__tmp___balances_ERC20[this][account_s579]);
__tmp___balances_ERC20[this][account_s579] := __var_15;
__tmp__sum__balances0[this] := (__tmp__sum__balances0[this]) + (__tmp___balances_ERC20[this][account_s579]);
}

implementation _burn_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s579: Ref, value_s579: int)
{
var __var_13: Ref;
var __var_14: int;
var __var_15: int;
__var_13 := null;
if (!((account_s579) != (null))) {
revert := true;
return;
}
call __var_14 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s579);
if (revert) {
return;
}
_totalSupply_ERC20[this] := __var_14;
call __var_15 := sub_SafeMath__success(this, this, 0, _balances_ERC20[this][account_s579], value_s579);
if (revert) {
return;
}
sum__balances0[this] := (sum__balances0[this]) - (_balances_ERC20[this][account_s579]);
_balances_ERC20[this][account_s579] := __var_15;
sum__balances0[this] := (sum__balances0[this]) + (_balances_ERC20[this][account_s579]);
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _burnFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref, value_s621: int)
{
var __var_16: int;
call __var_16 := sub_SafeMath__fail(this, this, 0, __tmp___allowed_ERC20[this][account_s621][msgsender_MSG], value_s621);
if (revert) {
return;
}
__tmp__sum__allowed1[account_s621] := (__tmp__sum__allowed1[account_s621]) - (__tmp___allowed_ERC20[this][account_s621][msgsender_MSG]);
__tmp___allowed_ERC20[this][account_s621][msgsender_MSG] := __var_16;
__tmp__sum__allowed1[account_s621] := (__tmp__sum__allowed1[account_s621]) + (__tmp___allowed_ERC20[this][account_s621][msgsender_MSG]);
if ((__tmp__DType[this]) == (OMToken)) {
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Burnable)) {
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20)) {
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _burnFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s621: Ref, value_s621: int)
{
var __var_16: int;
call __var_16 := sub_SafeMath__success(this, this, 0, _allowed_ERC20[this][account_s621][msgsender_MSG], value_s621);
if (revert) {
return;
}
sum__allowed1[account_s621] := (sum__allowed1[account_s621]) - (_allowed_ERC20[this][account_s621][msgsender_MSG]);
_allowed_ERC20[this][account_s621][msgsender_MSG] := __var_16;
sum__allowed1[account_s621] := (sum__allowed1[account_s621]) + (_allowed_ERC20[this][account_s621][msgsender_MSG]);
if ((DType[this]) == (OMToken)) {
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Burnable)) {
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20)) {
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s621, value_s621);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "Approval_ERC20"} (true);
}

implementation Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Roles_Roles_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Roles_Roles_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation add_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s659: Ref, account_s659: Ref)
{
var __var_17: Ref;
var __var_18: bool;
__var_17 := null;
if (!((account_s659) != (null))) {
revert := true;
return;
}
call __var_18 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s659, account_s659);
if (revert) {
return;
}
if (!(!(__var_18))) {
revert := true;
return;
}
__tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s659]][account_s659] := true;
}

implementation add_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s659: Ref, account_s659: Ref)
{
var __var_17: Ref;
var __var_18: bool;
__var_17 := null;
if (!((account_s659) != (null))) {
revert := true;
return;
}
call __var_18 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s659, account_s659);
if (revert) {
return;
}
if (!(!(__var_18))) {
revert := true;
return;
}
M_Ref_bool[bearer_Roles.Role[role_s659]][account_s659] := true;
}

implementation remove_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s690: Ref, account_s690: Ref)
{
var __var_19: Ref;
var __var_20: bool;
__var_19 := null;
if (!((account_s690) != (null))) {
revert := true;
return;
}
call __var_20 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s690, account_s690);
if (revert) {
return;
}
if (!(__var_20)) {
revert := true;
return;
}
__tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s690]][account_s690] := false;
}

implementation remove_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s690: Ref, account_s690: Ref)
{
var __var_19: Ref;
var __var_20: bool;
__var_19 := null;
if (!((account_s690) != (null))) {
revert := true;
return;
}
call __var_20 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s690, account_s690);
if (revert) {
return;
}
if (!(__var_20)) {
revert := true;
return;
}
M_Ref_bool[bearer_Roles.Role[role_s690]][account_s690] := false;
}

implementation has_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s713: Ref, account_s713: Ref) returns (__ret_0_: bool)
{
var __var_21: Ref;
__var_21 := null;
if (!((account_s713) != (null))) {
revert := true;
return;
}
__ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s713]][account_s713];
return;
}

implementation has_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s713: Ref, account_s713: Ref) returns (__ret_0_: bool)
{
var __var_21: Ref;
__var_21 := null;
if (!((account_s713) != (null))) {
revert := true;
return;
}
__ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s713]][account_s713];
return;
}

implementation PauserRole_PauserRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_22: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make struct variables distinct for _pausers
call __var_22 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___pausers_PauserRole[this] := __var_22;
// end of initialization
if ((__tmp__DType[this]) == (OMToken)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation PauserRole_PauserRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_22: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make struct variables distinct for _pausers
call __var_22 := FreshRefGenerator__success();
if (revert) {
return;
}
_pausers_PauserRole[this] := __var_22;
// end of initialization
if ((DType[this]) == (OMToken)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation PauserRole_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_22: Ref;
call PauserRole_PauserRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation PauserRole_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_22: Ref;
call PauserRole_PauserRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation isPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s760: Ref) returns (__ret_0_: bool)
{
var __var_24: bool;
call __var_24 := has_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s760);
if (revert) {
return;
}
__ret_0_ := __var_24;
return;
}

implementation isPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s760: Ref) returns (__ret_0_: bool)
{
var __var_24: bool;
call __var_24 := has_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s760);
if (revert) {
return;
}
__ret_0_ := __var_24;
return;
}

implementation addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s772: Ref)
{
call onlyPauser_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s772: Ref)
{
call onlyPauser_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s772);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renouncePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((__tmp__DType[this]) == (OMToken)) {
call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renouncePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((DType[this]) == (OMToken)) {
call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s797: Ref)
{
call add_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s797);
if (revert) {
return;
}
}

implementation _addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s797: Ref)
{
call add_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s797);
if (revert) {
return;
}
assert {:EventEmitted "PauserAdded_PauserRole"} (true);
}

implementation _removePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s813: Ref)
{
call remove_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s813);
if (revert) {
return;
}
}

implementation _removePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s813: Ref)
{
call remove_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s813);
if (revert) {
return;
}
assert {:EventEmitted "PauserRemoved_PauserRole"} (true);
}

implementation Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___paused_Pausable[this] := false;
// end of initialization
__tmp___paused_Pausable[this] := false;
}

implementation Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_paused_Pausable[this] := false;
// end of initialization
_paused_Pausable[this] := false;
}

implementation Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
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
if (revert) {
return;
}
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp___paused_Pausable[this] := true;
}

implementation pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyPauser_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
_paused_Pausable[this] := true;
assert {:EventEmitted "Paused_Pausable"} (true);
}

implementation unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyPauser_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call whenPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp___paused_Pausable[this] := false;
}

implementation unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyPauser_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call whenPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
_paused_Pausable[this] := false;
assert {:EventEmitted "Unpaused_Pausable"} (true);
}

implementation ERC20Pausable_ERC20Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation ERC20Pausable_ERC20Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation ERC20Pausable_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Pausable_ERC20Pausable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20Pausable_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Pausable_ERC20Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation transfer_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s916: Ref, value_s916: int) returns (__ret_0_: bool)
{
var __var_25: bool;
var __var_26: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call __var_25 := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call __var_25 := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_25;
return;
}

implementation transfer_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s916: Ref, value_s916: int) returns (__ret_0_: bool)
{
var __var_25: bool;
var __var_26: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call __var_25 := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call __var_25 := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_25;
return;
}

implementation transferFrom_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s937: Ref, to_s937: Ref, value_s937: int) returns (__ret_0_: bool)
{
var __var_27: bool;
var __var_28: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call __var_27 := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call __var_27 := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_27;
return;
}

implementation transferFrom_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s937: Ref, to_s937: Ref, value_s937: int) returns (__ret_0_: bool)
{
var __var_27: bool;
var __var_28: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call __var_27 := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call __var_27 := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_27;
return;
}

implementation approve_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s955: Ref, value_s955: int) returns (__ret_0_: bool)
{
var __var_29: bool;
var __var_30: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call __var_29 := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call __var_29 := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_29;
return;
}

implementation approve_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s955: Ref, value_s955: int) returns (__ret_0_: bool)
{
var __var_29: bool;
var __var_30: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call __var_29 := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call __var_29 := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_29;
return;
}

implementation increaseAllowance_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s973: Ref, addedValue_s973: int) returns (success_s973: bool)
{
var __var_31: bool;
var __var_32: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call __var_31 := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call __var_31 := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
} else {
assume (false);
}
success_s973 := __var_31;
return;
}

implementation increaseAllowance_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s973: Ref, addedValue_s973: int) returns (success_s973: bool)
{
var __var_31: bool;
var __var_32: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call __var_31 := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call __var_31 := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
} else {
assume (false);
}
success_s973 := __var_31;
return;
}

implementation decreaseAllowance_ERC20Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s991: Ref, subtractedValue_s991: int) returns (success_s991: bool)
{
var __var_33: bool;
var __var_34: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call __var_33 := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call __var_33 := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
} else {
assume (false);
}
success_s991 := __var_33;
return;
}

implementation decreaseAllowance_ERC20Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s991: Ref, subtractedValue_s991: int) returns (success_s991: bool)
{
var __var_33: bool;
var __var_34: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call __var_33 := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call __var_33 := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
} else {
assume (false);
}
success_s991 := __var_33;
return;
}

implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___name_ERC20Detailed[this] := 1364210121;
__tmp___symbol_ERC20Detailed[this] := 1364210121;
__tmp___decimals_ERC20Detailed[this] := 0;
// end of initialization
__tmp___name_ERC20Detailed[this] := name_s1022;
__tmp___symbol_ERC20Detailed[this] := symbol_s1022;
__tmp___decimals_ERC20Detailed[this] := decimals_s1022;
}

implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_name_ERC20Detailed[this] := 1364210121;
_symbol_ERC20Detailed[this] := 1364210121;
_decimals_ERC20Detailed[this] := 0;
// end of initialization
_name_ERC20Detailed[this] := name_s1022;
_symbol_ERC20Detailed[this] := symbol_s1022;
_decimals_ERC20Detailed[this] := decimals_s1022;
}

implementation ERC20Detailed_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int)
{
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, name_s1022, symbol_s1022, decimals_s1022);
if (revert) {
return;
}
}

implementation ERC20Detailed_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1022: int, symbol_s1022: int, decimals_s1022: int)
{
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, name_s1022, symbol_s1022, decimals_s1022);
if (revert) {
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

implementation MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_35: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make struct variables distinct for _minters
call __var_35 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___minters_MinterRole[this] := __var_35;
// end of initialization
if ((__tmp__DType[this]) == (OMToken)) {
call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MinterRole)) {
call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_35: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make struct variables distinct for _minters
call __var_35 := FreshRefGenerator__success();
if (revert) {
return;
}
_minters_MinterRole[this] := __var_35;
// end of initialization
if ((DType[this]) == (OMToken)) {
call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MinterRole)) {
call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation MinterRole_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_35: Ref;
call MinterRole_MinterRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_35: Ref;
call MinterRole_MinterRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1093: Ref) returns (__ret_0_: bool)
{
var __var_37: bool;
call __var_37 := has_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s1093);
if (revert) {
return;
}
__ret_0_ := __var_37;
return;
}

implementation isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1093: Ref) returns (__ret_0_: bool)
{
var __var_37: bool;
call __var_37 := has_Roles__success(this, this, 0, _minters_MinterRole[this], account_s1093);
if (revert) {
return;
}
__ret_0_ := __var_37;
return;
}

implementation addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1105: Ref)
{
call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MinterRole)) {
call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1105: Ref)
{
call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
} else if ((DType[this]) == (MinterRole)) {
call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((__tmp__DType[this]) == (OMToken)) {
call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MinterRole)) {
call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((DType[this]) == (OMToken)) {
call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MinterRole)) {
call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1130: Ref)
{
call add_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s1130);
if (revert) {
return;
}
}

implementation _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1130: Ref)
{
call add_Roles__success(this, this, 0, _minters_MinterRole[this], account_s1130);
if (revert) {
return;
}
assert {:EventEmitted "MinterAdded_MinterRole"} (true);
}

implementation _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1146: Ref)
{
call remove_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s1146);
if (revert) {
return;
}
}

implementation _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1146: Ref)
{
call remove_Roles__success(this, this, 0, _minters_MinterRole[this], account_s1146);
if (revert) {
return;
}
assert {:EventEmitted "MinterRemoved_MinterRole"} (true);
}

implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation mint_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s1170: Ref, value_s1170: int) returns (__ret_0_: bool)
{
call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (OMToken)) {
call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation mint_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s1170: Ref, value_s1170: int) returns (__ret_0_: bool)
{
call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (OMToken)) {
call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := true;
return;
}

implementation ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation ERC20Burnable_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20Burnable_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation burn_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s1185: int)
{
if ((__tmp__DType[this]) == (OMToken)) {
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s1185);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Burnable)) {
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s1185);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation burn_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s1185: int)
{
if ((DType[this]) == (OMToken)) {
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s1185);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Burnable)) {
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s1185);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation burnFrom_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s1198: Ref, value_s1198: int)
{
if ((__tmp__DType[this]) == (OMToken)) {
call _burnFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Burnable)) {
call _burnFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation burnFrom_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s1198: Ref, value_s1198: int)
{
if ((DType[this]) == (OMToken)) {
call _burnFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Burnable)) {
call _burnFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation OMToken_OMToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation OMToken_OMToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation OMToken_OMToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int)
{
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Pausable_ERC20Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, name_s1230, symbol_s1230, decimals_s1230);
if (revert) {
return;
}
call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Mintable_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Burnable_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call OMToken_OMToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, name_s1230, symbol_s1230, decimals_s1230);
if (revert) {
return;
}
}

implementation OMToken_OMToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, name_s1230: int, symbol_s1230: int, decimals_s1230: int)
{
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Pausable_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, name_s1230, symbol_s1230, decimals_s1230);
if (revert) {
return;
}
call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call OMToken_OMToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, name_s1230, symbol_s1230, decimals_s1230);
if (revert) {
return;
}
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (OMToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20Burnable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20Mintable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (MinterRole)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20Detailed)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20Pausable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Pausable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (PauserRole)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__fail(from, to, amount);
if (revert) {
return;
}
}
}

implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (OMToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20Burnable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20Mintable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (MinterRole)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20Detailed)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20Pausable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Pausable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (PauserRole)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__success(from, to, amount);
if (revert) {
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
var to_s266: Ref;
var value_s266: int;
var __ret_0_transfer: bool;
var spender_s302: Ref;
var value_s302: int;
var __ret_0_approve: bool;
var from_s351: Ref;
var to_s351: Ref;
var value_s351: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var owner_s231: Ref;
var __ret_0_balanceOf: int;
var owner_s247: Ref;
var spender_s247: Ref;
var __ret_0_allowance: int;
var spender_s400: Ref;
var addedValue_s400: int;
var __ret_0_increaseAllowance: bool;
var spender_s449: Ref;
var subtractedValue_s449: int;
var __ret_0_decreaseAllowance: bool;
var account_s760: Ref;
var __ret_0_isPauser: bool;
var account_s772: Ref;
var __ret_0_paused: bool;
var to_s916: Ref;
var value_s916: int;
var spender_s955: Ref;
var value_s955: int;
var from_s937: Ref;
var to_s937: Ref;
var value_s937: int;
var spender_s973: Ref;
var addedValue_s973: int;
var success_s973: bool;
var spender_s991: Ref;
var subtractedValue_s991: int;
var success_s991: bool;
var to_s10: Ref;
var value_s10: int;
var spender_s19: Ref;
var value_s19: int;
var from_s30: Ref;
var to_s30: Ref;
var value_s30: int;
var who_s42: Ref;
var owner_s51: Ref;
var spender_s51: Ref;
var name_s1022: int;
var symbol_s1022: int;
var decimals_s1022: int;
var __ret_0_name: int;
var __ret_0_symbol: int;
var __ret_0_decimals: int;
var account_s1093: Ref;
var __ret_0_isMinter: bool;
var account_s1105: Ref;
var to_s1170: Ref;
var value_s1170: int;
var __ret_0_mint: bool;
var value_s1185: int;
var from_s1198: Ref;
var value_s1198: int;
var name_s1230: int;
var symbol_s1230: int;
var decimals_s1230: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[from]) >= (amount));
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
if ((__tmp__DType[from]) == (OMToken)) {
if ((choice) == (23)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s916) >= (0)) && ((value_s916) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Pausable__fail(from, to, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
}
} else if ((choice) == (22)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s955) >= (0)) && ((value_s955) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
}
} else if ((choice) == (21)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s937) >= (0)) && ((value_s937) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20Pausable__fail(from, to, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
}
} else if ((choice) == (20)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (19)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (18)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (17)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s973) >= (0)) && ((addedValue_s973) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s973 := increaseAllowance_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
}
} else if ((choice) == (16)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s991) >= (0)) && ((subtractedValue_s991) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s991 := decreaseAllowance_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
}
} else if ((choice) == (15)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ERC20Detailed__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ERC20Detailed__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ERC20Detailed__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s1093);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1170) >= (0)) && ((value_s1170) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_mint := mint_ERC20Mintable__fail(from, to, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1185) >= (0)) && ((value_s1185) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burn_ERC20Burnable__fail(from, to, msgvalue_MSG, value_s1185);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1198) >= (0)) && ((value_s1198) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burnFrom_ERC20Burnable__fail(from, to, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ERC20Burnable)) {
if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, to_s266, value_s266);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s302, value_s302);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s400, addedValue_s400);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s449, subtractedValue_s449);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1185) >= (0)) && ((value_s1185) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burn_ERC20Burnable__fail(from, to, msgvalue_MSG, value_s1185);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1198) >= (0)) && ((value_s1198) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burnFrom_ERC20Burnable__fail(from, to, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ERC20Mintable)) {
if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, to_s266, value_s266);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s302, value_s302);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s400, addedValue_s400);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s449, subtractedValue_s449);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s1093);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1170) >= (0)) && ((value_s1170) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_mint := mint_ERC20Mintable__fail(from, to, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (MinterRole)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s1093);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole__fail(from, to, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ERC20Detailed)) {
if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s10) >= (0)) && ((value_s10) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_IERC20(from, to, msgvalue_MSG, to_s10, value_s10);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_IERC20(from, to, msgvalue_MSG, spender_s19, value_s19);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s30) >= (0)) && ((value_s30) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_IERC20(from, to, msgvalue_MSG, from_s30, to_s30, value_s30);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_IERC20(from, to, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_IERC20(from, to, msgvalue_MSG, who_s42);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_IERC20(from, to, msgvalue_MSG, owner_s51, spender_s51);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ERC20Detailed__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ERC20Detailed__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ERC20Detailed__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ERC20Pausable)) {
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s916) >= (0)) && ((value_s916) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Pausable__fail(from, to, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s955) >= (0)) && ((value_s955) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s937) >= (0)) && ((value_s937) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20Pausable__fail(from, to, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s973) >= (0)) && ((addedValue_s973) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s973 := increaseAllowance_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s991) >= (0)) && ((subtractedValue_s991) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s991 := decreaseAllowance_ERC20Pausable__fail(from, to, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (Pausable)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (PauserRole)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__fail(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ERC20)) {
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, to_s266, value_s266);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s302, value_s302);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s400, addedValue_s400);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s449, subtractedValue_s449);
if (revert) {
return;
}
}
}
}
}

implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s266: Ref;
var value_s266: int;
var __ret_0_transfer: bool;
var spender_s302: Ref;
var value_s302: int;
var __ret_0_approve: bool;
var from_s351: Ref;
var to_s351: Ref;
var value_s351: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var owner_s231: Ref;
var __ret_0_balanceOf: int;
var owner_s247: Ref;
var spender_s247: Ref;
var __ret_0_allowance: int;
var spender_s400: Ref;
var addedValue_s400: int;
var __ret_0_increaseAllowance: bool;
var spender_s449: Ref;
var subtractedValue_s449: int;
var __ret_0_decreaseAllowance: bool;
var account_s760: Ref;
var __ret_0_isPauser: bool;
var account_s772: Ref;
var __ret_0_paused: bool;
var to_s916: Ref;
var value_s916: int;
var spender_s955: Ref;
var value_s955: int;
var from_s937: Ref;
var to_s937: Ref;
var value_s937: int;
var spender_s973: Ref;
var addedValue_s973: int;
var success_s973: bool;
var spender_s991: Ref;
var subtractedValue_s991: int;
var success_s991: bool;
var to_s10: Ref;
var value_s10: int;
var spender_s19: Ref;
var value_s19: int;
var from_s30: Ref;
var to_s30: Ref;
var value_s30: int;
var who_s42: Ref;
var owner_s51: Ref;
var spender_s51: Ref;
var name_s1022: int;
var symbol_s1022: int;
var decimals_s1022: int;
var __ret_0_name: int;
var __ret_0_symbol: int;
var __ret_0_decimals: int;
var account_s1093: Ref;
var __ret_0_isMinter: bool;
var account_s1105: Ref;
var to_s1170: Ref;
var value_s1170: int;
var __ret_0_mint: bool;
var value_s1185: int;
var from_s1198: Ref;
var value_s1198: int;
var name_s1230: int;
var symbol_s1230: int;
var decimals_s1230: int;
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
if ((DType[from]) == (OMToken)) {
if ((choice) == (23)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s916) >= (0)) && ((value_s916) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Pausable__success(from, to, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
}
} else if ((choice) == (22)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s955) >= (0)) && ((value_s955) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
}
} else if ((choice) == (21)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s937) >= (0)) && ((value_s937) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20Pausable__success(from, to, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
}
} else if ((choice) == (20)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (19)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (18)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (17)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s973) >= (0)) && ((addedValue_s973) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s973 := increaseAllowance_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
}
} else if ((choice) == (16)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s991) >= (0)) && ((subtractedValue_s991) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s991 := decreaseAllowance_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
}
} else if ((choice) == (15)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__success(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__success(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ERC20Detailed__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ERC20Detailed__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ERC20Detailed__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s1093);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1170) >= (0)) && ((value_s1170) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_mint := mint_ERC20Mintable__success(from, to, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1185) >= (0)) && ((value_s1185) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burn_ERC20Burnable__success(from, to, msgvalue_MSG, value_s1185);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1198) >= (0)) && ((value_s1198) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burnFrom_ERC20Burnable__success(from, to, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ERC20Burnable)) {
if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, to_s266, value_s266);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s302, value_s302);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s400, addedValue_s400);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s449, subtractedValue_s449);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1185) >= (0)) && ((value_s1185) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burn_ERC20Burnable__success(from, to, msgvalue_MSG, value_s1185);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1198) >= (0)) && ((value_s1198) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burnFrom_ERC20Burnable__success(from, to, msgvalue_MSG, from_s1198, value_s1198);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ERC20Mintable)) {
if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, to_s266, value_s266);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s302, value_s302);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s400, addedValue_s400);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s449, subtractedValue_s449);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s1093);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1170) >= (0)) && ((value_s1170) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_mint := mint_ERC20Mintable__success(from, to, msgvalue_MSG, to_s1170, value_s1170);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (MinterRole)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole__success(from, to, msgvalue_MSG, account_s1093);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole__success(from, to, msgvalue_MSG, account_s1105);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ERC20Detailed)) {
if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s10) >= (0)) && ((value_s10) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_IERC20(from, to, msgvalue_MSG, to_s10, value_s10);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_IERC20(from, to, msgvalue_MSG, spender_s19, value_s19);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s30) >= (0)) && ((value_s30) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_IERC20(from, to, msgvalue_MSG, from_s30, to_s30, value_s30);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_IERC20(from, to, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_IERC20(from, to, msgvalue_MSG, who_s42);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_IERC20(from, to, msgvalue_MSG, owner_s51, spender_s51);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ERC20Detailed__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ERC20Detailed__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ERC20Detailed__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ERC20Pausable)) {
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s916) >= (0)) && ((value_s916) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Pausable__success(from, to, msgvalue_MSG, to_s916, value_s916);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s955) >= (0)) && ((value_s955) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s955, value_s955);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s937) >= (0)) && ((value_s937) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20Pausable__success(from, to, msgvalue_MSG, from_s937, to_s937, value_s937);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s973) >= (0)) && ((addedValue_s973) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s973 := increaseAllowance_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s973, addedValue_s973);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s991) >= (0)) && ((subtractedValue_s991) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s991 := decreaseAllowance_ERC20Pausable__success(from, to, msgvalue_MSG, spender_s991, subtractedValue_s991);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__success(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__success(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (Pausable)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__success(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__success(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (PauserRole)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole__success(from, to, msgvalue_MSG, account_s760);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole__success(from, to, msgvalue_MSG, account_s772);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ERC20)) {
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, to_s266, value_s266);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s302, value_s302);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, from_s351, to_s351, value_s351);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, owner_s231);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s247, spender_s247);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s400, addedValue_s400);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s449, subtractedValue_s449);
if (revert) {
return;
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
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__sum__balances0: [Ref]int;
var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __snap___tmp__sum__allowed1: [Ref]int;
var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
var __snap___tmp__sum: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp___balances_ERC20: [Ref][Ref]int;
var __snap___tmp___allowed_ERC20: [Ref][Ref][Ref]int;
var __snap___tmp___totalSupply_ERC20: [Ref]int;
var __snap___tmp__bearer_Roles.Role: [Ref]Ref;
var __snap___tmp___pausers_PauserRole: [Ref]Ref;
var __snap___tmp___paused_Pausable: [Ref]bool;
var __snap___tmp___name_ERC20Detailed: [Ref]int;
var __snap___tmp___symbol_ERC20Detailed: [Ref]int;
var __snap___tmp___decimals_ERC20Detailed: [Ref]int;
var __snap___tmp___minters_MinterRole: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__sum__balances0 := __tmp__sum__balances0;
__snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
__snap___tmp__sum__allowed1 := __tmp__sum__allowed1;
__snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
__snap___tmp__sum := __tmp__sum;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
__snap___tmp___allowed_ERC20 := __tmp___allowed_ERC20;
__snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
__snap___tmp__bearer_Roles.Role := __tmp__bearer_Roles.Role;
__snap___tmp___pausers_PauserRole := __tmp___pausers_PauserRole;
__snap___tmp___paused_Pausable := __tmp___paused_Pausable;
__snap___tmp___name_ERC20Detailed := __tmp___name_ERC20Detailed;
__snap___tmp___symbol_ERC20Detailed := __tmp___symbol_ERC20Detailed;
__snap___tmp___decimals_ERC20Detailed := __tmp___decimals_ERC20Detailed;
__snap___tmp___minters_MinterRole := __tmp___minters_MinterRole;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int := __snap___tmp__M_Ref_int;
__tmp__sum__balances0 := __snap___tmp__sum__balances0;
__tmp__M_Ref_Ref := __snap___tmp__M_Ref_Ref;
__tmp__sum__allowed1 := __snap___tmp__sum__allowed1;
__tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
__tmp__sum := __snap___tmp__sum;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
__tmp___allowed_ERC20 := __snap___tmp___allowed_ERC20;
__tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
__tmp__bearer_Roles.Role := __snap___tmp__bearer_Roles.Role;
__tmp___pausers_PauserRole := __snap___tmp___pausers_PauserRole;
__tmp___paused_Pausable := __snap___tmp___paused_Pausable;
__tmp___name_ERC20Detailed := __snap___tmp___name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := __snap___tmp___symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := __snap___tmp___decimals_ERC20Detailed;
__tmp___minters_MinterRole := __snap___tmp___minters_MinterRole;
revert := false;
} else {
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
havoc __exception;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum__allowed1 := sum__allowed1;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__sum := sum;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowed_ERC20 := _allowed_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___name_ERC20Detailed := _name_ERC20Detailed;
__tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
__tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
__tmp___minters_MinterRole := _minters_MinterRole;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
revert := false;
} else {
if ((Balance[from]) >= (amount)) {
call FallbackDispatch__success(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation onlyPauser_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_23: bool;
if ((__tmp__DType[this]) == (OMToken)) {
call __var_23 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Pausable)) {
call __var_23 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call __var_23 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call __var_23 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_23)) {
revert := true;
return;
}
}

implementation onlyPauser_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_23: bool;
if ((DType[this]) == (OMToken)) {
call __var_23 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Pausable)) {
call __var_23 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call __var_23 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call __var_23 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_23)) {
revert := true;
return;
}
}

implementation whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(__tmp___paused_Pausable[this]))) {
revert := true;
return;
}
}

implementation whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(_paused_Pausable[this]))) {
revert := true;
return;
}
}

implementation whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(__tmp___paused_Pausable[this])) {
revert := true;
return;
}
}

implementation whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(_paused_Pausable[this])) {
revert := true;
return;
}
}

implementation onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_36: bool;
if ((__tmp__DType[this]) == (OMToken)) {
call __var_36 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Mintable)) {
call __var_36 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MinterRole)) {
call __var_36 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_36)) {
revert := true;
return;
}
}

implementation onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_36: bool;
if ((DType[this]) == (OMToken)) {
call __var_36 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Mintable)) {
call __var_36 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (MinterRole)) {
call __var_36 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_36)) {
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((((((DType[this]) == (IERC20)) || ((DType[this]) == (ERC20))) || ((DType[this]) == (ERC20Pausable))) || ((DType[this]) == (ERC20Detailed))) || ((DType[this]) == (ERC20Mintable))) || ((DType[this]) == (ERC20Burnable))) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
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
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (SafeMath));
gas := (gas) - (53000);
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
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
var to_s266: Ref;
var value_s266: int;
var __ret_0_transfer: bool;
var spender_s302: Ref;
var value_s302: int;
var __ret_0_approve: bool;
var from_s351: Ref;
var to_s351: Ref;
var value_s351: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var owner_s231: Ref;
var __ret_0_balanceOf: int;
var owner_s247: Ref;
var spender_s247: Ref;
var __ret_0_allowance: int;
var spender_s400: Ref;
var addedValue_s400: int;
var __ret_0_increaseAllowance: bool;
var spender_s449: Ref;
var subtractedValue_s449: int;
var __ret_0_decreaseAllowance: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s266;
havoc value_s266;
havoc __ret_0_transfer;
havoc spender_s302;
havoc value_s302;
havoc __ret_0_approve;
havoc from_s351;
havoc to_s351;
havoc value_s351;
havoc __ret_0_transferFrom;
havoc __ret_0_totalSupply;
havoc owner_s231;
havoc __ret_0_balanceOf;
havoc owner_s247;
havoc spender_s247;
havoc __ret_0_allowance;
havoc spender_s400;
havoc addedValue_s400;
havoc __ret_0_increaseAllowance;
havoc spender_s449;
havoc subtractedValue_s449;
havoc __ret_0_decreaseAllowance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s266, value_s266);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s302, value_s302);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s231);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s247, spender_s247);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s400, addedValue_s400);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s449, subtractedValue_s449);
}
}
}

implementation CorralEntry_ERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((((DType[this]) == (ERC20)) || ((DType[this]) == (ERC20Pausable))) || ((DType[this]) == (ERC20Mintable))) || ((DType[this]) == (ERC20Burnable))) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_Roles()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (Roles));
gas := (gas) - (53000);
call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Roles(this);
}
}

implementation CorralChoice_PauserRole(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s760: Ref;
var __ret_0_isPauser: bool;
var account_s772: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s760;
havoc __ret_0_isPauser;
havoc account_s772;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s760);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s772);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_PauserRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((((DType[this]) == (PauserRole)) || ((DType[this]) == (Pausable))) || ((DType[this]) == (ERC20Pausable))) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call PauserRole_PauserRole(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_PauserRole(this);
}
}

implementation CorralChoice_Pausable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s760: Ref;
var __ret_0_isPauser: bool;
var account_s772: Ref;
var __ret_0_paused: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s760;
havoc __ret_0_isPauser;
havoc account_s772;
havoc __ret_0_paused;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s760);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s772);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_Pausable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (Pausable)) || ((DType[this]) == (ERC20Pausable))) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call Pausable_Pausable(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Pausable(this);
}
}

implementation CorralChoice_ERC20Pausable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s916: Ref;
var value_s916: int;
var __ret_0_transfer: bool;
var spender_s955: Ref;
var value_s955: int;
var __ret_0_approve: bool;
var from_s937: Ref;
var to_s937: Ref;
var value_s937: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var owner_s231: Ref;
var __ret_0_balanceOf: int;
var owner_s247: Ref;
var spender_s247: Ref;
var __ret_0_allowance: int;
var spender_s973: Ref;
var addedValue_s973: int;
var success_s973: bool;
var spender_s991: Ref;
var subtractedValue_s991: int;
var success_s991: bool;
var account_s760: Ref;
var __ret_0_isPauser: bool;
var account_s772: Ref;
var __ret_0_paused: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s916;
havoc value_s916;
havoc __ret_0_transfer;
havoc spender_s955;
havoc value_s955;
havoc __ret_0_approve;
havoc from_s937;
havoc to_s937;
havoc value_s937;
havoc __ret_0_transferFrom;
havoc __ret_0_totalSupply;
havoc owner_s231;
havoc __ret_0_balanceOf;
havoc owner_s247;
havoc spender_s247;
havoc __ret_0_allowance;
havoc spender_s973;
havoc addedValue_s973;
havoc success_s973;
havoc spender_s991;
havoc subtractedValue_s991;
havoc success_s991;
havoc account_s760;
havoc __ret_0_isPauser;
havoc account_s772;
havoc __ret_0_paused;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s916) >= (0)) && ((value_s916) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s955) >= (0)) && ((value_s955) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s937) >= (0)) && ((value_s937) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s231);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s247, spender_s247);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s973) >= (0)) && ((addedValue_s973) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s973 := increaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s991) >= (0)) && ((subtractedValue_s991) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s991 := decreaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s760);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s772);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_ERC20Pausable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Pausable)) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call ERC20Pausable_ERC20Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20Pausable(this);
}
}

implementation CorralChoice_ERC20Detailed(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s10: Ref;
var value_s10: int;
var __ret_0_transfer: bool;
var spender_s19: Ref;
var value_s19: int;
var __ret_0_approve: bool;
var from_s30: Ref;
var to_s30: Ref;
var value_s30: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var who_s42: Ref;
var __ret_0_balanceOf: int;
var owner_s51: Ref;
var spender_s51: Ref;
var __ret_0_allowance: int;
var name_s1022: int;
var symbol_s1022: int;
var decimals_s1022: int;
var __ret_0_name: int;
var __ret_0_symbol: int;
var __ret_0_decimals: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s10;
havoc value_s10;
havoc __ret_0_transfer;
havoc spender_s19;
havoc value_s19;
havoc __ret_0_approve;
havoc from_s30;
havoc to_s30;
havoc value_s30;
havoc __ret_0_transferFrom;
havoc __ret_0_totalSupply;
havoc who_s42;
havoc __ret_0_balanceOf;
havoc owner_s51;
havoc spender_s51;
havoc __ret_0_allowance;
havoc name_s1022;
havoc symbol_s1022;
havoc decimals_s1022;
havoc __ret_0_name;
havoc __ret_0_symbol;
havoc __ret_0_decimals;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s10) >= (0)) && ((value_s10) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, to_s10, value_s10);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s19, value_s19);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s30) >= (0)) && ((value_s30) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, from_s30, to_s30, value_s30);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, who_s42);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s51, spender_s51);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_ERC20Detailed()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var name_s1022: int;
var symbol_s1022: int;
var decimals_s1022: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Detailed)) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call ERC20Detailed_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG, name_s1022, symbol_s1022, decimals_s1022);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20Detailed(this);
}
}

implementation CorralChoice_MinterRole(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s1093: Ref;
var __ret_0_isMinter: bool;
var account_s1105: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s1093;
havoc __ret_0_isMinter;
havoc account_s1105;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1093);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1105);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_MinterRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (MinterRole)) || ((DType[this]) == (ERC20Mintable))) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call MinterRole_MinterRole(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
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
var to_s266: Ref;
var value_s266: int;
var __ret_0_transfer: bool;
var spender_s302: Ref;
var value_s302: int;
var __ret_0_approve: bool;
var from_s351: Ref;
var to_s351: Ref;
var value_s351: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var owner_s231: Ref;
var __ret_0_balanceOf: int;
var owner_s247: Ref;
var spender_s247: Ref;
var __ret_0_allowance: int;
var spender_s400: Ref;
var addedValue_s400: int;
var __ret_0_increaseAllowance: bool;
var spender_s449: Ref;
var subtractedValue_s449: int;
var __ret_0_decreaseAllowance: bool;
var account_s1093: Ref;
var __ret_0_isMinter: bool;
var account_s1105: Ref;
var to_s1170: Ref;
var value_s1170: int;
var __ret_0_mint: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s266;
havoc value_s266;
havoc __ret_0_transfer;
havoc spender_s302;
havoc value_s302;
havoc __ret_0_approve;
havoc from_s351;
havoc to_s351;
havoc value_s351;
havoc __ret_0_transferFrom;
havoc __ret_0_totalSupply;
havoc owner_s231;
havoc __ret_0_balanceOf;
havoc owner_s247;
havoc spender_s247;
havoc __ret_0_allowance;
havoc spender_s400;
havoc addedValue_s400;
havoc __ret_0_increaseAllowance;
havoc spender_s449;
havoc subtractedValue_s449;
havoc __ret_0_decreaseAllowance;
havoc account_s1093;
havoc __ret_0_isMinter;
havoc account_s1105;
havoc to_s1170;
havoc value_s1170;
havoc __ret_0_mint;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s266, value_s266);
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s302, value_s302);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s231);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s247, spender_s247);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s400, addedValue_s400);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s449, subtractedValue_s449);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1093);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1105);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1170) >= (0)) && ((value_s1170) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
}
}
}

implementation CorralEntry_ERC20Mintable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Mintable)) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20Mintable(this);
}
}

implementation CorralChoice_ERC20Burnable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s266: Ref;
var value_s266: int;
var __ret_0_transfer: bool;
var spender_s302: Ref;
var value_s302: int;
var __ret_0_approve: bool;
var from_s351: Ref;
var to_s351: Ref;
var value_s351: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var owner_s231: Ref;
var __ret_0_balanceOf: int;
var owner_s247: Ref;
var spender_s247: Ref;
var __ret_0_allowance: int;
var spender_s400: Ref;
var addedValue_s400: int;
var __ret_0_increaseAllowance: bool;
var spender_s449: Ref;
var subtractedValue_s449: int;
var __ret_0_decreaseAllowance: bool;
var value_s1185: int;
var from_s1198: Ref;
var value_s1198: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s266;
havoc value_s266;
havoc __ret_0_transfer;
havoc spender_s302;
havoc value_s302;
havoc __ret_0_approve;
havoc from_s351;
havoc to_s351;
havoc value_s351;
havoc __ret_0_transferFrom;
havoc __ret_0_totalSupply;
havoc owner_s231;
havoc __ret_0_balanceOf;
havoc owner_s247;
havoc spender_s247;
havoc __ret_0_allowance;
havoc spender_s400;
havoc addedValue_s400;
havoc __ret_0_increaseAllowance;
havoc spender_s449;
havoc subtractedValue_s449;
havoc __ret_0_decreaseAllowance;
havoc value_s1185;
havoc from_s1198;
havoc value_s1198;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s266) >= (0)) && ((value_s266) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s266, value_s266);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s302) >= (0)) && ((value_s302) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s302, value_s302);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s351) >= (0)) && ((value_s351) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s351, to_s351, value_s351);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s231);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s247, spender_s247);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s400) >= (0)) && ((addedValue_s400) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s400, addedValue_s400);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s449) >= (0)) && ((subtractedValue_s449) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s449, subtractedValue_s449);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1185) >= (0)) && ((value_s1185) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burn_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, value_s1185);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1198) >= (0)) && ((value_s1198) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burnFrom_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
}
}
}

implementation CorralEntry_ERC20Burnable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Burnable)) || ((DType[this]) == (OMToken)));
gas := (gas) - (53000);
call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20Burnable(this);
}
}

implementation CorralChoice_OMToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s916: Ref;
var value_s916: int;
var __ret_0_transfer: bool;
var spender_s955: Ref;
var value_s955: int;
var __ret_0_approve: bool;
var from_s937: Ref;
var to_s937: Ref;
var value_s937: int;
var __ret_0_transferFrom: bool;
var __ret_0_totalSupply: int;
var owner_s231: Ref;
var __ret_0_balanceOf: int;
var owner_s247: Ref;
var spender_s247: Ref;
var __ret_0_allowance: int;
var spender_s973: Ref;
var addedValue_s973: int;
var success_s973: bool;
var spender_s991: Ref;
var subtractedValue_s991: int;
var success_s991: bool;
var account_s760: Ref;
var __ret_0_isPauser: bool;
var account_s772: Ref;
var __ret_0_paused: bool;
var name_s1022: int;
var symbol_s1022: int;
var decimals_s1022: int;
var __ret_0_name: int;
var __ret_0_symbol: int;
var __ret_0_decimals: int;
var account_s1093: Ref;
var __ret_0_isMinter: bool;
var account_s1105: Ref;
var to_s1170: Ref;
var value_s1170: int;
var __ret_0_mint: bool;
var value_s1185: int;
var from_s1198: Ref;
var value_s1198: int;
var name_s1230: int;
var symbol_s1230: int;
var decimals_s1230: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s916;
havoc value_s916;
havoc __ret_0_transfer;
havoc spender_s955;
havoc value_s955;
havoc __ret_0_approve;
havoc from_s937;
havoc to_s937;
havoc value_s937;
havoc __ret_0_transferFrom;
havoc __ret_0_totalSupply;
havoc owner_s231;
havoc __ret_0_balanceOf;
havoc owner_s247;
havoc spender_s247;
havoc __ret_0_allowance;
havoc spender_s973;
havoc addedValue_s973;
havoc success_s973;
havoc spender_s991;
havoc subtractedValue_s991;
havoc success_s991;
havoc account_s760;
havoc __ret_0_isPauser;
havoc account_s772;
havoc __ret_0_paused;
havoc name_s1022;
havoc symbol_s1022;
havoc decimals_s1022;
havoc __ret_0_name;
havoc __ret_0_symbol;
havoc __ret_0_decimals;
havoc account_s1093;
havoc __ret_0_isMinter;
havoc account_s1105;
havoc to_s1170;
havoc value_s1170;
havoc __ret_0_mint;
havoc value_s1185;
havoc from_s1198;
havoc value_s1198;
havoc name_s1230;
havoc symbol_s1230;
havoc decimals_s1230;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (Roles));
assume ((DType[msgsender_MSG]) != (PauserRole));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Pausable));
assume ((DType[msgsender_MSG]) != (ERC20Detailed));
assume ((DType[msgsender_MSG]) != (MinterRole));
assume ((DType[msgsender_MSG]) != (ERC20Mintable));
assume ((DType[msgsender_MSG]) != (ERC20Burnable));
assume ((DType[msgsender_MSG]) != (OMToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (23)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s916) >= (0)) && ((value_s916) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, to_s916, value_s916);
}
} else if ((choice) == (22)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s955) >= (0)) && ((value_s955) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s955, value_s955);
}
} else if ((choice) == (21)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s937) >= (0)) && ((value_s937) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, from_s937, to_s937, value_s937);
}
} else if ((choice) == (20)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (19)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s231);
}
} else if ((choice) == (18)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s247, spender_s247);
}
} else if ((choice) == (17)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((addedValue_s973) >= (0)) && ((addedValue_s973) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s973 := increaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s973, addedValue_s973);
}
} else if ((choice) == (16)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((subtractedValue_s991) >= (0)) && ((subtractedValue_s991) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s991 := decreaseAllowance_ERC20Pausable(this, msgsender_MSG, msgvalue_MSG, spender_s991, subtractedValue_s991);
}
} else if ((choice) == (15)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s760);
}
} else if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s772);
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1093);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1105);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1170) >= (0)) && ((value_s1170) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, to_s1170, value_s1170);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1185) >= (0)) && ((value_s1185) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burn_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, value_s1185);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s1198) >= (0)) && ((value_s1198) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call burnFrom_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, from_s1198, value_s1198);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var name_s1230: int;
var symbol_s1230: int;
var decimals_s1230: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (OMToken));
gas := (gas) - (53000);
call OMToken_OMToken(this, msgsender_MSG, msgvalue_MSG, name_s1230, symbol_s1230, decimals_s1230);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_OMToken(this);
}
}


