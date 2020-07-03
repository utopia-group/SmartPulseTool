// Spec 1
// #LTLFairness: <>(success(FinalizableCrowdsale.finalize) {})
// #LTLProperty: <>([](!success(Crowdsale.buyTokens) {})) 

// Spec 2
// LTLFairness: [](<>(call(Crowdsale.buyTokens) {})) 
// LTLProperty: [](<>(success(Crowdsale.buyTokens) {})) 

// Spec 3 (What happens if goal met?)
// LTLFairness: <>(success(FinalizableCrowdsale.finalize) {RefundableCrowdsale.goalReached() == true})

// Spec 4 (do we need to talk about the escrow?)
// LTLFairness: <>(success(FinalizableCrowdsale.finalize) {RefundableCrowdsale.goalReached() == false})

// LIVE SPEC 1
// #LTLFairness: [](!(success(FinalizableCrowdsale.finalize) {}))
// #LTLProperty: [](!(success(RefundableCrowdsale.claimRefund) {}))

// LIVE SPEC 2 (From Finalizable Crowdsale)
// <>(success(FinalizableCrowdsale.finalize) {})
// <>([](!(success(Crowdsale.buyTokens) {})))

// LIVE SPEC 3
// <>(success(RefundEscrow.close) {})
// <>([](!(success(Crowdsale.buyTokens))))

// LIVE SPEC 3
// <>(success(RefundEscrow.close) {})
// <>([](!(success(RefundableCrowdsale.claimRefund))))

