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
var now: int;
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
modifies __tmp__now;
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
__tmp__now := now;
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
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref);
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
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref)
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
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s224, wallet_s224, token_s224);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s224, wallet_s224, token_s224);
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
modifies __tmp__now;
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
modifies __tmp__now;
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
__tmp__now := now;
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
modifies __tmp__now;
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
__tmp__now := now;
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
modifies __tmp__now;
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
__tmp__now := now;
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
modifies __tmp__now;
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
__tmp__now := now;
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

procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s322: Ref);
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
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s322: Ref)
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
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s335: Ref, weiAmount_s335: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s361: Ref, weiAmount_s361: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s369: Ref, weiAmount_s369: int);
procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s385: Ref, tokenAmount_s385: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s398: Ref, tokenAmount_s398: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s406: Ref, weiAmount_s406: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s416: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
modifies __tmp__now;
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
__tmp__now := now;
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
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s591: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer2_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s600: Ref, amount_s600: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s609: Ref, spender_s609: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s618: Ref, amount_s618: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s629: Ref, recipient_s629: Ref, amount_s629: int) returns (__ret_0_: bool);
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
modifies __tmp__now;
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
__tmp__now := now;
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
modifies __tmp__now;
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
__tmp__now := now;
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

procedure {:inline 1} safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s701: Ref, to_s701: Ref, value_s701: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s722: Ref, from_s722: Ref, to_s722: Ref, value_s722: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s759: Ref, spender_s759: Ref, value_s759: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s790: Ref, spender_s790: Ref, value_s790: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s821: Ref, spender_s821: Ref, value_s821: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
__tmp__now := now;
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

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s455: int, b_s455: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s480: int, b_s480: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s514: int, b_s514: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s539: int, b_s539: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s560: int, b_s560: int) returns (__ret_0_: int);
// modifies revert;
var _openingTime_TimedCrowdsale: [Ref]int;
var _closingTime_TimedCrowdsale: [Ref]int;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int);
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int);
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
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
implementation TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int)
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
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
__tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s58, closingTime_s58);
assume ((revert) || ((gas) < (0)));
} else {
call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s58, closingTime_s58);
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
modifies __tmp__now;
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
__tmp__now := now;
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
modifies __tmp__now;
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
__tmp__now := now;
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
modifies __tmp__now;
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
__tmp__now := now;
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
modifies __tmp__now;
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
__tmp__now := now;
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

procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s113: Ref, weiAmount_s113: int);
modifies revert;
procedure {:inline 1} _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s142: int);
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
modifies __tmp__now;
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
modifies __tmp__now;
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
modifies now;
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
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
// const {:existential true} HoudiniB1_Crowdsale: bool;
// const {:existential true} HoudiniB2_Crowdsale: bool;
// procedure BoogieEntry_Crowdsale();
// modifies gas;
// modifies now;
// modifies revert;
// modifies __tmp__Balance;
// modifies __tmp__DType;
// modifies __tmp__Alloc;
// modifies __tmp__balance_ADDR;
// modifies __tmp__Length;
// modifies __tmp__now;
// modifies __tmp___token_Crowdsale;
// modifies __tmp___wallet_Crowdsale;
// modifies __tmp___rate_Crowdsale;
// modifies __tmp___weiRaised_Crowdsale;
// modifies __tmp___notEntered_ReentrancyGuard;
// modifies __tmp___openingTime_TimedCrowdsale;
// modifies __tmp___closingTime_TimedCrowdsale;
// modifies Balance;
// modifies _weiRaised_Crowdsale;
// modifies _wallet_Crowdsale;
// modifies _rate_Crowdsale;
// modifies _token_Crowdsale;
// modifies _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp__now;
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
modifies now;
procedure BoogieEntry_SafeMath();
modifies gas;
modifies now;
procedure main();
modifies gas;
modifies now;
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
modifies now;
procedure CorralEntry_Context();
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
modifies __tmp___notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp__now;
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
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
modifies _notEntered_ReentrancyGuard;
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
procedure CorralChoice_TimedCrowdsale(this: Ref);
modifies gas;
modifies now;
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
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies now;
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
var __tmp__now: int;
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
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref);
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref);
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
modifies __tmp__now;
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
procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s322: Ref);
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
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s322: Ref);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s335: Ref, weiAmount_s335: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s361: Ref, weiAmount_s361: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s369: Ref, weiAmount_s369: int);
procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s385: Ref, tokenAmount_s385: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s398: Ref, tokenAmount_s398: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s406: Ref, weiAmount_s406: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s416: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s701: Ref, to_s701: Ref, value_s701: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s722: Ref, from_s722: Ref, to_s722: Ref, value_s722: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s759: Ref, spender_s759: Ref, value_s759: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s790: Ref, spender_s790: Ref, value_s790: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s821: Ref, spender_s821: Ref, value_s821: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s455: int, b_s455: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s480: int, b_s480: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s514: int, b_s514: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s539: int, b_s539: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s560: int, b_s560: int) returns (__ret_0_: int);
// modifies revert;
procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int);
modifies __tmp___openingTime_TimedCrowdsale;
modifies __tmp___closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int);
modifies _notEntered_ReentrancyGuard;
modifies _openingTime_TimedCrowdsale;
modifies _closingTime_TimedCrowdsale;
modifies revert;
procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int);
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
procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s113: Ref, weiAmount_s113: int);
modifies revert;
procedure {:inline 1} _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s142: int);
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
modifies __tmp__now;
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
modifies __tmp__now;
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

implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref)
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
assume ((rate_s224) >= (0));
if (!((rate_s224) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s224) != (null))) {
revert := true;
return;
}
__var_2 := token_s224;
__var_3 := null;
if (!((token_s224) != (null))) {
revert := true;
return;
}
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__tmp___rate_Crowdsale[this] := 1;
__tmp___wallet_Crowdsale[this] := wallet_s224;
__tmp___token_Crowdsale[this] := token_s224;
}

implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref)
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
assume ((rate_s224) >= (0));
if (!((rate_s224) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s224) != (null))) {
revert := true;
return;
}
__var_2 := token_s224;
__var_3 := null;
if (!((token_s224) != (null))) {
revert := true;
return;
}
assume ((_rate_Crowdsale[this]) >= (0));
_rate_Crowdsale[this] := 1;
_wallet_Crowdsale[this] := wallet_s224;
_token_Crowdsale[this] := token_s224;
}

implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s224, wallet_s224, token_s224);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s224: int, wallet_s224: Ref, token_s224: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s224, wallet_s224, token_s224);
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

implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s322: Ref)
{
var weiAmount_s321: int;
var tokens_s321: int;
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
assume ((weiAmount_s321) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s321 := msgvalue_MSG;
assume ((weiAmount_s321) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s321) >= (0));
assume ((weiAmount_s321) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call tokens_s321 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s321);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call tokens_s321 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s321);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s321 := tokens_s321;
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s321) >= (0));
call __var_5 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s321);
if (revert) {
return;
}
__tmp___weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s321) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, tokens_s321);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, tokens_s321);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s321) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
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
assume ((weiAmount_s321) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
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

implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s322: Ref)
{
var weiAmount_s321: int;
var tokens_s321: int;
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
assume ((weiAmount_s321) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s321 := msgvalue_MSG;
assume ((weiAmount_s321) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s321) >= (0));
assume ((weiAmount_s321) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call tokens_s321 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s321);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call tokens_s321 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s321);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s321 := tokens_s321;
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s321) >= (0));
call __var_5 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s321);
if (revert) {
return;
}
_weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s321) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, tokens_s321);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, tokens_s321);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokensPurchased_Crowdsale"} (true);
assume ((weiAmount_s321) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
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
assume ((weiAmount_s321) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322, weiAmount_s321);
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

implementation _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s335: Ref, weiAmount_s335: int)
{
assume ((weiAmount_s335) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s335, weiAmount_s335);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s335, weiAmount_s335);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s335: Ref, weiAmount_s335: int)
{
assume ((weiAmount_s335) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s335, weiAmount_s335);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s335, weiAmount_s335);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s361: Ref, weiAmount_s361: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s361) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s361) >= (0));
if (!((weiAmount_s361) != (0))) {
revert := true;
return;
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s361: Ref, weiAmount_s361: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s361) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s361) >= (0));
if (!((weiAmount_s361) != (0))) {
revert := true;
return;
}
}

