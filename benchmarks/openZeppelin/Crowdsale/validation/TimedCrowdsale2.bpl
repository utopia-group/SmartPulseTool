// SPEC 1
// #LTLProperty: []((call(Crowdsale.buyTokens) {TimedCrowdsale.isOpen() == false}) ==> <>(fail(Crowdsale.buyTokens) {}))

// SPEC 2
// []((call(Crowdsale.buyTokens) {TimedCrowdsale.hasClosed() == true}) ==> <>(fail(Crowdsale.buyTokens) {}))

type Ref = int;
type ContractName = int;
var null: Ref;
var Context: ContractName;
var Crowdsale: ContractName;
var IERC20: ContractName;
var ReentrancyGuard: ContractName;
var SafeERC20: ContractName;
var SafeMath: ContractName;
var TimedCrowdsale: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
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
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s228, wallet_s228, token_s228);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s228, wallet_s228, token_s228);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s326: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s326: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s339: Ref, weiAmount_s339: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s365: Ref, weiAmount_s365: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s373: Ref, weiAmount_s373: int);
procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s389: Ref, tokenAmount_s389: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s402: Ref, tokenAmount_s402: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s410: Ref, weiAmount_s410: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s420: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s595: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer2_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s604: Ref, amount_s604: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s613: Ref, spender_s613: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s622: Ref, amount_s622: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s633: Ref, recipient_s633: Ref, amount_s633: int) returns (__ret_0_: bool);
var _notEntered_ReentrancyGuard: [Ref]bool;
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call SafeERC20_SafeERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s705: Ref, to_s705: Ref, value_s705: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s726: Ref, from_s726: Ref, to_s726: Ref, value_s726: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s763: Ref, spender_s763: Ref, value_s763: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s794: Ref, spender_s794: Ref, value_s794: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s825: Ref, spender_s825: Ref, value_s825: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s459: int, b_s459: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s484: int, b_s484: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s518: int, b_s518: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s543: int, b_s543: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s564: int, b_s564: int) returns (__ret_0_: int);
// modifies revert;
var _openingTime_TimedCrowdsale: [Ref]int;
var _closingTime_TimedCrowdsale: [Ref]int;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int);
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
implementation TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s59, closingTime_s59);
assume ((revert) || ((gas) < (0)));
} else {
call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s59, closingTime_s59);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call __ret_0_ := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s117: Ref, weiAmount_s117: int);
modifies revert;
procedure {:inline 1} _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s146: int);
modifies revert;
modifies _closingTime_TimedCrowdsale;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_Context();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
const {:existential true} HoudiniB1_Crowdsale: bool;
const {:existential true} HoudiniB2_Crowdsale: bool;
procedure BoogieEntry_Crowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_IERC20();
modifies gas;
procedure BoogieEntry_ReentrancyGuard();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_SafeERC20();
modifies gas;
procedure BoogieEntry_SafeMath();
modifies gas;
procedure main();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
procedure nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _notEntered_ReentrancyGuard;
procedure onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_Context(this: Ref);
modifies gas;
procedure CorralEntry_Context();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure CorralChoice_Crowdsale(this: Ref);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralEntry_Crowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_IERC20(this: Ref);
modifies gas;
procedure CorralEntry_IERC20();
modifies gas;
procedure CorralChoice_ReentrancyGuard(this: Ref);
modifies gas;
procedure CorralEntry_ReentrancyGuard();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_SafeERC20(this: Ref);
modifies gas;
procedure CorralEntry_SafeERC20();
modifies gas;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
procedure CorralEntry_SafeMath();
modifies gas;
procedure CorralChoice_TimedCrowdsale(this: Ref);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure CorralEntry_TimedCrowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp___token_Crowdsale: [Ref]Ref;
var __tmp___wallet_Crowdsale: [Ref]Ref;
var __tmp___rate_Crowdsale: [Ref]int;
var __tmp___weiRaised_Crowdsale: [Ref]int;
var __tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __tmp___openingTime_TimedCrowdsale: [Ref]int;
var __tmp___closingTime_TimedCrowdsale: [Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref);
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref);
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
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
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
procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s326: Ref);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s326: Ref);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s339: Ref, weiAmount_s339: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s365: Ref, weiAmount_s365: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s373: Ref, weiAmount_s373: int);
procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s389: Ref, tokenAmount_s389: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s402: Ref, tokenAmount_s402: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s410: Ref, weiAmount_s410: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s420: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s705: Ref, to_s705: Ref, value_s705: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s726: Ref, from_s726: Ref, to_s726: Ref, value_s726: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s763: Ref, spender_s763: Ref, value_s763: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s794: Ref, spender_s794: Ref, value_s794: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s825: Ref, spender_s825: Ref, value_s825: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s459: int, b_s459: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s484: int, b_s484: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s518: int, b_s518: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s543: int, b_s543: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s564: int, b_s564: int) returns (__ret_0_: int);
// modifies revert;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int);
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int);
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int);
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
procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s117: Ref, weiAmount_s117: int);
modifies revert;
procedure {:inline 1} _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s146: int);
modifies revert;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
modifies gas;
procedure nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
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

implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___wallet_Crowdsale[this] := null;
__tmp___rate_Crowdsale[this] := 0;
__tmp___weiRaised_Crowdsale[this] := 0;
// end of initialization
assume ((rate_s228) >= (0));
if (!((rate_s228) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s228) != (null))) {
revert := true;
return;
}
__var_2 := token_s228;
__var_3 := null;
if (!((token_s228) != (null))) {
revert := true;
return;
}
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__tmp___rate_Crowdsale[this] := 1;
__tmp___wallet_Crowdsale[this] := wallet_s228;
__tmp___token_Crowdsale[this] := token_s228;
}

implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
_wallet_Crowdsale[this] := null;
_rate_Crowdsale[this] := 0;
_weiRaised_Crowdsale[this] := 0;
// end of initialization
assume ((rate_s228) >= (0));
if (!((rate_s228) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s228) != (null))) {
revert := true;
return;
}
__var_2 := token_s228;
__var_3 := null;
if (!((token_s228) != (null))) {
revert := true;
return;
}
assume ((_rate_Crowdsale[this]) >= (0));
_rate_Crowdsale[this] := 1;
_wallet_Crowdsale[this] := wallet_s228;
_token_Crowdsale[this] := token_s228;
}

implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s228, wallet_s228, token_s228);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s228: int, wallet_s228: Ref, token_s228: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s228, wallet_s228, token_s228);
if (revert) {
return;
}
}

implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_4: Ref;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_4);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_4);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_4: Ref;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
if ((DType[this]) == (TimedCrowdsale)) {
call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (TimedCrowdsale)) {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_4);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_4);
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

implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s326: Ref)
{
var weiAmount_s325: int;
var tokens_s325: int;
var __var_5: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call nonReentrant_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s325) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s325 := msgvalue_MSG;
assume ((weiAmount_s325) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s325) >= (0));
assume ((weiAmount_s325) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call tokens_s325 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s325);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call tokens_s325 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s325);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s325 := tokens_s325;
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s325) >= (0));
call __var_5 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s325);
if (revert) {
return;
}
__tmp___weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s325) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, tokens_s325);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, tokens_s325);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s325) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
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
assume ((weiAmount_s325) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
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

implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s326: Ref)
{
var weiAmount_s325: int;
var tokens_s325: int;
var __var_5: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call nonReentrant_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s325) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s325 := msgvalue_MSG;
assume ((weiAmount_s325) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s325) >= (0));
assume ((weiAmount_s325) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call tokens_s325 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s325);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call tokens_s325 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s325);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s325 := tokens_s325;
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s325) >= (0));
call __var_5 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s325);
if (revert) {
return;
}
_weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s325) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, tokens_s325);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, tokens_s325);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokensPurchased_Crowdsale"} (true);
assume ((weiAmount_s325) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (TimedCrowdsale)) {
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
assume ((weiAmount_s325) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326, weiAmount_s325);
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

implementation _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s339: Ref, weiAmount_s339: int)
{
assume ((weiAmount_s339) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s339, weiAmount_s339);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s339, weiAmount_s339);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s339: Ref, weiAmount_s339: int)
{
assume ((weiAmount_s339) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s339, weiAmount_s339);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s339, weiAmount_s339);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s365: Ref, weiAmount_s365: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s365) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s365) >= (0));
if (!((weiAmount_s365) != (0))) {
revert := true;
return;
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s365: Ref, weiAmount_s365: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s365) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s365) >= (0));
if (!((weiAmount_s365) != (0))) {
revert := true;
return;
}
}