type Ref = int;
type ContractName = int;
var null: Ref;
var ConditionalEscrow: ContractName;
var Context: ContractName;
var Crowdsale: ContractName;
var Escrow: ContractName;
var FinalizableCrowdsale: ContractName;
var IERC20: ContractName;
var ReentrancyGuard: ContractName;
var RefundEscrow: ContractName;
var RefundableCrowdsale: ContractName;
var SafeERC20: ContractName;
var SafeMath: ContractName;
var Secondary: ContractName;
var TimedCrowdsale: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} HavocAllocMany__success();
modifies Alloc;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies _deposits_Escrow;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call ConditionalEscrow_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdrawalAllowed_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s659: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s676: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies gas;
modifies M_Ref_int;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s676: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call withdraw_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s676);
assume ((revert) || ((gas) < (0)));
} else {
call withdraw_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s676);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
var _token_Crowdsale: [Ref]Ref;
var _wallet_Crowdsale: [Ref]Ref;
var _rate_Crowdsale: [Ref]int;
var _weiRaised_Crowdsale: [Ref]int;
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s758, wallet_s758, token_s758);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s758, wallet_s758, token_s758);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies M_Ref_int;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s856: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s856: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s869: Ref, weiAmount_s869: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s895: Ref, weiAmount_s895: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s903: Ref, weiAmount_s903: int);
procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s919: Ref, tokenAmount_s919: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s932: Ref, tokenAmount_s932: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s940: Ref, weiAmount_s940: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s950: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure {:inline 1} Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _deposits_Escrow;
modifies Alloc;
procedure {:inline 1} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _deposits_Escrow;
modifies Alloc;
modifies _primary_Secondary;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var _deposits_Escrow: [Ref]Ref;
procedure {:public} {:inline 1} depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s999: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
implementation depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s999: Ref) returns (__ret_0_: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := depositsOf_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s999);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := depositsOf_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s999);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1009: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies M_Ref_int;
implementation deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1009: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call deposit_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
assume ((revert) || ((gas) < (0)));
} else {
call deposit_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1038: Ref);
modifies M_Ref_int;
modifies revert;
procedure {:public} {:inline 1} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1048: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies gas;
modifies M_Ref_int;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1048: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
assume ((revert) || ((gas) < (0)));
} else {
call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1079: Ref);
modifies M_Ref_int;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
var _finalized_FinalizableCrowdsale: [Ref]bool;
procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _finalized_FinalizableCrowdsale;
procedure {:constructor} {:public} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies gas;
modifies _state_RefundEscrow;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call finalize_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call finalize_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1094: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer2_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1103: Ref, amount_s1103: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s1112: Ref, spender_s1112: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s1121: Ref, amount_s1121: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s1132: Ref, recipient_s1132: Ref, amount_s1132: int) returns (__ret_0_: bool);
var _notEntered_ReentrancyGuard: [Ref]bool;
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var _state_RefundEscrow: [Ref]int;
var _beneficiary_RefundEscrow: [Ref]Ref;
procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref);
modifies _beneficiary_RefundEscrow;
modifies revert;
modifies _state_RefundEscrow;
procedure {:constructor} {:public} {:inline 1} RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _deposits_Escrow;
modifies Alloc;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
implementation RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call RefundEscrow_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s253);
assume ((revert) || ((gas) < (0)));
} else {
call RefundEscrow_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s253);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := beneficiary_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := beneficiary_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s287: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies M_Ref_int;
implementation deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s287: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call deposit_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s287);
assume ((revert) || ((gas) < (0)));
} else {
call deposit_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s287);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies gas;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call beneficiaryWithdraw_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call beneficiaryWithdraw_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdrawalAllowed_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
implementation withdrawalAllowed_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, __param_0_);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var _goal_RefundableCrowdsale: [Ref]int;
var _escrow_RefundableCrowdsale: [Ref]Ref;
procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int);
modifies _goal_RefundableCrowdsale;
modifies revert;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _deposits_Escrow;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
procedure {:constructor} {:public} {:inline 1} RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _goal_RefundableCrowdsale;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _deposits_Escrow;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
implementation RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call RefundableCrowdsale_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, goal_s41);
assume ((revert) || ((gas) < (0)));
} else {
call RefundableCrowdsale_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, goal_s41);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := goal_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := goal_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies gas;
modifies M_Ref_int;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call claimRefund_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
assume ((revert) || ((gas) < (0)));
} else {
call claimRefund_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure {:inline 1} _forwardFunds_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call SafeERC20_SafeERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1204: Ref, to_s1204: Ref, value_s1204: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1225: Ref, from_s1225: Ref, to_s1225: Ref, value_s1225: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1262: Ref, spender_s1262: Ref, value_s1262: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1293: Ref, spender_s1293: Ref, value_s1293: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1324: Ref, spender_s1324: Ref, value_s1324: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s393: int, b_s393: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s418: int, b_s418: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s452: int, b_s452: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s477: int, b_s477: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s498: int, b_s498: int) returns (__ret_0_: int);
// modifies revert;
var _primary_Secondary: [Ref]Ref;
procedure {:inline 1} Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _primary_Secondary;
procedure {:constructor} {:public} {:inline 1} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := primary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := primary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1398: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
implementation transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1398: Ref)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call transferPrimary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
assume ((revert) || ((gas) < (0)));
} else {
call transferPrimary_Secondary__success(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var _openingTime_TimedCrowdsale: [Ref]int;
var _closingTime_TimedCrowdsale: [Ref]int;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int);
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
implementation TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s559, closingTime_s559);
assume ((revert) || ((gas) < (0)));
} else {
call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s559, closingTime_s559);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s617: Ref, weiAmount_s617: int);
modifies revert;
procedure {:inline 1} _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s646: int);
modifies revert;
modifies _closingTime_TimedCrowdsale;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies M_Ref_int;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure BoogieEntry_ConditionalEscrow();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies _deposits_Escrow;
modifies Alloc;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_Context();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
// const {:existential true} HoudiniB1_Crowdsale: bool;
// const {:existential true} HoudiniB2_Crowdsale: bool;
procedure BoogieEntry_Crowdsale();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure BoogieEntry_Escrow();
modifies gas;
modifies now;
modifies _deposits_Escrow;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_FinalizableCrowdsale();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
modifies _state_RefundEscrow;
procedure BoogieEntry_IERC20();
modifies gas;
modifies now;
procedure BoogieEntry_ReentrancyGuard();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _notEntered_ReentrancyGuard;
// const {:existential true} HoudiniB1_RefundEscrow: bool;
// const {:existential true} HoudiniB2_RefundEscrow: bool;
procedure BoogieEntry_RefundEscrow();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies _state_RefundEscrow;
modifies _deposits_Escrow;
modifies Alloc;
modifies _beneficiary_RefundEscrow;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure main();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _goal_RefundableCrowdsale;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _deposits_Escrow;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
modifies M_Ref_int;
modifies _primary_Secondary;
procedure BoogieEntry_SafeERC20();
modifies gas;
modifies now;
procedure BoogieEntry_SafeMath();
modifies gas;
modifies now;
// const {:existential true} HoudiniB1_Secondary: bool;
// const {:existential true} HoudiniB2_Secondary: bool;
procedure BoogieEntry_Secondary();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
procedure BoogieEntry_TimedCrowdsale();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies M_Ref_int;
procedure nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _notEntered_ReentrancyGuard;
procedure onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_ConditionalEscrow(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralEntry_ConditionalEscrow();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies _deposits_Escrow;
modifies Alloc;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_Context(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_Context();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
procedure CorralChoice_Crowdsale(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure CorralEntry_Crowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure CorralChoice_Escrow(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralEntry_Escrow();
modifies gas;
modifies _deposits_Escrow;
modifies Alloc;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_FinalizableCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
modifies _state_RefundEscrow;
procedure CorralEntry_FinalizableCrowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
modifies _state_RefundEscrow;
procedure CorralChoice_IERC20(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_IERC20();
modifies gas;
modifies now;
procedure CorralChoice_ReentrancyGuard(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_ReentrancyGuard();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_RefundEscrow(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
modifies Balance;
modifies _state_RefundEscrow;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralEntry_RefundEscrow();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies _primary_Secondary;
modifies Balance;
modifies _state_RefundEscrow;
modifies _deposits_Escrow;
modifies Alloc;
modifies _beneficiary_RefundEscrow;
modifies M_Ref_int;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_RefundableCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
modifies _state_RefundEscrow;
procedure CorralEntry_RefundableCrowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _goal_RefundableCrowdsale;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _deposits_Escrow;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
modifies M_Ref_int;
modifies _primary_Secondary;
procedure CorralChoice_SafeERC20(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_SafeERC20();
modifies gas;
modifies now;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_SafeMath();
modifies gas;
modifies now;
procedure CorralChoice_Secondary(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _primary_Secondary;
procedure CorralEntry_Secondary();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies _primary_Secondary;
procedure CorralChoice_TimedCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure CorralEntry_TimedCrowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies M_Ref_int;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp___token_Crowdsale: [Ref]Ref;
var __tmp___wallet_Crowdsale: [Ref]Ref;
var __tmp___rate_Crowdsale: [Ref]int;
var __tmp___weiRaised_Crowdsale: [Ref]int;
var __tmp___deposits_Escrow: [Ref]Ref;
var __tmp___finalized_FinalizableCrowdsale: [Ref]bool;
var __tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __tmp___state_RefundEscrow: [Ref]int;
var __tmp___beneficiary_RefundEscrow: [Ref]Ref;
var __tmp___goal_RefundableCrowdsale: [Ref]int;
var __tmp___escrow_RefundableCrowdsale: [Ref]Ref;
var __tmp___primary_Secondary: [Ref]Ref;
var __tmp___openingTime_TimedCrowdsale: [Ref]int;
var __tmp___closingTime_TimedCrowdsale: [Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} HavocAllocMany__fail();
modifies __tmp__Alloc;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _primary_Secondary;
modifies _deposits_Escrow;
modifies Alloc;
procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___primary_Secondary;
modifies __tmp___deposits_Escrow;
modifies __tmp__Alloc;
procedure {:inline 1} withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s676: Ref);
modifies revert;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:inline 1} withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s676: Ref);
modifies revert;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref);
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref);
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__M_Ref_int;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s856: Ref);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies M_Ref_int;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s856: Ref);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__M_Ref_int;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s869: Ref, weiAmount_s869: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s895: Ref, weiAmount_s895: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s903: Ref, weiAmount_s903: int);
procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s919: Ref, tokenAmount_s919: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s932: Ref, tokenAmount_s932: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s940: Ref, weiAmount_s940: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s950: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___deposits_Escrow;
modifies __tmp__Alloc;
procedure {:inline 1} Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _deposits_Escrow;
modifies Alloc;
modifies _primary_Secondary;
procedure {:inline 1} Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___deposits_Escrow;
modifies __tmp__Alloc;
modifies __tmp___primary_Secondary;
procedure {:inline 1} depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s999: Ref) returns (__ret_0_: int);
procedure {:inline 1} depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s999: Ref) returns (__ret_0_: int);
procedure {:inline 1} deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1009: Ref);
modifies Balance;
modifies M_Ref_int;
modifies revert;
procedure {:inline 1} deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1009: Ref);
modifies __tmp__Balance;
modifies __tmp__M_Ref_int;
modifies revert;
procedure {:inline 1} deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1038: Ref);
modifies __tmp__M_Ref_int;
modifies revert;
procedure {:inline 1} withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1048: Ref);
modifies M_Ref_int;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:inline 1} withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1048: Ref);
modifies __tmp__M_Ref_int;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1079: Ref);
modifies __tmp__M_Ref_int;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___finalized_FinalizableCrowdsale;
procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _finalized_FinalizableCrowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure {:inline 1} finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___state_RefundEscrow;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref);
modifies __tmp___beneficiary_RefundEscrow;
modifies revert;
modifies __tmp___state_RefundEscrow;
procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref);
modifies _deposits_Escrow;
modifies Alloc;
modifies _beneficiary_RefundEscrow;
modifies revert;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref);
modifies __tmp___deposits_Escrow;
modifies __tmp__Alloc;
modifies __tmp___beneficiary_RefundEscrow;
modifies revert;
modifies __tmp___state_RefundEscrow;
modifies __tmp___primary_Secondary;
procedure {:inline 1} state_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} state_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} beneficiary_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} beneficiary_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s287: Ref);
modifies Balance;
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s287: Ref);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__M_Ref_int;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_int;
procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} withdrawalAllowed_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool);
procedure {:inline 1} withdrawalAllowed_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool);
procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int);
modifies __tmp___goal_RefundableCrowdsale;
modifies revert;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp__Alloc;
modifies __tmp___deposits_Escrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___primary_Secondary;
procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int);
modifies _notEntered_ReentrancyGuard;
modifies _finalized_FinalizableCrowdsale;
modifies _goal_RefundableCrowdsale;
modifies revert;
modifies _escrow_RefundableCrowdsale;
modifies Alloc;
modifies _deposits_Escrow;
modifies _beneficiary_RefundEscrow;
modifies _state_RefundEscrow;
modifies _primary_Secondary;
procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int);
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___goal_RefundableCrowdsale;
modifies revert;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp__Alloc;
modifies __tmp___deposits_Escrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___state_RefundEscrow;
modifies __tmp___primary_Secondary;
procedure {:inline 1} goal_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} goal_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} claimRefund_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref);
modifies revert;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:inline 1} claimRefund_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref);
modifies revert;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
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
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} _forwardFunds_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1204: Ref, to_s1204: Ref, value_s1204: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1225: Ref, from_s1225: Ref, to_s1225: Ref, value_s1225: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1262: Ref, spender_s1262: Ref, value_s1262: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1293: Ref, spender_s1293: Ref, value_s1293: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1324: Ref, spender_s1324: Ref, value_s1324: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s393: int, b_s393: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s418: int, b_s418: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s452: int, b_s452: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s477: int, b_s477: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s498: int, b_s498: int) returns (__ret_0_: int);
// modifies revert;
procedure {:inline 1} Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___primary_Secondary;
procedure {:constructor} {:inline 1} Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _primary_Secondary;
procedure {:constructor} {:inline 1} Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___primary_Secondary;
procedure {:inline 1} primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1398: Ref);
modifies revert;
modifies _primary_Secondary;
procedure {:inline 1} transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1398: Ref);
modifies revert;
modifies __tmp___primary_Secondary;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int);
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int);
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int);
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
procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s617: Ref, weiAmount_s617: int);
modifies revert;
procedure {:inline 1} _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s646: int);
modifies revert;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__M_Ref_int;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___deposits_Escrow;
modifies __tmp___finalized_FinalizableCrowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___state_RefundEscrow;
modifies __tmp___beneficiary_RefundEscrow;
modifies __tmp___goal_RefundableCrowdsale;
modifies __tmp___escrow_RefundableCrowdsale;
modifies __tmp___primary_Secondary;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
modifies gas;
procedure nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
procedure onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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

