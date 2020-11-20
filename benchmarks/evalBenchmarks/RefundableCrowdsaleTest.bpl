
// Prop 1
// #LTLProperty: [](!finished(*, this._finalized == false && sum__deposits0[_deposits_Escrow[_escrow_RefundableCrowdsale[this]]] > Balance[_escrow_RefundableCrowdsale[this]]))

// Prop 2
// LTLVariables: b:Ref,v:int
// LTLFairness: [](!started(RefundableCrowdsale.claimRefund(refundee), refundee == b)) && [](finished(Crowdsale.buyTokens, msg.sender == b) ==> [](!started(Crowdsale.buyTokens, msg.sender == b)))
// LTLProperty: [](finished(Crowdsale.buyTokens, msg.sender == b && msg.value == v) ==> [](!finished(*, M_Ref_int__deposits0[_deposits_Escrow[_escrow_RefundableCrowdsale[this]]][b] != v)))

// LTLVariables: b:Ref,v:int
// LTLFairness: [](!started(RefundableCrowdsale.claimRefund(refundee), refundee == b)) && [](<>(finished(RefundableCrowdsale.goal, true == true)))
// LTLProperty: [](finished(Crowdsale.buyTokens, msg.sender == b && msg.value == v) ==> [](!finished(*, M_Ref_int__deposits0[_deposits_Escrow[_escrow_RefundableCrowdsale[this]]][b] != v)))

