// #LTLProperty: [](started(ERC20.totalSupply) ==> <>(finished(ERC20.totalSupply, __ret_0_ == this._totalSupply && this._totalSupply == old(this._totalSupply) && this._balances == old(this._balances) && this._allowances == old(this._allowances))))
// LTLProperty: [](started(ERC20.totalSupply) ==> <>(finished(ERC20.totalSupply, __ret_0_ == this._totalSupply && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && M_Ref_int__allowances1 == old(M_Ref_int__allowances1) && M_Ref_Ref__allowances1 == old(M_Ref_Ref__allowances1))))

// LTLProperty: [](started(ERC20.balanceOf) ==> <>(finished(ERC20.balanceOf(owner), __ret_0_ == this._balances[owner] && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && M_Ref_int__allowances1 == old(M_Ref_int__allowances1) && M_Ref_Ref__allowances1 == old(M_Ref_Ref__allowances1))))

// LTLProperty: [](started(ERC20.allowance) ==> <>(finished(ERC20.allowance(owner, spender), __ret_0_ == this._allowances[owner][spender] && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && M_Ref_int__allowances1 == old(M_Ref_int__allowances1) && M_Ref_Ref__allowances1 == old(M_Ref_Ref__allowances1))))

// LTLVariables: i0:Ref
// LTLProperty: [](started(ERC20.allowance) ==> <>(finished(ERC20.allowance(owner, spender), __ret_0_ == this._allowances[owner][spender] && this._totalSupply == old(this._totalSupply) && M_Ref_int__balances0[_balances_ERC20[this]] == old(M_Ref_int__balances0[_balances_ERC20[this]]) && M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][i0]] == old(M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][i0]]))))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique Context: ContractName;
const unique SafeMath: ContractName;
const unique IERC20: ContractName;
const unique ERC20: ContractName;
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
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies Balance;
implementation Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies gas;
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

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s99: int, b_s99: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s124: int, b_s124: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int) returns (__ret_0_: int);
modifies revert;
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
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s158: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s167: Ref, amount_s167: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s176: Ref, spender_s176: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s185: Ref, amount_s185: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s196: Ref, recipient_s196: Ref, amount_s196: int) returns (__ret_0_: bool);
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _balances_ERC20;
modifies M_Ref_int__balances0;
modifies sum__balances0;
modifies _allowances_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies _totalSupply_ERC20;
modifies Alloc;
procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
__tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
__tmp__sum__balances0 := sum__balances0;
__tmp__M_Ref_int__allowances1 := M_Ref_int__allowances1;
__tmp__M_Ref_Ref__allowances1 := M_Ref_Ref__allowances1;
__tmp__sum__allowances1 := sum__allowances1;
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this._balances[i0]=M_Ref_int__balances0[_balances_ERC20[this]][i0]"} {:sum "sum(this._balances)=sum__balances0[_balances_ERC20[this]]"} _balances_ERC20: [Ref]Ref;
var {:access "this._allowances[i0][i1]=M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][i0]][i1]"} {:sum "sum(this._allowances)=sum__allowances1[_allowances_ERC20[this]]"} _allowances_ERC20: [Ref]Ref;
var {:access "this._totalSupply=_totalSupply_ERC20[this]"} _totalSupply_ERC20: [Ref]int;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
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

procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s252: Ref) returns (__ret_0_: int);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s252: Ref) returns (__ret_0_: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s252);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s252);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s267: Ref, amount_s267: int) returns (__ret_0_: bool);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
modifies sum__balances0;
modifies M_Ref_int__balances0;
implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s267: Ref, amount_s267: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s267, amount_s267);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s267, amount_s267);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transfer_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s286: Ref, amount_s286: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:public} {:inline 1} allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s302: Ref, spender_s302: Ref) returns (__ret_0_: int);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
implementation allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s302: Ref, spender_s302: Ref) returns (__ret_0_: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s302, spender_s302);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s302, spender_s302);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s317: Ref, amount_s317: int) returns (__ret_0_: bool);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
implementation approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s317: Ref, amount_s317: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s317, amount_s317);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s317, amount_s317);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} approve_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s336: Ref, amount_s336: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s354: Ref, recipient_s354: Ref, amount_s354: int) returns (__ret_0_: bool);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies sum__balances0;
modifies M_Ref_int__balances0;
modifies Alloc;
implementation transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s354: Ref, recipient_s354: Ref, amount_s354: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s354, recipient_s354, amount_s354);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s354, recipient_s354, amount_s354);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transferFrom_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s389: Ref, recipient_s389: Ref, amount_s389: int) returns (__ret_0_: bool);
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
modifies Alloc;
procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s404: Ref, addedValue_s404: int) returns (__ret_0_: bool);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
implementation increaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s404: Ref, addedValue_s404: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s404, addedValue_s404);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s404, addedValue_s404);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} increaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s431: Ref, addedValue_s431: int) returns (__ret_0_: bool);
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
modifies revert;
procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s446: Ref, subtractedValue_s446: int) returns (__ret_0_: bool);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
implementation decreaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s446: Ref, subtractedValue_s446: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s446, subtractedValue_s446);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s446, subtractedValue_s446);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} decreaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s473: Ref, subtractedValue_s473: int) returns (__ret_0_: bool);
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
modifies revert;
procedure {:inline 1} _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s529: Ref, recipient_s529: Ref, amount_s529: int);
modifies gas;
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:inline 1} _mint_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s542: Ref, amount_s542: int);
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies M_Ref_int__balances0;
modifies gas;
procedure {:inline 1} _mint_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s585: Ref, amount_s585: int);
modifies revert;
modifies _totalSupply_ERC20;
modifies sum__balances0;
modifies M_Ref_int__balances0;
modifies gas;
procedure {:inline 1} _burn_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s628: Ref, amount_s628: int);
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
modifies _totalSupply_ERC20;
modifies gas;
procedure {:inline 1} _approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s670: Ref, spender_s670: Ref, amount_s670: int);
modifies gas;
modifies revert;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s698: Ref, amount_s698: int);
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
modifies _totalSupply_ERC20;
modifies gas;
modifies Alloc;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies revert;
modifies gas;
modifies Balance;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure CorralChoice_Context(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_Context();
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies now;
modifies Balance;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_SafeMath();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_IERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_IERC20();
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
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure main();
modifies gas;
modifies Alloc;
modifies Balance;
modifies _balances_ERC20;
modifies M_Ref_int__balances0;
modifies sum__balances0;
modifies _allowances_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies _totalSupply_ERC20;
modifies now;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies sum__allowances1;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int__balances0: [Ref][Ref]int;
var __tmp__sum__balances0: [Ref]int;
var __tmp__M_Ref_int__allowances1: [Ref][Ref]int;
var __tmp__M_Ref_Ref__allowances1: [Ref][Ref]Ref;
var __tmp__sum__allowances1: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp___balances_ERC20: [Ref]Ref;
var __tmp___allowances_ERC20: [Ref]Ref;
var __tmp___totalSupply_ERC20: [Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies gas;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s99: int, b_s99: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s124: int, b_s124: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp___allowances_ERC20;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__Alloc;
procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _balances_ERC20;
modifies M_Ref_int__balances0;
modifies sum__balances0;
modifies _allowances_ERC20;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies _totalSupply_ERC20;
modifies Alloc;
procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___balances_ERC20;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__sum__balances0;
modifies __tmp___allowances_ERC20;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__Alloc;
procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies gas;
procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies gas;
procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s252: Ref) returns (__ret_0_: int);
modifies gas;
procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s252: Ref) returns (__ret_0_: int);
modifies gas;
procedure {:inline 1} transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s267: Ref, amount_s267: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
procedure {:inline 1} transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s267: Ref, amount_s267: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} transfer_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s286: Ref, amount_s286: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} allowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s302: Ref, spender_s302: Ref) returns (__ret_0_: int);
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
procedure {:inline 1} allowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s302: Ref, spender_s302: Ref) returns (__ret_0_: int);
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
procedure {:inline 1} approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s317: Ref, amount_s317: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
procedure {:inline 1} approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s317: Ref, amount_s317: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
procedure {:inline 1} approve_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s336: Ref, amount_s336: int) returns (__ret_0_: bool);
modifies gas;
modifies revert;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s354: Ref, recipient_s354: Ref, amount_s354: int) returns (__ret_0_: bool);
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies revert;
modifies sum__balances0;
modifies M_Ref_int__balances0;
modifies Alloc;
procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s354: Ref, recipient_s354: Ref, amount_s354: int) returns (__ret_0_: bool);
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s389: Ref, recipient_s389: Ref, amount_s389: int) returns (__ret_0_: bool);
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp__Alloc;
procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s404: Ref, addedValue_s404: int) returns (__ret_0_: bool);
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
modifies revert;
procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s404: Ref, addedValue_s404: int) returns (__ret_0_: bool);
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} increaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s431: Ref, addedValue_s431: int) returns (__ret_0_: bool);
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s446: Ref, subtractedValue_s446: int) returns (__ret_0_: bool);
modifies gas;
modifies M_Ref_Ref__allowances1;
modifies M_Ref_int__allowances1;
modifies sum__allowances1;
modifies Alloc;
modifies revert;
procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s446: Ref, subtractedValue_s446: int) returns (__ret_0_: bool);
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} decreaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s473: Ref, subtractedValue_s473: int) returns (__ret_0_: bool);
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s529: Ref, recipient_s529: Ref, amount_s529: int);
modifies gas;
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} _mint_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s542: Ref, amount_s542: int);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
modifies gas;
procedure {:inline 1} _mint_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s585: Ref, amount_s585: int);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
modifies gas;
procedure {:inline 1} _burn_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s628: Ref, amount_s628: int);
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp___totalSupply_ERC20;
modifies gas;
procedure {:inline 1} _approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s670: Ref, spender_s670: Ref, amount_s670: int);
modifies gas;
modifies revert;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s698: Ref, amount_s698: int);
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies revert;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
modifies __tmp___totalSupply_ERC20;
modifies gas;
modifies __tmp__Alloc;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
modifies __tmp__sum__balances0;
modifies __tmp__M_Ref_int__balances0;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__M_Ref_Ref__allowances1;
modifies __tmp__M_Ref_int__allowances1;
modifies __tmp__sum__allowances1;
modifies __tmp__Alloc;
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

implementation Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
gas := (gas) - (3);
gas := (gas) - (7);
__ret_0_ := msgsender_MSG;
return;
}