implementation _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s373: Ref, weiAmount_s373: int)
{
}

implementation _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s373: Ref, weiAmount_s373: int)
{
}

implementation _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s389: Ref, tokenAmount_s389: int)
{
assume ((tokenAmount_s389) >= (0));
call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s389, tokenAmount_s389);
if (revert) {
return;
}
}

implementation _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s389: Ref, tokenAmount_s389: int)
{
assume ((tokenAmount_s389) >= (0));
call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s389, tokenAmount_s389);
if (revert) {
return;
}
}

implementation _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s402: Ref, tokenAmount_s402: int)
{
assume ((tokenAmount_s402) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s402, tokenAmount_s402);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s402, tokenAmount_s402);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s402: Ref, tokenAmount_s402: int)
{
assume ((tokenAmount_s402) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s402, tokenAmount_s402);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s402, tokenAmount_s402);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s410: Ref, weiAmount_s410: int)
{
}

implementation _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s410: Ref, weiAmount_s410: int)
{
}

implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s420: int) returns (__ret_0_: int)
{
assume ((weiAmount_s420) >= (0));
__ret_0_ := weiAmount_s420;
return;
}

implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s420: int) returns (__ret_0_: int)
{
assume ((weiAmount_s420) >= (0));
__ret_0_ := weiAmount_s420;
return;
}

implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_7: int;
var __var_8: bool;
__var_7 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
assume ((msgvalue_MSG) >= (0));
call __var_8 := send__fail(this, __tmp___wallet_Crowdsale[this], msgvalue_MSG);
if (!(__var_8)) {
revert := true;
return;
}
gas := (__var_7) + (gas);
}

implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_7: int;
var __var_8: bool;
__var_7 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
assume ((msgvalue_MSG) >= (0));
call __var_8 := send__success(this, _wallet_Crowdsale[this], msgvalue_MSG);
if (!(__var_8)) {
revert := true;
return;
}
gas := (__var_7) + (gas);
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

implementation safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s705: Ref, to_s705: Ref, value_s705: int)
{
var __var_9: bool;
var __var_10: int;
assume ((value_s705) >= (0));
call __var_9 := transfer2_IERC20(token_s705, this, __var_10, to_s705, value_s705);
if (!(__var_9)) {
revert := true;
return;
}
}