implementation HavocAllocMany__fail()
{
var oldAlloc: [Ref]bool;
oldAlloc := __tmp__Alloc;
havoc __tmp__Alloc;
assume (forall  __i__0_0:Ref ::  ((oldAlloc[__i__0_0]) ==> (__tmp__Alloc[__i__0_0])));
}

implementation HavocAllocMany__success()
{
var oldAlloc: [Ref]bool;
oldAlloc := Alloc;
havoc Alloc;
assume (forall  __i__0_0:Ref ::  ((oldAlloc[__i__0_0]) ==> (Alloc[__i__0_0])));
}

implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

implementation withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s676: Ref)
{
var __var_1: bool;
if ((__tmp__DType[this]) == (RefundEscrow)) {
call __var_1 := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s676);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call __var_1 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s676);
} else {
assume (false);
}
if (!(__var_1)) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (RefundEscrow)) {
call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s676);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s676);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s676: Ref)
{
var __var_1: bool;
if ((DType[this]) == (RefundEscrow)) {
call __var_1 := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s676);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call __var_1 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s676);
} else {
assume (false);
}
if (!(__var_1)) {
revert := true;
return;
}
if ((DType[this]) == (RefundEscrow)) {
call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s676);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s676);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___wallet_Crowdsale[this] := null;
__tmp___rate_Crowdsale[this] := 0;
__tmp___weiRaised_Crowdsale[this] := 0;
// end of initialization
assume ((rate_s758) >= (0));
if (!((rate_s758) > (0))) {
revert := true;
return;
}
__var_2 := null;
if (!((wallet_s758) != (null))) {
revert := true;
return;
}
__var_3 := token_s758;
__var_4 := null;
if (!((token_s758) != (null))) {
revert := true;
return;
}
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__tmp___rate_Crowdsale[this] := 1;
__tmp___wallet_Crowdsale[this] := wallet_s758;
__tmp___token_Crowdsale[this] := token_s758;
}

implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
_wallet_Crowdsale[this] := null;
_rate_Crowdsale[this] := 0;
_weiRaised_Crowdsale[this] := 0;
// end of initialization
assume ((rate_s758) >= (0));
if (!((rate_s758) > (0))) {
revert := true;
return;
}
__var_2 := null;
if (!((wallet_s758) != (null))) {
revert := true;
return;
}
__var_3 := token_s758;
__var_4 := null;
if (!((token_s758) != (null))) {
revert := true;
return;
}
assume ((_rate_Crowdsale[this]) >= (0));
_rate_Crowdsale[this] := 1;
_wallet_Crowdsale[this] := wallet_s758;
_token_Crowdsale[this] := token_s758;
}

implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s758, wallet_s758, token_s758);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s758: int, wallet_s758: Ref, token_s758: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s758, wallet_s758, token_s758);
if (revert) {
return;
}
}

implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_5: Ref;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_5 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_5 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call __var_5 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call __var_5 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_5);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_5);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_5);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_5);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_5: Ref;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_5 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_5 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call __var_5 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call __var_5 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (RefundableCrowdsale)) {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_5);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_5);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_5);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_5);
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

implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s856: Ref)
{
var weiAmount_s855: int;
var tokens_s855: int;
var __var_6: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call nonReentrant_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s855) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s855 := msgvalue_MSG;
assume ((weiAmount_s855) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s855) >= (0));
assume ((weiAmount_s855) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s855 := tokens_s855;
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s855) >= (0));
call __var_6 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s855);
if (revert) {
return;
}
__tmp___weiRaised_Crowdsale[this] := __var_6;
assume ((__var_6) >= (0));
assume ((tokens_s855) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s855) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
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
assume ((weiAmount_s855) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
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

implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s856: Ref)
{
var weiAmount_s855: int;
var tokens_s855: int;
var __var_6: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call nonReentrant_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s855) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s855 := msgvalue_MSG;
assume ((weiAmount_s855) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s855) >= (0));
assume ((weiAmount_s855) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call tokens_s855 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s855);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s855 := tokens_s855;
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s855) >= (0));
call __var_6 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s855);
if (revert) {
return;
}
_weiRaised_Crowdsale[this] := __var_6;
assume ((__var_6) >= (0));
assume ((tokens_s855) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, tokens_s855);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokensPurchased_Crowdsale"} (true);
assume ((weiAmount_s855) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
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
assume ((weiAmount_s855) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856, weiAmount_s855);
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

implementation _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s869: Ref, weiAmount_s869: int)
{
assume ((weiAmount_s869) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s869: Ref, weiAmount_s869: int)
{
assume ((weiAmount_s869) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s869, weiAmount_s869);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s895: Ref, weiAmount_s895: int)
{
var __var_7: Ref;
__var_7 := null;
if (!((beneficiary_s895) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s895) >= (0));
if (!((weiAmount_s895) != (0))) {
revert := true;
return;
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s895: Ref, weiAmount_s895: int)
{
var __var_7: Ref;
__var_7 := null;
if (!((beneficiary_s895) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s895) >= (0));
if (!((weiAmount_s895) != (0))) {
revert := true;
return;
}
}

implementation _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s903: Ref, weiAmount_s903: int)
{
}

implementation _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s903: Ref, weiAmount_s903: int)
{
}

implementation _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s919: Ref, tokenAmount_s919: int)
{
assume ((tokenAmount_s919) >= (0));
call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s919, tokenAmount_s919);
if (revert) {
return;
}
}

implementation _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s919: Ref, tokenAmount_s919: int)
{
assume ((tokenAmount_s919) >= (0));
call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s919, tokenAmount_s919);
if (revert) {
return;
}
}

implementation _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s932: Ref, tokenAmount_s932: int)
{
assume ((tokenAmount_s932) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s932: Ref, tokenAmount_s932: int)
{
assume ((tokenAmount_s932) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s932, tokenAmount_s932);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s940: Ref, weiAmount_s940: int)
{
}

implementation _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s940: Ref, weiAmount_s940: int)
{
}

implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s950: int) returns (__ret_0_: int)
{
assume ((weiAmount_s950) >= (0));
__ret_0_ := weiAmount_s950;
return;
}

implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s950: int) returns (__ret_0_: int)
{
assume ((weiAmount_s950) >= (0));
__ret_0_ := weiAmount_s950;
return;
}

implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_8: int;
var __var_9: bool;
__var_8 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_8 := (__var_8) - (gas);
assume ((msgvalue_MSG) >= (0));
call __var_9 := send__fail(this, __tmp___wallet_Crowdsale[this], msgvalue_MSG);
if (!(__var_9)) {
revert := true;
return;
}
gas := (__var_8) + (gas);
}

implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_8: int;
var __var_9: bool;
__var_8 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_8 := (__var_8) - (gas);
assume ((msgvalue_MSG) >= (0));
call __var_9 := send__success(this, _wallet_Crowdsale[this], msgvalue_MSG);
if (!(__var_9)) {
revert := true;
return;
}
gas := (__var_8) + (gas);
}

implementation Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_10: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// Make array/mapping vars distinct for _deposits
call __var_10 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___deposits_Escrow[this] := __var_10;
// Initialize Integer mapping _deposits
assume (forall  __i__0_0:Ref ::  ((__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][__i__0_0]) == (0)));
// end of initialization
}

implementation Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_10: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// Make array/mapping vars distinct for _deposits
call __var_10 := FreshRefGenerator__success();
if (revert) {
return;
}
_deposits_Escrow[this] := __var_10;
// Initialize Integer mapping _deposits
assume (forall  __i__0_0:Ref ::  ((M_Ref_int[_deposits_Escrow[this]][__i__0_0]) == (0)));
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

implementation depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s999: Ref) returns (__ret_0_: int)
{
assume ((__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s999]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s999];
return;
}