implementation _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s369: Ref, weiAmount_s369: int)
{
}

implementation _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s369: Ref, weiAmount_s369: int)
{
}

implementation _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s385: Ref, tokenAmount_s385: int)
{
assume ((tokenAmount_s385) >= (0));
call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s385, tokenAmount_s385);
if (revert) {
return;
}
}

implementation _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s385: Ref, tokenAmount_s385: int)
{
assume ((tokenAmount_s385) >= (0));
call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s385, tokenAmount_s385);
if (revert) {
return;
}
}

implementation _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s398: Ref, tokenAmount_s398: int)
{
assume ((tokenAmount_s398) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s398, tokenAmount_s398);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s398, tokenAmount_s398);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s398: Ref, tokenAmount_s398: int)
{
assume ((tokenAmount_s398) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s398, tokenAmount_s398);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s398, tokenAmount_s398);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s406: Ref, weiAmount_s406: int)
{
}

implementation _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s406: Ref, weiAmount_s406: int)
{
}

implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s416: int) returns (__ret_0_: int)
{
assume ((weiAmount_s416) >= (0));
__ret_0_ := weiAmount_s416;
return;
}

implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s416: int) returns (__ret_0_: int)
{
assume ((weiAmount_s416) >= (0));
__ret_0_ := weiAmount_s416;
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

implementation safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s701: Ref, to_s701: Ref, value_s701: int)
{
var __var_9: bool;
var __var_10: int;
assume ((value_s701) >= (0));
call __var_9 := transfer2_IERC20(token_s701, this, __var_10, to_s701, value_s701);
if (!(__var_9)) {
revert := true;
return;
}
}