implementation safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s705: Ref, to_s705: Ref, value_s705: int)
{
var __var_9: bool;
var __var_10: int;
assume ((value_s705) >= (0));
call __var_9 := transfer2_IERC20(token_s705, this, __var_10, to_s705, value_s705);
if (!(__var_9)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s726: Ref, from_s726: Ref, to_s726: Ref, value_s726: int)
{
var __var_11: bool;
var __var_12: int;
assume ((value_s726) >= (0));
call __var_11 := transferFrom_IERC20(token_s726, this, __var_12, from_s726, to_s726, value_s726);
if (!(__var_11)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s726: Ref, from_s726: Ref, to_s726: Ref, value_s726: int)
{
var __var_11: bool;
var __var_12: int;
assume ((value_s726) >= (0));
call __var_11 := transferFrom_IERC20(token_s726, this, __var_12, from_s726, to_s726, value_s726);
if (!(__var_11)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s763: Ref, spender_s763: Ref, value_s763: int)
{
var __var_13: int;
var __var_14: int;
var __var_15: Ref;
var __var_16: bool;
var __var_17: int;
assume ((value_s763) >= (0));
assume ((__var_13) >= (0));
__var_15 := this;
call __var_13 := allowance_IERC20(token_s763, this, __var_14, this, spender_s763);
assume ((__var_13) >= (0));
if (!((((value_s763) == (0))) || (((__var_13) == (0))))) {
revert := true;
return;
}
assume ((value_s763) >= (0));
call __var_16 := approve_IERC20(token_s763, this, __var_17, spender_s763, value_s763);
if (!(__var_16)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s763: Ref, spender_s763: Ref, value_s763: int)
{
var __var_13: int;
var __var_14: int;
var __var_15: Ref;
var __var_16: bool;
var __var_17: int;
assume ((value_s763) >= (0));
assume ((__var_13) >= (0));
__var_15 := this;
call __var_13 := allowance_IERC20(token_s763, this, __var_14, this, spender_s763);
assume ((__var_13) >= (0));
if (!((((value_s763) == (0))) || (((__var_13) == (0))))) {
revert := true;
return;
}
assume ((value_s763) >= (0));
call __var_16 := approve_IERC20(token_s763, this, __var_17, spender_s763, value_s763);
if (!(__var_16)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s794: Ref, spender_s794: Ref, value_s794: int)
{
var newAllowance_s793: int;
var __var_18: int;
var __var_19: int;
var __var_20: Ref;
var __var_21: bool;
var __var_22: int;
assume ((newAllowance_s793) >= (0));
assume ((__var_18) >= (0));
__var_20 := this;
call __var_18 := allowance_IERC20(token_s794, this, __var_19, this, spender_s794);
assume ((__var_18) >= (0));
assume ((value_s794) >= (0));
call newAllowance_s793 := add_SafeMath__fail(this, this, 0, __var_18, value_s794);
if (revert) {
return;
}
newAllowance_s793 := newAllowance_s793;
assume ((newAllowance_s793) >= (0));
call __var_21 := approve_IERC20(token_s794, this, __var_22, spender_s794, newAllowance_s793);
if (!(__var_21)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s794: Ref, spender_s794: Ref, value_s794: int)
{
var newAllowance_s793: int;
var __var_18: int;
var __var_19: int;
var __var_20: Ref;
var __var_21: bool;
var __var_22: int;
assume ((newAllowance_s793) >= (0));
assume ((__var_18) >= (0));
__var_20 := this;
call __var_18 := allowance_IERC20(token_s794, this, __var_19, this, spender_s794);
assume ((__var_18) >= (0));
assume ((value_s794) >= (0));
call newAllowance_s793 := add_SafeMath__success(this, this, 0, __var_18, value_s794);
if (revert) {
return;
}
newAllowance_s793 := newAllowance_s793;
assume ((newAllowance_s793) >= (0));
call __var_21 := approve_IERC20(token_s794, this, __var_22, spender_s794, newAllowance_s793);
if (!(__var_21)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s825: Ref, spender_s825: Ref, value_s825: int)
{
var newAllowance_s824: int;
var __var_23: int;
var __var_24: int;
var __var_25: Ref;
var __var_26: bool;
var __var_27: int;
assume ((newAllowance_s824) >= (0));
assume ((__var_23) >= (0));
__var_25 := this;
call __var_23 := allowance_IERC20(token_s825, this, __var_24, this, spender_s825);
assume ((__var_23) >= (0));
assume ((value_s825) >= (0));
call newAllowance_s824 := sub_SafeMath__fail(this, this, 0, __var_23, value_s825);
if (revert) {
return;
}
newAllowance_s824 := newAllowance_s824;
assume ((newAllowance_s824) >= (0));
call __var_26 := approve_IERC20(token_s825, this, __var_27, spender_s825, newAllowance_s824);
if (!(__var_26)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s825: Ref, spender_s825: Ref, value_s825: int)
{
var newAllowance_s824: int;
var __var_23: int;
var __var_24: int;
var __var_25: Ref;
var __var_26: bool;
var __var_27: int;
assume ((newAllowance_s824) >= (0));
assume ((__var_23) >= (0));
__var_25 := this;
call __var_23 := allowance_IERC20(token_s825, this, __var_24, this, spender_s825);
assume ((__var_23) >= (0));
assume ((value_s825) >= (0));
call newAllowance_s824 := sub_SafeMath__success(this, this, 0, __var_23, value_s825);
if (revert) {
return;
}
newAllowance_s824 := newAllowance_s824;
assume ((newAllowance_s824) >= (0));
call __var_26 := approve_IERC20(token_s825, this, __var_27, spender_s825, newAllowance_s824);
if (!(__var_26)) {
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s459: int, b_s459: int) returns (__ret_0_: int)
{
var c_s458: int;
assume ((c_s458) >= (0));
assume ((a_s459) >= (0));
assume ((b_s459) >= (0));
assume (((a_s459) + (b_s459)) >= (0));
c_s458 := (a_s459) + (b_s459);
assume ((c_s458) >= (0));
assume ((a_s459) >= (0));
if (!((c_s458) >= (a_s459))) {
revert := true;
return;
}
assume ((c_s458) >= (0));
__ret_0_ := c_s458;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s459: int, b_s459: int) returns (__ret_0_: int)
{
var c_s458: int;
assume ((c_s458) >= (0));
assume ((a_s459) >= (0));
assume ((b_s459) >= (0));
assume (((a_s459) + (b_s459)) >= (0));
c_s458 := (a_s459) + (b_s459);
assume ((c_s458) >= (0));
assume ((a_s459) >= (0));
if (!((c_s458) >= (a_s459))) {
revert := true;
return;
}
assume ((c_s458) >= (0));
__ret_0_ := c_s458;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s484: int, b_s484: int) returns (__ret_0_: int)
{
var c_s483: int;
assume ((b_s484) >= (0));
assume ((a_s484) >= (0));
if (!((b_s484) <= (a_s484))) {
revert := true;
return;
}
assume ((c_s483) >= (0));
assume ((a_s484) >= (0));
assume ((b_s484) >= (0));
assume (((a_s484) - (b_s484)) >= (0));
c_s483 := (a_s484) - (b_s484);
assume ((c_s483) >= (0));
__ret_0_ := c_s483;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s484: int, b_s484: int) returns (__ret_0_: int)
{
var c_s483: int;
assume ((b_s484) >= (0));
assume ((a_s484) >= (0));
if (!((b_s484) <= (a_s484))) {
revert := true;
return;
}
assume ((c_s483) >= (0));
assume ((a_s484) >= (0));
assume ((b_s484) >= (0));
assume (((a_s484) - (b_s484)) >= (0));
c_s483 := (a_s484) - (b_s484);
assume ((c_s483) >= (0));
__ret_0_ := c_s483;
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s518: int, b_s518: int) returns (__ret_0_: int)
// {
// var c_s517: int;
// assume ((a_s518) >= (0));
// if ((a_s518) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s517) >= (0));
// assume ((a_s518) >= (0));
// assume ((b_s518) >= (0));
// assume (((a_s518) * (b_s518)) >= (0));
// c_s517 := (a_s518) * (b_s518);
// assume ((c_s517) >= (0));
// assume ((a_s518) >= (0));
// assume (((c_s517) div (a_s518)) >= (0));
// assume ((b_s518) >= (0));
// if (!(((c_s517) div (a_s518)) == (b_s518))) {
// revert := true;
// return;
// }
// assume ((c_s517) >= (0));
// __ret_0_ := c_s517;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s518: int, b_s518: int) returns (__ret_0_: int)
// {
// var c_s517: int;
// assume ((a_s518) >= (0));
// if ((a_s518) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s517) >= (0));
// assume ((a_s518) >= (0));
// assume ((b_s518) >= (0));
// assume (((a_s518) * (b_s518)) >= (0));
// c_s517 := (a_s518) * (b_s518);
// assume ((c_s517) >= (0));
// assume ((a_s518) >= (0));
// assume (((c_s517) div (a_s518)) >= (0));
// assume ((b_s518) >= (0));
// if (!(((c_s517) div (a_s518)) == (b_s518))) {
// revert := true;
// return;
// }
// assume ((c_s517) >= (0));
// __ret_0_ := c_s517;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s543: int, b_s543: int) returns (__ret_0_: int)
// {
// var c_s542: int;
// assume ((b_s543) >= (0));
// if (!((b_s543) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s542) >= (0));
// assume ((a_s543) >= (0));
// assume ((b_s543) >= (0));
// assume (((a_s543) div (b_s543)) >= (0));
// c_s542 := (a_s543) div (b_s543);
// assume ((c_s542) >= (0));
// __ret_0_ := c_s542;
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s543: int, b_s543: int) returns (__ret_0_: int)
// {
// var c_s542: int;
// assume ((b_s543) >= (0));
// if (!((b_s543) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s542) >= (0));
// assume ((a_s543) >= (0));
// assume ((b_s543) >= (0));
// assume (((a_s543) div (b_s543)) >= (0));
// c_s542 := (a_s543) div (b_s543);
// assume ((c_s542) >= (0));
// __ret_0_ := c_s542;
// return;
// }

// implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s564: int, b_s564: int) returns (__ret_0_: int)
// {
// assume ((b_s564) >= (0));
// if (!((b_s564) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s564) >= (0));
// assume ((b_s564) >= (0));
// assume (((a_s564) mod (b_s564)) >= (0));
// __ret_0_ := (a_s564) mod (b_s564);
// return;
// }

// implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s564: int, b_s564: int) returns (__ret_0_: int)
// {
// assume ((b_s564) >= (0));
// if (!((b_s564) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s564) >= (0));
// assume ((b_s564) >= (0));
// assume (((a_s564) mod (b_s564)) >= (0));
// __ret_0_ := (a_s564) mod (b_s564);
// return;
// }

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int)
{
var __var_29: int;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___openingTime_TimedCrowdsale[this] := 0;
__tmp___closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s59) >= (0));
// Non-deterministic value to model block.timestamp
havoc __var_29;
assume ((__var_29) >= (0));
if (!((openingTime_s59) >= (__var_29))) {
revert := true;
return;
}
assume ((closingTime_s59) >= (0));
assume ((openingTime_s59) >= (0));
if (!((closingTime_s59) > (openingTime_s59))) {
revert := true;
return;
}
assume ((__tmp___openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s59) >= (0));
__tmp___openingTime_TimedCrowdsale[this] := openingTime_s59;
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s59) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := closingTime_s59;
}

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int)
{
var __var_29: int;
// start of initialization
assume ((msgsender_MSG) != (null));
_openingTime_TimedCrowdsale[this] := 0;
_closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s59) >= (0));
// Non-deterministic value to model block.timestamp
havoc __var_29;
assume ((__var_29) >= (0));
if (!((openingTime_s59) >= (__var_29))) {
revert := true;
return;
}
assume ((closingTime_s59) >= (0));
assume ((openingTime_s59) >= (0));
if (!((closingTime_s59) > (openingTime_s59))) {
revert := true;
return;
}
assume ((_openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s59) >= (0));
_openingTime_TimedCrowdsale[this] := openingTime_s59;
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s59) >= (0));
_closingTime_TimedCrowdsale[this] := closingTime_s59;
}

implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int)
{
var __var_29: int;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s59, closingTime_s59);
if (revert) {
return;
}
}

implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s59: int, closingTime_s59: int)
{
var __var_29: int;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s59, closingTime_s59);
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
var __var_30: int;
var __var_31: int;
// Non-deterministic value to model block.timestamp
havoc __var_30;
assume ((__var_30) >= (0));
assume ((__tmp___openingTime_TimedCrowdsale[this]) >= (0));
// Non-deterministic value to model block.timestamp
havoc __var_31;
assume ((__var_31) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := ((__var_30) >= (__tmp___openingTime_TimedCrowdsale[this])) && ((__var_31) <= (__tmp___closingTime_TimedCrowdsale[this]));
return;
}

implementation isOpen_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_30: int;
var __var_31: int;
// Non-deterministic value to model block.timestamp
havoc __var_30;
assume ((__var_30) >= (0));
assume ((_openingTime_TimedCrowdsale[this]) >= (0));
// Non-deterministic value to model block.timestamp
havoc __var_31;
assume ((__var_31) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := ((__var_30) >= (_openingTime_TimedCrowdsale[this])) && ((__var_31) <= (_closingTime_TimedCrowdsale[this]));
return;
}

implementation hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_32: int;
// Non-deterministic value to model block.timestamp
havoc __var_32;
assume ((__var_32) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := (__var_32) > (__tmp___closingTime_TimedCrowdsale[this]);
return;
}