implementation depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s999: Ref) returns (__ret_0_: int)
{
assume ((M_Ref_int[_deposits_Escrow[this]][payee_s999]) >= (0));
__ret_0_ := M_Ref_int[_deposits_Escrow[this]][payee_s999];
return;
}

implementation deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1009: Ref)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (RefundEscrow)) {
call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1009: Ref)
{
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (RefundEscrow)) {
call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1038: Ref)
{
var amount_s1037: int;
var __var_11: int;
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((amount_s1037) >= (0));
assume ((msgvalue_MSG) >= (0));
amount_s1037 := msgvalue_MSG;
assume ((__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1038]) >= (0));
assume ((__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1038]) >= (0));
assume ((amount_s1037) >= (0));
call __var_11 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1038], amount_s1037);
if (revert) {
return;
}
__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1038] := __var_11;
assume ((__var_11) >= (0));
}

implementation deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1038: Ref)
{
var amount_s1037: int;
var __var_11: int;
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((amount_s1037) >= (0));
assume ((msgvalue_MSG) >= (0));
amount_s1037 := msgvalue_MSG;
assume ((M_Ref_int[_deposits_Escrow[this]][payee_s1038]) >= (0));
assume ((M_Ref_int[_deposits_Escrow[this]][payee_s1038]) >= (0));
assume ((amount_s1037) >= (0));
call __var_11 := add_SafeMath__success(this, this, 0, M_Ref_int[_deposits_Escrow[this]][payee_s1038], amount_s1037);
if (revert) {
return;
}
M_Ref_int[_deposits_Escrow[this]][payee_s1038] := __var_11;
assume ((__var_11) >= (0));
assert {:EventEmitted "Deposited_Escrow"} (true);
}

implementation withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1048: Ref)
{
if ((__tmp__DType[this]) == (RefundEscrow)) {
call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1048: Ref)
{
if ((DType[this]) == (RefundEscrow)) {
call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1079: Ref)
{
var payment_s1078: int;
var __var_12: int;
var __var_13: bool;
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((payment_s1078) >= (0));
assume ((__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1079]) >= (0));
payment_s1078 := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1079];
assume ((__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1079]) >= (0));
__tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s1079] := 0;
__var_12 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_12 := (__var_12) - (gas);
assume ((payment_s1078) >= (0));
call __var_13 := send__fail(this, payee_s1079, payment_s1078);
if (!(__var_13)) {
revert := true;
return;
}
gas := (__var_12) + (gas);
}

implementation withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s1079: Ref)
{
var payment_s1078: int;
var __var_12: int;
var __var_13: bool;
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((payment_s1078) >= (0));
assume ((M_Ref_int[_deposits_Escrow[this]][payee_s1079]) >= (0));
payment_s1078 := M_Ref_int[_deposits_Escrow[this]][payee_s1079];
assume ((M_Ref_int[_deposits_Escrow[this]][payee_s1079]) >= (0));
M_Ref_int[_deposits_Escrow[this]][payee_s1079] := 0;
__var_12 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_12 := (__var_12) - (gas);
assume ((payment_s1078) >= (0));
call __var_13 := send__success(this, payee_s1079, payment_s1078);
if (!(__var_13)) {
revert := true;
return;
}
gas := (__var_12) + (gas);
assert {:EventEmitted "Withdrawn_Escrow"} (true);
}

implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___finalized_FinalizableCrowdsale[this] := false;
// end of initialization
__tmp___finalized_FinalizableCrowdsale[this] := false;
}

implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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
var __var_14: bool;
if (!(!(__tmp___finalized_FinalizableCrowdsale[this]))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_14 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_14 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_14)) {
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
var __var_14: bool;
if (!(!(_finalized_FinalizableCrowdsale[this]))) {
revert := true;
return;
}
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_14 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_14 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_14)) {
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

implementation IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___notEntered_ReentrancyGuard[this] := false;
// end of initialization
__tmp___notEntered_ReentrancyGuard[this] := true;
}

implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

implementation RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref)
{
var __var_15: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___beneficiary_RefundEscrow[this] := null;
// end of initialization
__var_15 := null;
if (!((beneficiary_s253) != (null))) {
revert := true;
return;
}
__tmp___beneficiary_RefundEscrow[this] := beneficiary_s253;
__tmp___state_RefundEscrow[this] := 0;
}

implementation RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref)
{
var __var_15: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
_beneficiary_RefundEscrow[this] := null;
// end of initialization
__var_15 := null;
if (!((beneficiary_s253) != (null))) {
revert := true;
return;
}
_beneficiary_RefundEscrow[this] := beneficiary_s253;
_state_RefundEscrow[this] := 0;
}

implementation RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref)
{
var __var_15: Ref;
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
call RefundEscrow_RefundEscrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s253);
if (revert) {
return;
}
}

implementation RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s253: Ref)
{
var __var_15: Ref;
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
call RefundEscrow_RefundEscrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s253);
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

implementation deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s287: Ref)
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
call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s287);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s287: Ref)
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
call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s287);
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
var __var_16: int;
var __var_17: Ref;
var __var_18: bool;
if (!((__tmp___state_RefundEscrow[this]) == (2))) {
revert := true;
return;
}
__var_16 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_16 := (__var_16) - (gas);
__var_17 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_18 := send__fail(this, __tmp___beneficiary_RefundEscrow[this], __tmp__Balance[this]);
if (!(__var_18)) {
revert := true;
return;
}
gas := (__var_16) + (gas);
}

implementation beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_16: int;
var __var_17: Ref;
var __var_18: bool;
if (!((_state_RefundEscrow[this]) == (2))) {
revert := true;
return;
}
__var_16 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_16 := (__var_16) - (gas);
__var_17 := this;
assume ((Balance[this]) >= (0));
call __var_18 := send__success(this, _beneficiary_RefundEscrow[this], Balance[this]);
if (!(__var_18)) {
revert := true;
return;
}
gas := (__var_16) + (gas);
}

implementation withdrawalAllowed_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool)
{
__ret_0_ := (__tmp___state_RefundEscrow[this]) == (1);
return;
}

implementation withdrawalAllowed_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool)
{
__ret_0_ := (_state_RefundEscrow[this]) == (1);
return;
}

implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int)
{
var __var_19: Ref;
var __var_20: Ref;
var __var_21: int;
var __var_22: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___goal_RefundableCrowdsale[this] := 0;
// end of initialization
assume ((goal_s41) >= (0));
if (!((goal_s41) > (0))) {
revert := true;
return;
}
call __var_20 := FreshRefGenerator__fail();
if (revert) {
return;
}
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_22 := wallet_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__tmp__DType[__var_20]) == (RefundEscrow));
call RefundEscrow_RefundEscrow__fail(__var_20, this, 0, __var_22);
if (revert) {
return;
}
__var_19 := __var_20;
__tmp___escrow_RefundableCrowdsale[this] := __var_19;
assume ((__tmp___goal_RefundableCrowdsale[this]) >= (0));
assume ((goal_s41) >= (0));
__tmp___goal_RefundableCrowdsale[this] := goal_s41;
}

implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int)
{
var __var_19: Ref;
var __var_20: Ref;
var __var_21: int;
var __var_22: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
_goal_RefundableCrowdsale[this] := 0;
// end of initialization
assume ((goal_s41) >= (0));
if (!((goal_s41) > (0))) {
revert := true;
return;
}
call __var_20 := FreshRefGenerator__success();
if (revert) {
return;
}
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_22 := wallet_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((DType[__var_20]) == (RefundEscrow));
call RefundEscrow_RefundEscrow__success(__var_20, this, 0, __var_22);
if (revert) {
return;
}
__var_19 := __var_20;
_escrow_RefundableCrowdsale[this] := __var_19;
assume ((_goal_RefundableCrowdsale[this]) >= (0));
assume ((goal_s41) >= (0));
_goal_RefundableCrowdsale[this] := goal_s41;
}

implementation RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int)
{
var __var_19: Ref;
var __var_20: Ref;
var __var_21: int;
var __var_22: Ref;
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
call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, goal_s41);
if (revert) {
return;
}
}

implementation RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s41: int)
{
var __var_19: Ref;
var __var_20: Ref;
var __var_21: int;
var __var_22: Ref;
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
call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, goal_s41);
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