// Prop 3
// #LTLVariables: b:Ref,v:int
// #LTLFairness: <>(started(RefundableCrowdsale.claimRefund(refundee), this._finalized == true && RefundableCrowdsale.goalReached() == false && refundee == b)) && [](!reverted(send(from, to, amt), to == b))
// #LTLProperty: [](finished(Crowdsale.buyTokens, msg.sender == b && msg.value == v && v != 0) ==> <>(finished(send(from, to, amt), to == b && amt == v)))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique Context: ContractName;
const unique SafeMath: ContractName;
const unique Secondary: ContractName;
const unique Escrow: ContractName;
const unique ConditionalEscrow: ContractName;
const unique RefundEscrow: ContractName;
const unique IERC20: ContractName;
const unique SafeERC20: ContractName;
const unique ReentrancyGuard: ContractName;
const unique Crowdsale: ContractName;
const unique TimedCrowdsale: ContractName;
const unique FinalizableCrowdsale: ContractName;
const unique RefundableCrowdsale: ContractName;
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
var M_Ref_int__deposits0: [Ref][Ref]int;
var sum__deposits0: [Ref]int;
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
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
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
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
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
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add~uint256~uint256_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub~uint256~uint256_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int);
modifies revert;
var {:access "this._primary=_primary_Secondary[this]"} _primary_Secondary: [Ref]Ref;
procedure {:inline 1} Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _primary_Secondary;
procedure {:constructor} {:public} {:inline 1} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _primary_Secondary;
implementation Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} primary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation primary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := primary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := primary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferPrimary~address_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s136: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _primary_Secondary;
implementation transferPrimary~address_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s136: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call transferPrimary~address_Secondary__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s136);
assume ((revert) || ((gas) < (0)));
} else {
call transferPrimary~address_Secondary__success(this, msgsender_MSG, msgvalue_MSG, recipient_s136);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies Alloc;
procedure {:inline 1} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies Alloc;
implementation Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this._deposits[i1]=M_Ref_int__deposits0[_deposits_Escrow[this]][i1]"} {:sum "sum(this._deposits)=sum__deposits0[_deposits_Escrow[this]]"} _deposits_Escrow: [Ref]Ref;
procedure {:public} {:inline 1} depositsOf~address_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s170: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation depositsOf~address_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s170: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := depositsOf~address_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s170);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := depositsOf~address_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s170);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} deposit~address_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s180: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
implementation deposit~address_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s180: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call deposit~address_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s180);
assume ((revert) || ((gas) < (0)));
} else {
call deposit~address_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s180);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} deposit_Escrow~address_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s209: Ref);
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies revert;
procedure {:public} {:inline 1} withdraw~addresspayable_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s219: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies gas;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
implementation withdraw~addresspayable_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s219: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call withdraw~addresspayable_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s219);
assume ((revert) || ((gas) < (0)));
} else {
call withdraw~addresspayable_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s219);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} withdraw_Escrow~addresspayable_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s250: Ref);
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies Alloc;
implementation ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call ConditionalEscrow_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdrawalAllowed~address_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s260: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} withdraw~addresspayable_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s277: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies gas;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
implementation withdraw~addresspayable_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s277: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call withdraw~addresspayable_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s277);
assume ((revert) || ((gas) < (0)));
} else {
call withdraw~addresspayable_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s277);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this._state=_state_RefundEscrow[this]"} _state_RefundEscrow: [Ref]int;
var {:access "this._beneficiary=_beneficiary_RefundEscrow[this]"} _beneficiary_RefundEscrow: [Ref]Ref;
procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref);
modifies Balance;
modifies _beneficiary_RefundEscrow;
modifies revert;
modifies _state_RefundEscrow;
procedure {:constructor} {:public} {:inline 1} RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies Alloc;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
implementation RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call RefundEscrow_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s316);
assume ((revert) || ((gas) < (0)));
} else {
call RefundEscrow_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s316);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := state_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := state_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} beneficiary_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation beneficiary_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := beneficiary_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := beneficiary_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} deposit~address_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s350: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
implementation deposit~address_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s350: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call deposit~address_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s350);
assume ((revert) || ((gas) < (0)));
} else {
call deposit~address_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s350);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _state_RefundEscrow;
implementation close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call close_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call close_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} enableRefunds_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _state_RefundEscrow;
implementation enableRefunds_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call enableRefunds_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call enableRefunds_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} beneficiaryWithdraw_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies gas;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
implementation beneficiaryWithdraw_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call beneficiaryWithdraw_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call beneficiaryWithdraw_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdrawalAllowed~address_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation withdrawalAllowed~address_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := withdrawalAllowed~address_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := withdrawalAllowed~address_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, __param_0_);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
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
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf~address_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s441: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer~address~uint256_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s450: Ref, amount_s450: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance~address~address_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s459: Ref, spender_s459: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve~address~uint256_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s468: Ref, amount_s468: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom~address~address~uint256_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s479: Ref, recipient_s479: Ref, amount_s479: int) returns (__ret_0_: bool);
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
implementation SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call SafeERC20_SafeERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} safeTransfer~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s517: Ref, to_s517: Ref, value_s517: int);
modifies revert;
procedure {:inline 1} safeTransferFrom~IERC20~address~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s538: Ref, from_s538: Ref, to_s538: Ref, value_s538: int);
modifies revert;
procedure {:inline 1} safeApprove~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s575: Ref, spender_s575: Ref, value_s575: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s606: Ref, spender_s606: Ref, value_s606: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s637: Ref, spender_s637: Ref, value_s637: int);
modifies revert;
var {:access "this._notEntered=_notEntered_ReentrancyGuard[this]"} _notEntered_ReentrancyGuard: [Ref]bool;
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _notEntered_ReentrancyGuard;
implementation ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this._token=_token_Crowdsale[this]"} _token_Crowdsale: [Ref]Ref;
var {:access "this._wallet=_wallet_Crowdsale[this]"} _wallet_Crowdsale: [Ref]Ref;
var {:access "this._rate=_rate_Crowdsale[this]"} _rate_Crowdsale: [Ref]int;
var {:access "this._weiRaised=_weiRaised_Crowdsale[this]"} _weiRaised_Crowdsale: [Ref]int;
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref);
modifies Balance;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies _token_Crowdsale;
implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s740, wallet_s740, token_s740);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s740, wallet_s740, token_s740);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} wallet_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation wallet_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := wallet_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := wallet_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} rate_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation rate_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := rate_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := rate_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} weiRaised_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation weiRaised_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyTokens~address_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s838: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
implementation buyTokens~address_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s838: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call buyTokens~address_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens~address_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s851: Ref, weiAmount_s851: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s877: Ref, weiAmount_s877: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s885: Ref, weiAmount_s885: int);
procedure {:inline 1} _deliverTokens~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s901: Ref, tokenAmount_s901: int);
modifies revert;
procedure {:inline 1} _processPurchase~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s914: Ref, tokenAmount_s914: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s922: Ref, weiAmount_s922: int);
procedure {:inline 1} _getTokenAmount~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s932: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
var {:access "this._openingTime=_openingTime_TimedCrowdsale[this]"} _openingTime_TimedCrowdsale: [Ref]int;
var {:access "this._closingTime=_closingTime_TimedCrowdsale[this]"} _closingTime_TimedCrowdsale: [Ref]int;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int);
modifies Balance;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
implementation TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s1000, closingTime_s1000);
assume ((revert) || ((gas) < (0)));
} else {
call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s1000, closingTime_s1000);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := openingTime_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := openingTime_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} closingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation closingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := closingTime_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := closingTime_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} isOpen_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation isOpen_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase~address~uint256_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1058: Ref, weiAmount_s1058: int);
modifies revert;
procedure {:inline 1} _extendTime~uint256_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1087: int);
modifies revert;
modifies _closingTime_TimedCrowdsale;
var {:access "this._finalized=_finalized_FinalizableCrowdsale[this]"} _finalized_FinalizableCrowdsale: [Ref]bool;
procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _finalized_FinalizableCrowdsale;
procedure {:constructor} {:public} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
implementation FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} finalized_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation finalized_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := finalized_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := finalized_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies gas;
modifies _state_RefundEscrow;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _primary_Secondary;
implementation finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call finalize_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call finalize_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
var {:access "this._goal=_goal_RefundableCrowdsale[this]"} _goal_RefundableCrowdsale: [Ref]int;
var {:access "this._escrow=_escrow_RefundableCrowdsale[this]"} _escrow_RefundableCrowdsale: [Ref]Ref;
procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int);
modifies Balance;
modifies _goal_RefundableCrowdsale;
modifies revert;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
procedure {:constructor} {:public} {:inline 1} RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _goal_RefundableCrowdsale;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
implementation RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call RefundableCrowdsale_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, goal_s1187);
assume ((revert) || ((gas) < (0)));
} else {
call RefundableCrowdsale_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, goal_s1187);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := goal_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := goal_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} claimRefund~addresspayable_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1220: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies gas;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
implementation claimRefund~addresspayable_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1220: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call claimRefund~addresspayable_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s1220);
assume ((revert) || ((gas) < (0)));
} else {
call claimRefund~addresspayable_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, refundee_s1220);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
implementation goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
call __ret_0_ := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _finalization_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _state_RefundEscrow;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _primary_Secondary;
procedure {:inline 1} _forwardFunds_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies gas;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies revert;
modifies gas;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _notEntered_ReentrancyGuard;
procedure {:inline 1} onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
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
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
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
procedure CorralChoice_Secondary(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _primary_Secondary;
procedure CorralEntry_Secondary();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies now;
modifies _primary_Secondary;
modifies Balance;
procedure CorralChoice_Escrow(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _state_RefundEscrow;
procedure CorralEntry_Escrow();
modifies gas;
modifies Alloc;
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _state_RefundEscrow;
procedure CorralChoice_ConditionalEscrow(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _state_RefundEscrow;
procedure CorralEntry_ConditionalEscrow();
modifies gas;
modifies Alloc;
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _state_RefundEscrow;
procedure CorralChoice_RefundEscrow(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies _state_RefundEscrow;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
procedure CorralEntry_RefundEscrow();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies now;
modifies _primary_Secondary;
modifies Balance;
modifies _state_RefundEscrow;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies _beneficiary_RefundEscrow;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
procedure CorralChoice_IERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_IERC20();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_SafeERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_SafeERC20();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_ReentrancyGuard(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_ReentrancyGuard();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies now;
modifies Balance;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_Crowdsale(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure CorralEntry_Crowdsale();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure CorralChoice_TimedCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure CorralEntry_TimedCrowdsale();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure CorralChoice_FinalizableCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
procedure CorralEntry_FinalizableCrowdsale();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
procedure CorralChoice_RefundableCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _goal_RefundableCrowdsale;
modifies _escrow_RefundableCrowdsale;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int__deposits0: [Ref][Ref]int;
var __tmp__sum__deposits0: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp___primary_Secondary: [Ref]Ref;
var __tmp___deposits_Escrow: [Ref]Ref;
var __tmp___state_RefundEscrow: [Ref]int;
var __tmp___beneficiary_RefundEscrow: [Ref]Ref;
var __tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __tmp___token_Crowdsale: [Ref]Ref;
var __tmp___wallet_Crowdsale: [Ref]Ref;
var __tmp___rate_Crowdsale: [Ref]int;
var __tmp___weiRaised_Crowdsale: [Ref]int;
var __tmp___openingTime_TimedCrowdsale: [Ref]int;
var __tmp___closingTime_TimedCrowdsale: [Ref]int;
var __tmp___finalized_FinalizableCrowdsale: [Ref]bool;
var __tmp___goal_RefundableCrowdsale: [Ref]int;
var __tmp___escrow_RefundableCrowdsale: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} add~uint256~uint256_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub~uint256~uint256_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___primary_Secondary;
procedure {:constructor} {:inline 1} Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _primary_Secondary;
procedure {:constructor} {:inline 1} Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___primary_Secondary;
procedure {:inline 1} primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} transferPrimary~address_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s136: Ref);
modifies revert;
modifies _primary_Secondary;
procedure {:inline 1} transferPrimary~address_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s136: Ref);
modifies revert;
modifies __tmp___primary_Secondary;
procedure {:inline 1} Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___deposits_Escrow;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Alloc;
procedure {:inline 1} Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies Alloc;
procedure {:inline 1} Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Alloc;
procedure {:inline 1} depositsOf~address_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s170: Ref) returns (__ret_0_: int);
procedure {:inline 1} depositsOf~address_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s170: Ref) returns (__ret_0_: int);
procedure {:inline 1} deposit~address_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s180: Ref);
modifies Balance;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies revert;
procedure {:inline 1} deposit~address_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s180: Ref);
modifies __tmp__Balance;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies revert;
procedure {:inline 1} deposit_Escrow~address_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s209: Ref);
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies revert;
procedure {:inline 1} withdraw~addresspayable_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s219: Ref);
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} withdraw~addresspayable_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s219: Ref);
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} withdraw_Escrow~addresspayable_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s250: Ref);
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies Alloc;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Alloc;
procedure {:inline 1} withdraw~addresspayable_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s277: Ref);
modifies revert;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} withdraw~addresspayable_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s277: Ref);
modifies revert;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref);
modifies __tmp__Balance;
modifies __tmp___beneficiary_RefundEscrow;
modifies revert;
modifies __tmp___state_RefundEscrow;
procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref);
modifies Balance;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies Alloc;
modifies _beneficiary_RefundEscrow;
modifies revert;
modifies _state_RefundEscrow;
procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref);
modifies __tmp__Balance;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Alloc;
modifies __tmp___beneficiary_RefundEscrow;
modifies revert;
modifies __tmp___state_RefundEscrow;
procedure {:inline 1} state_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} state_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} beneficiary_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} beneficiary_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} deposit~address_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s350: Ref);
modifies Balance;
modifies revert;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
procedure {:inline 1} deposit~address_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s350: Ref);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
procedure {:inline 1} close_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _state_RefundEscrow;
procedure {:inline 1} close_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___state_RefundEscrow;
procedure {:inline 1} enableRefunds_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _state_RefundEscrow;
procedure {:inline 1} enableRefunds_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___state_RefundEscrow;
procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} withdrawalAllowed~address_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool);
procedure {:inline 1} withdrawalAllowed~address_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool);
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} safeTransfer~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s517: Ref, to_s517: Ref, value_s517: int);
modifies revert;
procedure {:inline 1} safeTransferFrom~IERC20~address~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s538: Ref, from_s538: Ref, to_s538: Ref, value_s538: int);
modifies revert;
procedure {:inline 1} safeApprove~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s575: Ref, spender_s575: Ref, value_s575: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s606: Ref, spender_s606: Ref, value_s606: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s637: Ref, spender_s637: Ref, value_s637: int);
modifies revert;
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref);
modifies __tmp__Balance;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref);
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref);
modifies __tmp__Balance;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} buyTokens~address_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s838: Ref);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} buyTokens~address_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s838: Ref);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} _preValidatePurchase~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s851: Ref, weiAmount_s851: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s877: Ref, weiAmount_s877: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s885: Ref, weiAmount_s885: int);
procedure {:inline 1} _deliverTokens~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s901: Ref, tokenAmount_s901: int);
modifies revert;
procedure {:inline 1} _processPurchase~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s914: Ref, tokenAmount_s914: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s922: Ref, weiAmount_s922: int);
procedure {:inline 1} _getTokenAmount~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s932: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int);
modifies __tmp__Balance;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int);
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int);
modifies __tmp__Balance;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
procedure {:inline 1} openingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} openingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} closingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} closingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} isOpen_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} isOpen_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} _preValidatePurchase~address~uint256_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1058: Ref, weiAmount_s1058: int);
modifies revert;
procedure {:inline 1} _extendTime~uint256_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1087: int);
modifies revert;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___finalized_FinalizableCrowdsale;
procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___finalized_FinalizableCrowdsale;
procedure {:inline 1} finalized_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} finalized_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _finalized_FinalizableCrowdsale;
modifies _state_RefundEscrow;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies _primary_Secondary;
procedure {:inline 1} finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___state_RefundEscrow;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int);
modifies __tmp__Balance;
modifies __tmp___goal_RefundableCrowdsale;
modifies revert;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp__Alloc;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___state_RefundEscrow;
procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int);
modifies Balance;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _goal_RefundableCrowdsale;
modifies revert;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies M_Ref_int__deposits0;
modifies sum__deposits0;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int);
modifies __tmp__Balance;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies revert;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp__Alloc;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___state_RefundEscrow;
procedure {:inline 1} goal_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} goal_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} claimRefund~addresspayable_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1220: Ref);
modifies revert;
modifies sum__deposits0;
modifies M_Ref_int__deposits0;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _primary_Secondary;
modifies _state_RefundEscrow;
procedure {:inline 1} claimRefund~addresspayable_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1220: Ref);
modifies revert;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} goalReached_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} goalReached_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} _finalization_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___state_RefundEscrow;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} _forwardFunds_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies gas;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp__sum__deposits0;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int__deposits0;
modifies __tmp__sum__deposits0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies revert;
modifies gas;
procedure {:inline 1} onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:inline 1} onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
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
__ret_0_ := msgsender_MSG;
return;
}

