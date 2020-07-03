
// #LTLVariables: user:Ref
// #LTLFairness: [](!started(Underflow.transfer(to, amt), to == user))
// #LTLProperty: [](!finished(*, Underflow.balanceOf(user) > fsum(Underflow.deposit, 2, msg.sender == user)))

type Ref = int;
type ContractName = int;
var null: Ref;
var Underflow: ContractName;
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
var M_Ref_int_balances0: [Ref][Ref]int;
var sum_balances0: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} Underflow_Underflow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies balances_Underflow;
modifies M_Ref_int_balances0;
modifies sum_balances0;
modifies Alloc;
procedure {:inline 1} Underflow_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies Balance;
modifies balances_Underflow;
modifies M_Ref_int_balances0;
modifies sum_balances0;
modifies Alloc;
implementation Underflow_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
__tmp__sum_balances0 := sum_balances0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_Underflow := balances_Underflow;
call Underflow_Underflow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Underflow_Underflow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.balances[i0]=M_Ref_int_balances0[balances_Underflow[this]][i0]"} {:sum "sum(this.balances)=sum_balances0[balances_Underflow[this]]"} balances_Underflow: [Ref]Ref;
procedure {:public} {:inline 1} deposit_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies gas;
modifies Balance;
modifies sum_balances0;
modifies M_Ref_int_balances0;
implementation deposit_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
__tmp__sum_balances0 := sum_balances0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_Underflow := balances_Underflow;
call deposit_Underflow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call deposit_Underflow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s55: Ref, amt_s55: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies gas;
modifies sum_balances0;
modifies M_Ref_int_balances0;
implementation transfer_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s55: Ref, amt_s55: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
__tmp__sum_balances0 := sum_balances0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_Underflow := balances_Underflow;
call transfer_Underflow__fail(this, msgsender_MSG, msgvalue_MSG, to_s55, amt_s55);
assume ((revert) || ((gas) < (0)));
} else {
call transfer_Underflow__success(this, msgsender_MSG, msgvalue_MSG, to_s55, amt_s55);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdraw_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies gas;
modifies sum_balances0;
modifies M_Ref_int_balances0;
modifies Balance;
implementation withdraw_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
__tmp__sum_balances0 := sum_balances0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_Underflow := balances_Underflow;
call withdraw_Underflow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call withdraw_Underflow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} balanceOf_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s89: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies gas;
implementation balanceOf_Underflow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s89: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
__tmp__sum_balances0 := sum_balances0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_Underflow := balances_Underflow;
call __ret_0_ := balanceOf_Underflow__fail(this, msgsender_MSG, msgvalue_MSG, user_s89);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_Underflow__success(this, msgsender_MSG, msgvalue_MSG, user_s89);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} sub_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s114: int, b_s114: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} add_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s138: int, b_s138: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_balances0;
modifies M_Ref_int_balances0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_balances0;
modifies M_Ref_int_balances0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies revert;
modifies gas;
modifies Balance;
modifies sum_balances0;
modifies M_Ref_int_balances0;
procedure CorralChoice_Underflow(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies Balance;
modifies sum_balances0;
modifies M_Ref_int_balances0;
procedure main();
modifies gas;
modifies Alloc;
modifies Balance;
modifies balances_Underflow;
modifies M_Ref_int_balances0;
modifies sum_balances0;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int_balances0: [Ref][Ref]int;
var __tmp__sum_balances0: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__balances_Underflow: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Underflow_Underflow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__balances_Underflow;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Alloc;
procedure {:inline 1} Underflow_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies balances_Underflow;
modifies M_Ref_int_balances0;
modifies sum_balances0;
modifies Alloc;
procedure {:inline 1} Underflow_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__balances_Underflow;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Alloc;
procedure {:inline 1} deposit_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies gas;
modifies sum_balances0;
modifies M_Ref_int_balances0;
modifies revert;
procedure {:inline 1} deposit_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies gas;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_int_balances0;
modifies revert;
procedure {:inline 1} transfer_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s55: Ref, amt_s55: int);
modifies gas;
modifies sum_balances0;
modifies M_Ref_int_balances0;
modifies revert;
procedure {:inline 1} transfer_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s55: Ref, amt_s55: int);
modifies gas;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_int_balances0;
modifies revert;
procedure {:inline 1} withdraw_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies sum_balances0;
modifies M_Ref_int_balances0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
modifies Balance;
procedure {:inline 1} withdraw_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
procedure {:inline 1} balanceOf_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s89: Ref) returns (__ret_0_: int);
modifies gas;
procedure {:inline 1} balanceOf_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s89: Ref) returns (__ret_0_: int);
modifies gas;
procedure {:inline 1} sub_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s114: int, b_s114: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} add_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s138: int, b_s138: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_balances0;
modifies __tmp__sum_balances0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_Underflow;
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

