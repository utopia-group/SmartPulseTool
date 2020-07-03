// BOGUS SPEC
// #LTLProperty: [](success(Crowdsale.buyTokens) {})

// LIVE SPEC 1
// <>(success(Pausable.pause) {}) && [](!(success(Pausable.unpause) {}))
// <>([](!(success(Crowdsale.buyTokens) {})))

// LIVE SPEC 2
// [](<>(success(Crowdsale.buyTokens) {}))
// []((success(Pausable.pause) {}) ==> <>(success(Pausable.unpause) {}))

type Ref = int;
type ContractName = int;
var null: Ref;
var Context: ContractName;
var Crowdsale: ContractName;
var IERC20: ContractName;
var Pausable: ContractName;
var PausableCrowdsale: ContractName;
var PauserRole: ContractName;
var ReentrancyGuard: ContractName;
var Roles: ContractName;
var Roles.Role: ContractName;
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
var M_Ref_bool: [Ref][Ref]bool;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
modifies bearer_Roles.Role;
procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s104, wallet_s104, token_s104);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s104, wallet_s104, token_s104);
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s202: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s202: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s215: Ref, weiAmount_s215: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, weiAmount_s241: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s249: Ref, weiAmount_s249: int);
procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s265: Ref, tokenAmount_s265: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s278: Ref, tokenAmount_s278: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s286: Ref, weiAmount_s286: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s296: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s426: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer2_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s435: Ref, amount_s435: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s444: Ref, spender_s444: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s453: Ref, amount_s453: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s464: Ref, recipient_s464: Ref, amount_s464: int) returns (__ret_0_: bool);
var _paused_Pausable: [Ref]bool;
procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _paused_Pausable;
procedure {:constructor} {:public} {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call unpause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call unpause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} PausableCrowdsale_PausableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} PausableCrowdsale_PausableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies _paused_Pausable;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_bool;
implementation PausableCrowdsale_PausableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call PausableCrowdsale_PausableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call PausableCrowdsale_PausableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_PausableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s22: Ref, _weiAmount_s22: int);
modifies revert;
var _pausers_PauserRole: [Ref]Ref;
procedure {:inline 1} PauserRole_PauserRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:public} {:inline 1} PauserRole_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call PauserRole_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} isPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s843: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
implementation isPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s843: Ref) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call __ret_0_ := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s843);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s843);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} addPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s855: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies M_Ref_bool;
implementation addPauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s855: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s855);
assume ((revert) || ((gas) < (0)));
} else {
call addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s855);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} renouncePauser_PauserRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call renouncePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call renouncePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s880: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} _removePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s896: Ref);
modifies revert;
modifies M_Ref_bool;
var _notEntered_ReentrancyGuard: [Ref]bool;
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call Roles_Roles__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var bearer_Roles.Role: [Ref]Ref;
procedure {:inline 1} add_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s929: Ref, account_s929: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} remove_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s953: Ref, account_s953: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} has_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s977: Ref, account_s977: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call SafeERC20_SafeERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s536: Ref, to_s536: Ref, value_s536: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s557: Ref, from_s557: Ref, to_s557: Ref, value_s557: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s594: Ref, spender_s594: Ref, value_s594: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s625: Ref, spender_s625: Ref, value_s625: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s656: Ref, spender_s656: Ref, value_s656: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s684: int, b_s684: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s709: int, b_s709: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s743: int, b_s743: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s768: int, b_s768: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s789: int, b_s789: int) returns (__ret_0_: int);
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
const {:existential true} HoudiniB1_Crowdsale: bool;
const {:existential true} HoudiniB2_Crowdsale: bool;
procedure BoogieEntry_Crowdsale();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_IERC20();
modifies gas;
modifies now;
procedure BoogieEntry_Pausable();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies _paused_Pausable;
modifies M_Ref_bool;
procedure main();
modifies gas;
modifies now;
modifies _paused_Pausable;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_bool;
procedure BoogieEntry_PauserRole();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies M_Ref_bool;
procedure BoogieEntry_ReentrancyGuard();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_Roles();
modifies gas;
modifies now;
procedure BoogieEntry_SafeERC20();
modifies gas;
modifies now;
procedure BoogieEntry_SafeMath();
modifies gas;
modifies now;
procedure whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyPauser_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies now;
procedure CorralChoice_Crowdsale(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
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
procedure CorralChoice_Pausable(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies _paused_Pausable;
modifies M_Ref_bool;
procedure CorralEntry_Pausable();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies now;
modifies _paused_Pausable;
modifies M_Ref_bool;
procedure CorralChoice_PausableCrowdsale(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _paused_Pausable;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_bool;
procedure CorralEntry_PausableCrowdsale();
modifies gas;
modifies _paused_Pausable;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_bool;
procedure CorralChoice_PauserRole(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies M_Ref_bool;
procedure CorralEntry_PauserRole();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies now;
modifies M_Ref_bool;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies now;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_Roles(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_Roles();
modifies gas;
modifies now;
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
var __tmp__M_Ref_bool: [Ref][Ref]bool;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp___token_Crowdsale: [Ref]Ref;
var __tmp___wallet_Crowdsale: [Ref]Ref;
var __tmp___rate_Crowdsale: [Ref]int;
var __tmp___weiRaised_Crowdsale: [Ref]int;
var __tmp___paused_Pausable: [Ref]bool;
var __tmp___pausers_PauserRole: [Ref]Ref;
var __tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __tmp__bearer_Roles.Role: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref);
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref);
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s202: Ref);
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s202: Ref);
modifies __tmp__Balance;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s215: Ref, weiAmount_s215: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, weiAmount_s241: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s249: Ref, weiAmount_s249: int);
procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s265: Ref, tokenAmount_s265: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s278: Ref, tokenAmount_s278: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s286: Ref, weiAmount_s286: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s296: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___paused_Pausable;
procedure {:constructor} {:inline 1} Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _paused_Pausable;
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:inline 1} Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
procedure {:inline 1} PausableCrowdsale_PausableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} PausableCrowdsale_PausableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _paused_Pausable;
modifies _notEntered_ReentrancyGuard;
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} PausableCrowdsale_PausableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___paused_Pausable;
modifies __tmp___notEntered_ReentrancyGuard;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _preValidatePurchase_PausableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s22: Ref, _weiAmount_s22: int);
modifies revert;
procedure {:inline 1} PauserRole_PauserRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:constructor} {:inline 1} PauserRole_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:inline 1} PauserRole_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} isPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s843: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} isPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s843: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s855: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s855: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} renouncePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} renouncePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s880: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _removePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s896: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s929: Ref, account_s929: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} remove_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s953: Ref, account_s953: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} has_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s977: Ref, account_s977: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s536: Ref, to_s536: Ref, value_s536: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s557: Ref, from_s557: Ref, to_s557: Ref, value_s557: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s594: Ref, spender_s594: Ref, value_s594: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s625: Ref, spender_s625: Ref, value_s625: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s656: Ref, spender_s656: Ref, value_s656: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s684: int, b_s684: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s709: int, b_s709: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s743: int, b_s743: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s768: int, b_s768: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s789: int, b_s789: int) returns (__ret_0_: int);
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___paused_Pausable;
modifies __tmp___pausers_PauserRole;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies revert;
modifies gas;
procedure whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyPauser_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
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