implementation safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s701: Ref, to_s701: Ref, value_s701: int)
{
var __var_9: bool;
var __var_10: int;
assume ((value_s701) >= (0));
call __var_9 := transfer2_IERC20(token_s701, this, __var_10, to_s701, value_s701);
if (!(__var_9)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s722: Ref, from_s722: Ref, to_s722: Ref, value_s722: int)
{
var __var_11: bool;
var __var_12: int;
assume ((value_s722) >= (0));
call __var_11 := transferFrom_IERC20(token_s722, this, __var_12, from_s722, to_s722, value_s722);
if (!(__var_11)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s722: Ref, from_s722: Ref, to_s722: Ref, value_s722: int)
{
var __var_11: bool;
var __var_12: int;
assume ((value_s722) >= (0));
call __var_11 := transferFrom_IERC20(token_s722, this, __var_12, from_s722, to_s722, value_s722);
if (!(__var_11)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s759: Ref, spender_s759: Ref, value_s759: int)
{
var __var_13: int;
var __var_14: int;
var __var_15: Ref;
var __var_16: bool;
var __var_17: int;
assume ((value_s759) >= (0));
assume ((__var_13) >= (0));
__var_15 := this;
call __var_13 := allowance_IERC20(token_s759, this, __var_14, this, spender_s759);
assume ((__var_13) >= (0));
if (!((((value_s759) == (0))) || (((__var_13) == (0))))) {
revert := true;
return;
}
assume ((value_s759) >= (0));
call __var_16 := approve_IERC20(token_s759, this, __var_17, spender_s759, value_s759);
if (!(__var_16)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s759: Ref, spender_s759: Ref, value_s759: int)
{
var __var_13: int;
var __var_14: int;
var __var_15: Ref;
var __var_16: bool;
var __var_17: int;
assume ((value_s759) >= (0));
assume ((__var_13) >= (0));
__var_15 := this;
call __var_13 := allowance_IERC20(token_s759, this, __var_14, this, spender_s759);
assume ((__var_13) >= (0));
if (!((((value_s759) == (0))) || (((__var_13) == (0))))) {
revert := true;
return;
}
assume ((value_s759) >= (0));
call __var_16 := approve_IERC20(token_s759, this, __var_17, spender_s759, value_s759);
if (!(__var_16)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s790: Ref, spender_s790: Ref, value_s790: int)
{
var newAllowance_s789: int;
var __var_18: int;
var __var_19: int;
var __var_20: Ref;
var __var_21: bool;
var __var_22: int;
assume ((newAllowance_s789) >= (0));
assume ((__var_18) >= (0));
__var_20 := this;
call __var_18 := allowance_IERC20(token_s790, this, __var_19, this, spender_s790);
assume ((__var_18) >= (0));
assume ((value_s790) >= (0));
call newAllowance_s789 := add_SafeMath__fail(this, this, 0, __var_18, value_s790);
if (revert) {
return;
}
newAllowance_s789 := newAllowance_s789;
assume ((newAllowance_s789) >= (0));
call __var_21 := approve_IERC20(token_s790, this, __var_22, spender_s790, newAllowance_s789);
if (!(__var_21)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s790: Ref, spender_s790: Ref, value_s790: int)
{
var newAllowance_s789: int;
var __var_18: int;
var __var_19: int;
var __var_20: Ref;
var __var_21: bool;
var __var_22: int;
assume ((newAllowance_s789) >= (0));
assume ((__var_18) >= (0));
__var_20 := this;
call __var_18 := allowance_IERC20(token_s790, this, __var_19, this, spender_s790);
assume ((__var_18) >= (0));
assume ((value_s790) >= (0));
call newAllowance_s789 := add_SafeMath__success(this, this, 0, __var_18, value_s790);
if (revert) {
return;
}
newAllowance_s789 := newAllowance_s789;
assume ((newAllowance_s789) >= (0));
call __var_21 := approve_IERC20(token_s790, this, __var_22, spender_s790, newAllowance_s789);
if (!(__var_21)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s821: Ref, spender_s821: Ref, value_s821: int)
{
var newAllowance_s820: int;
var __var_23: int;
var __var_24: int;
var __var_25: Ref;
var __var_26: bool;
var __var_27: int;
assume ((newAllowance_s820) >= (0));
assume ((__var_23) >= (0));
__var_25 := this;
call __var_23 := allowance_IERC20(token_s821, this, __var_24, this, spender_s821);
assume ((__var_23) >= (0));
assume ((value_s821) >= (0));
call newAllowance_s820 := sub_SafeMath__fail(this, this, 0, __var_23, value_s821);
if (revert) {
return;
}
newAllowance_s820 := newAllowance_s820;
assume ((newAllowance_s820) >= (0));
call __var_26 := approve_IERC20(token_s821, this, __var_27, spender_s821, newAllowance_s820);
if (!(__var_26)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s821: Ref, spender_s821: Ref, value_s821: int)
{
var newAllowance_s820: int;
var __var_23: int;
var __var_24: int;
var __var_25: Ref;
var __var_26: bool;
var __var_27: int;
assume ((newAllowance_s820) >= (0));
assume ((__var_23) >= (0));
__var_25 := this;
call __var_23 := allowance_IERC20(token_s821, this, __var_24, this, spender_s821);
assume ((__var_23) >= (0));
assume ((value_s821) >= (0));
call newAllowance_s820 := sub_SafeMath__success(this, this, 0, __var_23, value_s821);
if (revert) {
return;
}
newAllowance_s820 := newAllowance_s820;
assume ((newAllowance_s820) >= (0));
call __var_26 := approve_IERC20(token_s821, this, __var_27, spender_s821, newAllowance_s820);
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s455: int, b_s455: int) returns (__ret_0_: int)
{
var c_s454: int;
assume ((c_s454) >= (0));
assume ((a_s455) >= (0));
assume ((b_s455) >= (0));
assume (((a_s455) + (b_s455)) >= (0));
c_s454 := (a_s455) + (b_s455);
assume ((c_s454) >= (0));
assume ((a_s455) >= (0));
if (!((c_s454) >= (a_s455))) {
revert := true;
return;
}
assume ((c_s454) >= (0));
__ret_0_ := c_s454;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s455: int, b_s455: int) returns (__ret_0_: int)
{
var c_s454: int;
assume ((c_s454) >= (0));
assume ((a_s455) >= (0));
assume ((b_s455) >= (0));
assume (((a_s455) + (b_s455)) >= (0));
c_s454 := (a_s455) + (b_s455);
assume ((c_s454) >= (0));
assume ((a_s455) >= (0));
if (!((c_s454) >= (a_s455))) {
revert := true;
return;
}
assume ((c_s454) >= (0));
__ret_0_ := c_s454;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s480: int, b_s480: int) returns (__ret_0_: int)
{
var c_s479: int;
assume ((b_s480) >= (0));
assume ((a_s480) >= (0));
if (!((b_s480) <= (a_s480))) {
revert := true;
return;
}
assume ((c_s479) >= (0));
assume ((a_s480) >= (0));
assume ((b_s480) >= (0));
assume (((a_s480) - (b_s480)) >= (0));
c_s479 := (a_s480) - (b_s480);
assume ((c_s479) >= (0));
__ret_0_ := c_s479;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s480: int, b_s480: int) returns (__ret_0_: int)
{
var c_s479: int;
assume ((b_s480) >= (0));
assume ((a_s480) >= (0));
if (!((b_s480) <= (a_s480))) {
revert := true;
return;
}
assume ((c_s479) >= (0));
assume ((a_s480) >= (0));
assume ((b_s480) >= (0));
assume (((a_s480) - (b_s480)) >= (0));
c_s479 := (a_s480) - (b_s480);
assume ((c_s479) >= (0));
__ret_0_ := c_s479;
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s514: int, b_s514: int) returns (__ret_0_: int)
// {
// var c_s513: int;
// assume ((a_s514) >= (0));
// if ((a_s514) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s513) >= (0));
// assume ((a_s514) >= (0));
// assume ((b_s514) >= (0));
// assume (((a_s514) * (b_s514)) >= (0));
// c_s513 := (a_s514) * (b_s514);
// assume ((c_s513) >= (0));
// assume ((a_s514) >= (0));
// assume (((c_s513) div (a_s514)) >= (0));
// assume ((b_s514) >= (0));
// if (!(((c_s513) div (a_s514)) == (b_s514))) {
// revert := true;
// return;
// }
// assume ((c_s513) >= (0));
// __ret_0_ := c_s513;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s514: int, b_s514: int) returns (__ret_0_: int)
// {
// var c_s513: int;
// assume ((a_s514) >= (0));
// if ((a_s514) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s513) >= (0));
// assume ((a_s514) >= (0));
// assume ((b_s514) >= (0));
// assume (((a_s514) * (b_s514)) >= (0));
// c_s513 := (a_s514) * (b_s514);
// assume ((c_s513) >= (0));
// assume ((a_s514) >= (0));
// assume (((c_s513) div (a_s514)) >= (0));
// assume ((b_s514) >= (0));
// if (!(((c_s513) div (a_s514)) == (b_s514))) {
// revert := true;
// return;
// }
// assume ((c_s513) >= (0));
// __ret_0_ := c_s513;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s539: int, b_s539: int) returns (__ret_0_: int)
// {
// var c_s538: int;
// assume ((b_s539) >= (0));
// if (!((b_s539) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s538) >= (0));
// assume ((a_s539) >= (0));
// assume ((b_s539) >= (0));
// assume (((a_s539) div (b_s539)) >= (0));
// c_s538 := (a_s539) div (b_s539);
// assume ((c_s538) >= (0));
// __ret_0_ := c_s538;
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s539: int, b_s539: int) returns (__ret_0_: int)
// {
// var c_s538: int;
// assume ((b_s539) >= (0));
// if (!((b_s539) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s538) >= (0));
// assume ((a_s539) >= (0));
// assume ((b_s539) >= (0));
// assume (((a_s539) div (b_s539)) >= (0));
// c_s538 := (a_s539) div (b_s539);
// assume ((c_s538) >= (0));
// __ret_0_ := c_s538;
// return;
// }

// implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s560: int, b_s560: int) returns (__ret_0_: int)
// {
// assume ((b_s560) >= (0));
// if (!((b_s560) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s560) >= (0));
// assume ((b_s560) >= (0));
// assume (((a_s560) mod (b_s560)) >= (0));
// __ret_0_ := (a_s560) mod (b_s560);
// return;
// }

// implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s560: int, b_s560: int) returns (__ret_0_: int)
// {
// assume ((b_s560) >= (0));
// if (!((b_s560) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s560) >= (0));
// assume ((b_s560) >= (0));
// assume (((a_s560) mod (b_s560)) >= (0));
// __ret_0_ := (a_s560) mod (b_s560);
// return;
// }

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___openingTime_TimedCrowdsale[this] := 0;
__tmp___closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s58) >= (0));
assume ((__tmp__now) >= (0));
if (!((openingTime_s58) >= (__tmp__now))) {
revert := true;
return;
}
assume ((closingTime_s58) >= (0));
assume ((openingTime_s58) >= (0));
if (!((closingTime_s58) > (openingTime_s58))) {
revert := true;
return;
}
assume ((__tmp___openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s58) >= (0));
__tmp___openingTime_TimedCrowdsale[this] := openingTime_s58;
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s58) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := closingTime_s58;
}

implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
_openingTime_TimedCrowdsale[this] := 0;
_closingTime_TimedCrowdsale[this] := 0;
// end of initialization
assume ((openingTime_s58) >= (0));
assume ((now) >= (0));
if (!((openingTime_s58) >= (now))) {
revert := true;
return;
}
assume ((closingTime_s58) >= (0));
assume ((openingTime_s58) >= (0));
if (!((closingTime_s58) > (openingTime_s58))) {
revert := true;
return;
}
assume ((_openingTime_TimedCrowdsale[this]) >= (0));
assume ((openingTime_s58) >= (0));
_openingTime_TimedCrowdsale[this] := openingTime_s58;
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((closingTime_s58) >= (0));
_closingTime_TimedCrowdsale[this] := closingTime_s58;
}

implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s58, closingTime_s58);
if (revert) {
return;
}
}

implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s58: int, closingTime_s58: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s58, closingTime_s58);
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

implementation _preValidatePurchase_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s113: Ref, weiAmount_s113: int)
{
call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s113) >= (0));
if ((__tmp__DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s113, weiAmount_s113);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s113: Ref, weiAmount_s113: int)
{
call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s113) >= (0));
if ((DType[this]) == (TimedCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s113, weiAmount_s113);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s142: int)
{
var __var_29: bool;
call __var_29 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_29))) {
revert := true;
return;
}
assume ((newClosingTime_s142) >= (0));
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s142) > (__tmp___closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assume ((__tmp___closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s142) >= (0));
__tmp___closingTime_TimedCrowdsale[this] := newClosingTime_s142;
}

implementation _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s142: int)
{
var __var_29: bool;
call __var_29 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!(__var_29))) {
revert := true;
return;
}
assume ((newClosingTime_s142) >= (0));
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
if (!((newClosingTime_s142) > (_closingTime_TimedCrowdsale[this]))) {
revert := true;
return;
}
assert {:EventEmitted "TimedCrowdsaleExtended_TimedCrowdsale"} (true);
assume ((_closingTime_TimedCrowdsale[this]) >= (0));
assume ((newClosingTime_s142) >= (0));
_closingTime_TimedCrowdsale[this] := newClosingTime_s142;
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
var __snap___tmp__now: int;
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
__snap___tmp__now := __tmp__now;
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
__tmp__now := __snap___tmp__now;
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
__tmp__now := now;
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
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (TimedCrowdsale)));
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