implementation Underflow_Underflow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make array/mapping vars distinct for balances
call __var_1 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__balances_Underflow[this] := __var_1;
// Initialize Integer mapping balances
__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]] := zeroRefIntArr();
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := 0;
// end of initialization
}

implementation Underflow_Underflow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for balances
call __var_1 := FreshRefGenerator__success();
if (revert) {
return;
}
balances_Underflow[this] := __var_1;
// Initialize Integer mapping balances
M_Ref_int_balances0[balances_Underflow[this]] := zeroRefIntArr();
sum_balances0[balances_Underflow[this]] := 0;
// end of initialization
}

implementation Underflow_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Underflow_Underflow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Underflow_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Underflow_Underflow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation deposit_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_2: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
gas := (gas) - (20410);
call __var_2 := add_Underflow__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG], msgvalue_MSG);
if (revert) {
return;
}
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) - (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG]);
__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG] := __var_2;
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) + (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG]);
}

implementation deposit_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_2: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
gas := (gas) - (20410);
call __var_2 := add_Underflow__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG], msgvalue_MSG);
if (revert) {
return;
}
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) - (M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG]);
M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG] := __var_2;
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) + (M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG]);
}

implementation transfer_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s55: Ref, amt_s55: int)
{
var __var_3: int;
var __var_4: int;
gas := (gas) - (20411);
call __var_3 := sub_Underflow__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG], amt_s55);
if (revert) {
return;
}
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) - (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG]);
__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG] := __var_3;
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) + (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG]);
gas := (gas) - (20418);
call __var_4 := add_Underflow__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][to_s55], amt_s55);
if (revert) {
return;
}
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) - (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][to_s55]);
__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][to_s55] := __var_4;
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) + (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][to_s55]);
}

implementation transfer_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s55: Ref, amt_s55: int)
{
var __var_3: int;
var __var_4: int;
gas := (gas) - (20411);
call __var_3 := sub_Underflow__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG], amt_s55);
if (revert) {
return;
}
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) - (M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG]);
M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG] := __var_3;
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) + (M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG]);
gas := (gas) - (20418);
call __var_4 := add_Underflow__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int_balances0[balances_Underflow[this]][to_s55], amt_s55);
if (revert) {
return;
}
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) - (M_Ref_int_balances0[balances_Underflow[this]][to_s55]);
M_Ref_int_balances0[balances_Underflow[this]][to_s55] := __var_4;
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) + (M_Ref_int_balances0[balances_Underflow[this]][to_s55]);
}

implementation withdraw_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_5: int;
var __var_6: bool;
gas := (gas) - (36081);
__var_5 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_5 := (__var_5) - (gas);
call __var_6 := send__fail(this, msgsender_MSG, __tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG]);
if (!(__var_6)) {
revert := true;
return;
}
gas := (__var_5) + (gas);
gas := (gas) - (5109);
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) - (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG]);
__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG] := 0;
__tmp__sum_balances0[__tmp__balances_Underflow[this]] := (__tmp__sum_balances0[__tmp__balances_Underflow[this]]) + (__tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][msgsender_MSG]);
}

implementation withdraw_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_5: int;
var __var_6: bool;
gas := (gas) - (36081);
__var_5 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_5 := (__var_5) - (gas);
call __var_6 := send__success(this, msgsender_MSG, M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG]);
if (!(__var_6)) {
revert := true;
return;
}
gas := (__var_5) + (gas);
gas := (gas) - (5109);
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) - (M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG]);
M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG] := 0;
sum_balances0[balances_Underflow[this]] := (sum_balances0[balances_Underflow[this]]) + (M_Ref_int_balances0[balances_Underflow[this]][msgsender_MSG]);
}

implementation balanceOf_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s89: Ref) returns (__ret_0_: int)
{
gas := (gas) - (3);
gas := (gas) - (304);
__ret_0_ := __tmp__M_Ref_int_balances0[__tmp__balances_Underflow[this]][user_s89];
return;
}

implementation balanceOf_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s89: Ref) returns (__ret_0_: int)
{
gas := (gas) - (3);
gas := (gas) - (304);
__ret_0_ := M_Ref_int_balances0[balances_Underflow[this]][user_s89];
return;
}