implementation hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_32: int;
// Non-deterministic value to model block.timestamp
havoc __var_32;
assume ((__var_32) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
__ret_0_ := (__var_32) > (_closingTime_TimedCrowdsale[this]);
return;
}

implementation _preValidatePurchase_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s117: Ref, weiAmount_s117: int)
{
call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s117) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s117, weiAmount_s117);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s117: Ref, weiAmount_s117: int)
{
call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s117) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s117, weiAmount_s117);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s146: int)
{
var __var_33: bool;
call __var_33 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_33))) {
revert := true;
return;
}
assume ((newClosingTime_s146) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s146) > (__tmp___closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s146) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := newClosingTime_s146;
}

implementation _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s146: int)
{
var __var_33: bool;
call __var_33 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_33))) {
revert := true;
return;
}
assume ((newClosingTime_s146) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s146) > (_closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assert {:EventEmitted "TimedCrowdsaleExtended_TimedCrowdsale"} (true);
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s146) >= (0));
_closingTime_TimedCrowdsale[this] := newClosingTime_s146;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (TimedCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ReentrancyGuard)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Crowdsale)) {
call FallbackMethod_Crowdsale__fail(to, from, amount);
if (revert) {
return;
}
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
if ((DType[to]) == (TimedCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ReentrancyGuard)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Crowdsale)) {
call FallbackMethod_Crowdsale__success(to, from, amount);
if (revert) {
return;
}
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
var __snap___tmp__Length: [Ref]int;
var __snap___tmp___token_Crowdsale: [Ref]Ref;
var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
var __snap___tmp___rate_Crowdsale: [Ref]int;
var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __snap___tmp___openingTime_TimedCrowdsale: [Ref]int;
var __snap___tmp___closingTime_TimedCrowdsale: [Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__Length := __tmp__Length;
__snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
__snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
__snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
__snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
__snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := __snap___tmp__Length;
__tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
__tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
__tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
__tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
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
__tmp__Length := Length;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
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

implementation onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_28: bool;
call __var_28 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(__var_28)) {
revert := true;
return;
}
}

implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_28: bool;
call __var_28 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(__var_28)) {
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

implementation BoogieEntry_Context()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Context_Context(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}
}

implementation BoogieEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s228: int;
var wallet_s228: Ref;
var token_s228: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s326: Ref;
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s228, wallet_s228, token_s228);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  invariant (HoudiniB1_Crowdsale) ==> ((_wallet_Crowdsale[this]) == (null));
  invariant (HoudiniB2_Crowdsale) ==> ((_wallet_Crowdsale[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s228;
havoc wallet_s228;
havoc token_s228;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s326;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326);
}
}
}

implementation BoogieEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((DType[this]) == (IERC20));
gas := (gas) - (53000);
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}
}

implementation BoogieEntry_ReentrancyGuard()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((((DType[this]) == (Crowdsale)) || ((DType[this]) == (ReentrancyGuard))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}
}

implementation BoogieEntry_SafeERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((DType[this]) == (SafeERC20));
gas := (gas) - (53000);
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}
}

implementation BoogieEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((DType[this]) == (SafeMath));
gas := (gas) - (53000);
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s228: int;
var wallet_s228: Ref;
var token_s228: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s326: Ref;
var openingTime_s59: int;
var closingTime_s59: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
assume ((DType[this]) == (TimedCrowdsale));
gas := (gas) - (53000);
call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s59, closingTime_s59);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s228;
havoc wallet_s228;
havoc token_s228;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s326;
havoc openingTime_s59;
havoc closingTime_s59;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326);
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

implementation CorralChoice_Context(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}

implementation CorralEntry_Context()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (TimedCrowdsale)));
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
var rate_s228: int;
var wallet_s228: Ref;
var token_s228: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s326: Ref;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s228;
havoc wallet_s228;
havoc token_s228;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s326;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326);
}
}

implementation CorralEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var rate_s228: int;
var wallet_s228: Ref;
var token_s228: Ref;
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s228, wallet_s228, token_s228);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Crowdsale(this);
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
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}

implementation CorralEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
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
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}

implementation CorralEntry_ReentrancyGuard()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((((DType[this]) == (Crowdsale)) || ((DType[this]) == (ReentrancyGuard))) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ReentrancyGuard(this);
}
}

implementation CorralChoice_SafeERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}

implementation CorralEntry_SafeERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
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
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}

implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((DType[this]) == (SafeMath));
gas := (gas) - (53000);
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}

implementation CorralChoice_TimedCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s228: int;
var wallet_s228: Ref;
var token_s228: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s326: Ref;
var openingTime_s59: int;
var closingTime_s59: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s228;
havoc wallet_s228;
havoc token_s228;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s326;
havoc openingTime_s59;
havoc closingTime_s59;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s326);
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
var openingTime_s59: int;
var closingTime_s59: int;
assume ((DType[this]) == (TimedCrowdsale));
gas := (gas) - (53000);
call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s59, closingTime_s59);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_TimedCrowdsale(this);
}
}