// implementation BoogieEntry_Crowdsale()
// {
// var this: Ref;
// var msgsender_MSG: Ref;
// var msgvalue_MSG: int;
// var choice: int;
// var rate_s224: int;
// var wallet_s224: Ref;
// var token_s224: Ref;
// var __ret_0_token: Ref;
// var __ret_0_wallet: Ref;
// var __ret_0_rate: int;
// var __ret_0_weiRaised: int;
// var beneficiary_s322: Ref;
// var tmpNow: int;
// assume ((now) >= (0));
// assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (TimedCrowdsale)));
// gas := (gas) - (53000);
// call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s224, wallet_s224, token_s224);
// assume ((!(revert)) && ((gas) >= (0)));
// while (true)
//   invariant (HoudiniB1_Crowdsale) ==> ((_wallet_Crowdsale[this]) == (null));
//   invariant (HoudiniB2_Crowdsale) ==> ((_wallet_Crowdsale[this]) != (null));
// {
// havoc msgsender_MSG;
// havoc msgvalue_MSG;
// havoc choice;
// havoc rate_s224;
// havoc wallet_s224;
// havoc token_s224;
// havoc __ret_0_token;
// havoc __ret_0_wallet;
// havoc __ret_0_rate;
// havoc __ret_0_weiRaised;
// havoc beneficiary_s322;
// havoc tmpNow;
// havoc gas;
// assume (((gas) > (4000000)) && ((gas) <= (8000000)));
// tmpNow := now;
// havoc now;
// assume ((now) > (tmpNow));
// if ((choice) == (5)) {
// gas := (gas) - (21000);
// call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
// } else if ((choice) == (4)) {
// gas := (gas) - (21000);
// call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
// } else if ((choice) == (3)) {
// gas := (gas) - (21000);
// call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
// } else if ((choice) == (2)) {
// gas := (gas) - (21000);
// call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
// } else if ((choice) == (1)) {
// gas := (gas) - (21000);
// call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322);
// }
// }
// }

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
assume ((((DType[this]) == (Crowdsale)) || ((DType[this]) == (ReentrancyGuard))) || ((DType[this]) == (TimedCrowdsale)));
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

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s224: int;
var wallet_s224: Ref;
var token_s224: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s322: Ref;
var openingTime_s58: int;
var closingTime_s58: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (TimedCrowdsale));
gas := (gas) - (53000);
call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s58, closingTime_s58);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s224;
havoc wallet_s224;
havoc token_s224;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s322;
havoc openingTime_s58;
havoc closingTime_s58;
havoc __ret_0_openingTime;
havoc __ret_0_closingTime;
havoc __ret_0_isOpen;
havoc __ret_0_hasClosed;
havoc tmpNow;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322);
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
var rate_s224: int;
var wallet_s224: Ref;
var token_s224: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s322: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s224;
havoc wallet_s224;
havoc token_s224;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s322;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322);
}
}

implementation CorralEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var rate_s224: int;
var wallet_s224: Ref;
var token_s224: Ref;
assume ((now) >= (0));
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (TimedCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s224, wallet_s224, token_s224);
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

implementation CorralChoice_TimedCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s224: int;
var wallet_s224: Ref;
var token_s224: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s322: Ref;
var openingTime_s58: int;
var closingTime_s58: int;
var __ret_0_openingTime: int;
var __ret_0_closingTime: int;
var __ret_0_isOpen: bool;
var __ret_0_hasClosed: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s224;
havoc wallet_s224;
havoc token_s224;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s322;
havoc openingTime_s58;
havoc closingTime_s58;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s322);
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
var openingTime_s58: int;
var closingTime_s58: int;
assume ((now) >= (0));
assume ((DType[this]) == (TimedCrowdsale));
gas := (gas) - (53000);
call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s58, closingTime_s58);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_TimedCrowdsale(this);
}
}


