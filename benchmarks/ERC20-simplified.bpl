// LTLProperty: [](started(ERC20.totalSupply) ==> <>(finished(ERC20.totalSupply, __ret_0_ == this._totalSupply && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && _allowances_ERC20[this] == old(_allowances_ERC20[this]))))

// LTLProperty: [](started(ERC20.balanceOf) ==> <>(finished(ERC20.balanceOf(owner), __ret_0_ == this._balances[owner] && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && _allowances_ERC20[this] == old(_allowances_ERC20[this]))))

// LTLProperty: [](started(ERC20.allowance) ==> <>(finished(ERC20.allowance(owner, spender), __ret_0_ == this._allowances[owner][spender] && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && _allowances_ERC20[this] == old(_allowances_ERC20[this]))))

// LTLVariables: p1:Ref,p2:Ref
// #LTLProperty: [](started(ERC20.approve(spender, value), spender != null && (p1 != msg.sender || p2 != spender)) ==> <>(finished(ERC20.approve(spender, value), __ret_0_ == true && this._allowances[msg.sender][spender] == value && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && this._allowances[p1][p2] == old(this._allowances[p1][p2]))))

// LTLVariables: p1:Ref
// LTLProperty: [](started(ERC20.transfer(to, value), to != null && p1 != msg.sender && p1 != to && msg.sender != to && value <= this._balances[msg.sender] && this._balances[to] + value < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(ERC20.transfer(to, value), this._balances[msg.sender] == old(this._balances[msg.sender]) - value && this._balances[to] == old(this._balances[to]) + value && this._totalSupply == old(this._totalSupply) && _allowances_ERC20[this] == old(_allowances_ERC20[this]) && this._balances[p1] == old(this._balances[p1]))))

// LTLProperty: [](started(ERC20.transfer(to, value), to != null && msg.sender == to && value <= this._balances[msg.sender]) ==> <>(finished(ERC20.transfer(to, value), this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && _allowances_ERC20[this] == old(_allowances_ERC20[this]))))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique ERC20: ContractName;
const unique IERC20: ContractName;
const unique VeriSol: ContractName;
const unique SafeMath: ContractName;
function {:smtdefined "x"} ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefIntArr() returns (ret: [Ref]int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntIntArr() returns (ret: [int]int);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroRefBoolArr() returns (ret: [Ref]bool);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroIntBoolArr() returns (ret: [int]bool);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefRefArr() returns (ret: [Ref]Ref);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntRefArr() returns (ret: [int]Ref);
function nonlinearMul(x: int, y: int) returns (ret: int);
function nonlinearDiv(x: int, y: int) returns (ret: int);
function nonlinearPow(x: int, y: int) returns (ret: int);
function nonlinearMod(x: int, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int__balances0: [Ref][Ref]int;
var sum__balances0: [Ref]int;
var M_Ref_int__allowances1: [Ref][Ref]int;
var M_Ref_Ref__allowances1: [Ref][Ref]Ref;
var sum__allowances1: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var sum: [Ref]int;
var M_int_Ref: [Ref][int]Ref;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
var {:access "this._balances[i0]=M_Ref_int__balances0[_balances_ERC20[this]][i0]"} {:sum "sum(this._balances)=sum__balances0[_balances_ERC20[this]]"} _balances_ERC20: [Ref]Ref;
var {:access "this._allowances[i0][i1]=M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][i0]][i1]"} {:sum "sum(this._allowances)=sum__allowances1[_allowances_ERC20[this]]"} _allowances_ERC20: [Ref]Ref;
var {:access "this._totalSupply=_totalSupply_ERC20[this]"} _totalSupply_ERC20: [Ref]int;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
modifies Balance;
modifies _balances_ERC20;
modifies M_Ref_int__balances0;
modifies sum__balances0;
modifies _allowances_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies _totalSupply_ERC20;
modifies revert;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies Balance;
modifies _balances_ERC20;
modifies M_Ref_int__balances0;
modifies sum__balances0;
modifies _allowances_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies _totalSupply_ERC20;
modifies Alloc;
implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
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
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s64);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s64);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies sum__balances0;
modifies M_Ref_int__balances0;
implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s119, amount_s119);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s119, amount_s119);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s185: Ref, recipient_s185: Ref, amount_s185: int);
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:public} {:inline 1} checkInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
implementation checkInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call checkInvariant_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call checkInvariant_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} contractInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
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
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s228: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s237: Ref, amount_s237: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s246: Ref, spender_s246: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s255: Ref, amount_s255: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s266: Ref, recipient_s266: Ref, amount_s266: int) returns (__ret_0_: bool);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
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
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s482: int, b_s482: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s507: int, b_s507: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s541: int, b_s541: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s566: int, b_s566: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s587: int, b_s587: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies revert;
modifies gas;
modifies Balance;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure CorralChoice_ERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies now;
modifies Balance;
modifies _balances_ERC20;
modifies M_Ref_int__balances0;
modifies sum__balances0;
modifies _allowances_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies _totalSupply_ERC20;
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
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int__balances0: [Ref][Ref]int;
var __tmp__sum__balances0: [Ref]int;
var __tmp__M_Ref_int__allowances1: [Ref][Ref]int;
var __tmp__M_Ref_Ref__allowances1: [Ref][Ref]Ref;
var __tmp__sum__allowances1: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__sum: [Ref]int;
var __tmp__M_int_Ref: [Ref][int]Ref;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp___balances_ERC20: [Ref]Ref;
var __tmp___allowances_ERC20: [Ref]Ref;
var __tmp___totalSupply_ERC20: [Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp___allowances_ERC20;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp___totalSupply_ERC20;
modifies revert;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
modifies Balance;
modifies _balances_ERC20;
modifies M_Ref_int__balances0;
modifies sum__balances0;
modifies _allowances_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies _totalSupply_ERC20;
modifies revert;
modifies Alloc;
procedure {:constructor} {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp___allowances_ERC20;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp___totalSupply_ERC20;
modifies revert;
modifies __tmp__Alloc;
procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int);
procedure {:inline 1} transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool);
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:inline 1} transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s185: Ref, recipient_s185: Ref, amount_s185: int);
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} checkInvariant_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} checkInvariant_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s482: int, b_s482: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s507: int, b_s507: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s541: int, b_s541: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s566: int, b_s566: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s587: int, b_s587: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies revert;
modifies gas;
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

implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_2 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___balances_ERC20[this] := __var_2;
// Initialize Integer mapping _balances
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]] := zeroRefIntArr();
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := 0;
// Make array/mapping vars distinct for _allowances
call __var_3 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___allowances_ERC20[this] := __var_3;
// Initialize length of 1-level nested array in _allowances
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]] := zeroRefRefArr();
__tmp__M_Ref_int__allowances1[null] := zeroRefIntArr();
__tmp___totalSupply_ERC20[this] := 0;
// end of initialization
__var_1 := null;
if (!((msgsender_MSG) != (null))) {
revert := true;
return;
}
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
assume ((totalSupply_s44) >= (0));
__tmp___totalSupply_ERC20[this] := totalSupply_s44;
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((totalSupply_s44) >= (0));
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) - (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]);
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG] := totalSupply_s44;
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]);
}

implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_2 := FreshRefGenerator__success();
if (revert) {
return;
}
_balances_ERC20[this] := __var_2;
// Initialize Integer mapping _balances
M_Ref_int__balances0[_balances_ERC20[this]] := zeroRefIntArr();
sum__balances0[_balances_ERC20[this]] := 0;
// Make array/mapping vars distinct for _allowances
call __var_3 := FreshRefGenerator__success();
if (revert) {
return;
}
_allowances_ERC20[this] := __var_3;
// Initialize length of 1-level nested array in _allowances
M_Ref_Ref__allowances1[_allowances_ERC20[this]] := zeroRefRefArr();
M_Ref_int__allowances1[null] := zeroRefIntArr();
_totalSupply_ERC20[this] := 0;
// end of initialization
__var_1 := null;
if (!((msgsender_MSG) != (null))) {
revert := true;
return;
}
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((totalSupply_s44) >= (0));
_totalSupply_ERC20[this] := totalSupply_s44;
assume ((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((totalSupply_s44) >= (0));
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) - (M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]);
M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG] := totalSupply_s44;
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) + (M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]);
}

implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
if (revert) {
return;
}
}

implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
if (revert) {
return;
}
}

implementation totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
__ret_0_ := __tmp___totalSupply_ERC20[this];
return;
}

implementation totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((_totalSupply_ERC20[this]) >= (0));
__ret_0_ := _totalSupply_ERC20[this];
return;
}

implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int)
{
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s64]) >= (0));
__ret_0_ := __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s64];
return;
}

implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int)
{
assume ((M_Ref_int__balances0[_balances_ERC20[this]][account_s64]) >= (0));
__ret_0_ := M_Ref_int__balances0[_balances_ERC20[this]][account_s64];
return;
}

implementation transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool)
{
var dbgRecipient_s118: Ref;
var dbgSender_s118: Ref;
var dbgAmount_s118: int;
dbgRecipient_s118 := recipient_s119;
dbgSender_s118 := msgsender_MSG;
assume ((dbgAmount_s118) >= (0));
assume ((amount_s119) >= (0));
dbgAmount_s118 := amount_s119;
assume ((amount_s119) >= (0));
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s119, amount_s119);
if (revert) {
return;
}
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s119]) >= (0));
assume (((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s119])) >= (0));
assume ((old((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s119]))) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s119]) >= (0));
assume (((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][msgsender_MSG]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s119])) >= (0));
__ret_0_ := true;
return;
}

implementation transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool)
{
var dbgRecipient_s118: Ref;
var dbgSender_s118: Ref;
var dbgAmount_s118: int;
dbgRecipient_s118 := recipient_s119;
dbgSender_s118 := msgsender_MSG;
assume ((dbgAmount_s118) >= (0));
assume ((amount_s119) >= (0));
dbgAmount_s118 := amount_s119;
assume ((amount_s119) >= (0));
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s119, amount_s119);
if (revert) {
return;
}
assume ((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][recipient_s119]) >= (0));
assume (((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s119])) >= (0));
assume ((old((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s119]))) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][recipient_s119]) >= (0));
assume (((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s119])) >= (0));
assert ((old((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s119]))) == ((M_Ref_int__balances0[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s119])));
__ret_0_ := true;
return;
}

implementation _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s185: Ref, recipient_s185: Ref, amount_s185: int)
{
var __var_4: Ref;
var __var_5: Ref;
var __var_6: int;
var __var_7: int;
__var_4 := null;
if (!((sender_s185) != (null))) {
revert := true;
return;
}
__var_5 := null;
if (!((recipient_s185) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185]) >= (0));
assume ((amount_s185) >= (0));
if (!((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185]) >= (amount_s185))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185]) >= (0));
assume ((amount_s185) >= (0));
call __var_6 := sub_SafeMath__fail(this, this, msgvalue_MSG, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185], amount_s185);
if (revert) {
return;
}
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) - (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185]);
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185] := __var_6;
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s185]);
assume ((__var_6) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s185]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s185]) >= (0));
assume ((amount_s185) >= (0));
call __var_7 := add_SafeMath__fail(this, this, msgvalue_MSG, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s185], amount_s185);
if (revert) {
return;
}
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) - (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s185]);
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s185] := __var_7;
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s185]);
assume ((__var_7) >= (0));
}

implementation _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s185: Ref, recipient_s185: Ref, amount_s185: int)
{
var __var_4: Ref;
var __var_5: Ref;
var __var_6: int;
var __var_7: int;
__var_4 := null;
if (!((sender_s185) != (null))) {
revert := true;
return;
}
__var_5 := null;
if (!((recipient_s185) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int__balances0[_balances_ERC20[this]][sender_s185]) >= (0));
assume ((amount_s185) >= (0));
if (!((M_Ref_int__balances0[_balances_ERC20[this]][sender_s185]) >= (amount_s185))) {
revert := true;
return;
}
assume ((M_Ref_int__balances0[_balances_ERC20[this]][sender_s185]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][sender_s185]) >= (0));
assume ((amount_s185) >= (0));
call __var_6 := sub_SafeMath__success(this, this, msgvalue_MSG, M_Ref_int__balances0[_balances_ERC20[this]][sender_s185], amount_s185);
if (revert) {
return;
}
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) - (M_Ref_int__balances0[_balances_ERC20[this]][sender_s185]);
M_Ref_int__balances0[_balances_ERC20[this]][sender_s185] := __var_6;
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) + (M_Ref_int__balances0[_balances_ERC20[this]][sender_s185]);
assume ((__var_6) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][recipient_s185]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][recipient_s185]) >= (0));
assume ((amount_s185) >= (0));
call __var_7 := add_SafeMath__success(this, this, msgvalue_MSG, M_Ref_int__balances0[_balances_ERC20[this]][recipient_s185], amount_s185);
if (revert) {
return;
}
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) - (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s185]);
M_Ref_int__balances0[_balances_ERC20[this]][recipient_s185] := __var_7;
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) + (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s185]);
assume ((__var_7) >= (0));
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation checkInvariant_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
assume ((_SumMapping_VeriSol(__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]])) >= (0));
}