implementation Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
__tmp__bearer_Roles.Role[this] := bearer;
}

implementation Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
bearer_Roles.Role[this] := bearer;
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

implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref)
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
assume ((rate_s104) >= (0));
if (!((rate_s104) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s104) != (null))) {
revert := true;
return;
}
__var_2 := token_s104;
__var_3 := null;
if (!((token_s104) != (null))) {
revert := true;
return;
}
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__tmp___rate_Crowdsale[this] := 1;
__tmp___wallet_Crowdsale[this] := wallet_s104;
__tmp___token_Crowdsale[this] := token_s104;
}

implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref)
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
assume ((rate_s104) >= (0));
if (!((rate_s104) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s104) != (null))) {
revert := true;
return;
}
__var_2 := token_s104;
__var_3 := null;
if (!((token_s104) != (null))) {
revert := true;
return;
}
assume ((_rate_Crowdsale[this]) >= (0));
_rate_Crowdsale[this] := 1;
_wallet_Crowdsale[this] := wallet_s104;
_token_Crowdsale[this] := token_s104;
}

implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s104, wallet_s104, token_s104);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s104: int, wallet_s104: Ref, token_s104: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s104, wallet_s104, token_s104);
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
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
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
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
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
if ((DType[this]) == (PausableCrowdsale)) {
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
if ((DType[this]) == (PausableCrowdsale)) {
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

implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s202: Ref)
{
var weiAmount_s201: int;
var tokens_s201: int;
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
assume ((weiAmount_s201) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s201 := msgvalue_MSG;
assume ((weiAmount_s201) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _preValidatePurchase_PausableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s201) >= (0));
assume ((weiAmount_s201) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call tokens_s201 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s201);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call tokens_s201 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s201);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s201 := tokens_s201;
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s201) >= (0));
call __var_5 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s201);
if (revert) {
return;
}
__tmp___weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s201) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, tokens_s201);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, tokens_s201);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s201) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
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
assume ((weiAmount_s201) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
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

implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s202: Ref)
{
var weiAmount_s201: int;
var tokens_s201: int;
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
assume ((weiAmount_s201) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s201 := msgvalue_MSG;
assume ((weiAmount_s201) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call _preValidatePurchase_PausableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s201) >= (0));
assume ((weiAmount_s201) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call tokens_s201 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s201);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call tokens_s201 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s201);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s201 := tokens_s201;
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s201) >= (0));
call __var_5 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s201);
if (revert) {
return;
}
_weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s201) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, tokens_s201);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, tokens_s201);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokensPurchased_Crowdsale"} (true);
assume ((weiAmount_s201) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (PausableCrowdsale)) {
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
assume ((weiAmount_s201) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202, weiAmount_s201);
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

implementation _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s215: Ref, weiAmount_s215: int)
{
assume ((weiAmount_s215) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s215, weiAmount_s215);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s215, weiAmount_s215);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s215: Ref, weiAmount_s215: int)
{
assume ((weiAmount_s215) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s215, weiAmount_s215);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s215, weiAmount_s215);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, weiAmount_s241: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s241) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s241) >= (0));
if (!((weiAmount_s241) != (0))) {
revert := true;
return;
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s241: Ref, weiAmount_s241: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s241) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s241) >= (0));
if (!((weiAmount_s241) != (0))) {
revert := true;
return;
}
}

