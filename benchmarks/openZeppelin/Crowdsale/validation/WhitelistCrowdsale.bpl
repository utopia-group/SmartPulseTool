type Ref = int;
type ContractName = int;
var null: Ref;
var Context: ContractName;
var Crowdsale: ContractName;
var IERC20: ContractName;
var ReentrancyGuard: ContractName;
var Roles: ContractName;
var Roles.Role: ContractName;
var SafeERC20: ContractName;
var SafeMath: ContractName;
var WhitelistAdminRole: ContractName;
var WhitelistCrowdsale: ContractName;
var WhitelistedRole: ContractName;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
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
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
implementation Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s109, wallet_s109, token_s109);
assume ((revert) || ((gas) < (0)));
} else {
call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s109, wallet_s109, token_s109);
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s207: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies gas;
modifies _notEntered_ReentrancyGuard;
implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s207: Ref)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207);
assume ((revert) || ((gas) < (0)));
} else {
call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s220: Ref, weiAmount_s220: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s246: Ref, weiAmount_s246: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, weiAmount_s254: int);
procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s270: Ref, tokenAmount_s270: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s283: Ref, tokenAmount_s283: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s291: Ref, weiAmount_s291: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s301: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s456: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer2_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s465: Ref, amount_s465: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s474: Ref, spender_s474: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s483: Ref, amount_s483: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s494: Ref, recipient_s494: Ref, amount_s494: int) returns (__ret_0_: bool);
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call Roles_Roles__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var bearer_Roles.Role: [Ref]Ref;
procedure {:inline 1} add_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s852: Ref, account_s852: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} remove_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s876: Ref, account_s876: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} has_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s900: Ref, account_s900: Ref) returns (__ret_0_: bool);
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call SafeERC20_SafeERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s566: Ref, to_s566: Ref, value_s566: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s587: Ref, from_s587: Ref, to_s587: Ref, value_s587: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s624: Ref, spender_s624: Ref, value_s624: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s655: Ref, spender_s655: Ref, value_s655: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s686: Ref, spender_s686: Ref, value_s686: int);
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s714: int, b_s714: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s739: int, b_s739: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s773: int, b_s773: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s798: int, b_s798: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s819: int, b_s819: int) returns (__ret_0_: int);
// modifies revert;
var _whitelistAdmins_WhitelistAdminRole: [Ref]Ref;
procedure {:inline 1} WhitelistAdminRole_WhitelistAdminRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:public} {:inline 1} WhitelistAdminRole_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
implementation WhitelistAdminRole_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call WhitelistAdminRole_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call WhitelistAdminRole_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} isWhitelistAdmin_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s954: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
implementation isWhitelistAdmin_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s954: Ref) returns (__ret_0_: bool)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call __ret_0_ := isWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s954);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, account_s954);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} addWhitelistAdmin_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s966: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
implementation addWhitelistAdmin_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s966: Ref)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call addWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s966);
assume ((revert) || ((gas) < (0)));
} else {
call addWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, account_s966);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} renounceWhitelistAdmin_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
implementation renounceWhitelistAdmin_WhitelistAdminRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call renounceWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call renounceWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _addWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s991: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} _removeWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1007: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} WhitelistCrowdsale_WhitelistCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} WhitelistCrowdsale_WhitelistCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_bool;
implementation WhitelistCrowdsale_WhitelistCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call WhitelistCrowdsale_WhitelistCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call WhitelistCrowdsale_WhitelistCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _preValidatePurchase_WhitelistCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s27: Ref, _weiAmount_s27: int);
modifies revert;
procedure {:inline 1} WhitelistedRole_WhitelistedRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} WhitelistedRole_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
implementation WhitelistedRole_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call WhitelistedRole_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call WhitelistedRole_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var _whitelisteds_WhitelistedRole: [Ref]Ref;
procedure {:public} {:inline 1} isWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s360: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
implementation isWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s360: Ref) returns (__ret_0_: bool)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call __ret_0_ := isWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s360);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := isWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, account_s360);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} addWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s372: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
implementation addWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s372: Ref)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call addWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s372);
assume ((revert) || ((gas) < (0)));
} else {
call addWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, account_s372);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} removeWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s384: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
implementation removeWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s384: Ref)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call removeWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s384);
assume ((revert) || ((gas) < (0)));
} else {
call removeWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, account_s384);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} renounceWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
implementation renounceWhitelisted_WhitelistedRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
call renounceWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call renounceWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _addWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s409: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} _removeWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s425: Ref);
modifies revert;
modifies M_Ref_bool;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
const {:existential true} HoudiniB1_Crowdsale: bool;
const {:existential true} HoudiniB2_Crowdsale: bool;
procedure BoogieEntry_Crowdsale();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies _notEntered_ReentrancyGuard;
procedure BoogieEntry_Roles();
modifies gas;
procedure BoogieEntry_SafeERC20();
modifies gas;
procedure BoogieEntry_SafeMath();
modifies gas;
procedure BoogieEntry_WhitelistAdminRole();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
procedure main();
modifies gas;
modifies _notEntered_ReentrancyGuard;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies M_Ref_bool;
procedure BoogieEntry_WhitelistedRole();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
procedure nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies _notEntered_ReentrancyGuard;
procedure onlyWhitelistAdmin_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyWhitelisted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure CorralChoice_Crowdsale(this: Ref);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
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
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies _notEntered_ReentrancyGuard;
procedure CorralChoice_Roles(this: Ref);
modifies gas;
procedure CorralEntry_Roles();
modifies gas;
procedure CorralChoice_SafeERC20(this: Ref);
modifies gas;
procedure CorralEntry_SafeERC20();
modifies gas;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
procedure CorralEntry_SafeMath();
modifies gas;
procedure CorralChoice_WhitelistAdminRole(this: Ref);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
procedure CorralEntry_WhitelistAdminRole();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
procedure CorralChoice_WhitelistCrowdsale(this: Ref);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies _notEntered_ReentrancyGuard;
modifies M_Ref_bool;
procedure CorralEntry_WhitelistCrowdsale();
modifies gas;
modifies _notEntered_ReentrancyGuard;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies Balance;
modifies _weiRaised_Crowdsale;
modifies M_Ref_bool;
procedure CorralChoice_WhitelistedRole(this: Ref);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
procedure CorralEntry_WhitelistedRole();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies M_Ref_bool;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_bool: [Ref][Ref]bool;
var __tmp__Length: [Ref]int;
var __tmp___token_Crowdsale: [Ref]Ref;
var __tmp___wallet_Crowdsale: [Ref]Ref;
var __tmp___rate_Crowdsale: [Ref]int;
var __tmp___weiRaised_Crowdsale: [Ref]int;
var __tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __tmp__bearer_Roles.Role: [Ref]Ref;
var __tmp___whitelistAdmins_WhitelistAdminRole: [Ref]Ref;
var __tmp___whitelisteds_WhitelistedRole: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
modifies __tmp__bearer_Roles.Role;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref);
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies revert;
modifies __tmp___token_Crowdsale;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref);
modifies _wallet_Crowdsale;
modifies _rate_Crowdsale;
modifies _weiRaised_Crowdsale;
modifies revert;
modifies _token_Crowdsale;
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref);
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure {:inline 1} token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s207: Ref);
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s207: Ref);
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s220: Ref, weiAmount_s220: int);
modifies revert;
procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s246: Ref, weiAmount_s246: int);
modifies revert;
procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, weiAmount_s254: int);
procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s270: Ref, tokenAmount_s270: int);
modifies revert;
procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s283: Ref, tokenAmount_s283: int);
modifies revert;
procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s291: Ref, weiAmount_s291: int);
procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s301: int) returns (__ret_0_: int);
procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s852: Ref, account_s852: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} remove_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s876: Ref, account_s876: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} has_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s900: Ref, account_s900: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s566: Ref, to_s566: Ref, value_s566: int);
modifies revert;
procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s587: Ref, from_s587: Ref, to_s587: Ref, value_s587: int);
modifies revert;
procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s624: Ref, spender_s624: Ref, value_s624: int);
modifies revert;
procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s655: Ref, spender_s655: Ref, value_s655: int);
modifies revert;
procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s686: Ref, spender_s686: Ref, value_s686: int);
modifies revert;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s714: int, b_s714: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s739: int, b_s739: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s773: int, b_s773: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s798: int, b_s798: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s819: int, b_s819: int) returns (__ret_0_: int);
// modifies revert;
procedure {:inline 1} WhitelistAdminRole_WhitelistAdminRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:constructor} {:inline 1} WhitelistAdminRole_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:constructor} {:inline 1} WhitelistAdminRole_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} isWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s954: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} isWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s954: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} addWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s966: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} addWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s966: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} renounceWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} renounceWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _addWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s991: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _removeWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1007: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} WhitelistCrowdsale_WhitelistCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} WhitelistCrowdsale_WhitelistCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _notEntered_ReentrancyGuard;
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} WhitelistCrowdsale_WhitelistCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___notEntered_ReentrancyGuard;
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _preValidatePurchase_WhitelistCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s27: Ref, _weiAmount_s27: int);
modifies revert;
procedure {:inline 1} WhitelistedRole_WhitelistedRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} WhitelistedRole_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} WhitelistedRole_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} isWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s360: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} isWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s360: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} addWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s372: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} addWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s372: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} removeWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s384: Ref);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} removeWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s384: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} renounceWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_bool;
procedure {:inline 1} renounceWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _addWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s409: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
procedure {:inline 1} _removeWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s425: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
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
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_bool;
modifies __tmp__Length;
modifies __tmp___token_Crowdsale;
modifies __tmp___wallet_Crowdsale;
modifies __tmp___rate_Crowdsale;
modifies __tmp___weiRaised_Crowdsale;
modifies __tmp___notEntered_ReentrancyGuard;
modifies __tmp__bearer_Roles.Role;
modifies __tmp___whitelistAdmins_WhitelistAdminRole;
modifies __tmp___whitelisteds_WhitelistedRole;
modifies revert;
modifies gas;
procedure nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp___notEntered_ReentrancyGuard;
procedure onlyWhitelistAdmin_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyWhitelisted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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

implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref)
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
assume ((rate_s109) >= (0));
if (!((rate_s109) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s109) != (null))) {
revert := true;
return;
}
__var_2 := token_s109;
__var_3 := null;
if (!((token_s109) != (null))) {
revert := true;
return;
}
assume ((__tmp___rate_Crowdsale[this]) >= (0));
__tmp___rate_Crowdsale[this] := 1;
__tmp___wallet_Crowdsale[this] := wallet_s109;
__tmp___token_Crowdsale[this] := token_s109;
}

implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref)
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
assume ((rate_s109) >= (0));
if (!((rate_s109) > (0))) {
revert := true;
return;
}
__var_1 := null;
if (!((wallet_s109) != (null))) {
revert := true;
return;
}
__var_2 := token_s109;
__var_3 := null;
if (!((token_s109) != (null))) {
revert := true;
return;
}
assume ((_rate_Crowdsale[this]) >= (0));
_rate_Crowdsale[this] := 1;
_wallet_Crowdsale[this] := wallet_s109;
_token_Crowdsale[this] := token_s109;
}

implementation Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s109, wallet_s109, token_s109);
if (revert) {
return;
}
}

implementation Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s109: int, wallet_s109: Ref, token_s109: Ref)
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
call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s109, wallet_s109, token_s109);
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
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
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
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
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
if ((DType[this]) == (WhitelistCrowdsale)) {
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
if ((DType[this]) == (WhitelistCrowdsale)) {
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

implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s207: Ref)
{
var weiAmount_s206: int;
var tokens_s206: int;
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
assume ((weiAmount_s206) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s206 := msgvalue_MSG;
assume ((weiAmount_s206) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _preValidatePurchase_WhitelistCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s206) >= (0));
assume ((weiAmount_s206) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call tokens_s206 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s206);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call tokens_s206 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s206);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s206 := tokens_s206;
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((__tmp___weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s206) >= (0));
call __var_5 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s206);
if (revert) {
return;
}
__tmp___weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s206) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, tokens_s206);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, tokens_s206);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((weiAmount_s206) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
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
assume ((weiAmount_s206) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
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

implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s207: Ref)
{
var weiAmount_s206: int;
var tokens_s206: int;
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
assume ((weiAmount_s206) >= (0));
assume ((msgvalue_MSG) >= (0));
weiAmount_s206 := msgvalue_MSG;
assume ((weiAmount_s206) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call _preValidatePurchase_WhitelistCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((tokens_s206) >= (0));
assume ((weiAmount_s206) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call tokens_s206 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s206);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call tokens_s206 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s206);
if (revert) {
return;
}
} else {
assume (false);
}
tokens_s206 := tokens_s206;
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((_weiRaised_Crowdsale[this]) >= (0));
assume ((weiAmount_s206) >= (0));
call __var_5 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s206);
if (revert) {
return;
}
_weiRaised_Crowdsale[this] := __var_5;
assume ((__var_5) >= (0));
assume ((tokens_s206) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, tokens_s206);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, tokens_s206);
if (revert) {
return;
}
} else {
assume (false);
}
assert {:EventEmitted "TokensPurchased_Crowdsale"} (true);
assume ((weiAmount_s206) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (WhitelistCrowdsale)) {
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
assume ((weiAmount_s206) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207, weiAmount_s206);
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

implementation _preValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s220: Ref, weiAmount_s220: int)
{
assume ((weiAmount_s220) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s220, weiAmount_s220);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s220, weiAmount_s220);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s220: Ref, weiAmount_s220: int)
{
assume ((weiAmount_s220) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s220, weiAmount_s220);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s220, weiAmount_s220);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s246: Ref, weiAmount_s246: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s246) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s246) >= (0));
if (!((weiAmount_s246) != (0))) {
revert := true;
return;
}
}

implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s246: Ref, weiAmount_s246: int)
{
var __var_6: Ref;
__var_6 := null;
if (!((beneficiary_s246) != (null))) {
revert := true;
return;
}
assume ((weiAmount_s246) >= (0));
if (!((weiAmount_s246) != (0))) {
revert := true;
return;
}
}

implementation _postValidatePurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, weiAmount_s254: int)
{
}

implementation _postValidatePurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s254: Ref, weiAmount_s254: int)
{
}

implementation _deliverTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s270: Ref, tokenAmount_s270: int)
{
assume ((tokenAmount_s270) >= (0));
call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s270, tokenAmount_s270);
if (revert) {
return;
}
}

implementation _deliverTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s270: Ref, tokenAmount_s270: int)
{
assume ((tokenAmount_s270) >= (0));
call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s270, tokenAmount_s270);
if (revert) {
return;
}
}

implementation _processPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s283: Ref, tokenAmount_s283: int)
{
assume ((tokenAmount_s283) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s283, tokenAmount_s283);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s283, tokenAmount_s283);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _processPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s283: Ref, tokenAmount_s283: int)
{
assume ((tokenAmount_s283) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s283, tokenAmount_s283);
if (revert) {
return;
}
} else if ((DType[this]) == (Crowdsale)) {
call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s283, tokenAmount_s283);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _updatePurchasingState_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s291: Ref, weiAmount_s291: int)
{
}

implementation _updatePurchasingState_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s291: Ref, weiAmount_s291: int)
{
}

implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s301: int) returns (__ret_0_: int)
{
assume ((weiAmount_s301) >= (0));
__ret_0_ := weiAmount_s301;
return;
}

implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s301: int) returns (__ret_0_: int)
{
assume ((weiAmount_s301) >= (0));
__ret_0_ := weiAmount_s301;
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

implementation add_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s852: Ref, account_s852: Ref)
{
var __var_9: bool;
call __var_9 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s852, account_s852);
if (revert) {
return;
}
if (!(!(__var_9))) {
revert := true;
return;
}
__tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s852]][account_s852] := true;
}

implementation add_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s852: Ref, account_s852: Ref)
{
var __var_9: bool;
call __var_9 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s852, account_s852);
if (revert) {
return;
}
if (!(!(__var_9))) {
revert := true;
return;
}
M_Ref_bool[bearer_Roles.Role[role_s852]][account_s852] := true;
}

implementation remove_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s876: Ref, account_s876: Ref)
{
var __var_10: bool;
call __var_10 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s876, account_s876);
if (revert) {
return;
}
if (!(__var_10)) {
revert := true;
return;
}
__tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s876]][account_s876] := false;
}

implementation remove_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s876: Ref, account_s876: Ref)
{
var __var_10: bool;
call __var_10 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s876, account_s876);
if (revert) {
return;
}
if (!(__var_10)) {
revert := true;
return;
}
M_Ref_bool[bearer_Roles.Role[role_s876]][account_s876] := false;
}

implementation has_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s900: Ref, account_s900: Ref) returns (__ret_0_: bool)
{
var __var_11: Ref;
__var_11 := null;
if (!((account_s900) != (null))) {
revert := true;
return;
}
__ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s900]][account_s900];
return;
}