implementation _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
gas := (gas) - (3);
gas := (gas) - (7);
__ret_0_ := msgsender_MSG;
return;
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int)
{
var c_s39: int;
gas := (gas) - (3);
gas := (gas) - (17);
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
assume ((b_s40) >= (0));
assume (((a_s40) + (b_s40)) >= (0));
c_s39 := (a_s40) + (b_s40);
gas := (gas) - (664);
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
if (!((c_s39) >= (a_s40))) {
revert := true;
return;
}
gas := (gas) - (10);
assume ((c_s39) >= (0));
__ret_0_ := c_s39;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int)
{
var c_s39: int;
gas := (gas) - (3);
gas := (gas) - (17);
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
assume ((b_s40) >= (0));
assume (((a_s40) + (b_s40)) >= (0));
c_s39 := (a_s40) + (b_s40);
gas := (gas) - (664);
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
if (!((c_s39) >= (a_s40))) {
revert := true;
return;
}
gas := (gas) - (10);
assume ((c_s39) >= (0));
__ret_0_ := c_s39;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int)
{
var c_s64: int;
gas := (gas) - (3);
gas := (gas) - (664);
assume ((b_s65) >= (0));
assume ((a_s65) >= (0));
if (!((b_s65) <= (a_s65))) {
revert := true;
return;
}
gas := (gas) - (17);
assume ((c_s64) >= (0));
assume ((a_s65) >= (0));
assume ((b_s65) >= (0));
assume (((a_s65) - (b_s65)) >= (0));
c_s64 := (a_s65) - (b_s65);
gas := (gas) - (10);
assume ((c_s64) >= (0));
__ret_0_ := c_s64;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int)
{
var c_s64: int;
gas := (gas) - (3);
gas := (gas) - (664);
assume ((b_s65) >= (0));
assume ((a_s65) >= (0));
if (!((b_s65) <= (a_s65))) {
revert := true;
return;
}
gas := (gas) - (17);
assume ((c_s64) >= (0));
assume ((a_s65) >= (0));
assume ((b_s65) >= (0));
assume (((a_s65) - (b_s65)) >= (0));
c_s64 := (a_s65) - (b_s65);
gas := (gas) - (10);
assume ((c_s64) >= (0));
__ret_0_ := c_s64;
return;
}

implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s99: int, b_s99: int) returns (__ret_0_: int)
{
var c_s98: int;
assume ((a_s99) >= (0));
if ((a_s99) == (0)) {
__ret_0_ := 0;
return;
}
assume ((c_s98) >= (0));
assume ((a_s99) >= (0));
assume ((b_s99) >= (0));
assume ((nonlinearMul(a_s99, b_s99)) >= (0));
c_s98 := nonlinearMul(a_s99, b_s99);
assume ((c_s98) >= (0));
assume ((a_s99) >= (0));
assume ((nonlinearDiv(c_s98, a_s99)) >= (0));
assume ((b_s99) >= (0));
if (!((nonlinearDiv(c_s98, a_s99)) == (b_s99))) {
revert := true;
return;
}
assume ((c_s98) >= (0));
__ret_0_ := c_s98;
return;
}

implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s99: int, b_s99: int) returns (__ret_0_: int)
{
var c_s98: int;
assume ((a_s99) >= (0));
if ((a_s99) == (0)) {
__ret_0_ := 0;
return;
}
assume ((c_s98) >= (0));
assume ((a_s99) >= (0));
assume ((b_s99) >= (0));
assume ((nonlinearMul(a_s99, b_s99)) >= (0));
c_s98 := nonlinearMul(a_s99, b_s99);
assume ((c_s98) >= (0));
assume ((a_s99) >= (0));
assume ((nonlinearDiv(c_s98, a_s99)) >= (0));
assume ((b_s99) >= (0));
if (!((nonlinearDiv(c_s98, a_s99)) == (b_s99))) {
revert := true;
return;
}
assume ((c_s98) >= (0));
__ret_0_ := c_s98;
return;
}

implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s124: int, b_s124: int) returns (__ret_0_: int)
{
var c_s123: int;
assume ((b_s124) >= (0));
if (!((b_s124) > (0))) {
revert := true;
return;
}
assume ((c_s123) >= (0));
assume ((a_s124) >= (0));
assume ((b_s124) >= (0));
assume ((nonlinearDiv(a_s124, b_s124)) >= (0));
c_s123 := nonlinearDiv(a_s124, b_s124);
assume ((c_s123) >= (0));
__ret_0_ := c_s123;
return;
}

implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s124: int, b_s124: int) returns (__ret_0_: int)
{
var c_s123: int;
assume ((b_s124) >= (0));
if (!((b_s124) > (0))) {
revert := true;
return;
}
assume ((c_s123) >= (0));
assume ((a_s124) >= (0));
assume ((b_s124) >= (0));
assume ((nonlinearDiv(a_s124, b_s124)) >= (0));
c_s123 := nonlinearDiv(a_s124, b_s124);
assume ((c_s123) >= (0));
__ret_0_ := c_s123;
return;
}

implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int) returns (__ret_0_: int)
{
assume ((b_s145) >= (0));
if (!((b_s145) != (0))) {
revert := true;
return;
}
assume ((a_s145) >= (0));
assume ((b_s145) >= (0));
assume ((nonlinearMod(a_s145, b_s145)) >= (0));
__ret_0_ := nonlinearMod(a_s145, b_s145);
return;
}

implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int) returns (__ret_0_: int)
{
assume ((b_s145) >= (0));
if (!((b_s145) != (0))) {
revert := true;
return;
}
assume ((a_s145) >= (0));
assume ((b_s145) >= (0));
assume ((nonlinearMod(a_s145, b_s145)) >= (0));
__ret_0_ := nonlinearMod(a_s145, b_s145);
return;
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

implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_1 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___balances_ERC20[this] := __var_1;
// Initialize Integer mapping _balances
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]] := zeroRefIntArr();
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := 0;
// Make array/mapping vars distinct for _allowances
call __var_2 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___allowances_ERC20[this] := __var_2;
// Initialize length of 1-level nested array in _allowances
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]] := zeroRefRefArr();
__tmp__M_Ref_int__allowances1[null] := zeroRefIntArr();
__tmp___totalSupply_ERC20[this] := 0;
// end of initialization
}

implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_1 := FreshRefGenerator__success();
if (revert) {
return;
}
_balances_ERC20[this] := __var_1;
// Initialize Integer mapping _balances
M_Ref_int__balances0[_balances_ERC20[this]] := zeroRefIntArr();
sum__balances0[_balances_ERC20[this]] := 0;
// Make array/mapping vars distinct for _allowances
call __var_2 := FreshRefGenerator__success();
if (revert) {
return;
}
_allowances_ERC20[this] := __var_2;
// Initialize length of 1-level nested array in _allowances
M_Ref_Ref__allowances1[_allowances_ERC20[this]] := zeroRefRefArr();
M_Ref_int__allowances1[null] := zeroRefIntArr();
_totalSupply_ERC20[this] := 0;
// end of initialization
}

implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
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
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
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
gas := (gas) - (3);
gas := (gas) - (208);
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
__ret_0_ := __tmp___totalSupply_ERC20[this];
return;
}

implementation totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
gas := (gas) - (3);
gas := (gas) - (208);
assume ((_totalSupply_ERC20[this]) >= (0));
__ret_0_ := _totalSupply_ERC20[this];
return;
}

implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s252: Ref) returns (__ret_0_: int)
{
gas := (gas) - (3);
gas := (gas) - (304);
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s252]) >= (0));
__ret_0_ := __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s252];
return;
}

implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s252: Ref) returns (__ret_0_: int)
{
gas := (gas) - (3);
gas := (gas) - (304);
assume ((M_Ref_int__balances0[_balances_ERC20[this]][account_s252]) >= (0));
__ret_0_ := M_Ref_int__balances0[_balances_ERC20[this]][account_s252];
return;
}

implementation transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s267: Ref, amount_s267: int) returns (__ret_0_: bool)
{
var __var_3: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((amount_s267) >= (0));
call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s267, amount_s267);
if (revert) {
return;
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s267: Ref, amount_s267: int) returns (__ret_0_: bool)
{
var __var_3: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((amount_s267) >= (0));
call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s267, amount_s267);
if (revert) {
return;
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s286: Ref, amount_s286: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
gas := (gas) - (3);
gas := (gas) - (36);
if ((__tmp__DType[this]) == (ERC20)) {
call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((amount_s286) >= (0));
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s286, amount_s286);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation transfer_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s286: Ref, amount_s286: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
gas := (gas) - (3);
gas := (gas) - (36);
if ((DType[this]) == (ERC20)) {
call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((amount_s286) >= (0));
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s286, amount_s286);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation allowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s302: Ref, spender_s302: Ref) returns (__ret_0_: int)
{
var __var_5: Ref;
gas := (gas) - (3);
gas := (gas) - (394);
if ((__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s302]) == (null)) {
call __var_5 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s302] := __var_5;
__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s302]] := zeroRefIntArr();
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s302]] := 0;
}
assume ((__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s302]][spender_s302]) >= (0));
__ret_0_ := __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s302]][spender_s302];
return;
}

implementation allowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s302: Ref, spender_s302: Ref) returns (__ret_0_: int)
{
var __var_5: Ref;
gas := (gas) - (3);
gas := (gas) - (394);
if ((M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s302]) == (null)) {
call __var_5 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s302] := __var_5;
M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s302]] := zeroRefIntArr();
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s302]] := 0;
}
assume ((M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s302]][spender_s302]) >= (0));
__ret_0_ := M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s302]][spender_s302];
return;
}

implementation approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s317: Ref, amount_s317: int) returns (__ret_0_: bool)
{
var __var_6: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((amount_s317) >= (0));
call __var_6 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s317, amount_s317);
if (revert) {
return;
}
__ret_0_ := __var_6;
return;
}

implementation approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s317: Ref, amount_s317: int) returns (__ret_0_: bool)
{
var __var_6: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((amount_s317) >= (0));
call __var_6 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s317, amount_s317);
if (revert) {
return;
}
__ret_0_ := __var_6;
return;
}

implementation approve_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s336: Ref, amount_s336: int) returns (__ret_0_: bool)
{
var __var_7: Ref;
gas := (gas) - (3);
gas := (gas) - (14);
if ((__tmp__DType[this]) == (ERC20)) {
call __var_7 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((amount_s336) >= (0));
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_7, spender_s336, amount_s336);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation approve_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s336: Ref, amount_s336: int) returns (__ret_0_: bool)
{
var __var_7: Ref;
gas := (gas) - (3);
gas := (gas) - (14);
if ((DType[this]) == (ERC20)) {
call __var_7 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((amount_s336) >= (0));
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_7, spender_s336, amount_s336);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s354: Ref, recipient_s354: Ref, amount_s354: int) returns (__ret_0_: bool)
{
var __var_8: bool;
gas := (gas) - (3);
gas := (gas) - (18);
assume ((amount_s354) >= (0));
call __var_8 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s354, recipient_s354, amount_s354);
if (revert) {
return;
}
__ret_0_ := __var_8;
return;
}