implementation _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s249: Ref, weiAmount_s249: int)
{
}

implementation _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s249: Ref, weiAmount_s249: int)
{
}

implementation _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s265: Ref, tokenAmount_s265: int)
{
assume ((tokenAmount_s265) >= (0));
call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s265, tokenAmount_s265);
if (revert) {
return;
}
}

implementation _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s265: Ref, tokenAmount_s265: int)
{
assume ((tokenAmount_s265) >= (0));
call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s265, tokenAmount_s265);
if (revert) {
return;
}
}

implementation _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s278: Ref, tokenAmount_s278: int)
{
assume ((tokenAmount_s278) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s278, tokenAmount_s278);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s278, tokenAmount_s278);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s278: Ref, tokenAmount_s278: int)
{
assume ((tokenAmount_s278) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s278, tokenAmount_s278);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s278, tokenAmount_s278);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s286: Ref, weiAmount_s286: int)
{
}

implementation _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s286: Ref, weiAmount_s286: int)
{
}

implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s296: int) returns (__ret_0_: int)
{
assume ((weiAmount_s296) >= (0));
__ret_0_ := weiAmount_s296;
return;
}

implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s296: int) returns (__ret_0_: int)
{
assume ((weiAmount_s296) >= (0));
__ret_0_ := weiAmount_s296;
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

implementation Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___paused_Pausable[this] := false;
// end of initialization
__tmp___paused_Pausable[this] := false;
}

implementation Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
_paused_Pausable[this] := false;
// end of initialization
_paused_Pausable[this] := false;
}

implementation Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
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
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PauserRole_PauserRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
// call Pausable_Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
// if (revert) {
// return;
// }
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

implementation PausableCrowdsale_PausableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation PausableCrowdsale_PausableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation PausableCrowdsale_PausableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
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
call PausableCrowdsale_PausableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation PausableCrowdsale_PausableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
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
// call PausableCrowdsale_PausableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
// if (revert) {
// return;
// }
}