implementation has_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, role_s900: Ref, account_s900: Ref) returns (__ret_0_: bool)
{
var __var_11: Ref;
__var_11 := null;
if (!((account_s900) != (null))) {
revert := true;
return;
}
__ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s900]][account_s900];
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

implementation safeTransfer_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s566: Ref, to_s566: Ref, value_s566: int)
{
var __var_12: bool;
var __var_13: int;
assume ((value_s566) >= (0));
call __var_12 := transfer2_IERC20(token_s566, this, __var_13, to_s566, value_s566);
if (!(__var_12)) {
revert := true;
return;
}
}

implementation safeTransfer_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s566: Ref, to_s566: Ref, value_s566: int)
{
var __var_12: bool;
var __var_13: int;
assume ((value_s566) >= (0));
call __var_12 := transfer2_IERC20(token_s566, this, __var_13, to_s566, value_s566);
if (!(__var_12)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s587: Ref, from_s587: Ref, to_s587: Ref, value_s587: int)
{
var __var_14: bool;
var __var_15: int;
assume ((value_s587) >= (0));
call __var_14 := transferFrom_IERC20(token_s587, this, __var_15, from_s587, to_s587, value_s587);
if (!(__var_14)) {
revert := true;
return;
}
}

implementation safeTransferFrom_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s587: Ref, from_s587: Ref, to_s587: Ref, value_s587: int)
{
var __var_14: bool;
var __var_15: int;
assume ((value_s587) >= (0));
call __var_14 := transferFrom_IERC20(token_s587, this, __var_15, from_s587, to_s587, value_s587);
if (!(__var_14)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s624: Ref, spender_s624: Ref, value_s624: int)
{
var __var_16: int;
var __var_17: int;
var __var_18: Ref;
var __var_19: bool;
var __var_20: int;
assume ((value_s624) >= (0));
assume ((__var_16) >= (0));
__var_18 := this;
call __var_16 := allowance_IERC20(token_s624, this, __var_17, this, spender_s624);
assume ((__var_16) >= (0));
if (!((((value_s624) == (0))) || (((__var_16) == (0))))) {
revert := true;
return;
}
assume ((value_s624) >= (0));
call __var_19 := approve_IERC20(token_s624, this, __var_20, spender_s624, value_s624);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation safeApprove_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s624: Ref, spender_s624: Ref, value_s624: int)
{
var __var_16: int;
var __var_17: int;
var __var_18: Ref;
var __var_19: bool;
var __var_20: int;
assume ((value_s624) >= (0));
assume ((__var_16) >= (0));
__var_18 := this;
call __var_16 := allowance_IERC20(token_s624, this, __var_17, this, spender_s624);
assume ((__var_16) >= (0));
if (!((((value_s624) == (0))) || (((__var_16) == (0))))) {
revert := true;
return;
}
assume ((value_s624) >= (0));
call __var_19 := approve_IERC20(token_s624, this, __var_20, spender_s624, value_s624);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s655: Ref, spender_s655: Ref, value_s655: int)
{
var newAllowance_s654: int;
var __var_21: int;
var __var_22: int;
var __var_23: Ref;
var __var_24: bool;
var __var_25: int;
assume ((newAllowance_s654) >= (0));
assume ((__var_21) >= (0));
__var_23 := this;
call __var_21 := allowance_IERC20(token_s655, this, __var_22, this, spender_s655);
assume ((__var_21) >= (0));
assume ((value_s655) >= (0));
call newAllowance_s654 := add_SafeMath__fail(this, this, 0, __var_21, value_s655);
if (revert) {
return;
}
newAllowance_s654 := newAllowance_s654;
assume ((newAllowance_s654) >= (0));
call __var_24 := approve_IERC20(token_s655, this, __var_25, spender_s655, newAllowance_s654);
if (!(__var_24)) {
revert := true;
return;
}
}

implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s655: Ref, spender_s655: Ref, value_s655: int)
{
var newAllowance_s654: int;
var __var_21: int;
var __var_22: int;
var __var_23: Ref;
var __var_24: bool;
var __var_25: int;
assume ((newAllowance_s654) >= (0));
assume ((__var_21) >= (0));
__var_23 := this;
call __var_21 := allowance_IERC20(token_s655, this, __var_22, this, spender_s655);
assume ((__var_21) >= (0));
assume ((value_s655) >= (0));
call newAllowance_s654 := add_SafeMath__success(this, this, 0, __var_21, value_s655);
if (revert) {
return;
}
newAllowance_s654 := newAllowance_s654;
assume ((newAllowance_s654) >= (0));
call __var_24 := approve_IERC20(token_s655, this, __var_25, spender_s655, newAllowance_s654);
if (!(__var_24)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s686: Ref, spender_s686: Ref, value_s686: int)
{
var newAllowance_s685: int;
var __var_26: int;
var __var_27: int;
var __var_28: Ref;
var __var_29: bool;
var __var_30: int;
assume ((newAllowance_s685) >= (0));
assume ((__var_26) >= (0));
__var_28 := this;
call __var_26 := allowance_IERC20(token_s686, this, __var_27, this, spender_s686);
assume ((__var_26) >= (0));
assume ((value_s686) >= (0));
call newAllowance_s685 := sub_SafeMath__fail(this, this, 0, __var_26, value_s686);
if (revert) {
return;
}
newAllowance_s685 := newAllowance_s685;
assume ((newAllowance_s685) >= (0));
call __var_29 := approve_IERC20(token_s686, this, __var_30, spender_s686, newAllowance_s685);
if (!(__var_29)) {
revert := true;
return;
}
}

implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s686: Ref, spender_s686: Ref, value_s686: int)
{
var newAllowance_s685: int;
var __var_26: int;
var __var_27: int;
var __var_28: Ref;
var __var_29: bool;
var __var_30: int;
assume ((newAllowance_s685) >= (0));
assume ((__var_26) >= (0));
__var_28 := this;
call __var_26 := allowance_IERC20(token_s686, this, __var_27, this, spender_s686);
assume ((__var_26) >= (0));
assume ((value_s686) >= (0));
call newAllowance_s685 := sub_SafeMath__success(this, this, 0, __var_26, value_s686);
if (revert) {
return;
}
newAllowance_s685 := newAllowance_s685;
assume ((newAllowance_s685) >= (0));
call __var_29 := approve_IERC20(token_s686, this, __var_30, spender_s686, newAllowance_s685);
if (!(__var_29)) {
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s714: int, b_s714: int) returns (__ret_0_: int)
{
var c_s713: int;
assume ((c_s713) >= (0));
assume ((a_s714) >= (0));
assume ((b_s714) >= (0));
assume (((a_s714) + (b_s714)) >= (0));
c_s713 := (a_s714) + (b_s714);
assume ((c_s713) >= (0));
assume ((a_s714) >= (0));
if (!((c_s713) >= (a_s714))) {
revert := true;
return;
}
assume ((c_s713) >= (0));
__ret_0_ := c_s713;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s714: int, b_s714: int) returns (__ret_0_: int)
{
var c_s713: int;
assume ((c_s713) >= (0));
assume ((a_s714) >= (0));
assume ((b_s714) >= (0));
assume (((a_s714) + (b_s714)) >= (0));
c_s713 := (a_s714) + (b_s714);
assume ((c_s713) >= (0));
assume ((a_s714) >= (0));
if (!((c_s713) >= (a_s714))) {
revert := true;
return;
}
assume ((c_s713) >= (0));
__ret_0_ := c_s713;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s739: int, b_s739: int) returns (__ret_0_: int)
{
var c_s738: int;
assume ((b_s739) >= (0));
assume ((a_s739) >= (0));
if (!((b_s739) <= (a_s739))) {
revert := true;
return;
}
assume ((c_s738) >= (0));
assume ((a_s739) >= (0));
assume ((b_s739) >= (0));
assume (((a_s739) - (b_s739)) >= (0));
c_s738 := (a_s739) - (b_s739);
assume ((c_s738) >= (0));
__ret_0_ := c_s738;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s739: int, b_s739: int) returns (__ret_0_: int)
{
var c_s738: int;
assume ((b_s739) >= (0));
assume ((a_s739) >= (0));
if (!((b_s739) <= (a_s739))) {
revert := true;
return;
}
assume ((c_s738) >= (0));
assume ((a_s739) >= (0));
assume ((b_s739) >= (0));
assume (((a_s739) - (b_s739)) >= (0));
c_s738 := (a_s739) - (b_s739);
assume ((c_s738) >= (0));
__ret_0_ := c_s738;
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s773: int, b_s773: int) returns (__ret_0_: int)
// {
// var c_s772: int;
// assume ((a_s773) >= (0));
// if ((a_s773) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s772) >= (0));
// assume ((a_s773) >= (0));
// assume ((b_s773) >= (0));
// assume (((a_s773) * (b_s773)) >= (0));
// c_s772 := (a_s773) * (b_s773);
// assume ((c_s772) >= (0));
// assume ((a_s773) >= (0));
// assume (((c_s772) div (a_s773)) >= (0));
// assume ((b_s773) >= (0));
// if (!(((c_s772) div (a_s773)) == (b_s773))) {
// revert := true;
// return;
// }
// assume ((c_s772) >= (0));
// __ret_0_ := c_s772;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s773: int, b_s773: int) returns (__ret_0_: int)
// {
// var c_s772: int;
// assume ((a_s773) >= (0));
// if ((a_s773) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s772) >= (0));
// assume ((a_s773) >= (0));
// assume ((b_s773) >= (0));
// assume (((a_s773) * (b_s773)) >= (0));
// c_s772 := (a_s773) * (b_s773);
// assume ((c_s772) >= (0));
// assume ((a_s773) >= (0));
// assume (((c_s772) div (a_s773)) >= (0));
// assume ((b_s773) >= (0));
// if (!(((c_s772) div (a_s773)) == (b_s773))) {
// revert := true;
// return;
// }
// assume ((c_s772) >= (0));
// __ret_0_ := c_s772;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s798: int, b_s798: int) returns (__ret_0_: int)
// {
// var c_s797: int;
// assume ((b_s798) >= (0));
// if (!((b_s798) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s797) >= (0));
// assume ((a_s798) >= (0));
// assume ((b_s798) >= (0));
// assume (((a_s798) div (b_s798)) >= (0));
// c_s797 := (a_s798) div (b_s798);
// assume ((c_s797) >= (0));
// __ret_0_ := c_s797;
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s798: int, b_s798: int) returns (__ret_0_: int)
// {
// var c_s797: int;
// assume ((b_s798) >= (0));
// if (!((b_s798) > (0))) {
// revert := true;
// return;
// }
// assume ((c_s797) >= (0));
// assume ((a_s798) >= (0));
// assume ((b_s798) >= (0));
// assume (((a_s798) div (b_s798)) >= (0));
// c_s797 := (a_s798) div (b_s798);
// assume ((c_s797) >= (0));
// __ret_0_ := c_s797;
// return;
// }

// implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s819: int, b_s819: int) returns (__ret_0_: int)
// {
// assume ((b_s819) >= (0));
// if (!((b_s819) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s819) >= (0));
// assume ((b_s819) >= (0));
// assume (((a_s819) mod (b_s819)) >= (0));
// __ret_0_ := (a_s819) mod (b_s819);
// return;
// }

// implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s819: int, b_s819: int) returns (__ret_0_: int)
// {
// assume ((b_s819) >= (0));
// if (!((b_s819) != (0))) {
// revert := true;
// return;
// }
// assume ((a_s819) >= (0));
// assume ((b_s819) >= (0));
// assume (((a_s819) mod (b_s819)) >= (0));
// __ret_0_ := (a_s819) mod (b_s819);
// return;
// }

implementation WhitelistAdminRole_WhitelistAdminRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_31: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_31 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call __var_31 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistAdminRole)) {
call __var_31 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _addWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistAdminRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation WhitelistAdminRole_WhitelistAdminRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_31: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_31 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call __var_31 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistAdminRole)) {
call __var_31 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call _addWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistAdminRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_31);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation WhitelistAdminRole_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_31: Ref;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistAdminRole_WhitelistAdminRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation WhitelistAdminRole_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_31: Ref;
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistAdminRole_WhitelistAdminRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation isWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s954: Ref) returns (__ret_0_: bool)
{
var __var_34: bool;
call __var_34 := has_Roles__fail(this, this, 0, __tmp___whitelistAdmins_WhitelistAdminRole[this], account_s954);
if (revert) {
return;
}
__ret_0_ := __var_34;
return;
}