implementation _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
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

implementation add~uint256~uint256_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int)
{
var c_s39: int;
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
assume ((b_s40) >= (0));
assume (((a_s40) + (b_s40)) >= (0));
c_s39 := (a_s40) + (b_s40);
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
if (!((c_s39) >= (a_s40))) {
revert := true;
return;
}
assume ((c_s39) >= (0));
__ret_0_ := c_s39;
return;
}

implementation add~uint256~uint256_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int)
{
var c_s39: int;
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
assume ((b_s40) >= (0));
assume (((a_s40) + (b_s40)) >= (0));
c_s39 := (a_s40) + (b_s40);
assume ((c_s39) >= (0));
assume ((a_s40) >= (0));
if (!((c_s39) >= (a_s40))) {
revert := true;
return;
}
assume ((c_s39) >= (0));
__ret_0_ := c_s39;
return;
}

implementation sub~uint256~uint256_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int)
{
var c_s64: int;
assume ((b_s65) >= (0));
assume ((a_s65) >= (0));
if (!((b_s65) <= (a_s65))) {
revert := true;
return;
}
assume ((c_s64) >= (0));
assume ((a_s65) >= (0));
assume ((b_s65) >= (0));
assume (((a_s65) - (b_s65)) >= (0));
c_s64 := (a_s65) - (b_s65);
assume ((c_s64) >= (0));
__ret_0_ := c_s64;
return;
}

implementation sub~uint256~uint256_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int)
{
var c_s64: int;
assume ((b_s65) >= (0));
assume ((a_s65) >= (0));
if (!((b_s65) <= (a_s65))) {
revert := true;
return;
}
assume ((c_s64) >= (0));
assume ((a_s65) >= (0));
assume ((b_s65) >= (0));
assume (((a_s65) - (b_s65)) >= (0));
c_s64 := (a_s65) - (b_s65);
assume ((c_s64) >= (0));
__ret_0_ := c_s64;
return;
}

implementation Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var msgSender_s90: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___primary_Secondary[this] := null;
// end of initialization
if ((__tmp__DType[this]) == (RefundEscrow)) {
call msgSender_s90 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call msgSender_s90 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call msgSender_s90 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Secondary)) {
call msgSender_s90 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
msgSender_s90 := msgSender_s90;
__tmp___primary_Secondary[this] := msgSender_s90;
}

implementation Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var msgSender_s90: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_primary_Secondary[this] := null;
// end of initialization
if ((DType[this]) == (RefundEscrow)) {
call msgSender_s90 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call msgSender_s90 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call msgSender_s90 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Secondary)) {
call msgSender_s90 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
msgSender_s90 := msgSender_s90;
_primary_Secondary[this] := msgSender_s90;
assert {:EventEmitted "PrimaryTransferred_Secondary"} (true);
}

implementation Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var msgSender_s90: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var msgSender_s90: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := __tmp___primary_Secondary[this];
return;
}

implementation primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := _primary_Secondary[this];
return;
}

implementation transferPrimary~address_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s136: Ref)
{
var __var_2: Ref;
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_2 := null;
if (!((recipient_s136) != (null))) {
revert := true;
return;
}
__tmp___primary_Secondary[this] := recipient_s136;
}

implementation transferPrimary~address_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s136: Ref)
{
var __var_2: Ref;
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_2 := null;
if (!((recipient_s136) != (null))) {
revert := true;
return;
}
_primary_Secondary[this] := recipient_s136;
assert {:EventEmitted "PrimaryTransferred_Secondary"} (true);
}

implementation Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make array/mapping vars distinct for _deposits
call __var_3 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___deposits_Escrow[this] := __var_3;
// Initialize Integer mapping _deposits
__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]] := zeroRefintArr();
__tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := 0;
// end of initialization
}

implementation Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for _deposits
call __var_3 := FreshRefGenerator__success();
if (revert) {
return;
}
_deposits_Escrow[this] := __var_3;
// Initialize Integer mapping _deposits
M_Ref_int__deposits0[_deposits_Escrow[this]] := zeroRefintArr();
sum__deposits0[_deposits_Escrow[this]] := 0;
// end of initialization
}

implementation Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Escrow_Escrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Escrow_Escrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation depositsOf~address_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s170: Ref) returns (__ret_0_: int)
{
assume ((__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s170]) >= (0));
__ret_0_ := __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s170];
return;
}

implementation depositsOf~address_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s170: Ref) returns (__ret_0_: int)
{
assume ((M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s170]) >= (0));
__ret_0_ := M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s170];
return;
}

implementation deposit~address_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s180: Ref)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (RefundEscrow)) {
call deposit_Escrow~address_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call deposit_Escrow~address_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call deposit_Escrow~address_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation deposit~address_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s180: Ref)
{
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (RefundEscrow)) {
call deposit_Escrow~address_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call deposit_Escrow~address_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call deposit_Escrow~address_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation deposit_Escrow~address_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s209: Ref)
{
var amount_s208: int;
var __var_4: int;
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((amount_s208) >= (0));
assume ((msgvalue_MSG) >= (0));
amount_s208 := msgvalue_MSG;
assume ((__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s209]) >= (0));
assume ((__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s209]) >= (0));
assume ((amount_s208) >= (0));
call __var_4 := add~uint256~uint256_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s209], amount_s208);
if (revert) {
return;
}
__tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := (__tmp__sum__deposits0[__tmp___deposits_Escrow[this]]) - (__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s209]);
__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s209] := __var_4;
__tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := (__tmp__sum__deposits0[__tmp___deposits_Escrow[this]]) + (__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s209]);
assume ((__var_4) >= (0));
}

implementation deposit_Escrow~address_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s209: Ref)
{
var amount_s208: int;
var __var_4: int;
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((amount_s208) >= (0));
assume ((msgvalue_MSG) >= (0));
amount_s208 := msgvalue_MSG;
assume ((M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s209]) >= (0));
assume ((M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s209]) >= (0));
assume ((amount_s208) >= (0));
call __var_4 := add~uint256~uint256_SafeMath__success(this, this, 0, M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s209], amount_s208);
if (revert) {
return;
}
sum__deposits0[_deposits_Escrow[this]] := (sum__deposits0[_deposits_Escrow[this]]) - (M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s209]);
M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s209] := __var_4;
sum__deposits0[_deposits_Escrow[this]] := (sum__deposits0[_deposits_Escrow[this]]) + (M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s209]);
assume ((__var_4) >= (0));
assert {:EventEmitted "Deposited_Escrow"} (true);
}

implementation withdraw~addresspayable_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s219: Ref)
{
if ((__tmp__DType[this]) == (RefundEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call withdraw_Escrow~addresspayable_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdraw~addresspayable_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s219: Ref)
{
if ((DType[this]) == (RefundEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call withdraw_Escrow~addresspayable_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdraw_Escrow~addresspayable_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s250: Ref)
{
var payment_s249: int;
var __var_5: int;
var __var_6: bool;
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((payment_s249) >= (0));
assume ((__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s250]) >= (0));
payment_s249 := __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s250];
assume ((__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s250]) >= (0));
__tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := (__tmp__sum__deposits0[__tmp___deposits_Escrow[this]]) - (__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s250]);
__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s250] := 0;
__tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := (__tmp__sum__deposits0[__tmp___deposits_Escrow[this]]) + (__tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s250]);
__var_5 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_5 := (__var_5) - (gas);
assume ((payment_s249) >= (0));
call __var_6 := send__fail(this, payee_s250, payment_s249);
if (!(__var_6)) {
revert := true;
return;
}
gas := (__var_5) + (gas);
}

implementation withdraw_Escrow~addresspayable_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s250: Ref)
{
var payment_s249: int;
var __var_5: int;
var __var_6: bool;
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((payment_s249) >= (0));
assume ((M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s250]) >= (0));
payment_s249 := M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s250];
assume ((M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s250]) >= (0));
sum__deposits0[_deposits_Escrow[this]] := (sum__deposits0[_deposits_Escrow[this]]) - (M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s250]);
M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s250] := 0;
sum__deposits0[_deposits_Escrow[this]] := (sum__deposits0[_deposits_Escrow[this]]) + (M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s250]);
__var_5 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_5 := (__var_5) - (gas);
assume ((payment_s249) >= (0));
call __var_6 := send__success(this, payee_s250, payment_s249);
if (!(__var_6)) {
revert := true;
return;
}
gas := (__var_5) + (gas);
assert {:EventEmitted "Withdrawn_Escrow"} (true);
}

implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation ConditionalEscrow_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ConditionalEscrow_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation withdraw~addresspayable_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s277: Ref)
{
var __var_7: bool;
if ((__tmp__DType[this]) == (RefundEscrow)) {
call __var_7 := withdrawalAllowed~address_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call __var_7 := withdrawalAllowed~address_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s277);
} else {
assume (false);
}
if (!(__var_7)) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (RefundEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdraw~addresspayable_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s277: Ref)
{
var __var_7: bool;
if ((DType[this]) == (RefundEscrow)) {
call __var_7 := withdrawalAllowed~address_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call __var_7 := withdrawalAllowed~address_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s277);
} else {
assume (false);
}
if (!(__var_7)) {
revert := true;
return;
}
if ((DType[this]) == (RefundEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow~addresspayable_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref)
{
var __var_8: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___beneficiary_RefundEscrow[this] := null;
// end of initialization
__var_8 := null;
if (!((beneficiary_s316) != (null))) {
revert := true;
return;
}
__tmp___beneficiary_RefundEscrow[this] := beneficiary_s316;
__tmp___state_RefundEscrow[this] := 0;
}

implementation RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref)
{
var __var_8: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_beneficiary_RefundEscrow[this] := null;
// end of initialization
__var_8 := null;
if (!((beneficiary_s316) != (null))) {
revert := true;
return;
}
_beneficiary_RefundEscrow[this] := beneficiary_s316;
_state_RefundEscrow[this] := 0;
}

