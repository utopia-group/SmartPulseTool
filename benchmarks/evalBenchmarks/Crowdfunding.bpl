// Prop 1
// LTLProperty: [](!finished(*, this.funded == false && sum_backers0[backers_Crowdfunding[this]] > Balance[this]))

// Prop 2
// LTLVariables: b:Ref,v:int
// LTLFairness: [](!started(Crowdfunding.Claim, msg.sender == b))
// LTLProperty: [](finished(Crowdfunding.Donate, msg.sender == b && msg.value == v && v != 0) ==> [](!finished(*, this.backers[b] != v)))

// Prop 3
// #LTLVariables: b:Ref,v:int
// #LTLFairness: <>(started(Crowdfunding.Claim, this.funded == false && Balance[this] < this.goal && this.max_block < now && msg.sender == b)) && [](!reverted(send(from, to, amt), to == b))
// #LTLProperty: [](finished(Crowdfunding.Donate, msg.sender == b && msg.value == v && v != 0) ==> <>(finished(send(from, to, amt), to == b && amt == v))) 

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique Crowdfunding: ContractName;
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
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefintArr() returns (ret: [Ref]int);
var M_Ref_int_backers0: [Ref][Ref]int;
var sum_backers0: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
var {:access "this.owner=owner_Crowdfunding[this]"} owner_Crowdfunding: [Ref]Ref;
var {:access "this.max_block=max_block_Crowdfunding[this]"} max_block_Crowdfunding: [Ref]int;
var {:access "this.goal=goal_Crowdfunding[this]"} goal_Crowdfunding: [Ref]int;
var {:access "this.backers[i1]=M_Ref_int_backers0[backers_Crowdfunding[this]][i1]"} {:sum "sum(this.backers)=sum_backers0[backers_Crowdfunding[this]]"} backers_Crowdfunding: [Ref]Ref;
var {:access "this.funded=funded_Crowdfunding[this]"} funded_Crowdfunding: [Ref]bool;
procedure {:inline 1} Crowdfunding_Crowdfunding_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int);
modifies Balance;
modifies owner_Crowdfunding;
modifies max_block_Crowdfunding;
modifies goal_Crowdfunding;
modifies backers_Crowdfunding;
modifies M_Ref_int_backers0;
modifies sum_backers0;
modifies funded_Crowdfunding;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} Crowdfunding_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies Balance;
modifies owner_Crowdfunding;
modifies max_block_Crowdfunding;
modifies goal_Crowdfunding;
modifies backers_Crowdfunding;
modifies M_Ref_int_backers0;
modifies sum_backers0;
modifies funded_Crowdfunding;
modifies Alloc;
implementation Crowdfunding_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_backers0 := M_Ref_int_backers0;
__tmp__sum_backers0 := sum_backers0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Crowdfunding := owner_Crowdfunding;
__tmp__max_block_Crowdfunding := max_block_Crowdfunding;
__tmp__goal_Crowdfunding := goal_Crowdfunding;
__tmp__backers_Crowdfunding := backers_Crowdfunding;
__tmp__funded_Crowdfunding := funded_Crowdfunding;
call Crowdfunding_Crowdfunding__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s36, _max_block_s36, _goal_s36);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdfunding_Crowdfunding__success(this, msgsender_MSG, msgvalue_MSG, _owner_s36, _max_block_s36, _goal_s36);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} Donate_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies Balance;
modifies sum_backers0;
modifies M_Ref_int_backers0;
implementation Donate_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_backers0 := M_Ref_int_backers0;
__tmp__sum_backers0 := sum_backers0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Crowdfunding := owner_Crowdfunding;
__tmp__max_block_Crowdfunding := max_block_Crowdfunding;
__tmp__goal_Crowdfunding := goal_Crowdfunding;
__tmp__backers_Crowdfunding := backers_Crowdfunding;
__tmp__funded_Crowdfunding := funded_Crowdfunding;
call Donate_Crowdfunding__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Donate_Crowdfunding__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} GetFunds_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies gas;
modifies funded_Crowdfunding;
modifies Balance;
modifies sum_backers0;
modifies M_Ref_int_backers0;
implementation GetFunds_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_backers0 := M_Ref_int_backers0;
__tmp__sum_backers0 := sum_backers0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Crowdfunding := owner_Crowdfunding;
__tmp__max_block_Crowdfunding := max_block_Crowdfunding;
__tmp__goal_Crowdfunding := goal_Crowdfunding;
__tmp__backers_Crowdfunding := backers_Crowdfunding;
__tmp__funded_Crowdfunding := funded_Crowdfunding;
call GetFunds_Crowdfunding__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call GetFunds_Crowdfunding__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} Claim_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies gas;
modifies sum_backers0;
modifies M_Ref_int_backers0;
modifies Balance;
modifies funded_Crowdfunding;
implementation Claim_Crowdfunding(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_backers0 := M_Ref_int_backers0;
__tmp__sum_backers0 := sum_backers0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Crowdfunding := owner_Crowdfunding;
__tmp__max_block_Crowdfunding := max_block_Crowdfunding;
__tmp__goal_Crowdfunding := goal_Crowdfunding;
__tmp__backers_Crowdfunding := backers_Crowdfunding;
__tmp__funded_Crowdfunding := funded_Crowdfunding;
call Claim_Crowdfunding__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Claim_Crowdfunding__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_backers0;
modifies M_Ref_int_backers0;
modifies funded_Crowdfunding;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_backers0;
modifies M_Ref_int_backers0;
modifies funded_Crowdfunding;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies revert;
modifies gas;
modifies Balance;
modifies sum_backers0;
modifies M_Ref_int_backers0;
modifies funded_Crowdfunding;
procedure CorralChoice_Crowdfunding(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies Balance;
modifies sum_backers0;
modifies M_Ref_int_backers0;
modifies funded_Crowdfunding;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies now;
modifies Balance;
modifies sum_backers0;
modifies M_Ref_int_backers0;
modifies funded_Crowdfunding;
modifies owner_Crowdfunding;
modifies max_block_Crowdfunding;
modifies goal_Crowdfunding;
modifies backers_Crowdfunding;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int_backers0: [Ref][Ref]int;
var __tmp__sum_backers0: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__owner_Crowdfunding: [Ref]Ref;
var __tmp__max_block_Crowdfunding: [Ref]int;
var __tmp__goal_Crowdfunding: [Ref]int;
var __tmp__backers_Crowdfunding: [Ref]Ref;
var __tmp__funded_Crowdfunding: [Ref]bool;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Crowdfunding_Crowdfunding_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int);
modifies __tmp__Balance;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__funded_Crowdfunding;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} Crowdfunding_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int);
modifies Balance;
modifies owner_Crowdfunding;
modifies max_block_Crowdfunding;
modifies goal_Crowdfunding;
modifies backers_Crowdfunding;
modifies M_Ref_int_backers0;
modifies sum_backers0;
modifies funded_Crowdfunding;
modifies Alloc;
procedure {:constructor} {:inline 1} Crowdfunding_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int);
modifies __tmp__Balance;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__funded_Crowdfunding;
modifies __tmp__Alloc;
procedure {:inline 1} Donate_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies sum_backers0;
modifies M_Ref_int_backers0;
procedure {:inline 1} Donate_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__sum_backers0;
modifies __tmp__M_Ref_int_backers0;
procedure {:inline 1} GetFunds_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies funded_Crowdfunding;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies Balance;
modifies sum_backers0;
modifies M_Ref_int_backers0;
procedure {:inline 1} GetFunds_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__funded_Crowdfunding;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
procedure {:inline 1} Claim_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies sum_backers0;
modifies M_Ref_int_backers0;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
modifies Balance;
modifies funded_Crowdfunding;
procedure {:inline 1} Claim_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__sum_backers0;
modifies __tmp__M_Ref_int_backers0;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_backers0;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__funded_Crowdfunding;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_backers0;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__funded_Crowdfunding;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_backers0;
modifies __tmp__sum_backers0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Crowdfunding;
modifies __tmp__max_block_Crowdfunding;
modifies __tmp__goal_Crowdfunding;
modifies __tmp__backers_Crowdfunding;
modifies __tmp__funded_Crowdfunding;
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