implementation isWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s954: Ref) returns (__ret_0_: bool)
{
var __var_34: bool;
call __var_34 := has_Roles__success(this, this, 0, _whitelistAdmins_WhitelistAdminRole[this], account_s954);
if (revert) {
return;
}
__ret_0_ := __var_34;
return;
}

implementation addWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s966: Ref)
{
call onlyWhitelistAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _addWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s966);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s966);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistAdminRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s966);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation addWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s966: Ref)
{
call onlyWhitelistAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call _addWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, account_s966);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, account_s966);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistAdminRole)) {
call _addWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, account_s966);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renounceWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_35: Ref;
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_35 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call __var_35 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistAdminRole)) {
call __var_35 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _removeWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_35);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call _removeWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_35);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistAdminRole)) {
call _removeWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_35);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renounceWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_35: Ref;
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_35 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call __var_35 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistAdminRole)) {
call __var_35 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call _removeWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_35);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call _removeWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_35);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistAdminRole)) {
call _removeWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_35);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _addWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s991: Ref)
{
call add_Roles__fail(this, this, 0, __tmp___whitelistAdmins_WhitelistAdminRole[this], account_s991);
if (revert) {
return;
}
}

implementation _addWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s991: Ref)
{
call add_Roles__success(this, this, 0, _whitelistAdmins_WhitelistAdminRole[this], account_s991);
if (revert) {
return;
}
assert {:EventEmitted "WhitelistAdminAdded_WhitelistAdminRole"} (true);
}

implementation _removeWhitelistAdmin_WhitelistAdminRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1007: Ref)
{
call remove_Roles__fail(this, this, 0, __tmp___whitelistAdmins_WhitelistAdminRole[this], account_s1007);
if (revert) {
return;
}
}

implementation _removeWhitelistAdmin_WhitelistAdminRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1007: Ref)
{
call remove_Roles__success(this, this, 0, _whitelistAdmins_WhitelistAdminRole[this], account_s1007);
if (revert) {
return;
}
assert {:EventEmitted "WhitelistAdminRemoved_WhitelistAdminRole"} (true);
}

implementation WhitelistCrowdsale_WhitelistCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation WhitelistCrowdsale_WhitelistCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation WhitelistCrowdsale_WhitelistCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistAdminRole_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistedRole_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistCrowdsale_WhitelistCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation WhitelistCrowdsale_WhitelistCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistAdminRole_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistedRole_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistCrowdsale_WhitelistCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation _preValidatePurchase_WhitelistCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s27: Ref, _weiAmount_s27: int)
{
var __var_36: bool;
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_36 := isWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s27);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_36)) {
revert := true;
return;
}
assume ((_weiAmount_s27) >= (0));
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s27, _weiAmount_s27);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _preValidatePurchase_WhitelistCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s27: Ref, _weiAmount_s27: int)
{
var __var_36: bool;
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_36 := isWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s27);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_36)) {
revert := true;
return;
}
assume ((_weiAmount_s27) >= (0));
if ((DType[this]) == (WhitelistCrowdsale)) {
call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s27, _weiAmount_s27);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation WhitelistedRole_WhitelistedRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation WhitelistedRole_WhitelistedRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation WhitelistedRole_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistAdminRole_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistedRole_WhitelistedRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation WhitelistedRole_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistAdminRole_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call WhitelistedRole_WhitelistedRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation isWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s360: Ref) returns (__ret_0_: bool)
{
var __var_39: bool;
call __var_39 := has_Roles__fail(this, this, 0, __tmp___whitelisteds_WhitelistedRole[this], account_s360);
if (revert) {
return;
}
__ret_0_ := __var_39;
return;
}

implementation isWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s360: Ref) returns (__ret_0_: bool)
{
var __var_39: bool;
call __var_39 := has_Roles__success(this, this, 0, _whitelisteds_WhitelistedRole[this], account_s360);
if (revert) {
return;
}
__ret_0_ := __var_39;
return;
}

implementation addWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s372: Ref)
{
call onlyWhitelistAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _addWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s372);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call _addWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s372);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation addWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s372: Ref)
{
call onlyWhitelistAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call _addWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, account_s372);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call _addWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, account_s372);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation removeWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s384: Ref)
{
call onlyWhitelistAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _removeWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s384);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call _removeWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s384);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation removeWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s384: Ref)
{
call onlyWhitelistAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call _removeWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, account_s384);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call _removeWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, account_s384);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renounceWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_40: Ref;
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_40 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call __var_40 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call _removeWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_40);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call _removeWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_40);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation renounceWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_40: Ref;
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_40 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call __var_40 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call _removeWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, __var_40);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call _removeWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, __var_40);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _addWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s409: Ref)
{
call add_Roles__fail(this, this, 0, __tmp___whitelisteds_WhitelistedRole[this], account_s409);
if (revert) {
return;
}
}