implementation transferFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s354: Ref, recipient_s354: Ref, amount_s354: int) returns (__ret_0_: bool)
{
var __var_8: bool;
gas := (gas) - (3);
gas := (gas) - (18);
assume ((amount_s354) >= (0));
call __var_8 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s354, recipient_s354, amount_s354);
if (revert) {
return;
}
__ret_0_ := __var_8;
return;
}

implementation transferFrom_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s389: Ref, recipient_s389: Ref, amount_s389: int) returns (__ret_0_: bool)
{
var __var_9: Ref;
var __var_10: int;
var __var_11: Ref;
var __var_12: Ref;
gas := (gas) - (3);
gas := (gas) - (13);
assume ((amount_s389) >= (0));
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s389, recipient_s389, amount_s389);
if (revert) {
return;
}
gas := (gas) - (946);
if ((__tmp__DType[this]) == (ERC20)) {
call __var_9 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_10) >= (0));
if ((__tmp__DType[this]) == (ERC20)) {
call __var_11 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s389]) == (null)) {
call __var_12 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s389] := __var_12;
__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s389]] := zeroRefIntArr();
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s389]] := 0;
}
assume ((__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s389]][__var_11]) >= (0));
assume ((amount_s389) >= (0));
call __var_10 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][sender_s389]][__var_11], amount_s389);
if (revert) {
return;
}
assume ((__var_10) >= (0));
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s389, __var_9, __var_10);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s389: Ref, recipient_s389: Ref, amount_s389: int) returns (__ret_0_: bool)
{
var __var_9: Ref;
var __var_10: int;
var __var_11: Ref;
var __var_12: Ref;
gas := (gas) - (3);
gas := (gas) - (13);
assume ((amount_s389) >= (0));
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s389, recipient_s389, amount_s389);
if (revert) {
return;
}
gas := (gas) - (946);
if ((DType[this]) == (ERC20)) {
call __var_9 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_10) >= (0));
if ((DType[this]) == (ERC20)) {
call __var_11 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s389]) == (null)) {
call __var_12 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s389] := __var_12;
M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s389]] := zeroRefIntArr();
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s389]] := 0;
}
assume ((M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s389]][__var_11]) >= (0));
assume ((amount_s389) >= (0));
call __var_10 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][sender_s389]][__var_11], amount_s389);
if (revert) {
return;
}
assume ((__var_10) >= (0));
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s389, __var_9, __var_10);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation increaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s404: Ref, addedValue_s404: int) returns (__ret_0_: bool)
{
var __var_13: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((addedValue_s404) >= (0));
call __var_13 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s404, addedValue_s404);
if (revert) {
return;
}
__ret_0_ := __var_13;
return;
}

implementation increaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s404: Ref, addedValue_s404: int) returns (__ret_0_: bool)
{
var __var_13: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((addedValue_s404) >= (0));
call __var_13 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s404, addedValue_s404);
if (revert) {
return;
}
__ret_0_ := __var_13;
return;
}

implementation increaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s431: Ref, addedValue_s431: int) returns (__ret_0_: bool)
{
var __var_14: Ref;
var __var_15: int;
var __var_16: Ref;
var __var_17: Ref;
gas := (gas) - (3);
gas := (gas) - (940);
if ((__tmp__DType[this]) == (ERC20)) {
call __var_14 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_15) >= (0));
if ((__tmp__DType[this]) == (ERC20)) {
call __var_16 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_16]) == (null)) {
call __var_17 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_16] := __var_17;
__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_16]] := zeroRefIntArr();
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_16]] := 0;
}
assume ((__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_16]][spender_s431]) >= (0));
assume ((addedValue_s431) >= (0));
call __var_15 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_16]][spender_s431], addedValue_s431);
if (revert) {
return;
}
assume ((__var_15) >= (0));
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_14, spender_s431, __var_15);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation increaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s431: Ref, addedValue_s431: int) returns (__ret_0_: bool)
{
var __var_14: Ref;
var __var_15: int;
var __var_16: Ref;
var __var_17: Ref;
gas := (gas) - (3);
gas := (gas) - (940);
if ((DType[this]) == (ERC20)) {
call __var_14 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_15) >= (0));
if ((DType[this]) == (ERC20)) {
call __var_16 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_16]) == (null)) {
call __var_17 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_16] := __var_17;
M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_16]] := zeroRefIntArr();
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_16]] := 0;
}
assume ((M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_16]][spender_s431]) >= (0));
assume ((addedValue_s431) >= (0));
call __var_15 := add_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_16]][spender_s431], addedValue_s431);
if (revert) {
return;
}
assume ((__var_15) >= (0));
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_14, spender_s431, __var_15);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation decreaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s446: Ref, subtractedValue_s446: int) returns (__ret_0_: bool)
{
var __var_18: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((subtractedValue_s446) >= (0));
call __var_18 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s446, subtractedValue_s446);
if (revert) {
return;
}
__ret_0_ := __var_18;
return;
}

implementation decreaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s446: Ref, subtractedValue_s446: int) returns (__ret_0_: bool)
{
var __var_18: bool;
gas := (gas) - (3);
gas := (gas) - (15);
assume ((subtractedValue_s446) >= (0));
call __var_18 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s446, subtractedValue_s446);
if (revert) {
return;
}
__ret_0_ := __var_18;
return;
}