implementation Crowdfunding_Crowdfunding_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__owner_Crowdfunding[this] := null;
__tmp__max_block_Crowdfunding[this] := 0;
__tmp__goal_Crowdfunding[this] := 0;
// Make array/mapping vars distinct for backers
call __var_1 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__backers_Crowdfunding[this] := __var_1;
// Initialize Integer mapping backers
__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]] := zeroRefintArr();
__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]] := 0;
__tmp__funded_Crowdfunding[this] := false;
// end of initialization
__tmp__owner_Crowdfunding[this] := _owner_s36;
assume ((__tmp__max_block_Crowdfunding[this]) >= (0));
assume ((_max_block_s36) >= (0));
__tmp__max_block_Crowdfunding[this] := _max_block_s36;
assume ((__tmp__goal_Crowdfunding[this]) >= (0));
assume ((_goal_s36) >= (0));
__tmp__goal_Crowdfunding[this] := _goal_s36;
}

implementation Crowdfunding_Crowdfunding_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
owner_Crowdfunding[this] := null;
max_block_Crowdfunding[this] := 0;
goal_Crowdfunding[this] := 0;
// Make array/mapping vars distinct for backers
call __var_1 := FreshRefGenerator__success();
if (revert) {
return;
}
backers_Crowdfunding[this] := __var_1;
// Initialize Integer mapping backers
M_Ref_int_backers0[backers_Crowdfunding[this]] := zeroRefintArr();
sum_backers0[backers_Crowdfunding[this]] := 0;
funded_Crowdfunding[this] := false;
// end of initialization
owner_Crowdfunding[this] := _owner_s36;
assume ((max_block_Crowdfunding[this]) >= (0));
assume ((_max_block_s36) >= (0));
max_block_Crowdfunding[this] := _max_block_s36;
assume ((goal_Crowdfunding[this]) >= (0));
assume ((_goal_s36) >= (0));
goal_Crowdfunding[this] := _goal_s36;
}