implementation _addWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s409: Ref)
{
call add_Roles__success(this, this, 0, _whitelisteds_WhitelistedRole[this], account_s409);
if (revert) {
return;
}
assert {:EventEmitted "WhitelistedAdded_WhitelistedRole"} (true);
}

implementation _removeWhitelisted_WhitelistedRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s425: Ref)
{
call remove_Roles__fail(this, this, 0, __tmp___whitelisteds_WhitelistedRole[this], account_s425);
if (revert) {
return;
}
}

implementation _removeWhitelisted_WhitelistedRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s425: Ref)
{
call remove_Roles__success(this, this, 0, _whitelisteds_WhitelistedRole[this], account_s425);
if (revert) {
return;
}
assert {:EventEmitted "WhitelistedRemoved_WhitelistedRole"} (true);
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (WhitelistedRole)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (WhitelistCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (WhitelistAdminRole)) {
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
if ((DType[to]) == (WhitelistedRole)) {
assume ((amount) == (0));
} else if ((DType[to]) == (WhitelistCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (WhitelistAdminRole)) {
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
var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp___token_Crowdsale: [Ref]Ref;
var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
var __snap___tmp___rate_Crowdsale: [Ref]int;
var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
var __snap___tmp__bearer_Roles.Role: [Ref]Ref;
var __snap___tmp___whitelistAdmins_WhitelistAdminRole: [Ref]Ref;
var __snap___tmp___whitelisteds_WhitelistedRole: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
__snap___tmp__Length := __tmp__Length;
__snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
__snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
__snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
__snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
__snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
__snap___tmp__bearer_Roles.Role := __tmp__bearer_Roles.Role;
__snap___tmp___whitelistAdmins_WhitelistAdminRole := __tmp___whitelistAdmins_WhitelistAdminRole;
__snap___tmp___whitelisteds_WhitelistedRole := __tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
__tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
__tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
__tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := __snap___tmp__bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := __snap___tmp___whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := __snap___tmp___whitelisteds_WhitelistedRole;
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
__tmp___token_Crowdsale := _token_Crowdsale;
__tmp___wallet_Crowdsale := _wallet_Crowdsale;
__tmp___rate_Crowdsale := _rate_Crowdsale;
__tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
__tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
__tmp__bearer_Roles.Role := bearer_Roles.Role;
__tmp___whitelistAdmins_WhitelistAdminRole := _whitelistAdmins_WhitelistAdminRole;
__tmp___whitelisteds_WhitelistedRole := _whitelisteds_WhitelistedRole;
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

implementation onlyWhitelistAdmin_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_32: bool;
var __var_33: Ref;
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_33 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call __var_33 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistAdminRole)) {
call __var_33 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_32 := isWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_33);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call __var_32 := isWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_33);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistAdminRole)) {
call __var_32 := isWhitelistAdmin_WhitelistAdminRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_33);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_32)) {
revert := true;
return;
}
}

implementation onlyWhitelistAdmin_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_32: bool;
var __var_33: Ref;
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_33 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call __var_33 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistAdminRole)) {
call __var_33 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_32 := isWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_33);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call __var_32 := isWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_33);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistAdminRole)) {
call __var_32 := isWhitelistAdmin_WhitelistAdminRole__success(this, msgsender_MSG, msgvalue_MSG, __var_33);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_32)) {
revert := true;
return;
}
}

implementation onlyWhitelisted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_37: bool;
var __var_38: Ref;
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_38 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call __var_38 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (WhitelistCrowdsale)) {
call __var_37 := isWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_38);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (WhitelistedRole)) {
call __var_37 := isWhitelisted_WhitelistedRole__fail(this, msgsender_MSG, msgvalue_MSG, __var_38);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_37)) {
revert := true;
return;
}
}