implementation sub_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s114: int, b_s114: int) returns (__ret_0_: int)
{
var c_s113: int;
gas := (gas) - (3);
gas := (gas) - (664);
if (!((b_s114) <= (a_s114))) {
revert := true;
return;
}
gas := (gas) - (17);
c_s113 := ((a_s114) - (b_s114)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
gas := (gas) - (10);
__ret_0_ := c_s113;
return;
}

implementation sub_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s114: int, b_s114: int) returns (__ret_0_: int)
{
var c_s113: int;
gas := (gas) - (3);
gas := (gas) - (664);
if (!((b_s114) <= (a_s114))) {
revert := true;
return;
}
gas := (gas) - (17);
c_s113 := ((a_s114) - (b_s114)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
gas := (gas) - (10);
__ret_0_ := c_s113;
return;
}

implementation add_Underflow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s138: int, b_s138: int) returns (__ret_0_: int)
{
var c_s137: int;
gas := (gas) - (3);
gas := (gas) - (17);
c_s137 := ((a_s138) + (b_s138)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
gas := (gas) - (32);
if (!((c_s137) >= (a_s138))) {
revert := true;
return;
}
gas := (gas) - (10);
__ret_0_ := c_s137;
return;
}

implementation add_Underflow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s138: int, b_s138: int) returns (__ret_0_: int)
{
var c_s137: int;
gas := (gas) - (3);
gas := (gas) - (17);
c_s137 := ((a_s138) + (b_s138)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
gas := (gas) - (32);
if (!((c_s137) >= (a_s138))) {
revert := true;
return;
}
gas := (gas) - (10);
__ret_0_ := c_s137;
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (Underflow)) {
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
if ((DType[to]) == (Underflow)) {
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
var iterate: bool;
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s55: Ref;
var amt_s55: int;
var user_s89: Ref;
var __ret_0_balanceOf: int;
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
while ((iterate) && ((gas) >= (21000)))
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s55;
havoc amt_s55;
havoc user_s89;
havoc __ret_0_balanceOf;
havoc iterate;
if ((__tmp__DType[from]) == (Underflow)) {
if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit_Underflow__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((amt_s55) >= (0)) && ((amt_s55) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call transfer_Underflow__fail(from, to, msgvalue_MSG, to_s55, amt_s55);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw_Underflow__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_Underflow__fail(from, to, msgvalue_MSG, user_s89);
if (revert) {
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
var to_s55: Ref;
var amt_s55: int;
var user_s89: Ref;
var __ret_0_balanceOf: int;
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
while ((iterate) && ((gas) >= (21000)))
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s55;
havoc amt_s55;
havoc user_s89;
havoc __ret_0_balanceOf;
havoc iterate;
if ((DType[from]) == (Underflow)) {
if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit_Underflow__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((amt_s55) >= (0)) && ((amt_s55) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call transfer_Underflow__success(from, to, msgvalue_MSG, to_s55, amt_s55);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw_Underflow__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_Underflow__success(from, to, msgvalue_MSG, user_s89);
if (revert) {
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
var __snap___tmp__M_Ref_int_balances0: [Ref][Ref]int;
var __snap___tmp__sum_balances0: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__balances_Underflow: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int_balances0 := __tmp__M_Ref_int_balances0;
__snap___tmp__sum_balances0 := __tmp__sum_balances0;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__balances_Underflow := __tmp__balances_Underflow;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int_balances0 := __snap___tmp__M_Ref_int_balances0;
__tmp__sum_balances0 := __snap___tmp__sum_balances0;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__balances_Underflow := __snap___tmp__balances_Underflow;
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
__tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
__tmp__sum_balances0 := sum_balances0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_Underflow := balances_Underflow;
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

implementation CorralChoice_Underflow(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s55: Ref;
var amt_s55: int;
var user_s89: Ref;
var __ret_0_balanceOf: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s55;
havoc amt_s55;
havoc user_s89;
havoc __ret_0_balanceOf;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Underflow));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit_Underflow(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((amt_s55) >= (0)) && ((amt_s55) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call transfer_Underflow(this, msgsender_MSG, msgvalue_MSG, to_s55, amt_s55);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw_Underflow(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_Underflow(this, msgsender_MSG, msgvalue_MSG, user_s89);
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
assume ((DType[this]) == (Underflow));
gas := (gas) - (53000);
call Underflow_Underflow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Underflow(this);
}
}