implementation Crowdfunding_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int)
{
var __var_1: Ref;
call Crowdfunding_Crowdfunding_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s36, _max_block_s36, _goal_s36);
if (revert) {
return;
}
}

implementation Crowdfunding_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s36: Ref, _max_block_s36: int, _goal_s36: int)
{
var __var_1: Ref;
call Crowdfunding_Crowdfunding_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _owner_s36, _max_block_s36, _goal_s36);
if (revert) {
return;
}
}

implementation Donate_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assume ((__tmp__max_block_Crowdfunding[this]) >= (0));
assume ((__tmp__now) >= (0));
if ((__tmp__max_block_Crowdfunding[this]) <= (__tmp__now)) {
revert := true;
return;
} else {
assume ((__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
if ((__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]) == (0)) {
assume ((__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
assume ((msgvalue_MSG) >= (0));
__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]] := (__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]]) - (__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]);
__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG] := msgvalue_MSG;
__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]] := (__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]]) + (__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]);
} else {
revert := true;
return;
}
}
}

implementation Donate_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assume ((max_block_Crowdfunding[this]) >= (0));
assume ((now) >= (0));
if ((max_block_Crowdfunding[this]) <= (now)) {
revert := true;
return;
} else {
assume ((M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
if ((M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]) == (0)) {
assume ((M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
assume ((msgvalue_MSG) >= (0));
sum_backers0[backers_Crowdfunding[this]] := (sum_backers0[backers_Crowdfunding[this]]) - (M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]);
M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG] := msgvalue_MSG;
sum_backers0[backers_Crowdfunding[this]] := (sum_backers0[backers_Crowdfunding[this]]) + (M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]);
} else {
revert := true;
return;
}
}
}