implementation onlyWhitelisted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_37: bool;
var __var_38: Ref;
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_38 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call __var_38 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (WhitelistCrowdsale)) {
call __var_37 := isWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, __var_38);
if (revert) {
return;
}
} else if ((DType[this]) == (WhitelistedRole)) {
call __var_37 := isWhitelisted_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG, __var_38);
if (revert) {
return;
}
} else {
assume (false);
}
if (!(__var_37)) {
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
assume ((((((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (WhitelistAdminRole))) || ((DType[this]) == (WhitelistCrowdsale))) || ((DType[this]) == (WhitelistedRole)));
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
var rate_s109: int;
var wallet_s109: Ref;
var token_s109: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s207: Ref;
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (WhitelistCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s109, wallet_s109, token_s109);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  invariant (HoudiniB1_Crowdsale) ==> ((_wallet_Crowdsale[this]) == (null));
  invariant (HoudiniB2_Crowdsale) ==> ((_wallet_Crowdsale[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s109;
havoc wallet_s109;
havoc token_s109;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s207;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207);
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
assume ((((DType[this]) == (Crowdsale)) || ((DType[this]) == (ReentrancyGuard))) || ((DType[this]) == (WhitelistCrowdsale)));
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

implementation BoogieEntry_Roles()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((DType[this]) == (Roles));
gas := (gas) - (53000);
call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
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

implementation BoogieEntry_WhitelistAdminRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s954: Ref;
var __ret_0_isWhitelistAdmin: bool;
var account_s966: Ref;
assume ((((DType[this]) == (WhitelistAdminRole)) || ((DType[this]) == (WhitelistCrowdsale))) || ((DType[this]) == (WhitelistedRole)));
gas := (gas) - (53000);
call WhitelistAdminRole_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s954;
havoc __ret_0_isWhitelistAdmin;
havoc account_s966;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_isWhitelistAdmin := isWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s954);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call addWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s966);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renounceWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s109: int;
var wallet_s109: Ref;
var token_s109: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s207: Ref;
var account_s954: Ref;
var __ret_0_isWhitelistAdmin: bool;
var account_s966: Ref;
var account_s360: Ref;
var __ret_0_isWhitelisted: bool;
var account_s372: Ref;
var account_s384: Ref;
assume ((DType[this]) == (WhitelistCrowdsale));
gas := (gas) - (53000);
call WhitelistCrowdsale_WhitelistCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
assume (null == 0);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s109;
havoc wallet_s109;
havoc token_s109;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s207;
havoc account_s954;
havoc __ret_0_isWhitelistAdmin;
havoc account_s966;
havoc account_s360;
havoc __ret_0_isWhitelisted;
havoc account_s372;
havoc account_s384;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_isWhitelistAdmin := isWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s954);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call addWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s966);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call renounceWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_isWhitelisted := isWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s360);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call addWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s372);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call removeWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s384);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renounceWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_WhitelistedRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s954: Ref;
var __ret_0_isWhitelistAdmin: bool;
var account_s966: Ref;
var account_s360: Ref;
var __ret_0_isWhitelisted: bool;
var account_s372: Ref;
var account_s384: Ref;
assume (((DType[this]) == (WhitelistCrowdsale)) || ((DType[this]) == (WhitelistedRole)));
gas := (gas) - (53000);
call WhitelistedRole_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s954;
havoc __ret_0_isWhitelistAdmin;
havoc account_s966;
havoc account_s360;
havoc __ret_0_isWhitelisted;
havoc account_s372;
havoc account_s384;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_isWhitelistAdmin := isWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s954);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call addWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s966);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call renounceWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_isWhitelisted := isWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s360);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call addWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s372);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call removeWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s384);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renounceWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG);
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
assume ((((((DType[this]) == (Context)) || ((DType[this]) == (Crowdsale))) || ((DType[this]) == (WhitelistAdminRole))) || ((DType[this]) == (WhitelistCrowdsale))) || ((DType[this]) == (WhitelistedRole)));
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
var rate_s109: int;
var wallet_s109: Ref;
var token_s109: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s207: Ref;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s109;
havoc wallet_s109;
havoc token_s109;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s207;
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
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207);
}
}

implementation CorralEntry_Crowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var rate_s109: int;
var wallet_s109: Ref;
var token_s109: Ref;
assume (((DType[this]) == (Crowdsale)) || ((DType[this]) == (WhitelistCrowdsale)));
gas := (gas) - (53000);
call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s109, wallet_s109, token_s109);
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
assume ((((DType[this]) == (Crowdsale)) || ((DType[this]) == (ReentrancyGuard))) || ((DType[this]) == (WhitelistCrowdsale)));
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
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
}

implementation CorralEntry_Roles()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
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

implementation CorralChoice_WhitelistAdminRole(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s954: Ref;
var __ret_0_isWhitelistAdmin: bool;
var account_s966: Ref;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s954;
havoc __ret_0_isWhitelistAdmin;
havoc account_s966;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_isWhitelistAdmin := isWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s954);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call addWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s966);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renounceWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_WhitelistAdminRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((((DType[this]) == (WhitelistAdminRole)) || ((DType[this]) == (WhitelistCrowdsale))) || ((DType[this]) == (WhitelistedRole)));
gas := (gas) - (53000);
call WhitelistAdminRole_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_WhitelistAdminRole(this);
}
}

implementation CorralChoice_WhitelistCrowdsale(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var rate_s109: int;
var wallet_s109: Ref;
var token_s109: Ref;
var __ret_0_token: Ref;
var __ret_0_wallet: Ref;
var __ret_0_rate: int;
var __ret_0_weiRaised: int;
var beneficiary_s207: Ref;
var account_s954: Ref;
var __ret_0_isWhitelistAdmin: bool;
var account_s966: Ref;
var account_s360: Ref;
var __ret_0_isWhitelisted: bool;
var account_s372: Ref;
var account_s384: Ref;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc rate_s109;
havoc wallet_s109;
havoc token_s109;
havoc __ret_0_token;
havoc __ret_0_wallet;
havoc __ret_0_rate;
havoc __ret_0_weiRaised;
havoc beneficiary_s207;
havoc account_s954;
havoc __ret_0_isWhitelistAdmin;
havoc account_s966;
havoc account_s360;
havoc __ret_0_isWhitelisted;
havoc account_s372;
havoc account_s384;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s207);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_isWhitelistAdmin := isWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s954);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call addWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s966);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call renounceWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_isWhitelisted := isWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s360);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call addWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s372);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call removeWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s384);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renounceWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_WhitelistCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((DType[this]) == (WhitelistCrowdsale));
gas := (gas) - (53000);
call WhitelistCrowdsale_WhitelistCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_WhitelistCrowdsale(this);
}
}

implementation CorralChoice_WhitelistedRole(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var account_s954: Ref;
var __ret_0_isWhitelistAdmin: bool;
var account_s966: Ref;
var account_s360: Ref;
var __ret_0_isWhitelisted: bool;
var account_s372: Ref;
var account_s384: Ref;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc account_s954;
havoc __ret_0_isWhitelistAdmin;
havoc account_s966;
havoc account_s360;
havoc __ret_0_isWhitelisted;
havoc account_s372;
havoc account_s384;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_isWhitelistAdmin := isWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s954);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call addWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG, account_s966);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call renounceWhitelistAdmin_WhitelistAdminRole(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_isWhitelisted := isWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s360);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call addWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s372);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call removeWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG, account_s384);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call renounceWhitelisted_WhitelistedRole(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_WhitelistedRole()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume (((DType[this]) == (WhitelistCrowdsale)) || ((DType[this]) == (WhitelistedRole)));
gas := (gas) - (53000);
call WhitelistedRole_WhitelistedRole__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_WhitelistedRole(this);
}
}