implementation claimRefund_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref)
{
var __var_23: bool;
var __var_24: bool;
var __var_25: int;
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_23 := finalized_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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
call __var_24 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_24))) {
revert := true;
return;
}
if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call withdraw_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_25, refundee_s74);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call withdraw_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_25, refundee_s74);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call withdraw_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_25, refundee_s74);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation claimRefund_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref)
{
var __var_23: bool;
var __var_24: bool;
var __var_25: int;
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_23 := finalized_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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
call __var_24 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_24))) {
revert := true;
return;
}
if ((DType[_escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call withdraw_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_25, refundee_s74);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call withdraw_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_25, refundee_s74);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call withdraw_Escrow__success(_escrow_RefundableCrowdsale[this], this, __var_25, refundee_s74);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation goalReached_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_26: int;
assume ((__var_26) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_26 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_26) >= (0));
assume ((__tmp___goal_RefundableCrowdsale[this]) >= (0));
__ret_0_ := (__var_26) >= (__tmp___goal_RefundableCrowdsale[this]);
return;
}

implementation goalReached_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_26: int;
assume ((__var_26) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_26 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_26) >= (0));
assume ((_goal_RefundableCrowdsale[this]) >= (0));
__ret_0_ := (__var_26) >= (_goal_RefundableCrowdsale[this]);
return;
}