implementation checkInvariant_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((_SumMapping_VeriSol(M_Ref_int__balances0[_balances_ERC20[this]])) >= (0));
assert ((_totalSupply_ERC20[this]) == (_SumMapping_VeriSol(M_Ref_int__balances0[_balances_ERC20[this]])));
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s482: int, b_s482: int) returns (__ret_0_: int)
{
var c_s481: int;
assume ((c_s481) >= (0));
assume ((a_s482) >= (0));
assume ((b_s482) >= (0));
assume (((a_s482) + (b_s482)) >= (0));
c_s481 := (a_s482) + (b_s482);
assume ((c_s481) >= (0));
assume ((a_s482) >= (0));
if (!((c_s481) >= (a_s482))) {
revert := true;
return;
}
assume ((c_s481) >= (0));
__ret_0_ := c_s481;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s482: int, b_s482: int) returns (__ret_0_: int)
{
var c_s481: int;
assume ((c_s481) >= (0));
assume ((a_s482) >= (0));
assume ((b_s482) >= (0));
assume (((a_s482) + (b_s482)) >= (0));
c_s481 := (a_s482) + (b_s482);
assume ((c_s481) >= (0));
assume ((a_s482) >= (0));
if (!((c_s481) >= (a_s482))) {
revert := true;
return;
}
assume ((c_s481) >= (0));
__ret_0_ := c_s481;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s507: int, b_s507: int) returns (__ret_0_: int)
{
var c_s506: int;
assume ((b_s507) >= (0));
assume ((a_s507) >= (0));
if (!((b_s507) <= (a_s507))) {
revert := true;
return;
}
assume ((c_s506) >= (0));
assume ((a_s507) >= (0));
assume ((b_s507) >= (0));
assume (((a_s507) - (b_s507)) >= (0));
c_s506 := (a_s507) - (b_s507);
assume ((c_s506) >= (0));
__ret_0_ := c_s506;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s507: int, b_s507: int) returns (__ret_0_: int)
{
var c_s506: int;
assume ((b_s507) >= (0));
assume ((a_s507) >= (0));
if (!((b_s507) <= (a_s507))) {
revert := true;
return;
}
assume ((c_s506) >= (0));
assume ((a_s507) >= (0));
assume ((b_s507) >= (0));
assume (((a_s507) - (b_s507)) >= (0));
c_s506 := (a_s507) - (b_s507);
assume ((c_s506) >= (0));
__ret_0_ := c_s506;
return;
}

implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s541: int, b_s541: int) returns (__ret_0_: int)
{
var c_s540: int;
assume ((a_s541) >= (0));
if ((a_s541) == (0)) {
__ret_0_ := 0;
return;
}
assume ((c_s540) >= (0));
assume ((a_s541) >= (0));
assume ((b_s541) >= (0));
assume ((nonlinearMul(a_s541, b_s541)) >= (0));
c_s540 := nonlinearMul(a_s541, b_s541);
assume ((c_s540) >= (0));
assume ((a_s541) >= (0));
assume ((nonlinearDiv(c_s540, a_s541)) >= (0));
assume ((b_s541) >= (0));
if (!((nonlinearDiv(c_s540, a_s541)) == (b_s541))) {
revert := true;
return;
}
assume ((c_s540) >= (0));
__ret_0_ := c_s540;
return;
}

implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s541: int, b_s541: int) returns (__ret_0_: int)
{
var c_s540: int;
assume ((a_s541) >= (0));
if ((a_s541) == (0)) {
__ret_0_ := 0;
return;
}
assume ((c_s540) >= (0));
assume ((a_s541) >= (0));
assume ((b_s541) >= (0));
assume ((nonlinearMul(a_s541, b_s541)) >= (0));
c_s540 := nonlinearMul(a_s541, b_s541);
assume ((c_s540) >= (0));
assume ((a_s541) >= (0));
assume ((nonlinearDiv(c_s540, a_s541)) >= (0));
assume ((b_s541) >= (0));
if (!((nonlinearDiv(c_s540, a_s541)) == (b_s541))) {
revert := true;
return;
}
assume ((c_s540) >= (0));
__ret_0_ := c_s540;
return;
}

implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s566: int, b_s566: int) returns (__ret_0_: int)
{
var c_s565: int;
assume ((b_s566) >= (0));
if (!((b_s566) > (0))) {
revert := true;
return;
}
assume ((c_s565) >= (0));
assume ((a_s566) >= (0));
assume ((b_s566) >= (0));
assume ((nonlinearDiv(a_s566, b_s566)) >= (0));
c_s565 := nonlinearDiv(a_s566, b_s566);
assume ((c_s565) >= (0));
__ret_0_ := c_s565;
return;
}

implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s566: int, b_s566: int) returns (__ret_0_: int)
{
var c_s565: int;
assume ((b_s566) >= (0));
if (!((b_s566) > (0))) {
revert := true;
return;
}
assume ((c_s565) >= (0));
assume ((a_s566) >= (0));
assume ((b_s566) >= (0));
assume ((nonlinearDiv(a_s566, b_s566)) >= (0));
c_s565 := nonlinearDiv(a_s566, b_s566);
assume ((c_s565) >= (0));
__ret_0_ := c_s565;
return;
}

implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s587: int, b_s587: int) returns (__ret_0_: int)
{
assume ((b_s587) >= (0));
if (!((b_s587) != (0))) {
revert := true;
return;
}
assume ((a_s587) >= (0));
assume ((b_s587) >= (0));
assume ((nonlinearMod(a_s587, b_s587)) >= (0));
__ret_0_ := nonlinearMod(a_s587, b_s587);
return;
}

implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s587: int, b_s587: int) returns (__ret_0_: int)
{
assume ((b_s587) >= (0));
if (!((b_s587) != (0))) {
revert := true;
return;
}
assume ((a_s587) >= (0));
assume ((b_s587) >= (0));
assume ((nonlinearMod(a_s587, b_s587)) >= (0));
__ret_0_ := nonlinearMod(a_s587, b_s587);
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20)) {
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
if ((DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20)) {
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
var __ret_0_totalSupply: int;
var account_s64: Ref;
var __ret_0_balanceOf: int;
var recipient_s119: Ref;
var amount_s119: int;
var __ret_0_transfer: bool;
var owner_s246: Ref;
var spender_s246: Ref;
var __ret_0_allowance: int;
var spender_s255: Ref;
var amount_s255: int;
var __ret_0_approve: bool;
var sender_s266: Ref;
var recipient_s266: Ref;
var amount_s266: int;
var __ret_0_transferFrom: bool;
var totalSupply_s44: int;
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
if ((__tmp__DType[from]) == (ERC20)) {
if ((choice) == (7)) {
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
call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s64);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s119, amount_s119);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_IERC20(from, to, msgvalue_MSG, owner_s246, spender_s246);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_IERC20(from, to, msgvalue_MSG, spender_s255, amount_s255);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_IERC20(from, to, msgvalue_MSG, sender_s266, recipient_s266, amount_s266);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call checkInvariant_ERC20__fail(from, to, msgvalue_MSG);
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
var __ret_0_totalSupply: int;
var account_s64: Ref;
var __ret_0_balanceOf: int;
var recipient_s119: Ref;
var amount_s119: int;
var __ret_0_transfer: bool;
var owner_s246: Ref;
var spender_s246: Ref;
var __ret_0_allowance: int;
var spender_s255: Ref;
var amount_s255: int;
var __ret_0_approve: bool;
var sender_s266: Ref;
var recipient_s266: Ref;
var amount_s266: int;
var __ret_0_transferFrom: bool;
var totalSupply_s44: int;
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
if ((DType[from]) == (ERC20)) {
if ((choice) == (7)) {
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
call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s64);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s119, amount_s119);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_IERC20(from, to, msgvalue_MSG, owner_s246, spender_s246);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_IERC20(from, to, msgvalue_MSG, spender_s255, amount_s255);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_IERC20(from, to, msgvalue_MSG, sender_s266, recipient_s266, amount_s266);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call checkInvariant_ERC20__success(from, to, msgvalue_MSG);
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
var __snap___tmp__M_Ref_int__balances0: [Ref][Ref]int;
var __snap___tmp__sum__balances0: [Ref]int;
var __snap___tmp__M_Ref_int__allowances1: [Ref][Ref]int;
var __snap___tmp__M_Ref_Ref__allowances1: [Ref][Ref]Ref;
var __snap___tmp__sum__allowances1: [Ref]int;
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__sum: [Ref]int;
var __snap___tmp__M_int_Ref: [Ref][int]Ref;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp___balances_ERC20: [Ref]Ref;
var __snap___tmp___allowances_ERC20: [Ref]Ref;
var __snap___tmp___totalSupply_ERC20: [Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int__balances0 := __tmp__M_Ref_int__balances0;
__snap___tmp__sum__balances0 := __tmp__sum__balances0;
__snap___tmp__M_Ref_int__allowances1 := __tmp__M_Ref_int__allowances1;
__snap___tmp__M_Ref_Ref__allowances1 := __tmp__M_Ref_Ref__allowances1;
__snap___tmp__sum__allowances1 := __tmp__sum__allowances1;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__sum := __tmp__sum;
__snap___tmp__M_int_Ref := __tmp__M_int_Ref;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
__snap___tmp___allowances_ERC20 := __tmp___allowances_ERC20;
__snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int__balances0 := __snap___tmp__M_Ref_int__balances0;
__tmp__sum__balances0 := __snap___tmp__sum__balances0;
__tmp__M_Ref_int__allowances1 := __snap___tmp__M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := __snap___tmp__M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := __snap___tmp__sum__allowances1;
__tmp__M_Ref_int := __snap___tmp__M_Ref_int;
__tmp__sum := __snap___tmp__sum;
__tmp__M_int_Ref := __snap___tmp__M_int_Ref;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
__tmp___allowances_ERC20 := __snap___tmp___allowances_ERC20;
__tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
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
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
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

implementation CorralChoice_ERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s64: Ref;
var __ret_0_balanceOf: int;
var recipient_s119: Ref;
var amount_s119: int;
var __ret_0_transfer: bool;
var owner_s246: Ref;
var spender_s246: Ref;
var __ret_0_allowance: int;
var spender_s255: Ref;
var amount_s255: int;
var __ret_0_approve: bool;
var sender_s266: Ref;
var recipient_s266: Ref;
var amount_s266: int;
var __ret_0_transferFrom: bool;
var totalSupply_s44: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s64;
havoc __ret_0_balanceOf;
havoc recipient_s119;
havoc amount_s119;
havoc __ret_0_transfer;
havoc owner_s246;
havoc spender_s246;
havoc __ret_0_allowance;
havoc spender_s255;
havoc amount_s255;
havoc __ret_0_approve;
havoc sender_s266;
havoc recipient_s266;
havoc amount_s266;
havoc __ret_0_transferFrom;
havoc totalSupply_s44;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (VeriSol));
assume ((DType[msgsender_MSG]) != (SafeMath));
Alloc[msgsender_MSG] := true;
if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s64);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s119, amount_s119);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s246, spender_s246);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s255, amount_s255);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s266, recipient_s266, amount_s266);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call checkInvariant_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var totalSupply_s44: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (ERC20));
gas := (gas) - (53000);
call ERC20_ERC20(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  invariant (_totalSupply_ERC20[this]) == (_SumMapping_VeriSol(M_Ref_int__balances0[_balances_ERC20[this]]));
{
call CorralChoice_ERC20(this);
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
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (VeriSol));
assume ((DType[msgsender_MSG]) != (SafeMath));
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
assume (((DType[this]) == (ERC20)) || ((DType[this]) == (IERC20)));
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
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (VeriSol));
assume ((DType[msgsender_MSG]) != (SafeMath));
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