implementation RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref)
{
var __var_8: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ConditionalEscrow_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call RefundEscrow_RefundEscrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s316);
if (revert) {
return;
}
}

implementation RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s316: Ref)
{
var __var_8: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call RefundEscrow_RefundEscrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s316);
if (revert) {
return;
}
}

implementation state_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := __tmp___state_RefundEscrow[this];
return;
}

implementation state_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := _state_RefundEscrow[this];
return;
}

implementation beneficiary_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := __tmp___beneficiary_RefundEscrow[this];
return;
}

implementation beneficiary_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := _beneficiary_RefundEscrow[this];
return;
}

implementation deposit~address_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s350: Ref)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if (!((__tmp___state_RefundEscrow[this]) == (0))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (RefundEscrow)) {
call deposit_Escrow~address_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s350);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation deposit~address_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s350: Ref)
{
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if (!((_state_RefundEscrow[this]) == (0))) {
revert := true;
return;
}
if ((DType[this]) == (RefundEscrow)) {
call deposit_Escrow~address_Escrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s350);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation close_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((__tmp___state_RefundEscrow[this]) == (0))) {
revert := true;
return;
}
__tmp___state_RefundEscrow[this] := 2;
}

implementation close_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((_state_RefundEscrow[this]) == (0))) {
revert := true;
return;
}
_state_RefundEscrow[this] := 2;
assert {:EventEmitted "RefundsClosed_RefundEscrow"} (true);
}

implementation enableRefunds_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((__tmp___state_RefundEscrow[this]) == (0))) {
revert := true;
return;
}
__tmp___state_RefundEscrow[this] := 1;
}

implementation enableRefunds_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((_state_RefundEscrow[this]) == (0))) {
revert := true;
return;
}
_state_RefundEscrow[this] := 1;
assert {:EventEmitted "RefundsEnabled_RefundEscrow"} (true);
}

implementation beneficiaryWithdraw_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_9: int;
var __var_10: Ref;
var __var_11: bool;
if (!((__tmp___state_RefundEscrow[this]) == (2))) {
revert := true;
return;
}
__var_9 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_9 := (__var_9) - (gas);
__var_10 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_11 := send__fail(this, __tmp___beneficiary_RefundEscrow[this], __tmp__Balance[this]);
if (!(__var_11)) {
revert := true;
return;
}
gas := (__var_9) + (gas);
}

implementation beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_9: int;
var __var_10: Ref;
var __var_11: bool;
if (!((_state_RefundEscrow[this]) == (2))) {
revert := true;
return;
}
__var_9 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_9 := (__var_9) - (gas);
__var_10 := this;
assume ((Balance[this]) >= (0));
call __var_11 := send__success(this, _beneficiary_RefundEscrow[this], Balance[this]);
if (!(__var_11)) {
revert := true;
return;
}
gas := (__var_9) + (gas);
}

implementation withdrawalAllowed~address_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool)
{
__ret_0_ := (__tmp___state_RefundEscrow[this]) == (1);
return;
}

implementation withdrawalAllowed~address_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool)
{
__ret_0_ := (_state_RefundEscrow[this]) == (1);
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

implementation SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeERC20_SafeERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeERC20_SafeERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation safeTransfer~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s517: Ref, to_s517: Ref, value_s517: int)
{
var __var_12: bool;
var __var_13: int;
assume ((value_s517) >= (0));
call __var_12 := transfer~address~uint256_IERC20(token_s517, this, __var_13, to_s517, value_s517);
if (!(__var_12)) {
revert := true;
return;
}
}

implementation safeTransfer~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s517: Ref, to_s517: Ref, value_s517: int)
{
var __var_12: bool;
var __var_13: int;
assume ((value_s517) >= (0));
call __var_12 := transfer~address~uint256_IERC20(token_s517, this, __var_13, to_s517, value_s517);
if (!(__var_12)) {
revert := true;
return;
}
}

implementation safeTransferFrom~IERC20~address~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s538: Ref, from_s538: Ref, to_s538: Ref, value_s538: int)
{
var __var_14: bool;
var __var_15: int;
assume ((value_s538) >= (0));
call __var_14 := transferFrom~address~address~uint256_IERC20(token_s538, this, __var_15, from_s538, to_s538, value_s538);
if (!(__var_14)) {
revert := true;
return;
}
}

implementation safeTransferFrom~IERC20~address~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s538: Ref, from_s538: Ref, to_s538: Ref, value_s538: int)
{
var __var_14: bool;
var __var_15: int;
assume ((value_s538) >= (0));
call __var_14 := transferFrom~address~address~uint256_IERC20(token_s538, this, __var_15, from_s538, to_s538, value_s538);
if (!(__var_14)) {
revert := true;
return;
}
}

implementation safeApprove~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s575: Ref, spender_s575: Ref, value_s575: int)
{
var __var_16: int;
var __var_17: int;
var __var_18: Ref;
var __var_19: bool;
var __var_20: int;
assume ((value_s575) >= (0));
assume ((__var_16) >= (0));
__var_18 := this;
call __var_16 := allowance~address~address_IERC20(token_s575, this, __var_17, this, spender_s575);
assume ((__var_16) >= (0));
if (!((((value_s575) == (0))) || (((__var_16) == (0))))) {
revert := true;
return;
}
assume ((value_s575) >= (0));
call __var_19 := approve~address~uint256_IERC20(token_s575, this, __var_20, spender_s575, value_s575);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation safeApprove~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s575: Ref, spender_s575: Ref, value_s575: int)
{
var __var_16: int;
var __var_17: int;
var __var_18: Ref;
var __var_19: bool;
var __var_20: int;
assume ((value_s575) >= (0));
assume ((__var_16) >= (0));
__var_18 := this;
call __var_16 := allowance~address~address_IERC20(token_s575, this, __var_17, this, spender_s575);
assume ((__var_16) >= (0));
if (!((((value_s575) == (0))) || (((__var_16) == (0))))) {
revert := true;
return;
}
assume ((value_s575) >= (0));
call __var_19 := approve~address~uint256_IERC20(token_s575, this, __var_20, spender_s575, value_s575);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s606: Ref, spender_s606: Ref, value_s606: int)
{
var newAllowance_s605: int;
var __var_21: int;
var __var_22: int;
var __var_23: Ref;
var __var_24: bool;
var __var_25: int;
assume ((newAllowance_s605) >= (0));
assume ((__var_21) >= (0));
__var_23 := this;
call __var_21 := allowance~address~address_IERC20(token_s606, this, __var_22, this, spender_s606);
assume ((__var_21) >= (0));
assume ((value_s606) >= (0));
call newAllowance_s605 := add~uint256~uint256_SafeMath__fail(this, this, 0, __var_21, value_s606);
if (revert) {
return;
}
newAllowance_s605 := newAllowance_s605;
assume ((newAllowance_s605) >= (0));
call __var_24 := approve~address~uint256_IERC20(token_s606, this, __var_25, spender_s606, newAllowance_s605);
if (!(__var_24)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s606: Ref, spender_s606: Ref, value_s606: int)
{
var newAllowance_s605: int;
var __var_21: int;
var __var_22: int;
var __var_23: Ref;
var __var_24: bool;
var __var_25: int;
assume ((newAllowance_s605) >= (0));
assume ((__var_21) >= (0));
__var_23 := this;
call __var_21 := allowance~address~address_IERC20(token_s606, this, __var_22, this, spender_s606);
assume ((__var_21) >= (0));
assume ((value_s606) >= (0));
call newAllowance_s605 := add~uint256~uint256_SafeMath__success(this, this, 0, __var_21, value_s606);
if (revert) {
return;
}
newAllowance_s605 := newAllowance_s605;
assume ((newAllowance_s605) >= (0));
call __var_24 := approve~address~uint256_IERC20(token_s606, this, __var_25, spender_s606, newAllowance_s605);
if (!(__var_24)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance~IERC20~address~uint256_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s637: Ref, spender_s637: Ref, value_s637: int)
{
var newAllowance_s636: int;
var __var_26: int;
var __var_27: int;
var __var_28: Ref;
var __var_29: bool;
var __var_30: int;
assume ((newAllowance_s636) >= (0));
assume ((__var_26) >= (0));
__var_28 := this;
call __var_26 := allowance~address~address_IERC20(token_s637, this, __var_27, this, spender_s637);
assume ((__var_26) >= (0));
assume ((value_s637) >= (0));
call newAllowance_s636 := sub~uint256~uint256_SafeMath__fail(this, this, 0, __var_26, value_s637);
if (revert) {
return;
}
newAllowance_s636 := newAllowance_s636;
assume ((newAllowance_s636) >= (0));
call __var_29 := approve~address~uint256_IERC20(token_s637, this, __var_30, spender_s637, newAllowance_s636);
if (!(__var_29)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance~IERC20~address~uint256_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s637: Ref, spender_s637: Ref, value_s637: int)
{
var newAllowance_s636: int;
var __var_26: int;
var __var_27: int;
var __var_28: Ref;
var __var_29: bool;
var __var_30: int;
assume ((newAllowance_s636) >= (0));
assume ((__var_26) >= (0));
__var_28 := this;
call __var_26 := allowance~address~address_IERC20(token_s637, this, __var_27, this, spender_s637);
assume ((__var_26) >= (0));
assume ((value_s637) >= (0));
call newAllowance_s636 := sub~uint256~uint256_SafeMath__success(this, this, 0, __var_26, value_s637);
if (revert) {
return;
}
newAllowance_s636 := newAllowance_s636;
assume ((newAllowance_s636) >= (0));
call __var_29 := approve~address~uint256_IERC20(token_s637, this, __var_30, spender_s637, newAllowance_s636);
if (!(__var_29)) {
revert := true;
return;
}
}

implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___notEntered_ReentrancyGuard[this] := false;
// end of initialization
__tmp___notEntered_ReentrancyGuard[this] := true;
}

implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_notEntered_ReentrancyGuard[this] := false;
// end of initialization
_notEntered_ReentrancyGuard[this] := true;
}

implementation ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref)
{
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___wallet_Crowdsale[this] := null;
__tmp___rate_Crowdsale[this] := 0;
__tmp___weiRaised_Crowdsale[this] := 0;
// end of initialization
assume ((rate_s740) >= (0));
if (!((rate_s740) > (0))) {
revert := true;
return;
}
__var_31 := null;
if (!((wallet_s740) != (null))) {
revert := true;
return;
}
__var_32 := token_s740;
__var_33 := null;
if (!((token_s740) != (null))) {
revert := true;
return;
}
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__tmp___rate_Crowdsale[this] := 1;
__tmp___wallet_Crowdsale[this] := wallet_s740;
__tmp___token_Crowdsale[this] := token_s740;
}

implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref)
{
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_wallet_Crowdsale[this] := null;
_rate_Crowdsale[this] := 0;
_weiRaised_Crowdsale[this] := 0;
// end of initialization
assume ((rate_s740) >= (0));
if (!((rate_s740) > (0))) {
revert := true;
return;
}
__var_31 := null;
if (!((wallet_s740) != (null))) {
revert := true;
return;
}
__var_32 := token_s740;
__var_33 := null;
if (!((token_s740) != (null))) {
revert := true;
return;
}
assume ((_rate_Crowdsale[this]) >= (0));
_rate_Crowdsale[this] := 1;
_wallet_Crowdsale[this] := wallet_s740;
_token_Crowdsale[this] := token_s740;
}

implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref)
{
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s740, wallet_s740, token_s740);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s740: int, wallet_s740: Ref, token_s740: Ref)
{
var __var_31: Ref;
var __var_32: Ref;
var __var_33: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s740, wallet_s740, token_s740);
if (revert) {
return;
}
}

implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_34: Ref;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call buyTokens~address_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call buyTokens~address_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call buyTokens~address_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call buyTokens~address_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_34: Ref;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (RefundableCrowdsale)) {
call buyTokens~address_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call buyTokens~address_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call buyTokens~address_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call buyTokens~address_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := __tmp___token_Crowdsale[this];
return;
}

implementation token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := _token_Crowdsale[this];
return;
}

implementation wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := __tmp___wallet_Crowdsale[this];
return;
}

implementation wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := _wallet_Crowdsale[this];
return;
}

implementation rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__ret_0_ := __tmp___rate_Crowdsale[this];
return;
}

implementation rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((_rate_Crowdsale[this]) >= (0));
__ret_0_ := _rate_Crowdsale[this];
return;
}

implementation weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
__ret_0_ := __tmp___weiRaised_Crowdsale[this];
return;
}

implementation weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((_weiRaised_Crowdsale[this]) >= (0));
__ret_0_ := _weiRaised_Crowdsale[this];
return;
}

implementation buyTokens~address_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s838: Ref)
{
var weiAmount_s837: int;
var tokens_s837: int;
var __var_35: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call nonReentrant_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s837) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s837 := msgvalue_MSG;
assume ((weiAmount_s837) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase~address~uint256_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase~address~uint256_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase~address~uint256_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s837) >= (0));
assume ((weiAmount_s837) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s837 := tokens_s837;
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s837) >= (0));
call __var_35 := add~uint256~uint256_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s837);
if (revert) {
return;
}
__tmp___weiRaised_Crowdsale[this] := __var_35;
assume ((__var_35) >= (0));
assume ((tokens_s837) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _processPurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _processPurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _processPurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _processPurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s837) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _forwardFunds_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s837) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
call nonReentrant_post__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation buyTokens~address_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s838: Ref)
{
var weiAmount_s837: int;
var tokens_s837: int;
var __var_35: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call nonReentrant_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s837) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s837 := msgvalue_MSG;
assume ((weiAmount_s837) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase~address~uint256_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase~address~uint256_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase~address~uint256_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s837) >= (0));
assume ((weiAmount_s837) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call tokens_s837 := _getTokenAmount~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s837 := tokens_s837;
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s837) >= (0));
call __var_35 := add~uint256~uint256_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s837);
if (revert) {
return;
}
_weiRaised_Crowdsale[this] := __var_35;
assume ((__var_35) >= (0));
assume ((tokens_s837) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _processPurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _processPurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _processPurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _processPurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, tokens_s837);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokensPurchased_Crowdsale"} (true);
assume ((weiAmount_s837) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _updatePurchasingState~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (RefundableCrowdsale)) {
call _forwardFunds_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s837) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _postValidatePurchase~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838, weiAmount_s837);
if (revert) {
return;
}
} else {
assume (false);
}
call nonReentrant_post__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation _preValidatePurchase~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s851: Ref, weiAmount_s851: int)
{
assume ((weiAmount_s851) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s851: Ref, weiAmount_s851: int)
{
assume ((weiAmount_s851) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s851, weiAmount_s851);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s877: Ref, weiAmount_s877: int)
{
var __var_36: Ref;
__var_36 := null;
if (!((beneficiary_s877) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s877) >= (0));
if (!((weiAmount_s877) != (0))) {
revert := true;
return;
}
}

implementation _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s877: Ref, weiAmount_s877: int)
{
var __var_36: Ref;
__var_36 := null;
if (!((beneficiary_s877) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s877) >= (0));
if (!((weiAmount_s877) != (0))) {
revert := true;
return;
}
}

implementation _postValidatePurchase~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s885: Ref, weiAmount_s885: int)
{
}

implementation _postValidatePurchase~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s885: Ref, weiAmount_s885: int)
{
}

implementation _deliverTokens~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s901: Ref, tokenAmount_s901: int)
{
assume ((tokenAmount_s901) >= (0));
call safeTransfer~IERC20~address~uint256_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s901, tokenAmount_s901);
if (revert) {
return;
}
}

implementation _deliverTokens~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s901: Ref, tokenAmount_s901: int)
{
assume ((tokenAmount_s901) >= (0));
call safeTransfer~IERC20~address~uint256_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s901, tokenAmount_s901);
if (revert) {
return;
}
}

implementation _processPurchase~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s914: Ref, tokenAmount_s914: int)
{
assume ((tokenAmount_s914) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _processPurchase~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s914: Ref, tokenAmount_s914: int)
{
assume ((tokenAmount_s914) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _deliverTokens~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s914, tokenAmount_s914);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _updatePurchasingState~address~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s922: Ref, weiAmount_s922: int)
{
}

implementation _updatePurchasingState~address~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s922: Ref, weiAmount_s922: int)
{
}

implementation _getTokenAmount~uint256_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s932: int) returns (__ret_0_: int)
{
assume ((weiAmount_s932) >= (0));
__ret_0_ := weiAmount_s932;
return;
}

implementation _getTokenAmount~uint256_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s932: int) returns (__ret_0_: int)
{
assume ((weiAmount_s932) >= (0));
__ret_0_ := weiAmount_s932;
return;
}

implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_37: int;
var __var_38: bool;
__var_37 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_37 := (__var_37) - (gas);
assume ((msgvalue_MSG) >= (0));
call __var_38 := send__fail(this, __tmp___wallet_Crowdsale[this], msgvalue_MSG);
if (!(__var_38)) {
revert := true;
return;
}
gas := (__var_37) + (gas);
}

implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_37: int;
var __var_38: bool;
__var_37 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_37 := (__var_37) - (gas);
assume ((msgvalue_MSG) >= (0));
call __var_38 := send__success(this, _wallet_Crowdsale[this], msgvalue_MSG);
if (!(__var_38)) {
revert := true;
return;
}
gas := (__var_37) + (gas);
}

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___openingTime_TimedCrowdsale[this] := 0;
__tmp___closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s1000) >= (0));
assume ((__tmp__now) >= (0));
if (!((openingTime_s1000) >= (__tmp__now))) {
revert := true;
return;
}
assume ((closingTime_s1000) >= (0));
assume ((openingTime_s1000) >= (0));
if (!((closingTime_s1000) > (openingTime_s1000))) {
revert := true;
return;
}
assume ((__tmp___openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s1000) >= (0));
__tmp___openingTime_TimedCrowdsale[this] := openingTime_s1000;
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s1000) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := closingTime_s1000;
}

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_openingTime_TimedCrowdsale[this] := 0;
_closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s1000) >= (0));
assume ((now) >= (0));
if (!((openingTime_s1000) >= (now))) {
revert := true;
return;
}
assume ((closingTime_s1000) >= (0));
assume ((openingTime_s1000) >= (0));
if (!((closingTime_s1000) > (openingTime_s1000))) {
revert := true;
return;
}
assume ((_openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s1000) >= (0));
_openingTime_TimedCrowdsale[this] := openingTime_s1000;
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s1000) >= (0));
_closingTime_TimedCrowdsale[this] := closingTime_s1000;
}

implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s1000, closingTime_s1000);
if (revert) {
return;
}
}

implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s1000: int, closingTime_s1000: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s1000, closingTime_s1000);
if (revert) {
return;
}
}

implementation openingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp___openingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := __tmp___openingTime_TimedCrowdsale[this];
return;
}

implementation openingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((_openingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := _openingTime_TimedCrowdsale[this];
return;
}

implementation closingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := __tmp___closingTime_TimedCrowdsale[this];
return;
}

implementation closingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := _closingTime_TimedCrowdsale[this];
return;
}

implementation isOpen_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((__tmp__now) >= (0));
assume ((__tmp___openingTime_TimedCrowdsale[this]) >= (0));
assume ((__tmp__now) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := ((__tmp__now) >= (__tmp___openingTime_TimedCrowdsale[this])) && ((__tmp__now) <= (__tmp___closingTime_TimedCrowdsale[this]));
return;
}

implementation isOpen_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((now) >= (0));
assume ((_openingTime_TimedCrowdsale[this]) >= (0));
assume ((now) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := ((now) >= (_openingTime_TimedCrowdsale[this])) && ((now) <= (_closingTime_TimedCrowdsale[this]));
return;
}

implementation hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((__tmp__now) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := (__tmp__now) > (__tmp___closingTime_TimedCrowdsale[this]);
return;
}

implementation hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
assume ((now) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := (now) > (_closingTime_TimedCrowdsale[this]);
return;
}

implementation _preValidatePurchase~address~uint256_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1058: Ref, weiAmount_s1058: int)
{
call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s1058) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1058, weiAmount_s1058);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1058, weiAmount_s1058);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1058, weiAmount_s1058);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase~address~uint256_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1058: Ref, weiAmount_s1058: int)
{
call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s1058) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1058, weiAmount_s1058);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1058, weiAmount_s1058);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale~address~uint256_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1058, weiAmount_s1058);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _extendTime~uint256_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1087: int)
{
var __var_40: bool;
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_40 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_40 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call __var_40 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(!(__var_40))) {
revert := true;
return;
}
assume ((newClosingTime_s1087) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s1087) > (__tmp___closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s1087) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := newClosingTime_s1087;
}

implementation _extendTime~uint256_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1087: int)
{
var __var_40: bool;
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_40 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_40 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call __var_40 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(!(__var_40))) {
revert := true;
return;
}
assume ((newClosingTime_s1087) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s1087) > (_closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assert {:EventEmitted "TimedCrowdsaleExtended_TimedCrowdsale"} (true);
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s1087) >= (0));
_closingTime_TimedCrowdsale[this] := newClosingTime_s1087;
}

implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___finalized_FinalizableCrowdsale[this] := false;
// end of initialization
__tmp___finalized_FinalizableCrowdsale[this] := false;
}

implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_finalized_FinalizableCrowdsale[this] := false;
// end of initialization
_finalized_FinalizableCrowdsale[this] := false;
}

implementation FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation finalized_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
__ret_0_ := __tmp___finalized_FinalizableCrowdsale[this];
return;
}

implementation finalized_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
__ret_0_ := _finalized_FinalizableCrowdsale[this];
return;
}

implementation finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_41: bool;
if (!(!(__tmp___finalized_FinalizableCrowdsale[this]))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_41 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_41 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_41)) {
revert := true;
return;
}
__tmp___finalized_FinalizableCrowdsale[this] := true;
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _finalization_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _finalization_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_41: bool;
if (!(!(_finalized_FinalizableCrowdsale[this]))) {
revert := true;
return;
}
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_41 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_41 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_41)) {
revert := true;
return;
}
_finalized_FinalizableCrowdsale[this] := true;
if ((DType[this]) == (RefundableCrowdsale)) {
call _finalization_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _finalization_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "CrowdsaleFinalized_FinalizableCrowdsale"} (true);
}

implementation _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if ((DType[this]) == (RefundableCrowdsale)) {
call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}

implementation _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}

implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int)
{
var __var_42: Ref;
var __var_43: Ref;
var __var_44: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp___goal_RefundableCrowdsale[this] := 0;
// end of initialization
assume ((goal_s1187) >= (0));
if (!((goal_s1187) > (0))) {
revert := true;
return;
}
call __var_43 := FreshRefGenerator__fail();
if (revert) {
return;
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_44 := wallet_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__tmp__DType[__var_43]) == (RefundEscrow));
call RefundEscrow_RefundEscrow__fail(__var_43, this, 0, __var_44);
if (revert) {
return;
}
__var_42 := __var_43;
__tmp___escrow_RefundableCrowdsale[this] := __var_42;
assume ((__tmp___goal_RefundableCrowdsale[this]) >= (0));
assume ((goal_s1187) >= (0));
__tmp___goal_RefundableCrowdsale[this] := goal_s1187;
}

implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int)
{
var __var_42: Ref;
var __var_43: Ref;
var __var_44: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
_goal_RefundableCrowdsale[this] := 0;
// end of initialization
assume ((goal_s1187) >= (0));
if (!((goal_s1187) > (0))) {
revert := true;
return;
}
call __var_43 := FreshRefGenerator__success();
if (revert) {
return;
}
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_44 := wallet_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((DType[__var_43]) == (RefundEscrow));
call RefundEscrow_RefundEscrow__success(__var_43, this, 0, __var_44);
if (revert) {
return;
}
__var_42 := __var_43;
_escrow_RefundableCrowdsale[this] := __var_42;
assume ((_goal_RefundableCrowdsale[this]) >= (0));
assume ((goal_s1187) >= (0));
_goal_RefundableCrowdsale[this] := goal_s1187;
}

implementation RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int)
{
var __var_42: Ref;
var __var_43: Ref;
var __var_44: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, goal_s1187);
if (revert) {
return;
}
}

implementation RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1187: int)
{
var __var_42: Ref;
var __var_43: Ref;
var __var_44: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, goal_s1187);
if (revert) {
return;
}
}

implementation goal_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((__tmp___goal_RefundableCrowdsale[this]) >= (0));
__ret_0_ := __tmp___goal_RefundableCrowdsale[this];
return;
}

implementation goal_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assume ((_goal_RefundableCrowdsale[this]) >= (0));
__ret_0_ := _goal_RefundableCrowdsale[this];
return;
}

implementation claimRefund~addresspayable_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1220: Ref)
{
var __var_45: bool;
var __var_46: bool;
var __var_47: int;
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_45 := finalized_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_45)) {
revert := true;
return;
}
call __var_46 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_46))) {
revert := true;
return;
}
if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call withdraw~addresspayable_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1220);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call withdraw~addresspayable_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1220);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call withdraw~addresspayable_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1220);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation claimRefund~addresspayable_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1220: Ref)
{
var __var_45: bool;
var __var_46: bool;
var __var_47: int;
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_45 := finalized_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_45)) {
revert := true;
return;
}
call __var_46 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_46))) {
revert := true;
return;
}
if ((DType[_escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call withdraw~addresspayable_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1220);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call withdraw~addresspayable_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1220);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call withdraw~addresspayable_Escrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1220);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation goalReached_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_48: int;
assume ((__var_48) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_48 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_48) >= (0));
assume ((__tmp___goal_RefundableCrowdsale[this]) >= (0));
__ret_0_ := (__var_48) >= (__tmp___goal_RefundableCrowdsale[this]);
return;
}

implementation goalReached_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_48: int;
assume ((__var_48) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_48 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_48) >= (0));
assume ((_goal_RefundableCrowdsale[this]) >= (0));
__ret_0_ := (__var_48) >= (_goal_RefundableCrowdsale[this]);
return;
}