implementation GetFunds_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_2: Ref;
var __var_3: int;
var __var_4: Ref;
var __var_5: bool;
assume ((__tmp__max_block_Crowdfunding[this]) >= (0));
assume ((__tmp__now) >= (0));
if (((__tmp__max_block_Crowdfunding[this]) < (__tmp__now)) && ((msgsender_MSG) == (__tmp__owner_Crowdfunding[this]))) {
assume ((__tmp__goal_Crowdfunding[this]) >= (0));
__var_2 := this;
assume ((__tmp__Balance[this]) >= (0));
if ((__tmp__goal_Crowdfunding[this]) <= (__tmp__Balance[this])) {
__tmp__funded_Crowdfunding[this] := true;
__var_3 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_3 := (__var_3) - (gas);
__var_4 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_5 := send__fail(this, __tmp__owner_Crowdfunding[this], __tmp__Balance[this]);
if (!(__var_5)) {
revert := true;
return;
}
gas := (__var_3) + (gas);
} else {
revert := true;
return;
}
} else {
revert := true;
return;
}
}

implementation GetFunds_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_2: Ref;
var __var_3: int;
var __var_4: Ref;
var __var_5: bool;
assume ((max_block_Crowdfunding[this]) >= (0));
assume ((now) >= (0));
if (((max_block_Crowdfunding[this]) < (now)) && ((msgsender_MSG) == (owner_Crowdfunding[this]))) {
assume ((goal_Crowdfunding[this]) >= (0));
__var_2 := this;
assume ((Balance[this]) >= (0));
if ((goal_Crowdfunding[this]) <= (Balance[this])) {
funded_Crowdfunding[this] := true;
__var_3 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_3 := (__var_3) - (gas);
__var_4 := this;
assume ((Balance[this]) >= (0));
call __var_5 := send__success(this, owner_Crowdfunding[this], Balance[this]);
if (!(__var_5)) {
revert := true;
return;
}
gas := (__var_3) + (gas);
} else {
revert := true;
return;
}
} else {
revert := true;
return;
}
}

implementation Claim_Crowdfunding__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_6: Ref;
var val_s166: int;
var __var_7: int;
var __var_8: bool;
assume ((__tmp__now) >= (0));
assume ((__tmp__max_block_Crowdfunding[this]) >= (0));
if ((__tmp__now) <= (__tmp__max_block_Crowdfunding[this])) {
revert := true;
return;
} else {
assume ((__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
assume ((__tmp__goal_Crowdfunding[this]) >= (0));
__var_6 := this;
assume ((__tmp__Balance[this]) >= (0));
if ((((__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]) == (0)) || (__tmp__funded_Crowdfunding[this])) || ((__tmp__goal_Crowdfunding[this]) <= (__tmp__Balance[this]))) {
revert := true;
return;
} else {
assume ((val_s166) >= (0));
assume ((__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
val_s166 := __tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG];
assume ((__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]] := (__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]]) - (__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]);
__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG] := 0;
__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]] := (__tmp__sum_backers0[__tmp__backers_Crowdfunding[this]]) + (__tmp__M_Ref_int_backers0[__tmp__backers_Crowdfunding[this]][msgsender_MSG]);
__var_7 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_7 := (__var_7) - (gas);
assume ((val_s166) >= (0));
call __var_8 := send__fail(this, msgsender_MSG, val_s166);
if (!(__var_8)) {
revert := true;
return;
}
gas := (__var_7) + (gas);
}
}
}