implementation _preValidatePurchase_PausableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s22: Ref, _weiAmount_s22: int)
{
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_weiAmount_s22) >= (0));
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s22, _weiAmount_s22);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_PausableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s22: Ref, _weiAmount_s22: int)
{
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_weiAmount_s22) >= (0));
if ((DType[this]) == (PausableCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s22, _weiAmount_s22);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation PauserRole_PauserRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_9: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call __var_9 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call __var_9 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call __var_9 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_9);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_9);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_9);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation PauserRole_PauserRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_9: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
if ((DType[this]) == (PausableCrowdsale)) {
call __var_9 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}
else if ((DType[this]) == (Pausable)) {
call __var_9 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}
else if ((DType[this]) == (PauserRole)) {
call __var_9 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}
else {
assume (false);
}
if ((DType[this]) == (PausableCrowdsale)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_9);
if (revert) {
return;
}
}
else if ((DType[this]) == (Pausable)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_9);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_9);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation PauserRole_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_9: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PauserRole_PauserRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation PauserRole_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_9: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PauserRole_PauserRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation isPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s843: Ref) returns (__ret_0_: bool)
{
var __var_12: bool;
call __var_12 := has_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s843);
if (revert) {
return;
}
__ret_0_ := __var_12;
return;
}

implementation isPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s843: Ref) returns (__ret_0_: bool)
{
var __var_12: bool;
call __var_12 := has_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s843);
if (revert) {
return;
}
__ret_0_ := __var_12;
return;
}

implementation addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s855: Ref)
{
call onlyPauser_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s855);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s855);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s855: Ref)
{
call onlyPauser_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (PausableCrowdsale)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s855);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call _addPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, account_s855);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renouncePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_13: Ref;
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call __var_13 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call __var_13 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call __var_13 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_13);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_13);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call _removePauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_13);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renouncePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_13: Ref;
if ((DType[this]) == (PausableCrowdsale)) {
call __var_13 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call __var_13 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call __var_13 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (PausableCrowdsale)) {
call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_13);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_13);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call _removePauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_13);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _addPauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s880: Ref)
{
call add_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s880);
if (revert) {
return;
}
}

implementation _addPauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s880: Ref)
{
call add_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s880);
if (revert) {
return;
}
assert {:EventEmitted "PauserAdded_PauserRole"} (true);
}

implementation _removePauser_PauserRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s896: Ref)
{
call remove_Roles__fail(this, this, 0, __tmp___pausers_PauserRole[this], account_s896);
if (revert) {
return;
}
}

implementation _removePauser_PauserRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s896: Ref)
{
call remove_Roles__success(this, this, 0, _pausers_PauserRole[this], account_s896);
if (revert) {
return;
}
assert {:EventEmitted "PauserRemoved_PauserRole"} (true);
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

implementation Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
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

implementation add_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s929: Ref, account_s929: Ref)
{
var __var_14: bool;
call __var_14 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s929, account_s929);
if (revert) {
return;
}
if (!(!(__var_14))) {
revert := true;
return;
}
__tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s929]][account_s929] := true;
}

implementation add_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s929: Ref, account_s929: Ref)
{
var __var_14: bool;
call __var_14 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s929, account_s929);
if (revert) {
return;
}
if (!(!(__var_14))) {
revert := true;
return;
}
M_Ref_bool[bearer_Roles.Role[role_s929]][account_s929] := true;
}

implementation remove_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s953: Ref, account_s953: Ref)
{
var __var_15: bool;
call __var_15 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s953, account_s953);
if (revert) {
return;
}
if (!(__var_15)) {
revert := true;
return;
}
__tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s953]][account_s953] := false;
}

implementation remove_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s953: Ref, account_s953: Ref)
{
var __var_15: bool;
call __var_15 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s953, account_s953);
if (revert) {
return;
}
if (!(__var_15)) {
revert := true;
return;
}
M_Ref_bool[bearer_Roles.Role[role_s953]][account_s953] := false;
}

implementation has_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s977: Ref, account_s977: Ref) returns (__ret_0_: bool)
{
var __var_16: Ref;
__var_16 := null;
if (!((account_s977) != (null))) {
revert := true;
return;
}
__ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s977]][account_s977];
return;
}

implementation has_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s977: Ref, account_s977: Ref) returns (__ret_0_: bool)
{
var __var_16: Ref;
__var_16 := null;
if (!((account_s977) != (null))) {
revert := true;
return;
}
__ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s977]][account_s977];
return;
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

implementation safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s536: Ref, to_s536: Ref, value_s536: int)
{
var __var_17: bool;
var __var_18: int;
assume ((value_s536) >= (0));
call __var_17 := transfer2_IERC20(token_s536, this, __var_18, to_s536, value_s536);
if (!(__var_17)) {
revert := true;
return;
}
}