implementation _finalization_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_49: bool;
var __var_50: int;
var __var_51: int;
var __var_52: int;
call __var_49 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (__var_49) {
call close_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_50);
if (revert) {
return;
}
call beneficiaryWithdraw_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_51);
if (revert) {
return;
}
} else {
call enableRefunds_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_52);
if (revert) {
return;
}
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _finalization_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_49: bool;
var __var_50: int;
var __var_51: int;
var __var_52: int;
call __var_49 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (__var_49) {
call close_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_50);
if (revert) {
return;
}
call beneficiaryWithdraw_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_51);
if (revert) {
return;
}
} else {
call enableRefunds_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_52);
if (revert) {
return;
}
}
if ((DType[this]) == (RefundableCrowdsale)) {
call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _forwardFunds_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_53: Ref;
assume ((msgvalue_MSG) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_53 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call deposit~address_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call deposit~address_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call deposit~address_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _forwardFunds_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_53: Ref;
assume ((msgvalue_MSG) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_53 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[_escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call deposit~address_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call deposit~address_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call deposit~address_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (RefundableCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (FinalizableCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (TimedCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Crowdsale)) {
call FallbackMethod_Crowdsale__fail(to, from, amount);
if (revert) {
return;
}
} else if ((__tmp__DType[to]) == (ReentrancyGuard)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (RefundEscrow)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ConditionalEscrow)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Escrow)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Secondary)) {
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
if ((DType[to]) == (RefundableCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (FinalizableCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (TimedCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Crowdsale)) {
call FallbackMethod_Crowdsale__success(to, from, amount);
if (revert) {
return;
}
} else if ((DType[to]) == (ReentrancyGuard)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (RefundEscrow)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ConditionalEscrow)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Escrow)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Secondary)) {
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
var iterate: bool;
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s136: Ref;
var payee_s170: Ref;
var __ret_0_depositsOf: int;
var payee_s180: Ref;
var payee_s219: Ref;
var payee_s277: Ref;
var payee_s260: Ref;
var __ret_0_withdrawalAllowed: bool;
var refundee_s350: Ref;
var __arg_0_withdrawalAllowed: Ref;
var beneficiary_s316: Ref;
var __ret_0_state: int;
var __ret_0_beneficiary: Ref;
var rate_s740: int;
var wallet_s740: Ref;
var token_s740: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s838: Ref;
var openingTime_s1000: int;
var closingTime_s1000: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var goal_s1187: int;
var __ret_0_goal: int;
var refundee_s1220: Ref;
var __ret_0_goalReached: bool;
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
havoc __ret_0_primary;
havoc recipient_s136;
havoc payee_s170;
havoc __ret_0_depositsOf;
havoc payee_s180;
havoc payee_s219;
havoc payee_s277;
havoc payee_s260;
havoc __ret_0_withdrawalAllowed;
havoc refundee_s350;
havoc __arg_0_withdrawalAllowed;
havoc beneficiary_s316;
havoc __ret_0_state;
havoc __ret_0_beneficiary;
havoc rate_s740;
havoc wallet_s740;
havoc token_s740;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s838;
havoc openingTime_s1000;
havoc closingTime_s1000;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc __ret_0_finalized;
havoc goal_s1187;
havoc __ret_0_goal;
havoc refundee_s1220;
havoc __ret_0_goalReached;
havoc iterate;
if ((__tmp__DType[from]) == (RefundableCrowdsale)) {
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__fail(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_finalized := finalized_FinalizableCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call finalize_FinalizableCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_goal := goal_RefundableCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call claimRefund~addresspayable_RefundableCrowdsale__fail(from, to, msgvalue_MSG, refundee_s1220);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_goalReached := goalReached_RefundableCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (FinalizableCrowdsale)) {
if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__fail(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_finalized := finalized_FinalizableCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call finalize_FinalizableCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (TimedCrowdsale)) {
if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__fail(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (Crowdsale)) {
if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__fail(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (RefundEscrow)) {
if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__fail(from, to, msgvalue_MSG, recipient_s136);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow__fail(from, to, msgvalue_MSG, payee_s170);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_RefundEscrow__fail(from, to, msgvalue_MSG, refundee_s350);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_ConditionalEscrow__fail(from, to, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_withdrawalAllowed := withdrawalAllowed~address_RefundEscrow__fail(from, to, msgvalue_MSG, __arg_0_withdrawalAllowed);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_state := state_RefundEscrow__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_beneficiary := beneficiary_RefundEscrow__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call close_RefundEscrow__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call enableRefunds_RefundEscrow__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call beneficiaryWithdraw_RefundEscrow__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ConditionalEscrow)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__fail(from, to, msgvalue_MSG, recipient_s136);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow__fail(from, to, msgvalue_MSG, payee_s170);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_Escrow__fail(from, to, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_ConditionalEscrow__fail(from, to, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_withdrawalAllowed := withdrawalAllowed~address_ConditionalEscrow(from, to, msgvalue_MSG, payee_s260);
}
}
} else if ((__tmp__DType[from]) == (Escrow)) {
if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__fail(from, to, msgvalue_MSG, recipient_s136);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow__fail(from, to, msgvalue_MSG, payee_s170);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_Escrow__fail(from, to, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_Escrow__fail(from, to, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (Secondary)) {
if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__fail(from, to, msgvalue_MSG, recipient_s136);
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
var __ret_0_primary: Ref;
var recipient_s136: Ref;
var payee_s170: Ref;
var __ret_0_depositsOf: int;
var payee_s180: Ref;
var payee_s219: Ref;
var payee_s277: Ref;
var payee_s260: Ref;
var __ret_0_withdrawalAllowed: bool;
var refundee_s350: Ref;
var __arg_0_withdrawalAllowed: Ref;
var beneficiary_s316: Ref;
var __ret_0_state: int;
var __ret_0_beneficiary: Ref;
var rate_s740: int;
var wallet_s740: Ref;
var token_s740: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s838: Ref;
var openingTime_s1000: int;
var closingTime_s1000: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var goal_s1187: int;
var __ret_0_goal: int;
var refundee_s1220: Ref;
var __ret_0_goalReached: bool;
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
havoc __ret_0_primary;
havoc recipient_s136;
havoc payee_s170;
havoc __ret_0_depositsOf;
havoc payee_s180;
havoc payee_s219;
havoc payee_s277;
havoc payee_s260;
havoc __ret_0_withdrawalAllowed;
havoc refundee_s350;
havoc __arg_0_withdrawalAllowed;
havoc beneficiary_s316;
havoc __ret_0_state;
havoc __ret_0_beneficiary;
havoc rate_s740;
havoc wallet_s740;
havoc token_s740;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s838;
havoc openingTime_s1000;
havoc closingTime_s1000;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc __ret_0_finalized;
havoc goal_s1187;
havoc __ret_0_goal;
havoc refundee_s1220;
havoc __ret_0_goalReached;
havoc iterate;
if ((DType[from]) == (RefundableCrowdsale)) {
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__success(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_finalized := finalized_FinalizableCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call finalize_FinalizableCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_goal := goal_RefundableCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call claimRefund~addresspayable_RefundableCrowdsale__success(from, to, msgvalue_MSG, refundee_s1220);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_goalReached := goalReached_RefundableCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (FinalizableCrowdsale)) {
if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__success(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_finalized := finalized_FinalizableCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call finalize_FinalizableCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (TimedCrowdsale)) {
if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__success(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (Crowdsale)) {
if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale__success(from, to, msgvalue_MSG, beneficiary_s838);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (RefundEscrow)) {
if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__success(from, to, msgvalue_MSG, recipient_s136);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow__success(from, to, msgvalue_MSG, payee_s170);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_RefundEscrow__success(from, to, msgvalue_MSG, refundee_s350);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_ConditionalEscrow__success(from, to, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_withdrawalAllowed := withdrawalAllowed~address_RefundEscrow__success(from, to, msgvalue_MSG, __arg_0_withdrawalAllowed);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_state := state_RefundEscrow__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_beneficiary := beneficiary_RefundEscrow__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call close_RefundEscrow__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call enableRefunds_RefundEscrow__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call beneficiaryWithdraw_RefundEscrow__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ConditionalEscrow)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__success(from, to, msgvalue_MSG, recipient_s136);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow__success(from, to, msgvalue_MSG, payee_s170);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_Escrow__success(from, to, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_ConditionalEscrow__success(from, to, msgvalue_MSG, payee_s277);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_withdrawalAllowed := withdrawalAllowed~address_ConditionalEscrow(from, to, msgvalue_MSG, payee_s260);
}
}
} else if ((DType[from]) == (Escrow)) {
if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__success(from, to, msgvalue_MSG, recipient_s136);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow__success(from, to, msgvalue_MSG, payee_s170);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_Escrow__success(from, to, msgvalue_MSG, payee_s180);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_Escrow__success(from, to, msgvalue_MSG, payee_s219);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (Secondary)) {
if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary__success(from, to, msgvalue_MSG, recipient_s136);
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
var __snap___tmp__M_Ref_int__deposits0: [Ref][Ref]int;
var __snap___tmp__sum__deposits0: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp___primary_Secondary: [Ref]Ref;
var __snap___tmp___deposits_Escrow: [Ref]Ref;
var __snap___tmp___state_RefundEscrow: [Ref]int;
var __snap___tmp___beneficiary_RefundEscrow: [Ref]Ref;
var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __snap___tmp___token_Crowdsale: [Ref]Ref;
var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
var __snap___tmp___rate_Crowdsale: [Ref]int;
var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
var __snap___tmp___openingTime_TimedCrowdsale: [Ref]int;
var __snap___tmp___closingTime_TimedCrowdsale: [Ref]int;
var __snap___tmp___finalized_FinalizableCrowdsale: [Ref]bool;
var __snap___tmp___goal_RefundableCrowdsale: [Ref]int;
var __snap___tmp___escrow_RefundableCrowdsale: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int__deposits0 := __tmp__M_Ref_int__deposits0;
__snap___tmp__sum__deposits0 := __tmp__sum__deposits0;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp___primary_Secondary := __tmp___primary_Secondary;
__snap___tmp___deposits_Escrow := __tmp___deposits_Escrow;
__snap___tmp___state_RefundEscrow := __tmp___state_RefundEscrow;
__snap___tmp___beneficiary_RefundEscrow := __tmp___beneficiary_RefundEscrow;
__snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
__snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
__snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
__snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
__snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
__snap___tmp___openingTime_TimedCrowdsale := __tmp___openingTime_TimedCrowdsale;
__snap___tmp___closingTime_TimedCrowdsale := __tmp___closingTime_TimedCrowdsale;
__snap___tmp___finalized_FinalizableCrowdsale := __tmp___finalized_FinalizableCrowdsale;
__snap___tmp___goal_RefundableCrowdsale := __tmp___goal_RefundableCrowdsale;
__snap___tmp___escrow_RefundableCrowdsale := __tmp___escrow_RefundableCrowdsale;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int__deposits0 := __snap___tmp__M_Ref_int__deposits0;
__tmp__sum__deposits0 := __snap___tmp__sum__deposits0;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp___primary_Secondary := __snap___tmp___primary_Secondary;
__tmp___deposits_Escrow := __snap___tmp___deposits_Escrow;
__tmp___state_RefundEscrow := __snap___tmp___state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := __snap___tmp___beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
__tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
__tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
__tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := __snap___tmp___openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := __snap___tmp___closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := __snap___tmp___finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := __snap___tmp___goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := __snap___tmp___escrow_RefundableCrowdsale;
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
__tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
__tmp__sum__deposits0 := sum__deposits0;
__tmp__Length := Length;
__tmp__now := now;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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

implementation onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
if ((__tmp__DType[this]) == (RefundEscrow)) {
call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Secondary)) {
call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!((__var_1) == (__tmp___primary_Secondary[this]))) {
revert := true;
return;
}
}

implementation onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
if ((DType[this]) == (RefundEscrow)) {
call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Secondary)) {
call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!((__var_1) == (_primary_Secondary[this]))) {
revert := true;
return;
}
}

implementation nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(__tmp___notEntered_ReentrancyGuard[this])) {
revert := true;
return;
}
__tmp___notEntered_ReentrancyGuard[this] := false;
}

implementation nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(_notEntered_ReentrancyGuard[this])) {
revert := true;
return;
}
_notEntered_ReentrancyGuard[this] := false;
}

implementation onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_39: bool;
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_39 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_39 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call __var_39 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_39)) {
revert := true;
return;
}
}

implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_39: bool;
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_39 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_39 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call __var_39 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_39)) {
revert := true;
return;
}
}