implementation _finalization_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_27: bool;
var __var_28: int;
var __var_29: int;
var __var_30: int;
call __var_27 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (__var_27) {
call close_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_28);
if (revert) {
return;
}
call beneficiaryWithdraw_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_29);
if (revert) {
return;
}
} else {
call enableRefunds_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_30);
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
var __var_27: bool;
var __var_28: int;
var __var_29: int;
var __var_30: int;
call __var_27 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (__var_27) {
call close_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_28);
if (revert) {
return;
}
call beneficiaryWithdraw_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_29);
if (revert) {
return;
}
} else {
call enableRefunds_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_30);
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
var __var_31: Ref;
assume ((msgvalue_MSG) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_31 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call deposit_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call deposit_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call deposit_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _forwardFunds_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_31: Ref;
assume ((msgvalue_MSG) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_31 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[_escrow_RefundableCrowdsale[this]]) == (RefundEscrow)) {
call deposit_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (ConditionalEscrow)) {
call deposit_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((DType[_escrow_RefundableCrowdsale[this]]) == (Escrow)) {
call deposit_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

implementation safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1204: Ref, to_s1204: Ref, value_s1204: int)
{
var __var_32: bool;
var __var_33: int;
assume ((value_s1204) >= (0));
call __var_32 := transfer2_IERC20(token_s1204, this, __var_33, to_s1204, value_s1204);
if (!(__var_32)) {
revert := true;
return;
}
}

implementation safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1204: Ref, to_s1204: Ref, value_s1204: int)
{
var __var_32: bool;
var __var_33: int;
assume ((value_s1204) >= (0));
call __var_32 := transfer2_IERC20(token_s1204, this, __var_33, to_s1204, value_s1204);
if (!(__var_32)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1225: Ref, from_s1225: Ref, to_s1225: Ref, value_s1225: int)
{
var __var_34: bool;
var __var_35: int;
assume ((value_s1225) >= (0));
call __var_34 := transferFrom_IERC20(token_s1225, this, __var_35, from_s1225, to_s1225, value_s1225);
if (!(__var_34)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1225: Ref, from_s1225: Ref, to_s1225: Ref, value_s1225: int)
{
var __var_34: bool;
var __var_35: int;
assume ((value_s1225) >= (0));
call __var_34 := transferFrom_IERC20(token_s1225, this, __var_35, from_s1225, to_s1225, value_s1225);
if (!(__var_34)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1262: Ref, spender_s1262: Ref, value_s1262: int)
{
var __var_36: int;
var __var_37: int;
var __var_38: Ref;
var __var_39: bool;
var __var_40: int;
assume ((value_s1262) >= (0));
assume ((__var_36) >= (0));
__var_38 := this;
call __var_36 := allowance_IERC20(token_s1262, this, __var_37, this, spender_s1262);
assume ((__var_36) >= (0));
if (!((((value_s1262) == (0))) || (((__var_36) == (0))))) {
revert := true;
return;
}
assume ((value_s1262) >= (0));
call __var_39 := approve_IERC20(token_s1262, this, __var_40, spender_s1262, value_s1262);
if (!(__var_39)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1262: Ref, spender_s1262: Ref, value_s1262: int)
{
var __var_36: int;
var __var_37: int;
var __var_38: Ref;
var __var_39: bool;
var __var_40: int;
assume ((value_s1262) >= (0));
assume ((__var_36) >= (0));
__var_38 := this;
call __var_36 := allowance_IERC20(token_s1262, this, __var_37, this, spender_s1262);
assume ((__var_36) >= (0));
if (!((((value_s1262) == (0))) || (((__var_36) == (0))))) {
revert := true;
return;
}
assume ((value_s1262) >= (0));
call __var_39 := approve_IERC20(token_s1262, this, __var_40, spender_s1262, value_s1262);
if (!(__var_39)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1293: Ref, spender_s1293: Ref, value_s1293: int)
{
var newAllowance_s1292: int;
var __var_41: int;
var __var_42: int;
var __var_43: Ref;
var __var_44: bool;
var __var_45: int;
assume ((newAllowance_s1292) >= (0));
assume ((__var_41) >= (0));
__var_43 := this;
call __var_41 := allowance_IERC20(token_s1293, this, __var_42, this, spender_s1293);
assume ((__var_41) >= (0));
assume ((value_s1293) >= (0));
call newAllowance_s1292 := add_SafeMath__fail(this, this, 0, __var_41, value_s1293);
if (revert) {
return;
}
newAllowance_s1292 := newAllowance_s1292;
assume ((newAllowance_s1292) >= (0));
call __var_44 := approve_IERC20(token_s1293, this, __var_45, spender_s1293, newAllowance_s1292);
if (!(__var_44)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1293: Ref, spender_s1293: Ref, value_s1293: int)
{
var newAllowance_s1292: int;
var __var_41: int;
var __var_42: int;
var __var_43: Ref;
var __var_44: bool;
var __var_45: int;
assume ((newAllowance_s1292) >= (0));
assume ((__var_41) >= (0));
__var_43 := this;
call __var_41 := allowance_IERC20(token_s1293, this, __var_42, this, spender_s1293);
assume ((__var_41) >= (0));
assume ((value_s1293) >= (0));
call newAllowance_s1292 := add_SafeMath__success(this, this, 0, __var_41, value_s1293);
if (revert) {
return;
}
newAllowance_s1292 := newAllowance_s1292;
assume ((newAllowance_s1292) >= (0));
call __var_44 := approve_IERC20(token_s1293, this, __var_45, spender_s1293, newAllowance_s1292);
if (!(__var_44)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1324: Ref, spender_s1324: Ref, value_s1324: int)
{
var newAllowance_s1323: int;
var __var_46: int;
var __var_47: int;
var __var_48: Ref;
var __var_49: bool;
var __var_50: int;
assume ((newAllowance_s1323) >= (0));
assume ((__var_46) >= (0));
__var_48 := this;
call __var_46 := allowance_IERC20(token_s1324, this, __var_47, this, spender_s1324);
assume ((__var_46) >= (0));
assume ((value_s1324) >= (0));
call newAllowance_s1323 := sub_SafeMath__fail(this, this, 0, __var_46, value_s1324);
if (revert) {
return;
}
newAllowance_s1323 := newAllowance_s1323;
assume ((newAllowance_s1323) >= (0));
call __var_49 := approve_IERC20(token_s1324, this, __var_50, spender_s1324, newAllowance_s1323);
if (!(__var_49)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s1324: Ref, spender_s1324: Ref, value_s1324: int)
{
var newAllowance_s1323: int;
var __var_46: int;
var __var_47: int;
var __var_48: Ref;
var __var_49: bool;
var __var_50: int;
assume ((newAllowance_s1323) >= (0));
assume ((__var_46) >= (0));
__var_48 := this;
call __var_46 := allowance_IERC20(token_s1324, this, __var_47, this, spender_s1324);
assume ((__var_46) >= (0));
assume ((value_s1324) >= (0));
call newAllowance_s1323 := sub_SafeMath__success(this, this, 0, __var_46, value_s1324);
if (revert) {
return;
}
newAllowance_s1323 := newAllowance_s1323;
assume ((newAllowance_s1323) >= (0));
call __var_49 := approve_IERC20(token_s1324, this, __var_50, spender_s1324, newAllowance_s1323);
if (!(__var_49)) {
revert := true;
return;
}
}

implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s393: int, b_s393: int) returns (__ret_0_: int)
{
var c_s392: int;
assume ((c_s392) >= (0));
assume ((a_s393) >= (0));
assume ((b_s393) >= (0));
assume (((a_s393) + (b_s393)) >= (0));
c_s392 := (a_s393) + (b_s393);
assume ((c_s392) >= (0));
assume ((a_s393) >= (0));
if (!((c_s392) >= (a_s393))) {
revert := true;
return;
}
assume ((c_s392) >= (0));
__ret_0_ := c_s392;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s393: int, b_s393: int) returns (__ret_0_: int)
{
var c_s392: int;
assume ((c_s392) >= (0));
assume ((a_s393) >= (0));
assume ((b_s393) >= (0));
assume (((a_s393) + (b_s393)) >= (0));
c_s392 := (a_s393) + (b_s393);
assume ((c_s392) >= (0));
assume ((a_s393) >= (0));
if (!((c_s392) >= (a_s393))) {
revert := true;
return;
}
assume ((c_s392) >= (0));
__ret_0_ := c_s392;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s418: int, b_s418: int) returns (__ret_0_: int)
{
var c_s417: int;
assume ((b_s418) >= (0));
assume ((a_s418) >= (0));
if (!((b_s418) <= (a_s418))) {
revert := true;
return;
}
assume ((c_s417) >= (0));
assume ((a_s418) >= (0));
assume ((b_s418) >= (0));
assume (((a_s418) - (b_s418)) >= (0));
c_s417 := (a_s418) - (b_s418);
assume ((c_s417) >= (0));
__ret_0_ := c_s417;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s418: int, b_s418: int) returns (__ret_0_: int)
{
var c_s417: int;
assume ((b_s418) >= (0));
assume ((a_s418) >= (0));
if (!((b_s418) <= (a_s418))) {
revert := true;
return;
}
assume ((c_s417) >= (0));
assume ((a_s418) >= (0));
assume ((b_s418) >= (0));
assume (((a_s418) - (b_s418)) >= (0));
c_s417 := (a_s418) - (b_s418);
assume ((c_s417) >= (0));
__ret_0_ := c_s417;
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s452: int, b_s452: int) returns (__ret_0_: int)
// {
// var c_s451: int;
// assume ((a_s452) >= (0));
// if ((a_s452) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s451) >= (0));
// assume ((a_s452) >= (0));
// assume ((b_s452) >= (0));
// assume (((a_s452) * (b_s452)) >= (0));
// c_s451 := (a_s452) * (b_s452);
// assume ((c_s451) >= (0));
// assume ((a_s452) >= (0));
// assume (((c_s451) div (a_s452)) >= (0));
// assume ((b_s452) >= (0));
// if (!(((c_s451) div (a_s452)) == (b_s452))) {
// revert := true;
// return;
// }
// assume ((c_s451) >= (0));
// __ret_0_ := c_s451;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s452: int, b_s452: int) returns (__ret_0_: int)
// {
// var c_s451: int;
// assume ((a_s452) >= (0));
// if ((a_s452) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s451) >= (0));
// assume ((a_s452) >= (0));
// assume ((b_s452) >= (0));
// assume (((a_s452) * (b_s452)) >= (0));
// c_s451 := (a_s452) * (b_s452);
// assume ((c_s451) >= (0));
// assume ((a_s452) >= (0));
// assume (((c_s451) div (a_s452)) >= (0));
// assume ((b_s452) >= (0));
// if (!(((c_s451) div (a_s452)) == (b_s452))) {
// revert := true;
// return;
// }
// assume ((c_s451) >= (0));
// __ret_0_ := c_s451;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s477: int, b_s477: int) returns (__ret_0_: int)
// {
// var c_s476: int;
// assume ((b_s477) >= (0));
// if (!((b_s477) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s476) >= (0));
// assume ((a_s477) >= (0));
// assume ((b_s477) >= (0));
// assume (((a_s477) div (b_s477)) >= (0));
// c_s476 := (a_s477) div (b_s477);
// assume ((c_s476) >= (0));
// __ret_0_ := c_s476;
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s477: int, b_s477: int) returns (__ret_0_: int)
// {
// var c_s476: int;
// assume ((b_s477) >= (0));
// if (!((b_s477) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s476) >= (0));
// assume ((a_s477) >= (0));
// assume ((b_s477) >= (0));
// assume (((a_s477) div (b_s477)) >= (0));
// c_s476 := (a_s477) div (b_s477);
// assume ((c_s476) >= (0));
// __ret_0_ := c_s476;
// return;
// }

// implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s498: int, b_s498: int) returns (__ret_0_: int)
// {
// assume ((b_s498) >= (0));
// if (!((b_s498) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s498) >= (0));
// assume ((b_s498) >= (0));
// assume (((a_s498) mod (b_s498)) >= (0));
// __ret_0_ := (a_s498) mod (b_s498);
// return;
// }

// implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s498: int, b_s498: int) returns (__ret_0_: int)
// {
// assume ((b_s498) >= (0));
// if (!((b_s498) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s498) >= (0));
// assume ((b_s498) >= (0));
// assume (((a_s498) mod (b_s498)) >= (0));
// __ret_0_ := (a_s498) mod (b_s498);
// return;
// }

implementation Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var msgSender_s1352: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___primary_Secondary[this] := null;
// end of initialization
if ((__tmp__DType[this]) == (RefundEscrow)) {
call msgSender_s1352 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call msgSender_s1352 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call msgSender_s1352 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Secondary)) {
call msgSender_s1352 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
msgSender_s1352 := msgSender_s1352;
__tmp___primary_Secondary[this] := msgSender_s1352;
}

implementation Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var msgSender_s1352: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
_primary_Secondary[this] := null;
// end of initialization
if ((DType[this]) == (RefundEscrow)) {
call msgSender_s1352 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call msgSender_s1352 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call msgSender_s1352 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Secondary)) {
call msgSender_s1352 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
msgSender_s1352 := msgSender_s1352;
_primary_Secondary[this] := msgSender_s1352;
assert {:EventEmitted "PrimaryTransferred_Secondary"} (true);
}

implementation Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var msgSender_s1352: Ref;
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
var msgSender_s1352: Ref;
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

implementation transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1398: Ref)
{
var __var_52: Ref;
call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_52 := null;
if (!((recipient_s1398) != (null))) {
revert := true;
return;
}
__tmp___primary_Secondary[this] := recipient_s1398;
}

implementation transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1398: Ref)
{
var __var_52: Ref;
call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_52 := null;
if (!((recipient_s1398) != (null))) {
revert := true;
return;
}
_primary_Secondary[this] := recipient_s1398;
assert {:EventEmitted "PrimaryTransferred_Secondary"} (true);
}

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___openingTime_TimedCrowdsale[this] := 0;
__tmp___closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s559) >= (0));
assume ((__tmp__now) >= (0));
if (!((openingTime_s559) >= (__tmp__now))) {
revert := true;
return;
}
assume ((closingTime_s559) >= (0));
assume ((openingTime_s559) >= (0));
if (!((closingTime_s559) > (openingTime_s559))) {
revert := true;
return;
}
assume ((__tmp___openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s559) >= (0));
__tmp___openingTime_TimedCrowdsale[this] := openingTime_s559;
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s559) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := closingTime_s559;
}

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
_openingTime_TimedCrowdsale[this] := 0;
_closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s559) >= (0));
assume ((now) >= (0));
if (!((openingTime_s559) >= (now))) {
revert := true;
return;
}
assume ((closingTime_s559) >= (0));
assume ((openingTime_s559) >= (0));
if (!((closingTime_s559) > (openingTime_s559))) {
revert := true;
return;
}
assume ((_openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s559) >= (0));
_openingTime_TimedCrowdsale[this] := openingTime_s559;
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s559) >= (0));
_closingTime_TimedCrowdsale[this] := closingTime_s559;
}

implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s559, closingTime_s559);
if (revert) {
return;
}
}

implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s559: int, closingTime_s559: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s559, closingTime_s559);
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

implementation _preValidatePurchase_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s617: Ref, weiAmount_s617: int)
{
call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s617) >= (0));
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s617, weiAmount_s617);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s617, weiAmount_s617);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s617, weiAmount_s617);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s617: Ref, weiAmount_s617: int)
{
call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s617) >= (0));
if ((DType[this]) == (RefundableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s617, weiAmount_s617);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s617, weiAmount_s617);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s617, weiAmount_s617);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s646: int)
{
var __var_54: bool;
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_54 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_54 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call __var_54 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(!(__var_54))) {
revert := true;
return;
}
assume ((newClosingTime_s646) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s646) > (__tmp___closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s646) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := newClosingTime_s646;
}

implementation _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s646: int)
{
var __var_54: bool;
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_54 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_54 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call __var_54 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(!(__var_54))) {
revert := true;
return;
}
assume ((newClosingTime_s646) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s646) > (_closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assert {:EventEmitted "TimedCrowdsaleExtended_TimedCrowdsale"} (true);
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s646) >= (0));
_closingTime_TimedCrowdsale[this] := newClosingTime_s646;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (TimedCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Secondary)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (RefundableCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (RefundEscrow)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ReentrancyGuard)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (FinalizableCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Escrow)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Crowdsale)) {
call FallbackMethod_Crowdsale__fail(to, from, amount);
if (revert) {
return;
}
} else if ((__tmp__DType[to]) == (Context)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ConditionalEscrow)) {
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
if ((DType[to]) == (TimedCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Secondary)) {
assume ((amount) == (0));
} else if ((DType[to]) == (RefundableCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (RefundEscrow)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ReentrancyGuard)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (FinalizableCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Escrow)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Crowdsale)) {
call FallbackMethod_Crowdsale__success(to, from, amount);
if (revert) {
return;
}
} else if ((DType[to]) == (Context)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ConditionalEscrow)) {
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
// ---- Logic for payable function START 
assume ((__tmp__Balance[from]) >= (amount));
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
}

implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
}

implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
var __snap___tmp__Balance: [Ref]int;
var __snap___tmp__DType: [Ref]ContractName;
var __snap___tmp__Alloc: [Ref]bool;
var __snap___tmp__balance_ADDR: [Ref]int;
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp___token_Crowdsale: [Ref]Ref;
var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
var __snap___tmp___rate_Crowdsale: [Ref]int;
var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
var __snap___tmp___deposits_Escrow: [Ref]Ref;
var __snap___tmp___finalized_FinalizableCrowdsale: [Ref]bool;
var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __snap___tmp___state_RefundEscrow: [Ref]int;
var __snap___tmp___beneficiary_RefundEscrow: [Ref]Ref;
var __snap___tmp___goal_RefundableCrowdsale: [Ref]int;
var __snap___tmp___escrow_RefundableCrowdsale: [Ref]Ref;
var __snap___tmp___primary_Secondary: [Ref]Ref;
var __snap___tmp___openingTime_TimedCrowdsale: [Ref]int;
var __snap___tmp___closingTime_TimedCrowdsale: [Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
__snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
__snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
__snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
__snap___tmp___deposits_Escrow := __tmp___deposits_Escrow;
__snap___tmp___finalized_FinalizableCrowdsale := __tmp___finalized_FinalizableCrowdsale;
__snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
__snap___tmp___state_RefundEscrow := __tmp___state_RefundEscrow;
__snap___tmp___beneficiary_RefundEscrow := __tmp___beneficiary_RefundEscrow;
__snap___tmp___goal_RefundableCrowdsale := __tmp___goal_RefundableCrowdsale;
__snap___tmp___escrow_RefundableCrowdsale := __tmp___escrow_RefundableCrowdsale;
__snap___tmp___primary_Secondary := __tmp___primary_Secondary;
__snap___tmp___openingTime_TimedCrowdsale := __tmp___openingTime_TimedCrowdsale;
__snap___tmp___closingTime_TimedCrowdsale := __tmp___closingTime_TimedCrowdsale;
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
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
__tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
__tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
__tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
__tmp___deposits_Escrow := __snap___tmp___deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := __snap___tmp___finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := __snap___tmp___state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := __snap___tmp___beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := __snap___tmp___goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := __snap___tmp___escrow_RefundableCrowdsale;
__tmp___primary_Secondary := __snap___tmp___primary_Secondary;
__tmp___openingTime_TimedCrowdsale := __snap___tmp___openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := __snap___tmp___closingTime_TimedCrowdsale;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___deposits_Escrow := _deposits_Escrow;
__tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___state_RefundEscrow := _state_RefundEscrow;
__tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
__tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
__tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
__tmp___primary_Secondary := _primary_Secondary;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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

implementation onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_51: Ref;
if ((__tmp__DType[this]) == (RefundEscrow)) {
call __var_51 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ConditionalEscrow)) {
call __var_51 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Escrow)) {
call __var_51 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Secondary)) {
call __var_51 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!((__var_51) == (__tmp___primary_Secondary[this]))) {
revert := true;
return;
}
}

implementation onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_51: Ref;
if ((DType[this]) == (RefundEscrow)) {
call __var_51 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (ConditionalEscrow)) {
call __var_51 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Escrow)) {
call __var_51 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Secondary)) {
call __var_51 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!((__var_51) == (_primary_Secondary[this]))) {
revert := true;
return;
}
}

implementation onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_53: bool;
if ((__tmp__DType[this]) == (RefundableCrowdsale)) {
call __var_53 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (FinalizableCrowdsale)) {
call __var_53 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call __var_53 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_53)) {
revert := true;
return;
}
}

implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_53: bool;
if ((DType[this]) == (RefundableCrowdsale)) {
call __var_53 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (FinalizableCrowdsale)) {
call __var_53 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (TimedCrowdsale)) {
call __var_53 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_53)) {
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

implementation BoogieEntry_ConditionalEscrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var payee_s999: Ref;
var __ret_0_depositsOf: int;
var payee_s1009: Ref;
var payee_s676: Ref;
var payee_s659: Ref;
var __ret_0_withdrawalAllowed: bool;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (RefundEscrow)));
gas := (gas) - (53000);
call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc payee_s999;
havoc __ret_0_depositsOf;
havoc payee_s1009;
havoc payee_s676;
havoc payee_s659;
havoc __ret_0_withdrawalAllowed;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s999);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s676);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_withdrawalAllowed := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s659);
}
}
}

implementation BoogieEntry_Context()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((((((((((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (Context))) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (Escrow))) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundEscrow))) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (Secondary))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Context_Context(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation BoogieEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume (((((DType[this]) == (Crowdsale)) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s758, wallet_s758, token_s758);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_Crowdsale) ==> ((_wallet_Crowdsale[this]) == (null));
  // invariant (HoudiniB2_Crowdsale) ==> ((_wallet_Crowdsale[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
}
}
}

implementation BoogieEntry_Escrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var payee_s999: Ref;
var __ret_0_depositsOf: int;
var payee_s1009: Ref;
var payee_s1048: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (Escrow))) || ((DType[this]) == (RefundEscrow)));
gas := (gas) - (53000);
call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc payee_s999;
havoc __ret_0_depositsOf;
havoc payee_s1009;
havoc payee_s1048;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s999);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call withdraw_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
}
}
}