implementation safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s536: Ref, to_s536: Ref, value_s536: int)
{
var __var_17: bool;
var __var_18: int;
assume ((value_s536) >= (0));
call __var_17 := transfer2_IERC20(token_s536, this, __var_18, to_s536, value_s536);
if (!(__var_17)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s557: Ref, from_s557: Ref, to_s557: Ref, value_s557: int)
{
var __var_19: bool;
var __var_20: int;
assume ((value_s557) >= (0));
call __var_19 := transferFrom_IERC20(token_s557, this, __var_20, from_s557, to_s557, value_s557);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s557: Ref, from_s557: Ref, to_s557: Ref, value_s557: int)
{
var __var_19: bool;
var __var_20: int;
assume ((value_s557) >= (0));
call __var_19 := transferFrom_IERC20(token_s557, this, __var_20, from_s557, to_s557, value_s557);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s594: Ref, spender_s594: Ref, value_s594: int)
{
var __var_21: int;
var __var_22: int;
var __var_23: Ref;
var __var_24: bool;
var __var_25: int;
assume ((value_s594) >= (0));
assume ((__var_21) >= (0));
__var_23 := this;
call __var_21 := allowance_IERC20(token_s594, this, __var_22, this, spender_s594);
assume ((__var_21) >= (0));
if (!((((value_s594) == (0))) || (((__var_21) == (0))))) {
revert := true;
return;
}
assume ((value_s594) >= (0));
call __var_24 := approve_IERC20(token_s594, this, __var_25, spender_s594, value_s594);
if (!(__var_24)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s594: Ref, spender_s594: Ref, value_s594: int)
{
var __var_21: int;
var __var_22: int;
var __var_23: Ref;
var __var_24: bool;
var __var_25: int;
assume ((value_s594) >= (0));
assume ((__var_21) >= (0));
__var_23 := this;
call __var_21 := allowance_IERC20(token_s594, this, __var_22, this, spender_s594);
assume ((__var_21) >= (0));
if (!((((value_s594) == (0))) || (((__var_21) == (0))))) {
revert := true;
return;
}
assume ((value_s594) >= (0));
call __var_24 := approve_IERC20(token_s594, this, __var_25, spender_s594, value_s594);
if (!(__var_24)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s625: Ref, spender_s625: Ref, value_s625: int)
{
var newAllowance_s624: int;
var __var_26: int;
var __var_27: int;
var __var_28: Ref;
var __var_29: bool;
var __var_30: int;
assume ((newAllowance_s624) >= (0));
assume ((__var_26) >= (0));
__var_28 := this;
call __var_26 := allowance_IERC20(token_s625, this, __var_27, this, spender_s625);
assume ((__var_26) >= (0));
assume ((value_s625) >= (0));
call newAllowance_s624 := add_SafeMath__fail(this, this, 0, __var_26, value_s625);
if (revert) {
return;
}
newAllowance_s624 := newAllowance_s624;
assume ((newAllowance_s624) >= (0));
call __var_29 := approve_IERC20(token_s625, this, __var_30, spender_s625, newAllowance_s624);
if (!(__var_29)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s625: Ref, spender_s625: Ref, value_s625: int)
{
var newAllowance_s624: int;
var __var_26: int;
var __var_27: int;
var __var_28: Ref;
var __var_29: bool;
var __var_30: int;
assume ((newAllowance_s624) >= (0));
assume ((__var_26) >= (0));
__var_28 := this;
call __var_26 := allowance_IERC20(token_s625, this, __var_27, this, spender_s625);
assume ((__var_26) >= (0));
assume ((value_s625) >= (0));
call newAllowance_s624 := add_SafeMath__success(this, this, 0, __var_26, value_s625);
if (revert) {
return;
}
newAllowance_s624 := newAllowance_s624;
assume ((newAllowance_s624) >= (0));
call __var_29 := approve_IERC20(token_s625, this, __var_30, spender_s625, newAllowance_s624);
if (!(__var_29)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s656: Ref, spender_s656: Ref, value_s656: int)
{
var newAllowance_s655: int;
var __var_31: int;
var __var_32: int;
var __var_33: Ref;
var __var_34: bool;
var __var_35: int;
assume ((newAllowance_s655) >= (0));
assume ((__var_31) >= (0));
__var_33 := this;
call __var_31 := allowance_IERC20(token_s656, this, __var_32, this, spender_s656);
assume ((__var_31) >= (0));
assume ((value_s656) >= (0));
call newAllowance_s655 := sub_SafeMath__fail(this, this, 0, __var_31, value_s656);
if (revert) {
return;
}
newAllowance_s655 := newAllowance_s655;
assume ((newAllowance_s655) >= (0));
call __var_34 := approve_IERC20(token_s656, this, __var_35, spender_s656, newAllowance_s655);
if (!(__var_34)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s656: Ref, spender_s656: Ref, value_s656: int)
{
var newAllowance_s655: int;
var __var_31: int;
var __var_32: int;
var __var_33: Ref;
var __var_34: bool;
var __var_35: int;
assume ((newAllowance_s655) >= (0));
assume ((__var_31) >= (0));
__var_33 := this;
call __var_31 := allowance_IERC20(token_s656, this, __var_32, this, spender_s656);
assume ((__var_31) >= (0));
assume ((value_s656) >= (0));
call newAllowance_s655 := sub_SafeMath__success(this, this, 0, __var_31, value_s656);
if (revert) {
return;
}
newAllowance_s655 := newAllowance_s655;
assume ((newAllowance_s655) >= (0));
call __var_34 := approve_IERC20(token_s656, this, __var_35, spender_s656, newAllowance_s655);
if (!(__var_34)) {
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s684: int, b_s684: int) returns (__ret_0_: int)
{
var c_s683: int;
assume ((c_s683) >= (0));
assume ((a_s684) >= (0));
assume ((b_s684) >= (0));
assume (((a_s684) + (b_s684)) >= (0));
c_s683 := (a_s684) + (b_s684);
assume ((c_s683) >= (0));
assume ((a_s684) >= (0));
if (!((c_s683) >= (a_s684))) {
revert := true;
return;
}
assume ((c_s683) >= (0));
__ret_0_ := c_s683;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s684: int, b_s684: int) returns (__ret_0_: int)
{
var c_s683: int;
assume ((c_s683) >= (0));
assume ((a_s684) >= (0));
assume ((b_s684) >= (0));
assume (((a_s684) + (b_s684)) >= (0));
c_s683 := (a_s684) + (b_s684);
assume ((c_s683) >= (0));
assume ((a_s684) >= (0));
if (!((c_s683) >= (a_s684))) {
revert := true;
return;
}
assume ((c_s683) >= (0));
__ret_0_ := c_s683;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s709: int, b_s709: int) returns (__ret_0_: int)
{
var c_s708: int;
assume ((b_s709) >= (0));
assume ((a_s709) >= (0));
if (!((b_s709) <= (a_s709))) {
revert := true;
return;
}
assume ((c_s708) >= (0));
assume ((a_s709) >= (0));
assume ((b_s709) >= (0));
assume (((a_s709) - (b_s709)) >= (0));
c_s708 := (a_s709) - (b_s709);
assume ((c_s708) >= (0));
__ret_0_ := c_s708;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s709: int, b_s709: int) returns (__ret_0_: int)
{
var c_s708: int;
assume ((b_s709) >= (0));
assume ((a_s709) >= (0));
if (!((b_s709) <= (a_s709))) {
revert := true;
return;
}
assume ((c_s708) >= (0));
assume ((a_s709) >= (0));
assume ((b_s709) >= (0));
assume (((a_s709) - (b_s709)) >= (0));
c_s708 := (a_s709) - (b_s709);
assume ((c_s708) >= (0));
__ret_0_ := c_s708;
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s743: int, b_s743: int) returns (__ret_0_: int)
// {
// var c_s742: int;
// assume ((a_s743) >= (0));
// if ((a_s743) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s742) >= (0));
// assume ((a_s743) >= (0));
// assume ((b_s743) >= (0));
// assume (((a_s743) * (b_s743)) >= (0));
// c_s742 := (a_s743) * (b_s743);
// assume ((c_s742) >= (0));
// assume ((a_s743) >= (0));
// assume (((c_s742) div (a_s743)) >= (0));
// assume ((b_s743) >= (0));
// if (!(((c_s742) div (a_s743)) == (b_s743))) {
// revert := true;
// return;
// }
// assume ((c_s742) >= (0));
// __ret_0_ := c_s742;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s743: int, b_s743: int) returns (__ret_0_: int)
// {
// var c_s742: int;
// assume ((a_s743) >= (0));
// if ((a_s743) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s742) >= (0));
// assume ((a_s743) >= (0));
// assume ((b_s743) >= (0));
// assume (((a_s743) * (b_s743)) >= (0));
// c_s742 := (a_s743) * (b_s743);
// assume ((c_s742) >= (0));
// assume ((a_s743) >= (0));
// assume (((c_s742) div (a_s743)) >= (0));
// assume ((b_s743) >= (0));
// if (!(((c_s742) div (a_s743)) == (b_s743))) {
// revert := true;
// return;
// }
// assume ((c_s742) >= (0));
// __ret_0_ := c_s742;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s768: int, b_s768: int) returns (__ret_0_: int)
// {
// var c_s767: int;
// assume ((b_s768) >= (0));
// if (!((b_s768) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s767) >= (0));
// assume ((a_s768) >= (0));
// assume ((b_s768) >= (0));
// assume (((a_s768) div (b_s768)) >= (0));
// c_s767 := (a_s768) div (b_s768);
// assume ((c_s767) >= (0));
// __ret_0_ := c_s767;
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s768: int, b_s768: int) returns (__ret_0_: int)
// {
// var c_s767: int;
// assume ((b_s768) >= (0));
// if (!((b_s768) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s767) >= (0));
// assume ((a_s768) >= (0));
// assume ((b_s768) >= (0));
// assume (((a_s768) div (b_s768)) >= (0));
// c_s767 := (a_s768) div (b_s768);
// assume ((c_s767) >= (0));
// __ret_0_ := c_s767;
// return;
// }

// implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s789: int, b_s789: int) returns (__ret_0_: int)
// {
// assume ((b_s789) >= (0));
// if (!((b_s789) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s789) >= (0));
// assume ((b_s789) >= (0));
// assume (((a_s789) mod (b_s789)) >= (0));
// __ret_0_ := (a_s789) mod (b_s789);
// return;
// }

// implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s789: int, b_s789: int) returns (__ret_0_: int)
// {
// assume ((b_s789) >= (0));
// if (!((b_s789) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s789) >= (0));
// assume ((b_s789) >= (0));
// assume (((a_s789) mod (b_s789)) >= (0));
// __ret_0_ := (a_s789) mod (b_s789);
// return;
// }

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (ReentrancyGuard)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (PauserRole)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (PausableCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Pausable)) {
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
} else if ((DType[to]) == (PauserRole)) {
assume ((amount) == (0));
} else if ((DType[to]) == (PausableCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Pausable)) {
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
var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp___token_Crowdsale: [Ref]Ref;
var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
var __snap___tmp___rate_Crowdsale: [Ref]int;
var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
var __snap___tmp___paused_Pausable: [Ref]bool;
var __snap___tmp___pausers_PauserRole: [Ref]Ref;
var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __snap___tmp__bearer_Roles.Role: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
__snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
__snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
__snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
__snap___tmp___paused_Pausable := __tmp___paused_Pausable;
__snap___tmp___pausers_PauserRole := __tmp___pausers_PauserRole;
__snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
__snap___tmp__bearer_Roles.Role := __tmp__bearer_Roles.Role;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
__tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
__tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
__tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
__tmp___paused_Pausable := __snap___tmp___paused_Pausable;
__tmp___pausers_PauserRole := __snap___tmp___pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := __snap___tmp__bearer_Roles.Role;
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
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__Length := Length;
__tmp__now := now;
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___paused_Pausable := _paused_Pausable;
__tmp___pausers_PauserRole := _pausers_PauserRole;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
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

implementation onlyPauser_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_10: bool;
var __var_11: Ref;
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call __var_11 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call __var_11 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call __var_11 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (PausableCrowdsale)) {
call __var_10 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_11);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Pausable)) {
call __var_10 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_11);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PauserRole)) {
call __var_10 := isPauser_PauserRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_11);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_10)) {
revert := true;
return;
}
}