implementation decreaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s473: Ref, subtractedValue_s473: int) returns (__ret_0_: bool)
{
var __var_19: Ref;
var __var_20: int;
var __var_21: Ref;
var __var_22: Ref;
gas := (gas) - (3);
gas := (gas) - (940);
if ((__tmp__DType[this]) == (ERC20)) {
call __var_19 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_20) >= (0));
if ((__tmp__DType[this]) == (ERC20)) {
call __var_21 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_21]) == (null)) {
call __var_22 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_21] := __var_22;
__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_21]] := zeroRefIntArr();
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_21]] := 0;
}
assume ((__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_21]][spender_s473]) >= (0));
assume ((subtractedValue_s473) >= (0));
call __var_20 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][__var_21]][spender_s473], subtractedValue_s473);
if (revert) {
return;
}
assume ((__var_20) >= (0));
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_19, spender_s473, __var_20);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation decreaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s473: Ref, subtractedValue_s473: int) returns (__ret_0_: bool)
{
var __var_19: Ref;
var __var_20: int;
var __var_21: Ref;
var __var_22: Ref;
gas := (gas) - (3);
gas := (gas) - (940);
if ((DType[this]) == (ERC20)) {
call __var_19 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_20) >= (0));
if ((DType[this]) == (ERC20)) {
call __var_21 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_21]) == (null)) {
call __var_22 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_21] := __var_22;
M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_21]] := zeroRefIntArr();
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_21]] := 0;
}
assume ((M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_21]][spender_s473]) >= (0));
assume ((subtractedValue_s473) >= (0));
call __var_20 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][__var_21]][spender_s473], subtractedValue_s473);
if (revert) {
return;
}
assume ((__var_20) >= (0));
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_19, spender_s473, __var_20);
if (revert) {
return;
}
gas := (gas) - (8);
__ret_0_ := true;
return;
}

implementation _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s529: Ref, recipient_s529: Ref, amount_s529: int)
{
var __var_23: Ref;
var __var_24: Ref;
var __var_25: int;
var __var_26: int;
gas := (gas) - (683);
__var_23 := null;
if (!((sender_s529) != (null))) {
revert := true;
return;
}
gas := (gas) - (683);
__var_24 := null;
if (!((recipient_s529) != (null))) {
revert := true;
return;
}
gas := (gas) - (20439);
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s529]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s529]) >= (0));
assume ((amount_s529) >= (0));
call __var_25 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s529], amount_s529);
if (revert) {
return;
}
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) - (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s529]);
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s529] := __var_25;
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][sender_s529]);
assume ((__var_25) >= (0));
gas := (gas) - (20433);
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s529]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s529]) >= (0));
assume ((amount_s529) >= (0));
call __var_26 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s529], amount_s529);
if (revert) {
return;
}
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) - (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s529]);
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s529] := __var_26;
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][recipient_s529]);
assume ((__var_26) >= (0));
}

implementation _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s529: Ref, recipient_s529: Ref, amount_s529: int)
{
var __var_23: Ref;
var __var_24: Ref;
var __var_25: int;
var __var_26: int;
gas := (gas) - (683);
__var_23 := null;
if (!((sender_s529) != (null))) {
revert := true;
return;
}
gas := (gas) - (683);
__var_24 := null;
if (!((recipient_s529) != (null))) {
revert := true;
return;
}
gas := (gas) - (20439);
assume ((M_Ref_int__balances0[_balances_ERC20[this]][sender_s529]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][sender_s529]) >= (0));
assume ((amount_s529) >= (0));
call __var_25 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][sender_s529], amount_s529);
if (revert) {
return;
}
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) - (M_Ref_int__balances0[_balances_ERC20[this]][sender_s529]);
M_Ref_int__balances0[_balances_ERC20[this]][sender_s529] := __var_25;
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) + (M_Ref_int__balances0[_balances_ERC20[this]][sender_s529]);
assume ((__var_25) >= (0));
gas := (gas) - (20433);
assume ((M_Ref_int__balances0[_balances_ERC20[this]][recipient_s529]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][recipient_s529]) >= (0));
assume ((amount_s529) >= (0));
call __var_26 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][recipient_s529], amount_s529);
if (revert) {
return;
}
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) - (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s529]);
M_Ref_int__balances0[_balances_ERC20[this]][recipient_s529] := __var_26;
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) + (M_Ref_int__balances0[_balances_ERC20[this]][recipient_s529]);
assume ((__var_26) >= (0));
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _mint_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s542: Ref, amount_s542: int)
{
assume ((amount_s542) >= (0));
call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s542, amount_s542);
if (revert) {
return;
}
}

implementation _mint_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s542: Ref, amount_s542: int)
{
assume ((amount_s542) >= (0));
call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s542, amount_s542);
if (revert) {
return;
}
}

implementation _mint_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s585: Ref, amount_s585: int)
{
var __var_27: Ref;
var __var_28: int;
var __var_29: int;
__var_27 := null;
if (!((account_s585) != (null))) {
revert := true;
return;
}
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
assume ((amount_s585) >= (0));
call __var_28 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s585);
if (revert) {
return;
}
__tmp___totalSupply_ERC20[this] := __var_28;
assume ((__var_28) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s585]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s585]) >= (0));
assume ((amount_s585) >= (0));
call __var_29 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s585], amount_s585);
if (revert) {
return;
}
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) - (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s585]);
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s585] := __var_29;
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s585]);
assume ((__var_29) >= (0));
}