implementation BoogieEntry_FinalizableCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var openingTime_s559: int;
var closingTime_s559: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (FinalizableCrowdsale)) || ((DType[this]) == (RefundableCrowdsale)));
gas := (gas) - (53000);
call FinalizableCrowdsale_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc openingTime_s559;
havoc closingTime_s559;
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
if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (IERC20));
gas := (gas) - (53000);
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation BoogieEntry_ReentrancyGuard()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((((((DType[this]) == (Crowdsale)) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (ReentrancyGuard))) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation BoogieEntry_RefundEscrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var payee_s999: Ref;
var __ret_0_depositsOf: int;
var refundee_s287: Ref;
var payee_s676: Ref;
var __arg_0_withdrawalAllowed: Ref;
var __ret_0_withdrawalAllowed: bool;
var beneficiary_s253: Ref;
var __ret_0_state: int;
var __ret_0_beneficiary: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (RefundEscrow));
gas := (gas) - (53000);
call RefundEscrow_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, beneficiary_s253);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_RefundEscrow) ==> ((_beneficiary_RefundEscrow[this]) == (null));
  // invariant (HoudiniB2_RefundEscrow) ==> ((_beneficiary_RefundEscrow[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc payee_s999;
havoc __ret_0_depositsOf;
havoc refundee_s287;
havoc payee_s676;
havoc __arg_0_withdrawalAllowed;
havoc __ret_0_withdrawalAllowed;
havoc beneficiary_s253;
havoc __ret_0_state;
havoc __ret_0_beneficiary;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s999);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call deposit_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, refundee_s287);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s676);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_withdrawalAllowed := withdrawalAllowed_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, __arg_0_withdrawalAllowed);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_state := state_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_beneficiary := beneficiary_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call close_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call enableRefunds_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call beneficiaryWithdraw_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var openingTime_s559: int;
var closingTime_s559: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var goal_s41: int;
var __ret_0_goal: int;
var refundee_s74: Ref;
var __ret_0_goalReached: bool;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (RefundableCrowdsale));
gas := (gas) - (53000);
call RefundableCrowdsale_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, goal_s41);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc openingTime_s559;
havoc closingTime_s559;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc __ret_0_finalized;
havoc goal_s41;
havoc __ret_0_goal;
havoc refundee_s74;
havoc __ret_0_goalReached;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (14)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_goal := goal_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call claimRefund_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_goalReached := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_SafeERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (SafeERC20));
gas := (gas) - (53000);
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation BoogieEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (SafeMath));
gas := (gas) - (53000);
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation BoogieEntry_Secondary()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume (((((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (Escrow))) || ((DType[this]) == (RefundEscrow))) || ((DType[this]) == (Secondary)));
gas := (gas) - (53000);
call Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_Secondary) ==> ((_primary_Secondary[this]) == (null));
  // invariant (HoudiniB2_Secondary) ==> ((_primary_Secondary[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
}
}
}

implementation BoogieEntry_TimedCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var openingTime_s559: int;
var closingTime_s559: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (FinalizableCrowdsale)) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s559, closingTime_s559);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc openingTime_s559;
havoc closingTime_s559;
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
if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation CorralChoice_ConditionalEscrow(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var payee_s999: Ref;
var __ret_0_depositsOf: int;
var payee_s1009: Ref;
var payee_s676: Ref;
var payee_s659: Ref;
var __ret_0_withdrawalAllowed: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc payee_s999;
havoc __ret_0_depositsOf;
havoc payee_s1009;
havoc payee_s676;
havoc payee_s659;
havoc __ret_0_withdrawalAllowed;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s999);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s676);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_withdrawalAllowed := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s659);
}
}

implementation CorralEntry_ConditionalEscrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (RefundEscrow)));
gas := (gas) - (53000);
call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ConditionalEscrow(this);
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
}

implementation CorralEntry_Context()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((((((((((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (Context))) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (Escrow))) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundEscrow))) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (Secondary))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Context_Context(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Context(this);
}
}

implementation CorralChoice_Crowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
}
}

implementation CorralEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
assume ((now) >= (0));
assume (((((DType[this]) == (Crowdsale)) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s758, wallet_s758, token_s758);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Crowdsale(this);
}
}

implementation CorralChoice_Escrow(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var payee_s999: Ref;
var __ret_0_depositsOf: int;
var payee_s1009: Ref;
var payee_s1048: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc payee_s999;
havoc __ret_0_depositsOf;
havoc payee_s1009;
havoc payee_s1048;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s999);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s1009);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call withdraw_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s1048);
}
}

implementation CorralEntry_Escrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (Escrow))) || ((DType[this]) == (RefundEscrow)));
gas := (gas) - (53000);
call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Escrow(this);
}
}

implementation CorralChoice_FinalizableCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var openingTime_s559: int;
var closingTime_s559: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc openingTime_s559;
havoc closingTime_s559;
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
if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_FinalizableCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (FinalizableCrowdsale)) || ((DType[this]) == (RefundableCrowdsale)));
gas := (gas) - (53000);
call FinalizableCrowdsale_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_FinalizableCrowdsale(this);
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
}

implementation CorralEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (IERC20));
gas := (gas) - (53000);
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IERC20(this);
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
}

implementation CorralEntry_ReentrancyGuard()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((((((DType[this]) == (Crowdsale)) || ((DType[this]) == (FinalizableCrowdsale))) || ((DType[this]) == (ReentrancyGuard))) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ReentrancyGuard(this);
}
}

implementation CorralChoice_RefundEscrow(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var payee_s999: Ref;
var __ret_0_depositsOf: int;
var refundee_s287: Ref;
var payee_s676: Ref;
var __arg_0_withdrawalAllowed: Ref;
var __ret_0_withdrawalAllowed: bool;
var beneficiary_s253: Ref;
var __ret_0_state: int;
var __ret_0_beneficiary: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc payee_s999;
havoc __ret_0_depositsOf;
havoc refundee_s287;
havoc payee_s676;
havoc __arg_0_withdrawalAllowed;
havoc __ret_0_withdrawalAllowed;
havoc beneficiary_s253;
havoc __ret_0_state;
havoc __ret_0_beneficiary;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s999);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call deposit_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, refundee_s287);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s676);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_withdrawalAllowed := withdrawalAllowed_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, __arg_0_withdrawalAllowed);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_state := state_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_beneficiary := beneficiary_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call close_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call enableRefunds_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call beneficiaryWithdraw_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_RefundEscrow()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var beneficiary_s253: Ref;
assume ((now) >= (0));
assume ((DType[this]) == (RefundEscrow));
gas := (gas) - (53000);
call RefundEscrow_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, beneficiary_s253);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_RefundEscrow(this);
}
}

implementation CorralChoice_RefundableCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var openingTime_s559: int;
var closingTime_s559: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var __ret_0_finalized: bool;
var goal_s41: int;
var __ret_0_goal: int;
var refundee_s74: Ref;
var __ret_0_goalReached: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc openingTime_s559;
havoc closingTime_s559;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc __ret_0_finalized;
havoc goal_s41;
havoc __ret_0_goal;
havoc refundee_s74;
havoc __ret_0_goalReached;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (14)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_goal := goal_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call claimRefund_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_goalReached := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_RefundableCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var goal_s41: int;
assume ((now) >= (0));
assume ((DType[this]) == (RefundableCrowdsale));
gas := (gas) - (53000);
call RefundableCrowdsale_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, goal_s41);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_RefundableCrowdsale(this);
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
}

implementation CorralEntry_SafeERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (SafeERC20));
gas := (gas) - (53000);
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeERC20(this);
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
}

implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
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

implementation CorralChoice_Secondary(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_primary: Ref;
var recipient_s1398: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_primary;
havoc recipient_s1398;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s1398);
}
}

implementation CorralEntry_Secondary()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((((DType[this]) == (ConditionalEscrow)) || ((DType[this]) == (Escrow))) || ((DType[this]) == (RefundEscrow))) || ((DType[this]) == (Secondary)));
gas := (gas) - (53000);
call Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Secondary(this);
}
}

implementation CorralChoice_TimedCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s758: int;
var wallet_s758: Ref;
var token_s758: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s856: Ref;
var openingTime_s559: int;
var closingTime_s559: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s758;
havoc wallet_s758;
havoc token_s758;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s856;
havoc openingTime_s559;
havoc closingTime_s559;
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
if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s856);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_TimedCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var openingTime_s559: int;
var closingTime_s559: int;
assume ((now) >= (0));
assume ((((DType[this]) == (FinalizableCrowdsale)) || ((DType[this]) == (RefundableCrowdsale))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s559, closingTime_s559);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_TimedCrowdsale(this);
}
}