implementation Claim_Crowdfunding__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_6: Ref;
var val_s166: int;
var __var_7: int;
var __var_8: bool;
assume ((now) >= (0));
assume ((max_block_Crowdfunding[this]) >= (0));
if ((now) <= (max_block_Crowdfunding[this])) {
revert := true;
return;
} else {
assume ((M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
assume ((goal_Crowdfunding[this]) >= (0));
__var_6 := this;
assume ((Balance[this]) >= (0));
if ((((M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]) == (0)) || (funded_Crowdfunding[this])) || ((goal_Crowdfunding[this]) <= (Balance[this]))) {
revert := true;
return;
} else {
assume ((val_s166) >= (0));
assume ((M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
val_s166 := M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG];
assume ((M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]) >= (0));
sum_backers0[backers_Crowdfunding[this]] := (sum_backers0[backers_Crowdfunding[this]]) - (M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]);
M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG] := 0;
sum_backers0[backers_Crowdfunding[this]] := (sum_backers0[backers_Crowdfunding[this]]) + (M_Ref_int_backers0[backers_Crowdfunding[this]][msgsender_MSG]);
__var_7 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_7 := (__var_7) - (gas);
assume ((val_s166) >= (0));
call __var_8 := send__success(this, msgsender_MSG, val_s166);
if (!(__var_8)) {
revert := true;
return;
}
gas := (__var_7) + (gas);
}
}
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (Crowdfunding)) {
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
if ((DType[to]) == (Crowdfunding)) {
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
var _owner_s36: Ref;
var _max_block_s36: int;
var _goal_s36: int;
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
havoc _owner_s36;
havoc _max_block_s36;
havoc _goal_s36;
havoc iterate;
if ((__tmp__DType[from]) == (Crowdfunding)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call Donate_Crowdfunding__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call GetFunds_Crowdfunding__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call Claim_Crowdfunding__fail(from, to, msgvalue_MSG);
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
var _owner_s36: Ref;
var _max_block_s36: int;
var _goal_s36: int;
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
havoc _owner_s36;
havoc _max_block_s36;
havoc _goal_s36;
havoc iterate;
if ((DType[from]) == (Crowdfunding)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call Donate_Crowdfunding__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call GetFunds_Crowdfunding__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call Claim_Crowdfunding__success(from, to, msgvalue_MSG);
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
var __snap___tmp__M_Ref_int_backers0: [Ref][Ref]int;
var __snap___tmp__sum_backers0: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__owner_Crowdfunding: [Ref]Ref;
var __snap___tmp__max_block_Crowdfunding: [Ref]int;
var __snap___tmp__goal_Crowdfunding: [Ref]int;
var __snap___tmp__backers_Crowdfunding: [Ref]Ref;
var __snap___tmp__funded_Crowdfunding: [Ref]bool;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int_backers0 := __tmp__M_Ref_int_backers0;
__snap___tmp__sum_backers0 := __tmp__sum_backers0;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__owner_Crowdfunding := __tmp__owner_Crowdfunding;
__snap___tmp__max_block_Crowdfunding := __tmp__max_block_Crowdfunding;
__snap___tmp__goal_Crowdfunding := __tmp__goal_Crowdfunding;
__snap___tmp__backers_Crowdfunding := __tmp__backers_Crowdfunding;
__snap___tmp__funded_Crowdfunding := __tmp__funded_Crowdfunding;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int_backers0 := __snap___tmp__M_Ref_int_backers0;
__tmp__sum_backers0 := __snap___tmp__sum_backers0;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__owner_Crowdfunding := __snap___tmp__owner_Crowdfunding;
__tmp__max_block_Crowdfunding := __snap___tmp__max_block_Crowdfunding;
__tmp__goal_Crowdfunding := __snap___tmp__goal_Crowdfunding;
__tmp__backers_Crowdfunding := __snap___tmp__backers_Crowdfunding;
__tmp__funded_Crowdfunding := __snap___tmp__funded_Crowdfunding;
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
__tmp__M_Ref_int_backers0 := M_Ref_int_backers0;
__tmp__sum_backers0 := sum_backers0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Crowdfunding := owner_Crowdfunding;
__tmp__max_block_Crowdfunding := max_block_Crowdfunding;
__tmp__goal_Crowdfunding := goal_Crowdfunding;
__tmp__backers_Crowdfunding := backers_Crowdfunding;
__tmp__funded_Crowdfunding := funded_Crowdfunding;
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

implementation CorralChoice_Crowdfunding(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s36: Ref;
var _max_block_s36: int;
var _goal_s36: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s36;
havoc _max_block_s36;
havoc _goal_s36;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Crowdfunding));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call Donate_Crowdfunding(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call GetFunds_Crowdfunding(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call Claim_Crowdfunding(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _owner_s36: Ref;
var _max_block_s36: int;
var _goal_s36: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (Crowdfunding));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call Crowdfunding_Crowdfunding(this, msgsender_MSG, msgvalue_MSG, _owner_s36, _max_block_s36, _goal_s36);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Crowdfunding(this);
}
}