implementation _mint_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s585: Ref, amount_s585: int)
{
var __var_27: Ref;
var __var_28: int;
var __var_29: int;
__var_27 := null;
if (!((account_s585) != (null))) {
revert := true;
return;
}
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((amount_s585) >= (0));
call __var_28 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s585);
if (revert) {
return;
}
_totalSupply_ERC20[this] := __var_28;
assume ((__var_28) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][account_s585]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][account_s585]) >= (0));
assume ((amount_s585) >= (0));
call __var_29 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s585], amount_s585);
if (revert) {
return;
}
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) - (M_Ref_int__balances0[_balances_ERC20[this]][account_s585]);
M_Ref_int__balances0[_balances_ERC20[this]][account_s585] := __var_29;
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) + (M_Ref_int__balances0[_balances_ERC20[this]][account_s585]);
assume ((__var_29) >= (0));
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _burn_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s628: Ref, amount_s628: int)
{
var __var_30: Ref;
var __var_31: int;
var __var_32: int;
__var_30 := null;
if (!((account_s628) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s628]) >= (0));
assume ((__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s628]) >= (0));
assume ((amount_s628) >= (0));
call __var_31 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s628], amount_s628);
if (revert) {
return;
}
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) - (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s628]);
__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s628] := __var_31;
__tmp__sum__balances0[__tmp___balances_ERC20[this]] := (__tmp__sum__balances0[__tmp___balances_ERC20[this]]) + (__tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s628]);
assume ((__var_31) >= (0));
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
assume ((__tmp___totalSupply_ERC20[this]) >= (0));
assume ((amount_s628) >= (0));
call __var_32 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s628);
if (revert) {
return;
}
__tmp___totalSupply_ERC20[this] := __var_32;
assume ((__var_32) >= (0));
}

implementation _burn_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s628: Ref, amount_s628: int)
{
var __var_30: Ref;
var __var_31: int;
var __var_32: int;
__var_30 := null;
if (!((account_s628) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int__balances0[_balances_ERC20[this]][account_s628]) >= (0));
assume ((M_Ref_int__balances0[_balances_ERC20[this]][account_s628]) >= (0));
assume ((amount_s628) >= (0));
call __var_31 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s628], amount_s628);
if (revert) {
return;
}
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) - (M_Ref_int__balances0[_balances_ERC20[this]][account_s628]);
M_Ref_int__balances0[_balances_ERC20[this]][account_s628] := __var_31;
sum__balances0[_balances_ERC20[this]] := (sum__balances0[_balances_ERC20[this]]) + (M_Ref_int__balances0[_balances_ERC20[this]][account_s628]);
assume ((__var_31) >= (0));
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((amount_s628) >= (0));
call __var_32 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s628);
if (revert) {
return;
}
_totalSupply_ERC20[this] := __var_32;
assume ((__var_32) >= (0));
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s670: Ref, spender_s670: Ref, amount_s670: int)
{
var __var_33: Ref;
var __var_34: Ref;
var __var_35: Ref;
gas := (gas) - (683);
__var_33 := null;
if (!((owner_s670) != (null))) {
revert := true;
return;
}
gas := (gas) - (683);
__var_34 := null;
if (!((spender_s670) != (null))) {
revert := true;
return;
}
gas := (gas) - (20200);
if ((__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]) == (null)) {
call __var_35 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670] := __var_35;
__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]] := zeroRefIntArr();
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]] := 0;
}
assume ((__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]][spender_s670]) >= (0));
assume ((amount_s670) >= (0));
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]] := (__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]]) - (__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]][spender_s670]);
__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]][spender_s670] := amount_s670;
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]] := (__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]]) + (__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][owner_s670]][spender_s670]);
}

implementation _approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s670: Ref, spender_s670: Ref, amount_s670: int)
{
var __var_33: Ref;
var __var_34: Ref;
var __var_35: Ref;
gas := (gas) - (683);
__var_33 := null;
if (!((owner_s670) != (null))) {
revert := true;
return;
}
gas := (gas) - (683);
__var_34 := null;
if (!((spender_s670) != (null))) {
revert := true;
return;
}
gas := (gas) - (20200);
if ((M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]) == (null)) {
call __var_35 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670] := __var_35;
M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]] := zeroRefIntArr();
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]] := 0;
}
assume ((M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]][spender_s670]) >= (0));
assume ((amount_s670) >= (0));
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]] := (sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]]) - (M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]][spender_s670]);
M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]][spender_s670] := amount_s670;
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]] := (sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]]) + (M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][owner_s670]][spender_s670]);
assert {:EventEmitted "Approval_ERC20"} (true);
}

implementation _burnFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s698: Ref, amount_s698: int)
{
var __var_36: Ref;
var __var_37: int;
var __var_38: Ref;
var __var_39: Ref;
assume ((amount_s698) >= (0));
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s698, amount_s698);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ERC20)) {
call __var_36 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_37) >= (0));
if ((__tmp__DType[this]) == (ERC20)) {
call __var_38 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s698]) == (null)) {
call __var_39 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s698] := __var_39;
__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s698]] := zeroRefIntArr();
__tmp__sum__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s698]] := 0;
}
assume ((__tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s698]][__var_38]) >= (0));
assume ((amount_s698) >= (0));
call __var_37 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowances1[__tmp__M_Ref_Ref__allowances1[__tmp___allowances_ERC20[this]][account_s698]][__var_38], amount_s698);
if (revert) {
return;
}
assume ((__var_37) >= (0));
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s698, __var_36, __var_37);
if (revert) {
return;
}
}