implementation onlyPauser_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_10: bool;
var __var_11: Ref;
if ((DType[this]) == (PausableCrowdsale)) {
call __var_11 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call __var_11 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call __var_11 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (PausableCrowdsale)) {
call __var_10 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_11);
if (revert) {
return;
}
} else if ((DType[this]) == (Pausable)) {
call __var_10 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_11);
if (revert) {
return;
}
} else if ((DType[this]) == (PauserRole)) {
call __var_10 := isPauser_PauserRole__success(this, msgsender_MSG, msgvalue_MSG, __var_11);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_10)) {
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
assume ((((((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (Pausable))) || ((DType[this]) == (PausableCrowdsale))) || ((DType[this]) == (PauserRole)));
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
var rate_s104: int;
var wallet_s104: Ref;
var token_s104: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s202: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (PausableCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s104, wallet_s104, token_s104);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  invariant (HoudiniB1_Crowdsale) ==> ((_wallet_Crowdsale[this]) == (null));
  invariant (HoudiniB2_Crowdsale) ==> ((_wallet_Crowdsale[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s104;
havoc wallet_s104;
havoc token_s104;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s202;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202);
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

implementation BoogieEntry_Pausable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s843: Ref;
var __ret_0_isPauser: bool;
var account_s855: Ref;
var __ret_0_paused: bool;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (Pausable)) || ((DType[this]) == (PausableCrowdsale)));
gas := (gas) - (53000);
call Pausable_Pausable(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s843;
havoc __ret_0_isPauser;
havoc account_s855;
havoc __ret_0_paused;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s843);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s855);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s104: int;
var wallet_s104: Ref;
var token_s104: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s202: Ref;
var account_s843: Ref;
var __ret_0_isPauser: bool;
var account_s855: Ref;
var __ret_0_paused: bool;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (PausableCrowdsale));
gas := (gas) - (53000);
call PausableCrowdsale_PausableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));

