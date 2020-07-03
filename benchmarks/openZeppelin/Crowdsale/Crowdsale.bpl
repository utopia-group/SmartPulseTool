type Ref = int;
type ContractName = int;
var null: Ref;
var Context: ContractName;
var Crowdsale: ContractName;
var IERC20: ContractName;
var ReentrancyGuard: ContractName;
var SafeERC20: ContractName;
var SafeMath: ContractName;
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
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref);
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
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref)
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
call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s80, wallet_s80, token_s80);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s80, wallet_s80, token_s80);
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
call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s178: Ref);
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
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s178: Ref)
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
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s191: Ref, weiAmount_s191: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s217: Ref, weiAmount_s217: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s225: Ref, weiAmount_s225: int);
procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, tokenAmount_s241: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, tokenAmount_s254: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s262: Ref, weiAmount_s262: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s272: int) returns (__ret_0_: int);
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
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s314: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer2_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s323: Ref, amount_s323: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s332: Ref, spender_s332: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s341: Ref, amount_s341: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s352: Ref, recipient_s352: Ref, amount_s352: int) returns (__ret_0_: bool);
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
call SafeERC20_SafeERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s424: Ref, to_s424: Ref, value_s424: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s445: Ref, from_s445: Ref, to_s445: Ref, value_s445: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s482: Ref, spender_s482: Ref, value_s482: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s513: Ref, spender_s513: Ref, value_s513: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s544: Ref, spender_s544: Ref, value_s544: int);
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
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s572: int, b_s572: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s597: int, b_s597: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s631: int, b_s631: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s656: int, b_s656: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s677: int, b_s677: int) returns (__ret_0_: int);
// modifies revert;
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
// const {:existential true} HoudiniB1_Crowdsale: bool;
// const {:existential true} HoudiniB2_Crowdsale: bool;
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
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
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
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_SafeERC20();
modifies gas;
modifies now;
procedure BoogieEntry_SafeMath();
modifies gas;
modifies now;
procedure nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _notEntered_ReentrancyGuard;
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
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref);
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref);
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
procedure {:inline 1} token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s178: Ref);
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
procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s178: Ref);
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
procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s191: Ref, weiAmount_s191: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s217: Ref, weiAmount_s217: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s225: Ref, weiAmount_s225: int);
procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, tokenAmount_s241: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, tokenAmount_s254: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s262: Ref, weiAmount_s262: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s272: int) returns (__ret_0_: int);
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
procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s424: Ref, to_s424: Ref, value_s424: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s445: Ref, from_s445: Ref, to_s445: Ref, value_s445: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s482: Ref, spender_s482: Ref, value_s482: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s513: Ref, spender_s513: Ref, value_s513: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s544: Ref, spender_s544: Ref, value_s544: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s572: int, b_s572: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s597: int, b_s597: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s631: int, b_s631: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s656: int, b_s656: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s677: int, b_s677: int) returns (__ret_0_: int);
// modifies revert;
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
modifies revert;
modifies gas;
procedure nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
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

implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref)
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
assume ((rate_s80) >= (0));
if (!((rate_s80) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s80) != (null))) {
revert := true;
return;
}
__var_2 := token_s80;
__var_3 := null;
if (!((token_s80) != (null))) {
revert := true;
return;
}
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__tmp___rate_Crowdsale[this] := 1;
__tmp___wallet_Crowdsale[this] := wallet_s80;
__tmp___token_Crowdsale[this] := token_s80;
}

implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref)
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
assume ((rate_s80) >= (0));
if (!((rate_s80) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s80) != (null))) {
revert := true;
return;
}
__var_2 := token_s80;
__var_3 := null;
if (!((token_s80) != (null))) {
revert := true;
return;
}
assume ((_rate_Crowdsale[this]) >= (0));
_rate_Crowdsale[this] := 1;
_wallet_Crowdsale[this] := wallet_s80;
_token_Crowdsale[this] := token_s80;
}

implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s80, wallet_s80, token_s80);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s80: int, wallet_s80: Ref, token_s80: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s80, wallet_s80, token_s80);
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
if ((__tmp__DType[this]) == (Crowdsale)) {
call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_4);
if (revert) {
return;
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
if ((DType[this]) == (Crowdsale)) {
call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_4);
if (revert) {
return;
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

implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s178: Ref)
{
var weiAmount_s177: int;
var tokens_s177: int;
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
assume ((weiAmount_s177) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s177 := msgvalue_MSG;
assume ((weiAmount_s177) >= (0));
call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, weiAmount_s177);
if (revert) {
return;
}
assume ((tokens_s177) >= (0));
assume ((weiAmount_s177) >= (0));
call tokens_s177 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s177);
if (revert) {
return;
}
tokens_s177 := tokens_s177;
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s177) >= (0));
call __var_5 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s177);
if (revert) {
return;
}
__tmp___weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s177) >= (0));
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, tokens_s177);
if (revert) {
return;
}
assume ((weiAmount_s177) >= (0));
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, weiAmount_s177);
if (revert) {
return;
}
call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s177) >= (0));
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, weiAmount_s177);
if (revert) {
return;
}
call nonReentrant_post__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s178: Ref)
{
var weiAmount_s177: int;
var tokens_s177: int;
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
assume ((weiAmount_s177) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s177 := msgvalue_MSG;
assume ((weiAmount_s177) >= (0));
call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, weiAmount_s177);
if (revert) {
return;
}
assume ((tokens_s177) >= (0));
assume ((weiAmount_s177) >= (0));
call tokens_s177 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s177);
if (revert) {
return;
}
tokens_s177 := tokens_s177;
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s177) >= (0));
call __var_5 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s177);
if (revert) {
return;
}
_weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s177) >= (0));
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, tokens_s177);
if (revert) {
return;
}
assert {:EventEmitted "TokensPurchased_Crowdsale"} (true);
assume ((weiAmount_s177) >= (0));
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, weiAmount_s177);
if (revert) {
return;
}
call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((weiAmount_s177) >= (0));
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178, weiAmount_s177);
if (revert) {
return;
}
call nonReentrant_post__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s191: Ref, weiAmount_s191: int)
{
assume ((weiAmount_s191) >= (0));
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s191, weiAmount_s191);
if (revert) {
return;
}
}

implementation _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s191: Ref, weiAmount_s191: int)
{
assume ((weiAmount_s191) >= (0));
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s191, weiAmount_s191);
if (revert) {
return;
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s217: Ref, weiAmount_s217: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s217) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s217) >= (0));
if (!((weiAmount_s217) != (0))) {
revert := true;
return;
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s217: Ref, weiAmount_s217: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s217) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s217) >= (0));
if (!((weiAmount_s217) != (0))) {
revert := true;
return;
}
}

implementation _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s225: Ref, weiAmount_s225: int)
{
}

implementation _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s225: Ref, weiAmount_s225: int)
{
}

implementation _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, tokenAmount_s241: int)
{
assume ((tokenAmount_s241) >= (0));
call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s241, tokenAmount_s241);
if (revert) {
return;
}
}

implementation _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, tokenAmount_s241: int)
{
assume ((tokenAmount_s241) >= (0));
call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s241, tokenAmount_s241);
if (revert) {
return;
}
}

implementation _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, tokenAmount_s254: int)
{
assume ((tokenAmount_s254) >= (0));
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s254, tokenAmount_s254);
if (revert) {
return;
}
}

implementation _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, tokenAmount_s254: int)
{
assume ((tokenAmount_s254) >= (0));
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s254, tokenAmount_s254);
if (revert) {
return;
}
}

implementation _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s262: Ref, weiAmount_s262: int)
{
}

implementation _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s262: Ref, weiAmount_s262: int)
{
}

implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s272: int) returns (__ret_0_: int)
{
assume ((weiAmount_s272) >= (0));
__ret_0_ := weiAmount_s272;
return;
}

implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s272: int) returns (__ret_0_: int)
{
assume ((weiAmount_s272) >= (0));
__ret_0_ := weiAmount_s272;
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
__var_7 := (__var_7) - (gas);
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
__var_7 := (__var_7) - (gas);
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

implementation safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s424: Ref, to_s424: Ref, value_s424: int)
{
var __var_9: bool;
var __var_10: int;
assume ((value_s424) >= (0));
call __var_9 := transfer2_IERC20(token_s424, this, __var_10, to_s424, value_s424);
if (!(__var_9)) {
revert := true;
return;
}
}

implementation safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s424: Ref, to_s424: Ref, value_s424: int)
{
var __var_9: bool;
var __var_10: int;
assume ((value_s424) >= (0));
call __var_9 := transfer2_IERC20(token_s424, this, __var_10, to_s424, value_s424);
if (!(__var_9)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s445: Ref, from_s445: Ref, to_s445: Ref, value_s445: int)
{
var __var_11: bool;
var __var_12: int;
assume ((value_s445) >= (0));
call __var_11 := transferFrom_IERC20(token_s445, this, __var_12, from_s445, to_s445, value_s445);
if (!(__var_11)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s445: Ref, from_s445: Ref, to_s445: Ref, value_s445: int)
{
var __var_11: bool;
var __var_12: int;
assume ((value_s445) >= (0));
call __var_11 := transferFrom_IERC20(token_s445, this, __var_12, from_s445, to_s445, value_s445);
if (!(__var_11)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s482: Ref, spender_s482: Ref, value_s482: int)
{
var __var_13: int;
var __var_14: int;
var __var_15: Ref;
var __var_16: bool;
var __var_17: int;
assume ((value_s482) >= (0));
assume ((__var_13) >= (0));
__var_15 := this;
call __var_13 := allowance_IERC20(token_s482, this, __var_14, this, spender_s482);
assume ((__var_13) >= (0));
if (!((((value_s482) == (0))) || (((__var_13) == (0))))) {
revert := true;
return;
}
assume ((value_s482) >= (0));
call __var_16 := approve_IERC20(token_s482, this, __var_17, spender_s482, value_s482);
if (!(__var_16)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s482: Ref, spender_s482: Ref, value_s482: int)
{
var __var_13: int;
var __var_14: int;
var __var_15: Ref;
var __var_16: bool;
var __var_17: int;
assume ((value_s482) >= (0));
assume ((__var_13) >= (0));
__var_15 := this;
call __var_13 := allowance_IERC20(token_s482, this, __var_14, this, spender_s482);
assume ((__var_13) >= (0));
if (!((((value_s482) == (0))) || (((__var_13) == (0))))) {
revert := true;
return;
}
assume ((value_s482) >= (0));
call __var_16 := approve_IERC20(token_s482, this, __var_17, spender_s482, value_s482);
if (!(__var_16)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s513: Ref, spender_s513: Ref, value_s513: int)
{
var newAllowance_s512: int;
var __var_18: int;
var __var_19: int;
var __var_20: Ref;
var __var_21: bool;
var __var_22: int;
assume ((newAllowance_s512) >= (0));
assume ((__var_18) >= (0));
__var_20 := this;
call __var_18 := allowance_IERC20(token_s513, this, __var_19, this, spender_s513);
assume ((__var_18) >= (0));
assume ((value_s513) >= (0));
call newAllowance_s512 := add_SafeMath__fail(this, this, 0, __var_18, value_s513);
if (revert) {
return;
}
newAllowance_s512 := newAllowance_s512;
assume ((newAllowance_s512) >= (0));
call __var_21 := approve_IERC20(token_s513, this, __var_22, spender_s513, newAllowance_s512);
if (!(__var_21)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s513: Ref, spender_s513: Ref, value_s513: int)
{
var newAllowance_s512: int;
var __var_18: int;
var __var_19: int;
var __var_20: Ref;
var __var_21: bool;
var __var_22: int;
assume ((newAllowance_s512) >= (0));
assume ((__var_18) >= (0));
__var_20 := this;
call __var_18 := allowance_IERC20(token_s513, this, __var_19, this, spender_s513);
assume ((__var_18) >= (0));
assume ((value_s513) >= (0));
call newAllowance_s512 := add_SafeMath__success(this, this, 0, __var_18, value_s513);
if (revert) {
return;
}
newAllowance_s512 := newAllowance_s512;
assume ((newAllowance_s512) >= (0));
call __var_21 := approve_IERC20(token_s513, this, __var_22, spender_s513, newAllowance_s512);
if (!(__var_21)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s544: Ref, spender_s544: Ref, value_s544: int)
{
var newAllowance_s543: int;
var __var_23: int;
var __var_24: int;
var __var_25: Ref;
var __var_26: bool;
var __var_27: int;
assume ((newAllowance_s543) >= (0));
assume ((__var_23) >= (0));
__var_25 := this;
call __var_23 := allowance_IERC20(token_s544, this, __var_24, this, spender_s544);
assume ((__var_23) >= (0));
assume ((value_s544) >= (0));
call newAllowance_s543 := sub_SafeMath__fail(this, this, 0, __var_23, value_s544);
if (revert) {
return;
}
newAllowance_s543 := newAllowance_s543;
assume ((newAllowance_s543) >= (0));
call __var_26 := approve_IERC20(token_s544, this, __var_27, spender_s544, newAllowance_s543);
if (!(__var_26)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s544: Ref, spender_s544: Ref, value_s544: int)
{
var newAllowance_s543: int;
var __var_23: int;
var __var_24: int;
var __var_25: Ref;
var __var_26: bool;
var __var_27: int;
assume ((newAllowance_s543) >= (0));
assume ((__var_23) >= (0));
__var_25 := this;
call __var_23 := allowance_IERC20(token_s544, this, __var_24, this, spender_s544);
assume ((__var_23) >= (0));
assume ((value_s544) >= (0));
call newAllowance_s543 := sub_SafeMath__success(this, this, 0, __var_23, value_s544);
if (revert) {
return;
}
newAllowance_s543 := newAllowance_s543;
assume ((newAllowance_s543) >= (0));
call __var_26 := approve_IERC20(token_s544, this, __var_27, spender_s544, newAllowance_s543);
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s572: int, b_s572: int) returns (__ret_0_: int)
{
var c_s571: int;
assume ((c_s571) >= (0));
assume ((a_s572) >= (0));
assume ((b_s572) >= (0));
assume (((a_s572) + (b_s572)) >= (0));
c_s571 := (a_s572) + (b_s572);
assume ((c_s571) >= (0));
assume ((a_s572) >= (0));
if (!((c_s571) >= (a_s572))) {
revert := true;
return;
}
assume ((c_s571) >= (0));
__ret_0_ := c_s571;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s572: int, b_s572: int) returns (__ret_0_: int)
{
var c_s571: int;
assume ((c_s571) >= (0));
assume ((a_s572) >= (0));
assume ((b_s572) >= (0));
assume (((a_s572) + (b_s572)) >= (0));
c_s571 := (a_s572) + (b_s572);
assume ((c_s571) >= (0));
assume ((a_s572) >= (0));
if (!((c_s571) >= (a_s572))) {
revert := true;
return;
}
assume ((c_s571) >= (0));
__ret_0_ := c_s571;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s597: int, b_s597: int) returns (__ret_0_: int)
{
var c_s596: int;
assume ((b_s597) >= (0));
assume ((a_s597) >= (0));
if (!((b_s597) <= (a_s597))) {
revert := true;
return;
}
assume ((c_s596) >= (0));
assume ((a_s597) >= (0));
assume ((b_s597) >= (0));
assume (((a_s597) - (b_s597)) >= (0));
c_s596 := (a_s597) - (b_s597);
assume ((c_s596) >= (0));
__ret_0_ := c_s596;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s597: int, b_s597: int) returns (__ret_0_: int)
{
var c_s596: int;
assume ((b_s597) >= (0));
assume ((a_s597) >= (0));
if (!((b_s597) <= (a_s597))) {
revert := true;
return;
}
assume ((c_s596) >= (0));
assume ((a_s597) >= (0));
assume ((b_s597) >= (0));
assume (((a_s597) - (b_s597)) >= (0));
c_s596 := (a_s597) - (b_s597);
assume ((c_s596) >= (0));
__ret_0_ := c_s596;
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s631: int, b_s631: int) returns (__ret_0_: int)
// {
// var c_s630: int;
// assume ((a_s631) >= (0));
// if ((a_s631) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s630) >= (0));
// assume ((a_s631) >= (0));
// assume ((b_s631) >= (0));
// assume (((a_s631) * (b_s631)) >= (0));
// c_s630 := (a_s631) * (b_s631);
// assume ((c_s630) >= (0));
// assume ((a_s631) >= (0));
// assume (((c_s630) div (a_s631)) >= (0));
// assume ((b_s631) >= (0));
// if (!(((c_s630) div (a_s631)) == (b_s631))) {
// revert := true;
// return;
// }
// assume ((c_s630) >= (0));
// __ret_0_ := c_s630;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s631: int, b_s631: int) returns (__ret_0_: int)
// {
// var c_s630: int;
// assume ((a_s631) >= (0));
// if ((a_s631) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s630) >= (0));
// assume ((a_s631) >= (0));
// assume ((b_s631) >= (0));
// assume (((a_s631) * (b_s631)) >= (0));
// c_s630 := (a_s631) * (b_s631);
// assume ((c_s630) >= (0));
// assume ((a_s631) >= (0));
// assume (((c_s630) div (a_s631)) >= (0));
// assume ((b_s631) >= (0));
// if (!(((c_s630) div (a_s631)) == (b_s631))) {
// revert := true;
// return;
// }
// assume ((c_s630) >= (0));
// __ret_0_ := c_s630;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s656: int, b_s656: int) returns (__ret_0_: int)
// {
// var c_s655: int;
// assume ((b_s656) >= (0));
// if (!((b_s656) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s655) >= (0));
// assume ((a_s656) >= (0));
// assume ((b_s656) >= (0));
// assume (((a_s656) div (b_s656)) >= (0));
// c_s655 := (a_s656) div (b_s656);
// assume ((c_s655) >= (0));
// __ret_0_ := c_s655;
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s656: int, b_s656: int) returns (__ret_0_: int)
// {
// var c_s655: int;
// assume ((b_s656) >= (0));
// if (!((b_s656) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s655) >= (0));
// assume ((a_s656) >= (0));
// assume ((b_s656) >= (0));
// assume (((a_s656) div (b_s656)) >= (0));
// c_s655 := (a_s656) div (b_s656);
// assume ((c_s655) >= (0));
// __ret_0_ := c_s655;
// return;
// }

// implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s677: int, b_s677: int) returns (__ret_0_: int)
// {
// assume ((b_s677) >= (0));
// if (!((b_s677) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s677) >= (0));
// assume ((b_s677) >= (0));
// assume (((a_s677) mod (b_s677)) >= (0));
// __ret_0_ := (a_s677) mod (b_s677);
// return;
// }

// implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s677: int, b_s677: int) returns (__ret_0_: int)
// {
// assume ((b_s677) >= (0));
// if (!((b_s677) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s677) >= (0));
// assume ((b_s677) >= (0));
// assume (((a_s677) mod (b_s677)) >= (0));
// __ret_0_ := (a_s677) mod (b_s677);
// return;
// }

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (ReentrancyGuard)) {
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
if ((DType[to]) == (ReentrancyGuard)) {
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
assume (((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale)));
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

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s80: int;
var wallet_s80: Ref;
var token_s80: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s178: Ref;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (Crowdsale));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s80, wallet_s80, token_s80);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_Crowdsale) ==> ((_wallet_Crowdsale[this]) == (null));
  // invariant (HoudiniB2_Crowdsale) ==> ((_wallet_Crowdsale[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s80;
havoc wallet_s80;
havoc token_s80;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s178;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178);
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
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (ReentrancyGuard)));
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
assume (((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale)));
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
var rate_s80: int;
var wallet_s80: Ref;
var token_s80: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s178: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s80;
havoc wallet_s80;
havoc token_s80;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s178;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s178);
}
}

implementation CorralEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var rate_s80: int;
var wallet_s80: Ref;
var token_s80: Ref;
assume ((now) >= (0));
assume ((DType[this]) == (Crowdsale));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s80, wallet_s80, token_s80);
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
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (ReentrancyGuard)));
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