implementation _burnFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s698: Ref, amount_s698: int)
{
var __var_36: Ref;
var __var_37: int;
var __var_38: Ref;
var __var_39: Ref;
assume ((amount_s698) >= (0));
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s698, amount_s698);
if (revert) {
return;
}
if ((DType[this]) == (ERC20)) {
call __var_36 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_37) >= (0));
if ((DType[this]) == (ERC20)) {
call __var_38 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s698]) == (null)) {
call __var_39 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s698] := __var_39;
M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s698]] := zeroRefIntArr();
sum__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s698]] := 0;
}
assume ((M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s698]][__var_38]) >= (0));
assume ((amount_s698) >= (0));
call __var_37 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowances1[M_Ref_Ref__allowances1[_allowances_ERC20[this]][account_s698]][__var_38], amount_s698);
if (revert) {
return;
}
assume ((__var_37) >= (0));
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s698, __var_36, __var_37);
if (revert) {
return;
}
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Context)) {
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
if ((DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Context)) {
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
var account_s252: Ref;
var __ret_0_balanceOf: int;
var recipient_s267: Ref;
var amount_s267: int;
var __ret_0_transfer: bool;
var owner_s302: Ref;
var spender_s302: Ref;
var __ret_0_allowance: int;
var spender_s317: Ref;
var amount_s317: int;
var __ret_0_approve: bool;
var sender_s354: Ref;
var recipient_s354: Ref;
var amount_s354: int;
var __ret_0_transferFrom: bool;
var spender_s404: Ref;
var addedValue_s404: int;
var __ret_0_increaseAllowance: bool;
var spender_s446: Ref;
var subtractedValue_s446: int;
var __ret_0_decreaseAllowance: bool;
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
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__fail(from, to, msgvalue_MSG, account_s252);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__fail(from, to, msgvalue_MSG, recipient_s267, amount_s267);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__fail(from, to, msgvalue_MSG, owner_s302, spender_s302);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__fail(from, to, msgvalue_MSG, spender_s317, amount_s317);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__fail(from, to, msgvalue_MSG, sender_s354, recipient_s354, amount_s354);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s404, addedValue_s404);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__fail(from, to, msgvalue_MSG, spender_s446, subtractedValue_s446);
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
var account_s252: Ref;
var __ret_0_balanceOf: int;
var recipient_s267: Ref;
var amount_s267: int;
var __ret_0_transfer: bool;
var owner_s302: Ref;
var spender_s302: Ref;
var __ret_0_allowance: int;
var spender_s317: Ref;
var amount_s317: int;
var __ret_0_approve: bool;
var sender_s354: Ref;
var recipient_s354: Ref;
var amount_s354: int;
var __ret_0_transferFrom: bool;
var spender_s404: Ref;
var addedValue_s404: int;
var __ret_0_increaseAllowance: bool;
var spender_s446: Ref;
var subtractedValue_s446: int;
var __ret_0_decreaseAllowance: bool;
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
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20__success(from, to, msgvalue_MSG, account_s252);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20__success(from, to, msgvalue_MSG, recipient_s267, amount_s267);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20__success(from, to, msgvalue_MSG, owner_s302, spender_s302);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20__success(from, to, msgvalue_MSG, spender_s317, amount_s317);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20__success(from, to, msgvalue_MSG, sender_s354, recipient_s354, amount_s354);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s404, addedValue_s404);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20__success(from, to, msgvalue_MSG, spender_s446, subtractedValue_s446);
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (ERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_Context()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (Context)) || ((DType[this]) == (ERC20)));
gas := (gas) - (53000);
call Context_Context(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Context(this);
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
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (ERC20));
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
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (ERC20));
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
assume (((DType[this]) == (IERC20)) || ((DType[this]) == (ERC20)));
gas := (gas) - (53000);
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IERC20(this);
}
}

implementation CorralChoice_ERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s252: Ref;
var __ret_0_balanceOf: int;
var recipient_s267: Ref;
var amount_s267: int;
var __ret_0_transfer: bool;
var owner_s302: Ref;
var spender_s302: Ref;
var __ret_0_allowance: int;
var spender_s317: Ref;
var amount_s317: int;
var __ret_0_approve: bool;
var sender_s354: Ref;
var recipient_s354: Ref;
var amount_s354: int;
var __ret_0_transferFrom: bool;
var spender_s404: Ref;
var addedValue_s404: int;
var __ret_0_increaseAllowance: bool;
var spender_s446: Ref;
var subtractedValue_s446: int;
var __ret_0_decreaseAllowance: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s252;
havoc __ret_0_balanceOf;
havoc recipient_s267;
havoc amount_s267;
havoc __ret_0_transfer;
havoc owner_s302;
havoc spender_s302;
havoc __ret_0_allowance;
havoc spender_s317;
havoc amount_s317;
havoc __ret_0_approve;
havoc sender_s354;
havoc recipient_s354;
havoc amount_s354;
havoc __ret_0_transferFrom;
havoc spender_s404;
havoc addedValue_s404;
havoc __ret_0_increaseAllowance;
havoc spender_s446;
havoc subtractedValue_s446;
havoc __ret_0_decreaseAllowance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (ERC20));
Alloc[msgsender_MSG] := true;
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s252);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s267, amount_s267);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s302, spender_s302);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s317, amount_s317);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s354, recipient_s354, amount_s354);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s404, addedValue_s404);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s446, subtractedValue_s446);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (ERC20));
gas := (gas) - (53000);
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20(this);
}
}