while(true) {}

while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s104;
havoc wallet_s104;
havoc token_s104;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s202;
havoc account_s843;
havoc __ret_0_isPauser;
havoc account_s855;
havoc __ret_0_paused;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s843);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s855);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_PauserRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s843: Ref;
var __ret_0_isPauser: bool;
var account_s855: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (Pausable)) || ((DType[this]) == (PausableCrowdsale))) || ((DType[this]) == (PauserRole)));
gas := (gas) - (53000);
call PauserRole_PauserRole(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s843;
havoc __ret_0_isPauser;
havoc account_s855;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s843);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s855);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
}
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
assume ((((DType[this]) == (Crowdsale)) || ((DType[this]) == (PausableCrowdsale))) || ((DType[this]) == (ReentrancyGuard)));
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

implementation BoogieEntry_Roles()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (Roles));
gas := (gas) - (53000);
call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
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
assume ((((((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (Pausable))) || ((DType[this]) == (PausableCrowdsale))) || ((DType[this]) == (PauserRole)));
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
var rate_s104: int;
var wallet_s104: Ref;
var token_s104: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s202: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s104;
havoc wallet_s104;
havoc token_s104;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s202;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202);
}
}

implementation CorralEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var rate_s104: int;
var wallet_s104: Ref;
var token_s104: Ref;
assume ((now) >= (0));
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (PausableCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s104, wallet_s104, token_s104);
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