implementation nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
__tmp___notEntered_ReentrancyGuard[this] := true;
}

implementation nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
_notEntered_ReentrancyGuard[this] := true;
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
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
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
assume ((((((((((DType[this]) == (Context)) || ((DType[this]) == (Secondary))) || ((DType[this]) == (Escrow))) || ((DType[this]) == (ConditionalEscrow))) || ((DType[this]) == (RefundEscrow))) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (TimedCrowdsale))) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundableCrowdsale)));
assume ((msgvalue_MSG) == (0));
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
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
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
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}

implementation CorralChoice_Secondary(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s136: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s136;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s136);
}
}
}

implementation CorralEntry_Secondary()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((((DType[this]) == (Secondary)) || ((DType[this]) == (Escrow))) || ((DType[this]) == (ConditionalEscrow))) || ((DType[this]) == (RefundEscrow)));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Secondary(this);
}
}

implementation CorralChoice_Escrow(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s136: Ref;
var payee_s170: Ref;
var __ret_0_depositsOf: int;
var payee_s180: Ref;
var payee_s219: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s136;
havoc payee_s170;
havoc __ret_0_depositsOf;
havoc payee_s180;
havoc payee_s219;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s136);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s170);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s180);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s219);
}
}
}

implementation CorralEntry_Escrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (Escrow)) || ((DType[this]) == (ConditionalEscrow))) || ((DType[this]) == (RefundEscrow)));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Escrow(this);
}
}

implementation CorralChoice_ConditionalEscrow(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s136: Ref;
var payee_s170: Ref;
var __ret_0_depositsOf: int;
var payee_s180: Ref;
var payee_s277: Ref;
var payee_s260: Ref;
var __ret_0_withdrawalAllowed: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s136;
havoc payee_s170;
havoc __ret_0_depositsOf;
havoc payee_s180;
havoc payee_s277;
havoc payee_s260;
havoc __ret_0_withdrawalAllowed;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s136);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s170);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s180);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s277);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_withdrawalAllowed := withdrawalAllowed~address_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s260);
}
}
}

implementation CorralEntry_ConditionalEscrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (RefundEscrow)));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ConditionalEscrow(this);
}
}

implementation CorralChoice_RefundEscrow(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s136: Ref;
var payee_s170: Ref;
var __ret_0_depositsOf: int;
var refundee_s350: Ref;
var payee_s277: Ref;
var __arg_0_withdrawalAllowed: Ref;
var __ret_0_withdrawalAllowed: bool;
var beneficiary_s316: Ref;
var __ret_0_state: int;
var __ret_0_beneficiary: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s136;
havoc payee_s170;
havoc __ret_0_depositsOf;
havoc refundee_s350;
havoc payee_s277;
havoc __arg_0_withdrawalAllowed;
havoc __ret_0_withdrawalAllowed;
havoc beneficiary_s316;
havoc __ret_0_state;
havoc __ret_0_beneficiary;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferPrimary~address_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s136);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_depositsOf := depositsOf~address_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s170);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call deposit~address_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, refundee_s350);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call withdraw~addresspayable_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s277);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_withdrawalAllowed := withdrawalAllowed~address_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, __arg_0_withdrawalAllowed);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_state := state_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_beneficiary := beneficiary_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call close_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call enableRefunds_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call beneficiaryWithdraw_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_RefundEscrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var beneficiary_s316: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (RefundEscrow));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call RefundEscrow_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, beneficiary_s316);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_RefundEscrow(this);
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
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
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
assume ((DType[this]) == (IERC20));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IERC20(this);
}
}

implementation CorralChoice_SafeERC20(this: Ref)
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
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_SafeERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (SafeERC20));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeERC20(this);
}
}

implementation CorralChoice_ReentrancyGuard(this: Ref)
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
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_ReentrancyGuard()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((((DType[this]) == (ReentrancyGuard)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (TimedCrowdsale))) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundableCrowdsale)));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ReentrancyGuard(this);
}
}

implementation CorralChoice_Crowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s740: int;
var wallet_s740: Ref;
var token_s740: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s838: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s740;
havoc wallet_s740;
havoc token_s740;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s838;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838);
}
}
}

implementation CorralEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var rate_s740: int;
var wallet_s740: Ref;
var token_s740: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((((DType[this]) == (Crowdsale)) || ((DType[this]) == (TimedCrowdsale))) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundableCrowdsale)));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s740, wallet_s740, token_s740);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Crowdsale(this);
}
}

implementation CorralChoice_TimedCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s740: int;
var wallet_s740: Ref;
var token_s740: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s838: Ref;
var openingTime_s1000: int;
var closingTime_s1000: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s740;
havoc wallet_s740;
havoc token_s740;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s838;
havoc openingTime_s1000;
havoc closingTime_s1000;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_TimedCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var openingTime_s1000: int;
var closingTime_s1000: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (TimedCrowdsale)) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundableCrowdsale)));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s1000, closingTime_s1000);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_TimedCrowdsale(this);
}
}

implementation CorralChoice_FinalizableCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s740: int;
var wallet_s740: Ref;
var token_s740: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s838: Ref;
var openingTime_s1000: int;
var closingTime_s1000: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s740;
havoc wallet_s740;
havoc token_s740;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s838;
havoc openingTime_s1000;
havoc closingTime_s1000;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc __ret_0_finalized;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralEntry_FinalizableCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (FinalizableCrowdsale)) || ((DType[this]) == (RefundableCrowdsale)));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call FinalizableCrowdsale_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_FinalizableCrowdsale(this);
}
}

implementation CorralChoice_RefundableCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s740: int;
var wallet_s740: Ref;
var token_s740: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s838: Ref;
var openingTime_s1000: int;
var closingTime_s1000: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var goal_s1187: int;
var __ret_0_goal: int;
var refundee_s1220: Ref;
var __ret_0_goalReached: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s740;
havoc wallet_s740;
havoc token_s740;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s838;
havoc openingTime_s1000;
havoc closingTime_s1000;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc __ret_0_finalized;
havoc goal_s1187;
havoc __ret_0_goal;
havoc refundee_s1220;
havoc __ret_0_goalReached;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Context));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Secondary));
assume ((DType[msgsender_MSG]) != (Escrow));
assume ((DType[msgsender_MSG]) != (ConditionalEscrow));
assume ((DType[msgsender_MSG]) != (RefundEscrow));
assume ((DType[msgsender_MSG]) != (IERC20));
assume ((DType[msgsender_MSG]) != (SafeERC20));
assume ((DType[msgsender_MSG]) != (ReentrancyGuard));
assume ((DType[msgsender_MSG]) != (Crowdsale));
assume ((DType[msgsender_MSG]) != (TimedCrowdsale));
assume ((DType[msgsender_MSG]) != (FinalizableCrowdsale));
assume ((DType[msgsender_MSG]) != (RefundableCrowdsale));
Alloc[msgsender_MSG] := true;
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call buyTokens~address_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s838);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_goal := goal_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call claimRefund~addresspayable_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, refundee_s1220);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_goalReached := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var goal_s1187: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (RefundableCrowdsale));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call RefundableCrowdsale_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, goal_s1187);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_RefundableCrowdsale(this);
}
}