implementation CorralChoice_Pausable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s843: Ref;
var __ret_0_isPauser: bool;
var account_s855: Ref;
var __ret_0_paused: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s843;
havoc __ret_0_isPauser;
havoc account_s855;
havoc __ret_0_paused;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s843);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s855);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_Pausable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (Pausable)) || ((DType[this]) == (PausableCrowdsale)));
gas := (gas) - (53000);
call Pausable_Pausable(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Pausable(this);
}
}

implementation CorralChoice_PausableCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s104: int;
var wallet_s104: Ref;
var token_s104: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s202: Ref;
var account_s843: Ref;
var __ret_0_isPauser: bool;
var account_s855: Ref;
var __ret_0_paused: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s104;
havoc wallet_s104;
havoc token_s104;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s202;
havoc account_s843;
havoc __ret_0_isPauser;
havoc account_s855;
havoc __ret_0_paused;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s202);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s843);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s855);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_paused := paused_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_PausableCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (PausableCrowdsale));
gas := (gas) - (53000);
call PausableCrowdsale_PausableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_PausableCrowdsale(this);
}
}

implementation CorralChoice_PauserRole(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s843: Ref;
var __ret_0_isPauser: bool;
var account_s855: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s843;
havoc __ret_0_isPauser;
havoc account_s855;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_isPauser := isPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s843);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call addPauser_PauserRole(this, msgsender_MSG, msgvalue_MSG, account_s855);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renouncePauser_PauserRole(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_PauserRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((((DType[this]) == (Pausable)) || ((DType[this]) == (PausableCrowdsale))) || ((DType[this]) == (PauserRole)));
gas := (gas) - (53000);
call PauserRole_PauserRole(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_PauserRole(this);
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
assume ((((DType[this]) == (Crowdsale)) || ((DType[this]) == (PausableCrowdsale))) || ((DType[this]) == (ReentrancyGuard)));
gas := (gas) - (53000);
call ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ReentrancyGuard(this);
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
}

implementation CorralEntry_Roles()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
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


