type Ref = int;
type ContractName = int;
var null: Ref;
var ERC20Token: ContractName;
var Fund: ContractName;
var ICrowdsaleFund: ContractName;
var IERC20Token: ContractName;
var ISimpleCrowdsale: ContractName;
var ITokenEventListener: ContractName;
var ManagedToken: ContractName;
var MultiOwnable: ContractName;
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
var M_Ref_int: [Ref][Ref]int;
var M_Ref_Ref: [Ref][Ref]Ref;
var M_Ref_bool: [Ref][Ref]bool;
var M_int_Ref: [Ref][int]Ref;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} ERC20Token_ERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies balances_ERC20Token;
modifies M_Ref_int;
modifies allowed_ERC20Token;
modifies M_Ref_Ref;
modifies Alloc;
procedure {:inline 1} ERC20Token_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies balances_ERC20Token;
modifies M_Ref_int;
modifies allowed_ERC20Token;
modifies M_Ref_Ref;
modifies Alloc;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
implementation ERC20Token_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var balances_ERC20Token: [Ref]Ref;
var allowed_ERC20Token: [Ref]Ref;
procedure {:public} {:inline 1} transfer_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1493: Ref, _value_s1493: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_int;
implementation transfer_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1493: Ref, _value_s1493: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := transfer_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transfer_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1553: Ref, _value_s1553: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:public} {:inline 1} transferFrom_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1571: Ref, _to_s1571: Ref, _value_s1571: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation transferFrom_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1571: Ref, _to_s1571: Ref, _value_s1571: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := transferFrom_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transferFrom_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1655: Ref, _to_s1655: Ref, _value_s1655: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1667: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
implementation balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1667: Ref) returns (__ret_0_: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := balanceOf_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s1667);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s1667);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1682: Ref, _value_s1682: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation approve_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1682: Ref, _value_s1682: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := approve_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} approve_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1710: Ref, _value_s1710: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} allowance_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1726: Ref, _spender_s1726: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation allowance_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1726: Ref, _spender_s1726: Ref) returns (__ret_0_: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := allowance_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s1726, _spender_s1726);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s1726, _spender_s1726);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var state_Fund: [Ref]int;
var token_Fund: [Ref]Ref;
var INITIAL_TAP_Fund: [Ref]int;
var teamWallet_Fund: [Ref]Ref;
var crowdsaleEndDate_Fund: [Ref]int;
var referralTokenWallet_Fund: [Ref]Ref;
var foundationTokenWallet_Fund: [Ref]Ref;
var reserveTokenWallet_Fund: [Ref]Ref;
var bountyTokenWallet_Fund: [Ref]Ref;
var companyTokenWallet_Fund: [Ref]Ref;
var advisorTokenWallet_Fund: [Ref]Ref;
var lockedTokenAddress_Fund: [Ref]Ref;
var refundManager_Fund: [Ref]Ref;
var lastWithdrawTime_Fund: [Ref]int;
var firstWithdrawAmount_Fund: [Ref]int;
var crowdsaleAddress_Fund: [Ref]Ref;
var contributions_Fund: [Ref]Ref;
procedure {:inline 1} Fund_Fund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref);
modifies INITIAL_TAP_Fund;
modifies teamWallet_Fund;
modifies crowdsaleEndDate_Fund;
modifies referralTokenWallet_Fund;
modifies foundationTokenWallet_Fund;
modifies reserveTokenWallet_Fund;
modifies bountyTokenWallet_Fund;
modifies companyTokenWallet_Fund;
modifies advisorTokenWallet_Fund;
modifies lockedTokenAddress_Fund;
modifies refundManager_Fund;
modifies lastWithdrawTime_Fund;
modifies firstWithdrawAmount_Fund;
modifies crowdsaleAddress_Fund;
modifies contributions_Fund;
modifies M_Ref_int;
modifies Alloc;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure {:constructor} {:public} {:inline 1} Fund_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies INITIAL_TAP_Fund;
modifies teamWallet_Fund;
modifies crowdsaleEndDate_Fund;
modifies referralTokenWallet_Fund;
modifies foundationTokenWallet_Fund;
modifies reserveTokenWallet_Fund;
modifies bountyTokenWallet_Fund;
modifies companyTokenWallet_Fund;
modifies advisorTokenWallet_Fund;
modifies lockedTokenAddress_Fund;
modifies refundManager_Fund;
modifies lastWithdrawTime_Fund;
modifies firstWithdrawAmount_Fund;
modifies crowdsaleAddress_Fund;
modifies contributions_Fund;
modifies M_Ref_int;
modifies Alloc;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
implementation Fund_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call Fund_Fund__fail(this, msgsender_MSG, msgvalue_MSG, _teamWallet_s145, _referralTokenWallet_s145, _foundationTokenWallet_s145, _companyTokenWallet_s145, _reserveTokenWallet_s145, _bountyTokenWallet_s145, _advisorTokenWallet_s145, _refundManager_s145, _owners_s145);
assume ((revert) || ((gas) < (0)));
} else {
call Fund_Fund__success(this, msgsender_MSG, msgvalue_MSG, _teamWallet_s145, _referralTokenWallet_s145, _foundationTokenWallet_s145, _companyTokenWallet_s145, _reserveTokenWallet_s145, _bountyTokenWallet_s145, _advisorTokenWallet_s145, _refundManager_s145, _owners_s145);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} canWithdraw_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} setCrowdsaleAddress_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _crowdsaleAddress_s190: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies crowdsaleAddress_Fund;
implementation setCrowdsaleAddress_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _crowdsaleAddress_s190: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call setCrowdsaleAddress_Fund__fail(this, msgsender_MSG, msgvalue_MSG, _crowdsaleAddress_s190);
assume ((revert) || ((gas) < (0)));
} else {
call setCrowdsaleAddress_Fund__success(this, msgsender_MSG, msgvalue_MSG, _crowdsaleAddress_s190);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setTokenAddress_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s214: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies token_Fund;
implementation setTokenAddress_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s214: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call setTokenAddress_Fund__fail(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s214);
assume ((revert) || ((gas) < (0)));
} else {
call setTokenAddress_Fund__success(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s214);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setLockedTokenAddress_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lockedTokenAddress_s236: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies lockedTokenAddress_Fund;
implementation setLockedTokenAddress_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lockedTokenAddress_s236: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call setLockedTokenAddress_Fund__fail(this, msgsender_MSG, msgvalue_MSG, _lockedTokenAddress_s236);
assume ((revert) || ((gas) < (0)));
} else {
call setLockedTokenAddress_Fund__success(this, msgsender_MSG, msgvalue_MSG, _lockedTokenAddress_s236);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} processContribution_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s267: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
modifies M_Ref_int;
implementation processContribution_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s267: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call processContribution_Fund__fail(this, msgsender_MSG, msgvalue_MSG, contributor_s267);
assume ((revert) || ((gas) < (0)));
} else {
call processContribution_Fund__success(this, msgsender_MSG, msgvalue_MSG, contributor_s267);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} onCrowdsaleEnd_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies state_Fund;
modifies firstWithdrawAmount_Fund;
modifies lastWithdrawTime_Fund;
modifies crowdsaleEndDate_Fund;
implementation onCrowdsaleEnd_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call onCrowdsaleEnd_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call onCrowdsaleEnd_Fund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} enableCrowdsaleRefund_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies state_Fund;
implementation enableCrowdsaleRefund_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call enableCrowdsaleRefund_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call enableCrowdsaleRefund_Fund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} refundCrowdsaleContributor_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies gas;
modifies M_Ref_int;
modifies Balance;
implementation refundCrowdsaleContributor_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call refundCrowdsaleContributor_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call refundCrowdsaleContributor_Fund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} autoRefundCrowdsaleContributor_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s448: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies gas;
modifies M_Ref_int;
modifies Balance;
implementation autoRefundCrowdsaleContributor_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s448: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call autoRefundCrowdsaleContributor_Fund__fail(this, msgsender_MSG, msgvalue_MSG, contributorAddress_s448);
assume ((revert) || ((gas) < (0)));
} else {
call autoRefundCrowdsaleContributor_Fund__success(this, msgsender_MSG, msgvalue_MSG, contributorAddress_s448);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} getCurrentTapAmount_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
implementation getCurrentTapAmount_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := getCurrentTapAmount_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := getCurrentTapAmount_Fund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} calcTapAmount_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} firstWithdraw_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies gas;
modifies firstWithdrawAmount_Fund;
modifies Balance;
implementation firstWithdraw_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call firstWithdraw_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call firstWithdraw_Fund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} withdraw_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies gas;
modifies lastWithdrawTime_Fund;
modifies Balance;
implementation withdraw_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call withdraw_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call withdraw_Fund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} enableRefund_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies state_Fund;
modifies M_Ref_int;
procedure {:public} {:inline 1} refundTokenHolder_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies gas;
modifies M_Ref_int;
modifies Balance;
implementation refundTokenHolder_Fund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call refundTokenHolder_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call refundTokenHolder_Fund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} ICrowdsaleFund_ICrowdsaleFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ICrowdsaleFund_ICrowdsaleFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
implementation ICrowdsaleFund_ICrowdsaleFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call ICrowdsaleFund_ICrowdsaleFund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ICrowdsaleFund_ICrowdsaleFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} processContribution_ICrowdsaleFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s740: Ref);
procedure {:public} {:inline 1} onCrowdsaleEnd_ICrowdsaleFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:public} {:inline 1} enableCrowdsaleRefund_ICrowdsaleFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20Token_IERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure {:inline 1} IERC20Token_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
implementation IERC20Token_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call IERC20Token_IERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var name_IERC20Token: [Ref]int;
var symbol_IERC20Token: [Ref]int;
var decimals_IERC20Token: [Ref]int;
var totalSupply_IERC20Token: [Ref]int;
procedure {:public} {:inline 1} balanceOf_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1756: Ref) returns (balance_s1756: int);
procedure {:public} {:inline 1} transfer_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1765: Ref, _value_s1765: int) returns (success_s1765: bool);
procedure {:public} {:inline 1} transferFrom_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1776: Ref, _to_s1776: Ref, _value_s1776: int) returns (success_s1776: bool);
procedure {:public} {:inline 1} approve_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1785: Ref, _value_s1785: int) returns (success_s1785: bool);
procedure {:public} {:inline 1} allowance_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1794: Ref, _spender_s1794: Ref) returns (remaining_s1794: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
implementation ISimpleCrowdsale_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call ISimpleCrowdsale_ISimpleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ISimpleCrowdsale_ISimpleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} getSoftCap_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} isContributorInLists_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s761: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} processReservationFundContribution_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s770: Ref, tokenAmount_s770: int, tokenBonusAmount_s770: int);
procedure {:inline 1} ITokenEventListener_ITokenEventListener_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ITokenEventListener_ITokenEventListener(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
implementation ITokenEventListener_ITokenEventListener(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call ITokenEventListener_ITokenEventListener__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ITokenEventListener_ITokenEventListener__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} onTokenTransfer_ITokenEventListener(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1738: Ref, _to_s1738: Ref, _value_s1738: int);
var allowTransfers_ManagedToken: [Ref]bool;
var issuanceFinished_ManagedToken: [Ref]bool;
var eventListener_ManagedToken: [Ref]Ref;
procedure {:inline 1} ManagedToken_ManagedToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref);
modifies allowTransfers_ManagedToken;
modifies issuanceFinished_ManagedToken;
modifies eventListener_ManagedToken;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure {:constructor} {:public} {:inline 1} ManagedToken_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
modifies balances_ERC20Token;
modifies M_Ref_int;
modifies allowed_ERC20Token;
modifies M_Ref_Ref;
modifies Alloc;
modifies allowTransfers_ManagedToken;
modifies issuanceFinished_ManagedToken;
modifies eventListener_ManagedToken;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
implementation ManagedToken_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call ManagedToken_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _listener_s849, _owners_s849);
assume ((revert) || ((gas) < (0)));
} else {
call ManagedToken_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _listener_s849, _owners_s849);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} approve_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s864: Ref, _value_s864: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} setAllowTransfers_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s880: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies allowTransfers_ManagedToken;
implementation setAllowTransfers_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s880: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call setAllowTransfers_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s880);
assume ((revert) || ((gas) < (0)));
} else {
call setAllowTransfers_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s880);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setListener_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s905: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies eventListener_ManagedToken;
implementation setListener_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s905: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call setListener_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _listener_s905);
assume ((revert) || ((gas) < (0)));
} else {
call setListener_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _listener_s905);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s920: Ref, _value_s920: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_int;
implementation transfer_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s920: Ref, _value_s920: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := transfer_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s920, _value_s920);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s920, _value_s920);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transfer_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s956: Ref, _value_s956: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:public} {:inline 1} transferFrom_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s974: Ref, _to_s974: Ref, _value_s974: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation transferFrom_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s974: Ref, _to_s974: Ref, _value_s974: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := transferFrom_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s974, _to_s974, _value_s974);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s974, _to_s974, _value_s974);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transferFrom_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1012: Ref, _to_s1012: Ref, _value_s1012: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} hasListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} issue_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1067: Ref, _value_s1067: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_int;
implementation issue_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1067: Ref, _value_s1067: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call issue_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1067, _value_s1067);
assume ((revert) || ((gas) < (0)));
} else {
call issue_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1067, _value_s1067);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} destroy_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1119: Ref, _value_s1119: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_int;
implementation destroy_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1119: Ref, _value_s1119: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call destroy_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1119, _value_s1119);
assume ((revert) || ((gas) < (0)));
} else {
call destroy_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1119, _value_s1119);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} increaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1160: Ref, _addedValue_s1160: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation increaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1160: Ref, _addedValue_s1160: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := increaseApproval_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1160, _addedValue_s1160);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := increaseApproval_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1160, _addedValue_s1160);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decreaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1220: Ref, _subtractedValue_s1220: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation decreaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1220: Ref, _subtractedValue_s1220: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := decreaseApproval_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1220, _subtractedValue_s1220);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decreaseApproval_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1220, _subtractedValue_s1220);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} finishIssuance_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies issuanceFinished_ManagedToken;
implementation finishIssuance_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := finishIssuance_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := finishIssuance_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var manager_MultiOwnable: [Ref]Ref;
var owners_MultiOwnable: [Ref]Ref;
var ownerByAddress_MultiOwnable: [Ref]Ref;
procedure {:inline 1} MultiOwnable_MultiOwnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies manager_MultiOwnable;
modifies owners_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
modifies M_Ref_bool;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} MultiOwnable_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies manager_MultiOwnable;
modifies owners_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
modifies M_Ref_bool;
modifies Alloc;
implementation MultiOwnable_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call MultiOwnable_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call MultiOwnable_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setOwners_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1294: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
implementation setOwners_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1294: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
assume ((revert) || ((gas) < (0)));
} else {
call setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1351: Ref);
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure {:public} {:inline 1} getOwners_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
implementation getOwners_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call __ret_0_ := getOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := getOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

// procedure {:inline 1} safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1397: int, b_s1397: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1415: int, b_s1415: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1435: int, b_s1435: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1459: int, b_s1459: int) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies revert;
modifies Balance;
procedure BoogieEntry_ERC20Token();
modifies gas;
modifies now;
modifies balances_ERC20Token;
modifies M_Ref_int;
modifies allowed_ERC20Token;
modifies M_Ref_Ref;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
// const {:existential true} HoudiniB1_Fund: bool;
// const {:existential true} HoudiniB2_Fund: bool;
// const {:existential true} HoudiniB3_Fund: bool;
// const {:existential true} HoudiniB4_Fund: bool;
// const {:existential true} HoudiniB5_Fund: bool;
// const {:existential true} HoudiniB6_Fund: bool;
// const {:existential true} HoudiniB7_Fund: bool;
// const {:existential true} HoudiniB8_Fund: bool;
// const {:existential true} HoudiniB9_Fund: bool;
// const {:existential true} HoudiniB10_Fund: bool;
// const {:existential true} HoudiniB11_Fund: bool;
// const {:existential true} HoudiniB12_Fund: bool;
// const {:existential true} HoudiniB13_Fund: bool;
// const {:existential true} HoudiniB14_Fund: bool;
// const {:existential true} HoudiniB15_Fund: bool;
// const {:existential true} HoudiniB16_Fund: bool;
// const {:existential true} HoudiniB17_Fund: bool;
// const {:existential true} HoudiniB18_Fund: bool;
// const {:existential true} HoudiniB19_Fund: bool;
// const {:existential true} HoudiniB20_Fund: bool;
// const {:existential true} HoudiniB21_Fund: bool;
// const {:existential true} HoudiniB22_Fund: bool;
// const {:existential true} HoudiniB23_Fund: bool;
// const {:existential true} HoudiniB24_Fund: bool;
// const {:existential true} HoudiniB25_Fund: bool;
// const {:existential true} HoudiniB26_Fund: bool;
// const {:existential true} HoudiniB27_Fund: bool;
// const {:existential true} HoudiniB28_Fund: bool;
// const {:existential true} HoudiniB29_Fund: bool;
// const {:existential true} HoudiniB30_Fund: bool;
// const {:existential true} HoudiniB31_Fund: bool;
// const {:existential true} HoudiniB32_Fund: bool;
// const {:existential true} HoudiniB33_Fund: bool;
// const {:existential true} HoudiniB34_Fund: bool;
// const {:existential true} HoudiniB35_Fund: bool;
// const {:existential true} HoudiniB36_Fund: bool;
// const {:existential true} HoudiniB37_Fund: bool;
// const {:existential true} HoudiniB38_Fund: bool;
// const {:existential true} HoudiniB39_Fund: bool;
// const {:existential true} HoudiniB40_Fund: bool;
// const {:existential true} HoudiniB41_Fund: bool;
// const {:existential true} HoudiniB42_Fund: bool;
// const {:existential true} HoudiniB43_Fund: bool;
// const {:existential true} HoudiniB44_Fund: bool;
// const {:existential true} HoudiniB45_Fund: bool;
// const {:existential true} HoudiniB46_Fund: bool;
// const {:existential true} HoudiniB47_Fund: bool;
// const {:existential true} HoudiniB48_Fund: bool;
// const {:existential true} HoudiniB49_Fund: bool;
// const {:existential true} HoudiniB50_Fund: bool;
// const {:existential true} HoudiniB51_Fund: bool;
// const {:existential true} HoudiniB52_Fund: bool;
// const {:existential true} HoudiniB53_Fund: bool;
// const {:existential true} HoudiniB54_Fund: bool;
// const {:existential true} HoudiniB55_Fund: bool;
// const {:existential true} HoudiniB56_Fund: bool;
// const {:existential true} HoudiniB57_Fund: bool;
// const {:existential true} HoudiniB58_Fund: bool;
// const {:existential true} HoudiniB59_Fund: bool;
// const {:existential true} HoudiniB60_Fund: bool;
// const {:existential true} HoudiniB61_Fund: bool;
// const {:existential true} HoudiniB62_Fund: bool;
// const {:existential true} HoudiniB63_Fund: bool;
// const {:existential true} HoudiniB64_Fund: bool;
// const {:existential true} HoudiniB65_Fund: bool;
// const {:existential true} HoudiniB66_Fund: bool;
// const {:existential true} HoudiniB67_Fund: bool;
// const {:existential true} HoudiniB68_Fund: bool;
// const {:existential true} HoudiniB69_Fund: bool;
// const {:existential true} HoudiniB70_Fund: bool;
// const {:existential true} HoudiniB71_Fund: bool;
// const {:existential true} HoudiniB72_Fund: bool;
// const {:existential true} HoudiniB73_Fund: bool;
// const {:existential true} HoudiniB74_Fund: bool;
// const {:existential true} HoudiniB75_Fund: bool;
// const {:existential true} HoudiniB76_Fund: bool;
// const {:existential true} HoudiniB77_Fund: bool;
// const {:existential true} HoudiniB78_Fund: bool;
// const {:existential true} HoudiniB79_Fund: bool;
// const {:existential true} HoudiniB80_Fund: bool;
// const {:existential true} HoudiniB81_Fund: bool;
// const {:existential true} HoudiniB82_Fund: bool;
// const {:existential true} HoudiniB83_Fund: bool;
// const {:existential true} HoudiniB84_Fund: bool;
// const {:existential true} HoudiniB85_Fund: bool;
// const {:existential true} HoudiniB86_Fund: bool;
// const {:existential true} HoudiniB87_Fund: bool;
// const {:existential true} HoudiniB88_Fund: bool;
// const {:existential true} HoudiniB89_Fund: bool;
// const {:existential true} HoudiniB90_Fund: bool;
// const {:existential true} HoudiniB91_Fund: bool;
// const {:existential true} HoudiniB92_Fund: bool;
// const {:existential true} HoudiniB93_Fund: bool;
// const {:existential true} HoudiniB94_Fund: bool;
// const {:existential true} HoudiniB95_Fund: bool;
// const {:existential true} HoudiniB96_Fund: bool;
// const {:existential true} HoudiniB97_Fund: bool;
// const {:existential true} HoudiniB98_Fund: bool;
// const {:existential true} HoudiniB99_Fund: bool;
// const {:existential true} HoudiniB100_Fund: bool;
// const {:existential true} HoudiniB101_Fund: bool;
// const {:existential true} HoudiniB102_Fund: bool;
// const {:existential true} HoudiniB103_Fund: bool;
// const {:existential true} HoudiniB104_Fund: bool;
// const {:existential true} HoudiniB105_Fund: bool;
// const {:existential true} HoudiniB106_Fund: bool;
// const {:existential true} HoudiniB107_Fund: bool;
// const {:existential true} HoudiniB108_Fund: bool;
// const {:existential true} HoudiniB109_Fund: bool;
// const {:existential true} HoudiniB110_Fund: bool;
// const {:existential true} HoudiniB111_Fund: bool;
// const {:existential true} HoudiniB112_Fund: bool;
// const {:existential true} HoudiniB113_Fund: bool;
// const {:existential true} HoudiniB114_Fund: bool;
// const {:existential true} HoudiniB115_Fund: bool;
// const {:existential true} HoudiniB116_Fund: bool;
// const {:existential true} HoudiniB117_Fund: bool;
// const {:existential true} HoudiniB118_Fund: bool;
// const {:existential true} HoudiniB119_Fund: bool;
// const {:existential true} HoudiniB120_Fund: bool;
// const {:existential true} HoudiniB121_Fund: bool;
// const {:existential true} HoudiniB122_Fund: bool;
// const {:existential true} HoudiniB123_Fund: bool;
// const {:existential true} HoudiniB124_Fund: bool;
// const {:existential true} HoudiniB125_Fund: bool;
// const {:existential true} HoudiniB126_Fund: bool;
// const {:existential true} HoudiniB127_Fund: bool;
// const {:existential true} HoudiniB128_Fund: bool;
// const {:existential true} HoudiniB129_Fund: bool;
// const {:existential true} HoudiniB130_Fund: bool;
// const {:existential true} HoudiniB131_Fund: bool;
// const {:existential true} HoudiniB132_Fund: bool;
procedure main();
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
modifies M_Ref_int;
modifies state_Fund;
modifies firstWithdrawAmount_Fund;
modifies lastWithdrawTime_Fund;
modifies crowdsaleEndDate_Fund;
modifies crowdsaleAddress_Fund;
modifies token_Fund;
modifies lockedTokenAddress_Fund;
modifies INITIAL_TAP_Fund;
modifies teamWallet_Fund;
modifies referralTokenWallet_Fund;
modifies foundationTokenWallet_Fund;
modifies reserveTokenWallet_Fund;
modifies bountyTokenWallet_Fund;
modifies companyTokenWallet_Fund;
modifies advisorTokenWallet_Fund;
modifies refundManager_Fund;
modifies contributions_Fund;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
procedure BoogieEntry_ICrowdsaleFund();
modifies gas;
modifies now;
procedure BoogieEntry_IERC20Token();
modifies gas;
modifies now;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure BoogieEntry_ISimpleCrowdsale();
modifies gas;
modifies now;
procedure BoogieEntry_ITokenEventListener();
modifies gas;
modifies now;
// const {:existential true} HoudiniB1_ManagedToken: bool;
// const {:existential true} HoudiniB2_ManagedToken: bool;
procedure BoogieEntry_ManagedToken();
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies allowTransfers_ManagedToken;
modifies eventListener_ManagedToken;
modifies issuanceFinished_ManagedToken;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
modifies balances_ERC20Token;
modifies allowed_ERC20Token;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
// const {:existential true} HoudiniB1_MultiOwnable: bool;
// const {:existential true} HoudiniB2_MultiOwnable: bool;
procedure BoogieEntry_MultiOwnable();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Alloc;
modifies manager_MultiOwnable;
modifies owners_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
modifies M_Ref_bool;
procedure BoogieEntry_SafeMath();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure withdrawEnabled_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyCrowdsale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure transfersAllowed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure canIssue_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure CorralChoice_ERC20Token(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure CorralEntry_ERC20Token();
modifies gas;
modifies balances_ERC20Token;
modifies M_Ref_int;
modifies allowed_ERC20Token;
modifies M_Ref_Ref;
modifies Alloc;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure CorralChoice_Fund(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
modifies M_Ref_int;
modifies state_Fund;
modifies firstWithdrawAmount_Fund;
modifies lastWithdrawTime_Fund;
modifies crowdsaleEndDate_Fund;
modifies Alloc;
modifies crowdsaleAddress_Fund;
modifies token_Fund;
modifies lockedTokenAddress_Fund;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure CorralEntry_Fund();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies now;
modifies Balance;
modifies M_Ref_int;
modifies state_Fund;
modifies firstWithdrawAmount_Fund;
modifies lastWithdrawTime_Fund;
modifies crowdsaleEndDate_Fund;
modifies crowdsaleAddress_Fund;
modifies token_Fund;
modifies lockedTokenAddress_Fund;
modifies INITIAL_TAP_Fund;
modifies teamWallet_Fund;
modifies referralTokenWallet_Fund;
modifies foundationTokenWallet_Fund;
modifies reserveTokenWallet_Fund;
modifies bountyTokenWallet_Fund;
modifies companyTokenWallet_Fund;
modifies advisorTokenWallet_Fund;
modifies refundManager_Fund;
modifies contributions_Fund;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
procedure CorralChoice_ICrowdsaleFund(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_ICrowdsaleFund();
modifies gas;
modifies now;
procedure CorralChoice_IERC20Token(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_IERC20Token();
modifies gas;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
modifies now;
procedure CorralChoice_ISimpleCrowdsale(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_ISimpleCrowdsale();
modifies gas;
modifies now;
procedure CorralChoice_ITokenEventListener(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_ITokenEventListener();
modifies gas;
modifies now;
procedure CorralChoice_ManagedToken(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
modifies allowTransfers_ManagedToken;
modifies eventListener_ManagedToken;
modifies issuanceFinished_ManagedToken;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure CorralEntry_ManagedToken();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies now;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies allowTransfers_ManagedToken;
modifies eventListener_ManagedToken;
modifies issuanceFinished_ManagedToken;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
modifies balances_ERC20Token;
modifies allowed_ERC20Token;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
procedure CorralChoice_MultiOwnable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure CorralEntry_MultiOwnable();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies now;
modifies Alloc;
modifies manager_MultiOwnable;
modifies owners_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
modifies M_Ref_bool;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_SafeMath();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies now;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __tmp__M_Ref_bool: [Ref][Ref]bool;
var __tmp__M_int_Ref: [Ref][int]Ref;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__balances_ERC20Token: [Ref]Ref;
var __tmp__allowed_ERC20Token: [Ref]Ref;
var __tmp__state_Fund: [Ref]int;
var __tmp__token_Fund: [Ref]Ref;
var __tmp__INITIAL_TAP_Fund: [Ref]int;
var __tmp__teamWallet_Fund: [Ref]Ref;
var __tmp__crowdsaleEndDate_Fund: [Ref]int;
var __tmp__referralTokenWallet_Fund: [Ref]Ref;
var __tmp__foundationTokenWallet_Fund: [Ref]Ref;
var __tmp__reserveTokenWallet_Fund: [Ref]Ref;
var __tmp__bountyTokenWallet_Fund: [Ref]Ref;
var __tmp__companyTokenWallet_Fund: [Ref]Ref;
var __tmp__advisorTokenWallet_Fund: [Ref]Ref;
var __tmp__lockedTokenAddress_Fund: [Ref]Ref;
var __tmp__refundManager_Fund: [Ref]Ref;
var __tmp__lastWithdrawTime_Fund: [Ref]int;
var __tmp__firstWithdrawAmount_Fund: [Ref]int;
var __tmp__crowdsaleAddress_Fund: [Ref]Ref;
var __tmp__contributions_Fund: [Ref]Ref;
var __tmp__name_IERC20Token: [Ref]int;
var __tmp__symbol_IERC20Token: [Ref]int;
var __tmp__decimals_IERC20Token: [Ref]int;
var __tmp__totalSupply_IERC20Token: [Ref]int;
var __tmp__allowTransfers_ManagedToken: [Ref]bool;
var __tmp__issuanceFinished_ManagedToken: [Ref]bool;
var __tmp__eventListener_ManagedToken: [Ref]Ref;
var __tmp__manager_MultiOwnable: [Ref]Ref;
var __tmp__owners_MultiOwnable: [Ref]Ref;
var __tmp__ownerByAddress_MultiOwnable: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} ERC20Token_ERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__balances_ERC20Token;
modifies __tmp__M_Ref_int;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Alloc;
procedure {:inline 1} ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies balances_ERC20Token;
modifies M_Ref_int;
modifies allowed_ERC20Token;
modifies M_Ref_Ref;
modifies Alloc;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure {:inline 1} ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__balances_ERC20Token;
modifies __tmp__M_Ref_int;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Alloc;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
procedure {:inline 1} transfer_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1493: Ref, _value_s1493: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} transfer_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1493: Ref, _value_s1493: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transfer_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1553: Ref, _value_s1553: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transferFrom_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1571: Ref, _to_s1571: Ref, _value_s1571: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} transferFrom_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1571: Ref, _to_s1571: Ref, _value_s1571: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1655: Ref, _to_s1655: Ref, _value_s1655: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1667: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1667: Ref) returns (__ret_0_: int);
procedure {:inline 1} approve_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1682: Ref, _value_s1682: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} approve_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1682: Ref, _value_s1682: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} approve_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1710: Ref, _value_s1710: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} allowance_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1726: Ref, _spender_s1726: Ref) returns (__ret_0_: int);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} allowance_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1726: Ref, _spender_s1726: Ref) returns (__ret_0_: int);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} Fund_Fund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref);
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
procedure {:constructor} {:inline 1} Fund_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref);
modifies INITIAL_TAP_Fund;
modifies teamWallet_Fund;
modifies crowdsaleEndDate_Fund;
modifies referralTokenWallet_Fund;
modifies foundationTokenWallet_Fund;
modifies reserveTokenWallet_Fund;
modifies bountyTokenWallet_Fund;
modifies companyTokenWallet_Fund;
modifies advisorTokenWallet_Fund;
modifies lockedTokenAddress_Fund;
modifies refundManager_Fund;
modifies lastWithdrawTime_Fund;
modifies firstWithdrawAmount_Fund;
modifies crowdsaleAddress_Fund;
modifies contributions_Fund;
modifies M_Ref_int;
modifies Alloc;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
procedure {:constructor} {:inline 1} Fund_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref);
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure {:inline 1} setCrowdsaleAddress_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _crowdsaleAddress_s190: Ref);
modifies revert;
modifies crowdsaleAddress_Fund;
procedure {:inline 1} setCrowdsaleAddress_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _crowdsaleAddress_s190: Ref);
modifies revert;
modifies __tmp__crowdsaleAddress_Fund;
procedure {:inline 1} setTokenAddress_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s214: Ref);
modifies revert;
modifies token_Fund;
procedure {:inline 1} setTokenAddress_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s214: Ref);
modifies revert;
modifies __tmp__token_Fund;
procedure {:inline 1} setLockedTokenAddress_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lockedTokenAddress_s236: Ref);
modifies revert;
modifies lockedTokenAddress_Fund;
procedure {:inline 1} setLockedTokenAddress_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lockedTokenAddress_s236: Ref);
modifies revert;
modifies __tmp__lockedTokenAddress_Fund;
procedure {:inline 1} processContribution_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s267: Ref);
modifies Balance;
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} processContribution_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s267: Ref);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} onCrowdsaleEnd_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies state_Fund;
modifies firstWithdrawAmount_Fund;
modifies lastWithdrawTime_Fund;
modifies crowdsaleEndDate_Fund;
modifies revert;
procedure {:inline 1} onCrowdsaleEnd_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__state_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies revert;
procedure {:inline 1} enableCrowdsaleRefund_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies state_Fund;
procedure {:inline 1} enableCrowdsaleRefund_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__state_Fund;
procedure {:inline 1} refundCrowdsaleContributor_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
procedure {:inline 1} refundCrowdsaleContributor_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure {:inline 1} autoRefundCrowdsaleContributor_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s448: Ref);
modifies revert;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
procedure {:inline 1} autoRefundCrowdsaleContributor_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s448: Ref);
modifies revert;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure {:inline 1} getCurrentTapAmount_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} getCurrentTapAmount_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} calcTapAmount_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} firstWithdraw_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies firstWithdrawAmount_Fund;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
procedure {:inline 1} firstWithdraw_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__firstWithdrawAmount_Fund;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure {:inline 1} withdraw_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies lastWithdrawTime_Fund;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
procedure {:inline 1} withdraw_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__lastWithdrawTime_Fund;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure {:inline 1} enableRefund_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__state_Fund;
modifies __tmp__M_Ref_int;
procedure {:inline 1} refundTokenHolder_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies gas;
modifies M_Ref_int;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies Balance;
procedure {:inline 1} refundTokenHolder_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies gas;
modifies __tmp__M_Ref_int;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure {:inline 1} ICrowdsaleFund_ICrowdsaleFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ICrowdsaleFund_ICrowdsaleFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ICrowdsaleFund_ICrowdsaleFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20Token_IERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
procedure {:inline 1} IERC20Token_IERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure {:inline 1} IERC20Token_IERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ITokenEventListener_ITokenEventListener_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ITokenEventListener_ITokenEventListener__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ITokenEventListener_ITokenEventListener__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ManagedToken_ManagedToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref);
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
procedure {:constructor} {:inline 1} ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref);
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
modifies balances_ERC20Token;
modifies M_Ref_int;
modifies allowed_ERC20Token;
modifies M_Ref_Ref;
modifies Alloc;
modifies allowTransfers_ManagedToken;
modifies issuanceFinished_ManagedToken;
modifies eventListener_ManagedToken;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
modifies manager_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
procedure {:constructor} {:inline 1} ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref);
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__balances_ERC20Token;
modifies __tmp__M_Ref_int;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Alloc;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
procedure {:inline 1} approve_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s864: Ref, _value_s864: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} setAllowTransfers_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s880: bool);
modifies allowTransfers_ManagedToken;
modifies revert;
procedure {:inline 1} setAllowTransfers_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s880: bool);
modifies __tmp__allowTransfers_ManagedToken;
modifies revert;
procedure {:inline 1} setListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s905: Ref);
modifies eventListener_ManagedToken;
modifies revert;
procedure {:inline 1} setListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s905: Ref);
modifies __tmp__eventListener_ManagedToken;
modifies revert;
procedure {:inline 1} transfer_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s920: Ref, _value_s920: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} transfer_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s920: Ref, _value_s920: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transfer_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s956: Ref, _value_s956: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transferFrom_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s974: Ref, _to_s974: Ref, _value_s974: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} transferFrom_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s974: Ref, _to_s974: Ref, _value_s974: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1012: Ref, _to_s1012: Ref, _value_s1012: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} hasListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} issue_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1067: Ref, _value_s1067: int);
modifies M_Ref_int;
modifies revert;
procedure {:inline 1} issue_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1067: Ref, _value_s1067: int);
modifies __tmp__M_Ref_int;
modifies revert;
procedure {:inline 1} destroy_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1119: Ref, _value_s1119: int);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} destroy_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1119: Ref, _value_s1119: int);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} increaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1160: Ref, _addedValue_s1160: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} increaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1160: Ref, _addedValue_s1160: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} decreaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1220: Ref, _subtractedValue_s1220: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} decreaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1220: Ref, _subtractedValue_s1220: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} finishIssuance_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies issuanceFinished_ManagedToken;
modifies revert;
procedure {:inline 1} finishIssuance_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies __tmp__issuanceFinished_ManagedToken;
modifies revert;
procedure {:inline 1} MultiOwnable_MultiOwnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies __tmp__M_Ref_bool;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} MultiOwnable_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies manager_MultiOwnable;
modifies owners_MultiOwnable;
modifies ownerByAddress_MultiOwnable;
modifies M_Ref_bool;
modifies Alloc;
procedure {:constructor} {:inline 1} MultiOwnable_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies __tmp__M_Ref_bool;
modifies __tmp__Alloc;
procedure {:inline 1} setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1294: Ref);
modifies revert;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure {:inline 1} setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1294: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
procedure {:inline 1} _setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1351: Ref);
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
procedure {:inline 1} getOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} getOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
// procedure {:inline 1} safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1397: int, b_s1397: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1415: int, b_s1415: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1435: int, b_s1435: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1459: int, b_s1459: int) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_bool;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__state_Fund;
modifies __tmp__token_Fund;
modifies __tmp__INITIAL_TAP_Fund;
modifies __tmp__teamWallet_Fund;
modifies __tmp__crowdsaleEndDate_Fund;
modifies __tmp__referralTokenWallet_Fund;
modifies __tmp__foundationTokenWallet_Fund;
modifies __tmp__reserveTokenWallet_Fund;
modifies __tmp__bountyTokenWallet_Fund;
modifies __tmp__companyTokenWallet_Fund;
modifies __tmp__advisorTokenWallet_Fund;
modifies __tmp__lockedTokenAddress_Fund;
modifies __tmp__refundManager_Fund;
modifies __tmp__lastWithdrawTime_Fund;
modifies __tmp__firstWithdrawAmount_Fund;
modifies __tmp__crowdsaleAddress_Fund;
modifies __tmp__contributions_Fund;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__manager_MultiOwnable;
modifies __tmp__owners_MultiOwnable;
modifies __tmp__ownerByAddress_MultiOwnable;
modifies revert;
procedure withdrawEnabled_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyCrowdsale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure transfersAllowed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure canIssue_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
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

implementation ERC20Token_ERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// Make array/mapping vars distinct for balances
call __var_1 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__balances_ERC20Token[this] := __var_1;
// Initialize Integer mapping balances
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for allowed
call __var_2 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__allowed_ERC20Token[this] := __var_2;
// Initialize length of 1-level nested array in allowed
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]] := zeroRefRefArr();
// end of initialization
}

implementation ERC20Token_ERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
// Make array/mapping vars distinct for balances
call __var_1 := FreshRefGenerator__success();
if (revert) {
return;
}
balances_ERC20Token[this] := __var_1;
// Initialize Integer mapping balances
M_Ref_int[balances_ERC20Token[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for allowed
call __var_2 := FreshRefGenerator__success();
if (revert) {
return;
}
allowed_ERC20Token[this] := __var_2;
// Initialize length of 1-level nested array in allowed
M_Ref_Ref[allowed_ERC20Token[this]] := zeroRefRefArr();
// end of initialization
}

implementation ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20Token_IERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Token_ERC20Token_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Token_ERC20Token_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation transfer_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1493: Ref, _value_s1493: int) returns (__ret_0_: bool)
{
var __var_3: bool;
assume ((_value_s1493) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_3 := transfer_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_3 := transfer_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1493: Ref, _value_s1493: int) returns (__ret_0_: bool)
{
var __var_3: bool;
assume ((_value_s1493) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_3 := transfer_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_3 := transfer_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1553: Ref, _value_s1553: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
__var_4 := null;
if (!((_to_s1553) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s1553) >= (0));
if (!((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (_value_s1553))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s1553) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_5 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG], _value_s1553);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_5 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG], _value_s1553);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG] := __var_5;
assume ((__var_5) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1553]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1553]) >= (0));
assume ((_value_s1553) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_6 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1553], _value_s1553);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_6 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1553], _value_s1553);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1553] := __var_6;
assume ((__var_6) >= (0));
__ret_0_ := true;
return;
}

implementation transfer_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1553: Ref, _value_s1553: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
__var_4 := null;
if (!((_to_s1553) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s1553) >= (0));
if (!((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (_value_s1553))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s1553) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_5 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][msgsender_MSG], _value_s1553);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_5 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][msgsender_MSG], _value_s1553);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][msgsender_MSG] := __var_5;
assume ((__var_5) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s1553]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s1553]) >= (0));
assume ((_value_s1553) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_6 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s1553], _value_s1553);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_6 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s1553], _value_s1553);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s1553] := __var_6;
assume ((__var_6) >= (0));
assert {:EventEmitted "Transfer_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1571: Ref, _to_s1571: Ref, _value_s1571: int) returns (__ret_0_: bool)
{
var __var_7: bool;
assume ((_value_s1571) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_7;
return;
}

implementation transferFrom_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1571: Ref, _to_s1571: Ref, _value_s1571: int) returns (__ret_0_: bool)
{
var __var_7: bool;
assume ((_value_s1571) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_7;
return;
}

implementation transferFrom_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1655: Ref, _to_s1655: Ref, _value_s1655: int) returns (__ret_0_: bool)
{
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: Ref;
var __var_13: int;
var __var_14: Ref;
__var_8 := null;
if (!((_to_s1655) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1655]) >= (0));
assume ((_value_s1655) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]) == (null)) {
call __var_9 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655] := __var_9;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (0));
assume ((_value_s1655) >= (0));
if (!(((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1655]) >= (_value_s1655)) && ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (_value_s1655)))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1655]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1655]) >= (0));
assume ((_value_s1655) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_10 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1655], _value_s1655);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_10 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1655], _value_s1655);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1655] := __var_10;
assume ((__var_10) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1655]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1655]) >= (0));
assume ((_value_s1655) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1655], _value_s1655);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1655], _value_s1655);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1655] := __var_11;
assume ((__var_11) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]) == (null)) {
call __var_12 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655] := __var_12;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]) == (null)) {
call __var_14 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655] := __var_14;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (0));
assume ((_value_s1655) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG], _value_s1655);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG], _value_s1655);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG] := __var_13;
assume ((__var_13) >= (0));
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1655: Ref, _to_s1655: Ref, _value_s1655: int) returns (__ret_0_: bool)
{
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: Ref;
var __var_13: int;
var __var_14: Ref;
__var_8 := null;
if (!((_to_s1655) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s1655]) >= (0));
assume ((_value_s1655) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]) == (null)) {
call __var_9 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655] := __var_9;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (0));
assume ((_value_s1655) >= (0));
if (!(((M_Ref_int[balances_ERC20Token[this]][_from_s1655]) >= (_value_s1655)) && ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (_value_s1655)))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s1655]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s1655]) >= (0));
assume ((_value_s1655) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_10 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s1655], _value_s1655);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_10 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s1655], _value_s1655);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s1655] := __var_10;
assume ((__var_10) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s1655]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s1655]) >= (0));
assume ((_value_s1655) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_from_s1655], _value_s1655);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_from_s1655], _value_s1655);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_from_s1655] := __var_11;
assume ((__var_11) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]) == (null)) {
call __var_12 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655] := __var_12;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]) == (null)) {
call __var_14 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655] := __var_14;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG]) >= (0));
assume ((_value_s1655) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG], _value_s1655);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG], _value_s1655);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s1655]][msgsender_MSG] := __var_13;
assume ((__var_13) >= (0));
assert {:EventEmitted "Transfer_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1667: Ref) returns (__ret_0_: int)
{
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_owner_s1667]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_owner_s1667];
return;
}

implementation balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1667: Ref) returns (__ret_0_: int)
{
assume ((M_Ref_int[balances_ERC20Token[this]][_owner_s1667]) >= (0));
__ret_0_ := M_Ref_int[balances_ERC20Token[this]][_owner_s1667];
return;
}

implementation approve_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1682: Ref, _value_s1682: int) returns (__ret_0_: bool)
{
var __var_15: bool;
assume ((_value_s1682) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_15 := approve_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_15 := approve_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_15;
return;
}

implementation approve_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1682: Ref, _value_s1682: int) returns (__ret_0_: bool)
{
var __var_15: bool;
assume ((_value_s1682) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_15 := approve_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_15 := approve_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_15;
return;
}

implementation approve_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1710: Ref, _value_s1710: int) returns (__ret_0_: bool)
{
var __var_16: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_16 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_16;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1710]) >= (0));
assume ((_value_s1710) >= (0));
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1710] := _value_s1710;
__ret_0_ := true;
return;
}

implementation approve_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1710: Ref, _value_s1710: int) returns (__ret_0_: bool)
{
var __var_16: Ref;
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_16 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_16;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1710]) >= (0));
assume ((_value_s1710) >= (0));
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1710] := _value_s1710;
assert {:EventEmitted "Approval_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation allowance_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1726: Ref, _spender_s1726: Ref) returns (__ret_0_: int)
{
var __var_17: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s1726]) == (null)) {
call __var_17 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s1726] := __var_17;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s1726]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s1726]][_spender_s1726]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s1726]][_spender_s1726];
return;
}

implementation allowance_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s1726: Ref, _spender_s1726: Ref) returns (__ret_0_: int)
{
var __var_17: Ref;
if ((M_Ref_Ref[allowed_ERC20Token[this]][_owner_s1726]) == (null)) {
call __var_17 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_owner_s1726] := __var_17;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s1726]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s1726]][_spender_s1726]) >= (0));
__ret_0_ := M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s1726]][_spender_s1726];
return;
}

implementation Fund_Fund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref)
{
var __var_18: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__INITIAL_TAP_Fund[this] := 192901234567901;
__tmp__teamWallet_Fund[this] := null;
__tmp__crowdsaleEndDate_Fund[this] := 0;
__tmp__referralTokenWallet_Fund[this] := null;
__tmp__foundationTokenWallet_Fund[this] := null;
__tmp__reserveTokenWallet_Fund[this] := null;
__tmp__bountyTokenWallet_Fund[this] := null;
__tmp__companyTokenWallet_Fund[this] := null;
__tmp__advisorTokenWallet_Fund[this] := null;
__tmp__lockedTokenAddress_Fund[this] := null;
__tmp__refundManager_Fund[this] := null;
__tmp__lastWithdrawTime_Fund[this] := 0;
__tmp__firstWithdrawAmount_Fund[this] := 0;
__tmp__crowdsaleAddress_Fund[this] := null;
// Make array/mapping vars distinct for contributions
call __var_18 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__contributions_Fund[this] := __var_18;
// Initialize Integer mapping contributions
__tmp__M_Ref_int[__tmp__contributions_Fund[this]] := zeroRefIntArr();
// end of initialization
__tmp__teamWallet_Fund[this] := _teamWallet_s145;
__tmp__referralTokenWallet_Fund[this] := _referralTokenWallet_s145;
__tmp__foundationTokenWallet_Fund[this] := _foundationTokenWallet_s145;
__tmp__companyTokenWallet_Fund[this] := _companyTokenWallet_s145;
__tmp__reserveTokenWallet_Fund[this] := _reserveTokenWallet_s145;
__tmp__bountyTokenWallet_Fund[this] := _bountyTokenWallet_s145;
__tmp__advisorTokenWallet_Fund[this] := _advisorTokenWallet_s145;
__tmp__refundManager_Fund[this] := _refundManager_s145;
if ((__tmp__DType[this]) == (Fund)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s145);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation Fund_Fund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref)
{
var __var_18: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
INITIAL_TAP_Fund[this] := 192901234567901;
teamWallet_Fund[this] := null;
crowdsaleEndDate_Fund[this] := 0;
referralTokenWallet_Fund[this] := null;
foundationTokenWallet_Fund[this] := null;
reserveTokenWallet_Fund[this] := null;
bountyTokenWallet_Fund[this] := null;
companyTokenWallet_Fund[this] := null;
advisorTokenWallet_Fund[this] := null;
lockedTokenAddress_Fund[this] := null;
refundManager_Fund[this] := null;
lastWithdrawTime_Fund[this] := 0;
firstWithdrawAmount_Fund[this] := 0;
crowdsaleAddress_Fund[this] := null;
// Make array/mapping vars distinct for contributions
call __var_18 := FreshRefGenerator__success();
if (revert) {
return;
}
contributions_Fund[this] := __var_18;
// Initialize Integer mapping contributions
M_Ref_int[contributions_Fund[this]] := zeroRefIntArr();
// end of initialization
teamWallet_Fund[this] := _teamWallet_s145;
referralTokenWallet_Fund[this] := _referralTokenWallet_s145;
foundationTokenWallet_Fund[this] := _foundationTokenWallet_s145;
companyTokenWallet_Fund[this] := _companyTokenWallet_s145;
reserveTokenWallet_Fund[this] := _reserveTokenWallet_s145;
bountyTokenWallet_Fund[this] := _bountyTokenWallet_s145;
advisorTokenWallet_Fund[this] := _advisorTokenWallet_s145;
refundManager_Fund[this] := _refundManager_s145;
if ((DType[this]) == (Fund)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s145);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation Fund_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref)
{
var __var_18: Ref;
call ICrowdsaleFund_ICrowdsaleFund__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MultiOwnable_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Fund_Fund_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _teamWallet_s145, _referralTokenWallet_s145, _foundationTokenWallet_s145, _companyTokenWallet_s145, _reserveTokenWallet_s145, _bountyTokenWallet_s145, _advisorTokenWallet_s145, _refundManager_s145, _owners_s145);
if (revert) {
return;
}
}

implementation Fund_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _teamWallet_s145: Ref, _referralTokenWallet_s145: Ref, _foundationTokenWallet_s145: Ref, _companyTokenWallet_s145: Ref, _reserveTokenWallet_s145: Ref, _bountyTokenWallet_s145: Ref, _advisorTokenWallet_s145: Ref, _refundManager_s145: Ref, _owners_s145: Ref)
{
var __var_18: Ref;
call ICrowdsaleFund_ICrowdsaleFund__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MultiOwnable_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Fund_Fund_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _teamWallet_s145, _referralTokenWallet_s145, _foundationTokenWallet_s145, _companyTokenWallet_s145, _reserveTokenWallet_s145, _bountyTokenWallet_s145, _advisorTokenWallet_s145, _refundManager_s145, _owners_s145);
if (revert) {
return;
}
}

implementation setCrowdsaleAddress_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _crowdsaleAddress_s190: Ref)
{
var __var_20: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_20 := null;
if (!((__tmp__crowdsaleAddress_Fund[this]) == (null))) {
revert := true;
return;
}
__tmp__crowdsaleAddress_Fund[this] := _crowdsaleAddress_s190;
}

implementation setCrowdsaleAddress_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _crowdsaleAddress_s190: Ref)
{
var __var_20: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_20 := null;
if (!((crowdsaleAddress_Fund[this]) == (null))) {
revert := true;
return;
}
crowdsaleAddress_Fund[this] := _crowdsaleAddress_s190;
}

implementation setTokenAddress_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s214: Ref)
{
var __var_21: Ref;
var __var_22: Ref;
var __var_23: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_21 := __tmp__token_Fund[this];
__var_22 := null;
if (!((__tmp__token_Fund[this]) == (null))) {
revert := true;
return;
}
assume ((__tmp__DType[_tokenAddress_s214]) == (ManagedToken));
__var_23 := _tokenAddress_s214;
__tmp__token_Fund[this] := __var_23;
}

implementation setTokenAddress_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenAddress_s214: Ref)
{
var __var_21: Ref;
var __var_22: Ref;
var __var_23: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_21 := token_Fund[this];
__var_22 := null;
if (!((token_Fund[this]) == (null))) {
revert := true;
return;
}
assume ((DType[_tokenAddress_s214]) == (ManagedToken));
__var_23 := _tokenAddress_s214;
token_Fund[this] := __var_23;
}

implementation setLockedTokenAddress_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lockedTokenAddress_s236: Ref)
{
var __var_24: Ref;
var __var_25: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_24 := __tmp__lockedTokenAddress_Fund[this];
__var_25 := null;
if (!((__tmp__lockedTokenAddress_Fund[this]) == (null))) {
revert := true;
return;
}
__tmp__lockedTokenAddress_Fund[this] := _lockedTokenAddress_s236;
}

implementation setLockedTokenAddress_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lockedTokenAddress_s236: Ref)
{
var __var_24: Ref;
var __var_25: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_24 := lockedTokenAddress_Fund[this];
__var_25 := null;
if (!((lockedTokenAddress_Fund[this]) == (null))) {
revert := true;
return;
}
lockedTokenAddress_Fund[this] := _lockedTokenAddress_s236;
}

implementation processContribution_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s267: Ref)
{
var totalContribution_s266: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call onlyCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((__tmp__state_Fund[this]) == (0))) {
revert := true;
return;
}
assume ((totalContribution_s266) >= (0));
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributor_s267]) >= (0));
assume ((msgvalue_MSG) >= (0));
if ((__tmp__DType[this]) == (Fund)) {
call totalContribution_s266 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributor_s267], msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
totalContribution_s266 := totalContribution_s266;
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributor_s267]) >= (0));
assume ((totalContribution_s266) >= (0));
__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributor_s267] := totalContribution_s266;
}

implementation processContribution_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s267: Ref)
{
var totalContribution_s266: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call onlyCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((state_Fund[this]) == (0))) {
revert := true;
return;
}
assume ((totalContribution_s266) >= (0));
assume ((M_Ref_int[contributions_Fund[this]][contributor_s267]) >= (0));
assume ((msgvalue_MSG) >= (0));
if ((DType[this]) == (Fund)) {
call totalContribution_s266 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[contributions_Fund[this]][contributor_s267], msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
totalContribution_s266 := totalContribution_s266;
assume ((M_Ref_int[contributions_Fund[this]][contributor_s267]) >= (0));
assume ((totalContribution_s266) >= (0));
M_Ref_int[contributions_Fund[this]][contributor_s267] := totalContribution_s266;
}

implementation onCrowdsaleEnd_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var crowdsale_s299: Ref;
var __var_26: int;
var __var_27: int;
call onlyCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp__state_Fund[this] := 2;
assume ((__tmp__DType[__tmp__crowdsaleAddress_Fund[this]]) == (ISimpleCrowdsale));
crowdsale_s299 := __tmp__crowdsaleAddress_Fund[this];
assume ((__tmp__firstWithdrawAmount_Fund[this]) >= (0));
assume ((__var_26) >= (0));
call __var_26 := getSoftCap_ISimpleCrowdsale(crowdsale_s299, this, __var_27);
assume ((__var_26) >= (0));
assume (((__var_26) /(2)) >= (0));
__tmp__firstWithdrawAmount_Fund[this] := (__var_26) /(2);
assume ((__tmp__lastWithdrawTime_Fund[this]) >= (0));
assume ((__tmp__now) >= (0));
__tmp__lastWithdrawTime_Fund[this] := __tmp__now;
assume ((__tmp__crowdsaleEndDate_Fund[this]) >= (0));
assume ((__tmp__now) >= (0));
__tmp__crowdsaleEndDate_Fund[this] := __tmp__now;
}

implementation onCrowdsaleEnd_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var crowdsale_s299: Ref;
var __var_26: int;
var __var_27: int;
call onlyCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
state_Fund[this] := 2;
assume ((DType[crowdsaleAddress_Fund[this]]) == (ISimpleCrowdsale));
crowdsale_s299 := crowdsaleAddress_Fund[this];
assume ((firstWithdrawAmount_Fund[this]) >= (0));
assume ((__var_26) >= (0));
call __var_26 := getSoftCap_ISimpleCrowdsale(crowdsale_s299, this, __var_27);
assume ((__var_26) >= (0));
assume (((__var_26) /(2)) >= (0));
firstWithdrawAmount_Fund[this] := (__var_26) /(2);
assume ((lastWithdrawTime_Fund[this]) >= (0));
assume ((now) >= (0));
lastWithdrawTime_Fund[this] := now;
assume ((crowdsaleEndDate_Fund[this]) >= (0));
assume ((now) >= (0));
crowdsaleEndDate_Fund[this] := now;
}

implementation enableCrowdsaleRefund_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((__tmp__state_Fund[this]) == (0))) {
revert := true;
return;
}
__tmp__state_Fund[this] := 1;
}

implementation enableCrowdsaleRefund_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((state_Fund[this]) == (0))) {
revert := true;
return;
}
state_Fund[this] := 1;
}

implementation refundCrowdsaleContributor_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var refundAmount_s378: int;
var __var_28: int;
var __var_29: int;
var __var_30: int;
var __var_31: int;
var __var_32: bool;
if (!((__tmp__state_Fund[this]) == (1))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][msgsender_MSG]) >= (0));
if (!((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][msgsender_MSG]) > (0))) {
revert := true;
return;
}
assume ((refundAmount_s378) >= (0));
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][msgsender_MSG]) >= (0));
refundAmount_s378 := __tmp__M_Ref_int[__tmp__contributions_Fund[this]][msgsender_MSG];
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][msgsender_MSG]) >= (0));
__tmp__M_Ref_int[__tmp__contributions_Fund[this]][msgsender_MSG] := 0;
assume ((__var_29) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_29 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_30, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_29 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_30, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_29 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_30, msgsender_MSG);
} else {
assume (false);
}
assume ((__var_29) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_28, msgsender_MSG, __var_29);
if (revert) {
return;
}
__var_31 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_31 := (__var_31) - (gas);
assume ((refundAmount_s378) >= (0));
call __var_32 := send__fail(this, msgsender_MSG, refundAmount_s378);
if (!(__var_32)) {
revert := true;
return;
}
gas := (__var_31) + (gas);
}

implementation refundCrowdsaleContributor_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var refundAmount_s378: int;
var __var_28: int;
var __var_29: int;
var __var_30: int;
var __var_31: int;
var __var_32: bool;
if (!((state_Fund[this]) == (1))) {
revert := true;
return;
}
assume ((M_Ref_int[contributions_Fund[this]][msgsender_MSG]) >= (0));
if (!((M_Ref_int[contributions_Fund[this]][msgsender_MSG]) > (0))) {
revert := true;
return;
}
assume ((refundAmount_s378) >= (0));
assume ((M_Ref_int[contributions_Fund[this]][msgsender_MSG]) >= (0));
refundAmount_s378 := M_Ref_int[contributions_Fund[this]][msgsender_MSG];
assume ((M_Ref_int[contributions_Fund[this]][msgsender_MSG]) >= (0));
M_Ref_int[contributions_Fund[this]][msgsender_MSG] := 0;
assume ((__var_29) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_29 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_30, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_29 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_30, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_29 := balanceOf_IERC20Token(token_Fund[this], this, __var_30, msgsender_MSG);
} else {
assume (false);
}
assume ((__var_29) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_28, msgsender_MSG, __var_29);
if (revert) {
return;
}
__var_31 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_31 := (__var_31) - (gas);
assume ((refundAmount_s378) >= (0));
call __var_32 := send__success(this, msgsender_MSG, refundAmount_s378);
if (!(__var_32)) {
revert := true;
return;
}
gas := (__var_31) + (gas);
assert {:EventEmitted "RefundContributor_Fund"} (true);
}

implementation autoRefundCrowdsaleContributor_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s448: Ref)
{
var refundAmount_s447: int;
var __var_33: int;
var __var_34: int;
var __var_35: int;
var __var_36: int;
var __var_37: bool;
if (!(((__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][msgsender_MSG]) == (true)) || ((msgsender_MSG) == (__tmp__refundManager_Fund[this])))) {
revert := true;
return;
}
if (!((__tmp__state_Fund[this]) == (1))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributorAddress_s448]) >= (0));
if (!((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributorAddress_s448]) > (0))) {
revert := true;
return;
}
assume ((refundAmount_s447) >= (0));
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributorAddress_s448]) >= (0));
refundAmount_s447 := __tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributorAddress_s448];
assume ((__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributorAddress_s448]) >= (0));
__tmp__M_Ref_int[__tmp__contributions_Fund[this]][contributorAddress_s448] := 0;
assume ((__var_34) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_34 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_35, contributorAddress_s448);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_34 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_35, contributorAddress_s448);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_34 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_35, contributorAddress_s448);
} else {
assume (false);
}
assume ((__var_34) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_33, contributorAddress_s448, __var_34);
if (revert) {
return;
}
__var_36 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_36 := (__var_36) - (gas);
assume ((refundAmount_s447) >= (0));
call __var_37 := send__fail(this, contributorAddress_s448, refundAmount_s447);
if (!(__var_37)) {
revert := true;
return;
}
gas := (__var_36) + (gas);
}

implementation autoRefundCrowdsaleContributor_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s448: Ref)
{
var refundAmount_s447: int;
var __var_33: int;
var __var_34: int;
var __var_35: int;
var __var_36: int;
var __var_37: bool;
if (!(((M_Ref_bool[ownerByAddress_MultiOwnable[this]][msgsender_MSG]) == (true)) || ((msgsender_MSG) == (refundManager_Fund[this])))) {
revert := true;
return;
}
if (!((state_Fund[this]) == (1))) {
revert := true;
return;
}
assume ((M_Ref_int[contributions_Fund[this]][contributorAddress_s448]) >= (0));
if (!((M_Ref_int[contributions_Fund[this]][contributorAddress_s448]) > (0))) {
revert := true;
return;
}
assume ((refundAmount_s447) >= (0));
assume ((M_Ref_int[contributions_Fund[this]][contributorAddress_s448]) >= (0));
refundAmount_s447 := M_Ref_int[contributions_Fund[this]][contributorAddress_s448];
assume ((M_Ref_int[contributions_Fund[this]][contributorAddress_s448]) >= (0));
M_Ref_int[contributions_Fund[this]][contributorAddress_s448] := 0;
assume ((__var_34) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_34 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_35, contributorAddress_s448);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_34 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_35, contributorAddress_s448);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_34 := balanceOf_IERC20Token(token_Fund[this], this, __var_35, contributorAddress_s448);
} else {
assume (false);
}
assume ((__var_34) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_33, contributorAddress_s448, __var_34);
if (revert) {
return;
}
__var_36 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_36 := (__var_36) - (gas);
assume ((refundAmount_s447) >= (0));
call __var_37 := send__success(this, contributorAddress_s448, refundAmount_s447);
if (!(__var_37)) {
revert := true;
return;
}
gas := (__var_36) + (gas);
assert {:EventEmitted "RefundContributor_Fund"} (true);
}

implementation getCurrentTapAmount_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __var_38: int;
if ((__tmp__state_Fund[this]) != (2)) {
__ret_0_ := 0;
return;
}
assume ((__var_38) >= (0));
call __var_38 := calcTapAmount_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__var_38) >= (0));
__ret_0_ := __var_38;
return;
}

implementation getCurrentTapAmount_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var __var_38: int;
if ((state_Fund[this]) != (2)) {
__ret_0_ := 0;
return;
}
assume ((__var_38) >= (0));
call __var_38 := calcTapAmount_Fund__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__var_38) >= (0));
__ret_0_ := __var_38;
return;
}

implementation calcTapAmount_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var amount_s496: int;
var __var_39: int;
var __var_40: Ref;
var __var_41: Ref;
assume ((amount_s496) >= (0));
assume ((__var_39) >= (0));
assume ((__tmp__now) >= (0));
assume ((__tmp__lastWithdrawTime_Fund[this]) >= (0));
if ((__tmp__DType[this]) == (Fund)) {
call __var_39 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__now, __tmp__lastWithdrawTime_Fund[this]);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_39) >= (0));
assume (((__var_39) * (192901234567901)) >= (0));
amount_s496 := (__var_39) * (192901234567901);
__var_40 := this;
assume ((__tmp__Balance[this]) >= (0));
assume ((amount_s496) >= (0));
if ((__tmp__Balance[this]) < (amount_s496)) {
assume ((amount_s496) >= (0));
__var_41 := this;
assume ((__tmp__Balance[this]) >= (0));
amount_s496 := __tmp__Balance[this];
}
assume ((amount_s496) >= (0));
__ret_0_ := amount_s496;
return;
}

implementation calcTapAmount_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var amount_s496: int;
var __var_39: int;
var __var_40: Ref;
var __var_41: Ref;
assume ((amount_s496) >= (0));
assume ((__var_39) >= (0));
assume ((now) >= (0));
assume ((lastWithdrawTime_Fund[this]) >= (0));
if ((DType[this]) == (Fund)) {
call __var_39 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, now, lastWithdrawTime_Fund[this]);
if (revert) {
return;
}
} else {
assume (false);
}
assume ((__var_39) >= (0));
assume (((__var_39) * (192901234567901)) >= (0));
amount_s496 := (__var_39) * (192901234567901);
__var_40 := this;
assume ((Balance[this]) >= (0));
assume ((amount_s496) >= (0));
if ((Balance[this]) < (amount_s496)) {
assume ((amount_s496) >= (0));
__var_41 := this;
assume ((Balance[this]) >= (0));
amount_s496 := Balance[this];
}
assume ((amount_s496) >= (0));
__ret_0_ := amount_s496;
return;
}

implementation firstWithdraw_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var amount_s529: int;
var __var_42: int;
var __var_43: bool;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call withdrawEnabled_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__firstWithdrawAmount_Fund[this]) >= (0));
if (!((__tmp__firstWithdrawAmount_Fund[this]) > (0))) {
revert := true;
return;
}
assume ((amount_s529) >= (0));
assume ((__tmp__firstWithdrawAmount_Fund[this]) >= (0));
amount_s529 := __tmp__firstWithdrawAmount_Fund[this];
assume ((__tmp__firstWithdrawAmount_Fund[this]) >= (0));
__tmp__firstWithdrawAmount_Fund[this] := 0;
__var_42 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_42 := (__var_42) - (gas);
assume ((amount_s529) >= (0));
call __var_43 := send__fail(this, __tmp__teamWallet_Fund[this], amount_s529);
if (!(__var_43)) {
revert := true;
return;
}
gas := (__var_42) + (gas);
}

implementation firstWithdraw_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var amount_s529: int;
var __var_42: int;
var __var_43: bool;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call withdrawEnabled_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((firstWithdrawAmount_Fund[this]) >= (0));
if (!((firstWithdrawAmount_Fund[this]) > (0))) {
revert := true;
return;
}
assume ((amount_s529) >= (0));
assume ((firstWithdrawAmount_Fund[this]) >= (0));
amount_s529 := firstWithdrawAmount_Fund[this];
assume ((firstWithdrawAmount_Fund[this]) >= (0));
firstWithdrawAmount_Fund[this] := 0;
__var_42 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_42 := (__var_42) - (gas);
assume ((amount_s529) >= (0));
call __var_43 := send__success(this, teamWallet_Fund[this], amount_s529);
if (!(__var_43)) {
revert := true;
return;
}
gas := (__var_42) + (gas);
assert {:EventEmitted "Withdraw_Fund"} (true);
}

implementation withdraw_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var amount_s564: int;
var __var_44: int;
var __var_45: bool;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call withdrawEnabled_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((__tmp__state_Fund[this]) == (2))) {
revert := true;
return;
}
assume ((amount_s564) >= (0));
call amount_s564 := calcTapAmount_Fund__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
amount_s564 := amount_s564;
assume ((__tmp__lastWithdrawTime_Fund[this]) >= (0));
assume ((__tmp__now) >= (0));
__tmp__lastWithdrawTime_Fund[this] := __tmp__now;
__var_44 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_44 := (__var_44) - (gas);
assume ((amount_s564) >= (0));
call __var_45 := send__fail(this, __tmp__teamWallet_Fund[this], amount_s564);
if (!(__var_45)) {
revert := true;
return;
}
gas := (__var_44) + (gas);
}

implementation withdraw_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var amount_s564: int;
var __var_44: int;
var __var_45: bool;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call withdrawEnabled_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((state_Fund[this]) == (2))) {
revert := true;
return;
}
assume ((amount_s564) >= (0));
call amount_s564 := calcTapAmount_Fund__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
amount_s564 := amount_s564;
assume ((lastWithdrawTime_Fund[this]) >= (0));
assume ((now) >= (0));
lastWithdrawTime_Fund[this] := now;
__var_44 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_44 := (__var_44) - (gas);
assume ((amount_s564) >= (0));
call __var_45 := send__success(this, teamWallet_Fund[this], amount_s564);
if (!(__var_45)) {
revert := true;
return;
}
gas := (__var_44) + (gas);
assert {:EventEmitted "Withdraw_Fund"} (true);
}

implementation enableRefund_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_46: int;
var __var_47: int;
var __var_48: int;
var __var_49: int;
var __var_50: int;
var __var_51: int;
var __var_52: int;
var __var_53: int;
var __var_54: int;
var __var_55: int;
var __var_56: int;
var __var_57: int;
var __var_58: int;
var __var_59: int;
var __var_60: int;
var __var_61: int;
var __var_62: int;
var __var_63: int;
var __var_64: int;
var __var_65: int;
var __var_66: int;
if (!((__tmp__state_Fund[this]) == (2))) {
revert := true;
return;
}
__tmp__state_Fund[this] := 3;
assume ((__var_47) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_47 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_48, __tmp__lockedTokenAddress_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_47 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_48, __tmp__lockedTokenAddress_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_47 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_48, __tmp__lockedTokenAddress_Fund[this]);
} else {
assume (false);
}
assume ((__var_47) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_46, __tmp__lockedTokenAddress_Fund[this], __var_47);
if (revert) {
return;
}
assume ((__var_50) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_50 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_51, __tmp__companyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_50 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_51, __tmp__companyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_50 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_51, __tmp__companyTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_50) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_49, __tmp__companyTokenWallet_Fund[this], __var_50);
if (revert) {
return;
}
assume ((__var_53) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_53 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_54, __tmp__reserveTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_53 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_54, __tmp__reserveTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_53 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_54, __tmp__reserveTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_53) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_52, __tmp__reserveTokenWallet_Fund[this], __var_53);
if (revert) {
return;
}
assume ((__var_56) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_56 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_57, __tmp__foundationTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_56 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_57, __tmp__foundationTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_56 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_57, __tmp__foundationTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_56) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_55, __tmp__foundationTokenWallet_Fund[this], __var_56);
if (revert) {
return;
}
assume ((__var_59) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_59 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_60, __tmp__bountyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_59 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_60, __tmp__bountyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_59 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_60, __tmp__bountyTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_59) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_58, __tmp__bountyTokenWallet_Fund[this], __var_59);
if (revert) {
return;
}
assume ((__var_62) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_62 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_63, __tmp__referralTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_62 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_63, __tmp__referralTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_62 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_63, __tmp__referralTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_62) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_61, __tmp__referralTokenWallet_Fund[this], __var_62);
if (revert) {
return;
}
assume ((__var_65) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call __var_65 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_66, __tmp__advisorTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call __var_65 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_66, __tmp__advisorTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call __var_65 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_66, __tmp__advisorTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_65) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_64, __tmp__advisorTokenWallet_Fund[this], __var_65);
if (revert) {
return;
}
}

implementation enableRefund_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_46: int;
var __var_47: int;
var __var_48: int;
var __var_49: int;
var __var_50: int;
var __var_51: int;
var __var_52: int;
var __var_53: int;
var __var_54: int;
var __var_55: int;
var __var_56: int;
var __var_57: int;
var __var_58: int;
var __var_59: int;
var __var_60: int;
var __var_61: int;
var __var_62: int;
var __var_63: int;
var __var_64: int;
var __var_65: int;
var __var_66: int;
if (!((state_Fund[this]) == (2))) {
revert := true;
return;
}
state_Fund[this] := 3;
assume ((__var_47) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_47 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_48, lockedTokenAddress_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_47 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_48, lockedTokenAddress_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_47 := balanceOf_IERC20Token(token_Fund[this], this, __var_48, lockedTokenAddress_Fund[this]);
} else {
assume (false);
}
assume ((__var_47) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_46, lockedTokenAddress_Fund[this], __var_47);
if (revert) {
return;
}
assume ((__var_50) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_50 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_51, companyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_50 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_51, companyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_50 := balanceOf_IERC20Token(token_Fund[this], this, __var_51, companyTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_50) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_49, companyTokenWallet_Fund[this], __var_50);
if (revert) {
return;
}
assume ((__var_53) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_53 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_54, reserveTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_53 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_54, reserveTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_53 := balanceOf_IERC20Token(token_Fund[this], this, __var_54, reserveTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_53) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_52, reserveTokenWallet_Fund[this], __var_53);
if (revert) {
return;
}
assume ((__var_56) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_56 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_57, foundationTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_56 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_57, foundationTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_56 := balanceOf_IERC20Token(token_Fund[this], this, __var_57, foundationTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_56) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_55, foundationTokenWallet_Fund[this], __var_56);
if (revert) {
return;
}
assume ((__var_59) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_59 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_60, bountyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_59 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_60, bountyTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_59 := balanceOf_IERC20Token(token_Fund[this], this, __var_60, bountyTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_59) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_58, bountyTokenWallet_Fund[this], __var_59);
if (revert) {
return;
}
assume ((__var_62) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_62 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_63, referralTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_62 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_63, referralTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_62 := balanceOf_IERC20Token(token_Fund[this], this, __var_63, referralTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_62) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_61, referralTokenWallet_Fund[this], __var_62);
if (revert) {
return;
}
assume ((__var_65) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call __var_65 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_66, advisorTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call __var_65 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_66, advisorTokenWallet_Fund[this]);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call __var_65 := balanceOf_IERC20Token(token_Fund[this], this, __var_66, advisorTokenWallet_Fund[this]);
} else {
assume (false);
}
assume ((__var_65) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_64, advisorTokenWallet_Fund[this], __var_65);
if (revert) {
return;
}
assert {:EventEmitted "RefundEnabled_Fund"} (true);
}

implementation refundTokenHolder_Fund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var tokenBalance_s731: int;
var __var_67: int;
var __var_68: int;
var __var_69: int;
var __var_70: Ref;
var refundAmount_s731: int;
var __var_71: int;
var __var_72: int;
var __var_73: bool;
if (!((__tmp__state_Fund[this]) == (3))) {
revert := true;
return;
}
assume ((tokenBalance_s731) >= (0));
if ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken)) {
call tokenBalance_s731 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_67, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (ERC20Token)) {
call tokenBalance_s731 := balanceOf_ERC20Token__fail(__tmp__token_Fund[this], this, __var_67, msgsender_MSG);
if (revert) {
return;
}
} else if ((__tmp__DType[__tmp__token_Fund[this]]) == (IERC20Token)) {
call tokenBalance_s731 := balanceOf_IERC20Token(__tmp__token_Fund[this], this, __var_67, msgsender_MSG);
} else {
assume (false);
}
tokenBalance_s731 := tokenBalance_s731;
assume ((tokenBalance_s731) >= (0));
if (!((tokenBalance_s731) > (0))) {
revert := true;
return;
}
assume ((__var_68) >= (0));
assume ((__tmp__DType[__tmp__token_Fund[this]]) == (ManagedToken));
__var_68 := __tmp__totalSupply_IERC20Token[__tmp__token_Fund[this]];
assume ((__var_68) >= (0));
if (!((__var_68) == (100))) {
revert := true;
return;
}
__var_70 := this;
assume ((__tmp__Balance[this]) >= (0));
if (!((__tmp__Balance[this]) == (100))) {
revert := true;
return;
}
assume ((refundAmount_s731) >= (0));
assume ((tokenBalance_s731) >= (0));
refundAmount_s731 := tokenBalance_s731;
assume ((refundAmount_s731) >= (0));
if (!((refundAmount_s731) > (0))) {
revert := true;
return;
}
assume ((tokenBalance_s731) >= (0));
call destroy_ManagedToken__fail(__tmp__token_Fund[this], this, __var_71, msgsender_MSG, tokenBalance_s731);
if (revert) {
return;
}
__var_72 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_72 := (__var_72) - (gas);
assume ((refundAmount_s731) >= (0));
call __var_73 := send__fail(this, msgsender_MSG, refundAmount_s731);
if (!(__var_73)) {
revert := true;
return;
}
gas := (__var_72) + (gas);
}

implementation refundTokenHolder_Fund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var tokenBalance_s731: int;
var __var_67: int;
var __var_68: int;
var __var_69: int;
var __var_70: Ref;
var refundAmount_s731: int;
var __var_71: int;
var __var_72: int;
var __var_73: bool;
if (!((state_Fund[this]) == (3))) {
revert := true;
return;
}
assume ((tokenBalance_s731) >= (0));
if ((DType[token_Fund[this]]) == (ManagedToken)) {
call tokenBalance_s731 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_67, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (ERC20Token)) {
call tokenBalance_s731 := balanceOf_ERC20Token__success(token_Fund[this], this, __var_67, msgsender_MSG);
if (revert) {
return;
}
} else if ((DType[token_Fund[this]]) == (IERC20Token)) {
call tokenBalance_s731 := balanceOf_IERC20Token(token_Fund[this], this, __var_67, msgsender_MSG);
} else {
assume (false);
}
tokenBalance_s731 := tokenBalance_s731;
assume ((tokenBalance_s731) >= (0));
if (!((tokenBalance_s731) > (0))) {
revert := true;
return;
}
assume ((__var_68) >= (0));
assume ((DType[token_Fund[this]]) == (ManagedToken));
__var_68 := totalSupply_IERC20Token[token_Fund[this]];
assume ((__var_68) >= (0));
if (!((__var_68) == (100))) {
revert := true;
return;
}
__var_70 := this;
assume ((Balance[this]) >= (0));
if (!((Balance[this]) == (100))) {
revert := true;
return;
}
assume ((refundAmount_s731) >= (0));
assume ((tokenBalance_s731) >= (0));
refundAmount_s731 := tokenBalance_s731;
assume ((refundAmount_s731) >= (0));
if (!((refundAmount_s731) > (0))) {
revert := true;
return;
}
assume ((tokenBalance_s731) >= (0));
call destroy_ManagedToken__success(token_Fund[this], this, __var_71, msgsender_MSG, tokenBalance_s731);
if (revert) {
return;
}
__var_72 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_72 := (__var_72) - (gas);
assume ((refundAmount_s731) >= (0));
call __var_73 := send__success(this, msgsender_MSG, refundAmount_s731);
if (!(__var_73)) {
revert := true;
return;
}
gas := (__var_72) + (gas);
assert {:EventEmitted "RefundHolder_Fund"} (true);
}

implementation ICrowdsaleFund_ICrowdsaleFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ICrowdsaleFund_ICrowdsaleFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ICrowdsaleFund_ICrowdsaleFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ICrowdsaleFund_ICrowdsaleFund_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ICrowdsaleFund_ICrowdsaleFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ICrowdsaleFund_ICrowdsaleFund_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation IERC20Token_IERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__name_IERC20Token[this] := -1797484681;
__tmp__symbol_IERC20Token[this] := -1797484681;
__tmp__decimals_IERC20Token[this] := 0;
__tmp__totalSupply_IERC20Token[this] := 0;
// end of initialization
}

implementation IERC20Token_IERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
name_IERC20Token[this] := -1797484681;
symbol_IERC20Token[this] := -1797484681;
decimals_IERC20Token[this] := 0;
totalSupply_IERC20Token[this] := 0;
// end of initialization
}

implementation IERC20Token_IERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20Token_IERC20Token_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation IERC20Token_IERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20Token_IERC20Token_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ISimpleCrowdsale_ISimpleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ISimpleCrowdsale_ISimpleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ITokenEventListener_ITokenEventListener_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ITokenEventListener_ITokenEventListener_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ITokenEventListener_ITokenEventListener__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ITokenEventListener_ITokenEventListener_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ITokenEventListener_ITokenEventListener__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ITokenEventListener_ITokenEventListener_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ManagedToken_ManagedToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref)
{
var __var_74: Ref;
var __var_75: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__allowTransfers_ManagedToken[this] := false;
__tmp__issuanceFinished_ManagedToken[this] := false;
// end of initialization
__var_74 := null;
if ((_listener_s849) != (null)) {
assume ((__tmp__DType[_listener_s849]) == (ITokenEventListener));
__var_75 := _listener_s849;
__tmp__eventListener_ManagedToken[this] := __var_75;
}
if ((__tmp__DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s849);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation ManagedToken_ManagedToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref)
{
var __var_74: Ref;
var __var_75: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
allowTransfers_ManagedToken[this] := false;
issuanceFinished_ManagedToken[this] := false;
// end of initialization
__var_74 := null;
if ((_listener_s849) != (null)) {
assume ((DType[_listener_s849]) == (ITokenEventListener));
__var_75 := _listener_s849;
eventListener_ManagedToken[this] := __var_75;
}
if ((DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s849);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref)
{
var __var_74: Ref;
var __var_75: Ref;
call IERC20Token_IERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MultiOwnable_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ManagedToken_ManagedToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _listener_s849, _owners_s849);
if (revert) {
return;
}
}

implementation ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s849: Ref, _owners_s849: Ref)
{
var __var_74: Ref;
var __var_75: Ref;
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call MultiOwnable_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ManagedToken_ManagedToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _listener_s849, _owners_s849);
if (revert) {
return;
}
}

implementation approve_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s864: Ref, _value_s864: int) returns (__ret_0_: bool)
{
var __var_76: bool;
assume ((_value_s864) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_76 := approve_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s864, _value_s864);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_76;
return;
}

implementation approve_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s864: Ref, _value_s864: int) returns (__ret_0_: bool)
{
var __var_76: bool;
assume ((_value_s864) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_76 := approve_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s864, _value_s864);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_76;
return;
}

implementation setAllowTransfers_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s880: bool)
{
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp__allowTransfers_ManagedToken[this] := _allowTransfers_s880;
}

implementation setAllowTransfers_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s880: bool)
{
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
allowTransfers_ManagedToken[this] := _allowTransfers_s880;
assert {:EventEmitted "AllowTransfersChanged_ManagedToken"} (true);
}

implementation setListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s905: Ref)
{
var __var_77: Ref;
var __var_78: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_77 := null;
if ((_listener_s905) != (null)) {
assume ((__tmp__DType[_listener_s905]) == (ITokenEventListener));
__var_78 := _listener_s905;
__tmp__eventListener_ManagedToken[this] := __var_78;
} else {
}
}

implementation setListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s905: Ref)
{
var __var_77: Ref;
var __var_78: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_77 := null;
if ((_listener_s905) != (null)) {
assume ((DType[_listener_s905]) == (ITokenEventListener));
__var_78 := _listener_s905;
eventListener_ManagedToken[this] := __var_78;
} else {
}
}

implementation transfer_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s920: Ref, _value_s920: int) returns (__ret_0_: bool)
{
var __var_79: bool;
assume ((_value_s920) >= (0));
call __var_79 := transfer_ManagedToken_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s920, _value_s920);
if (revert) {
return;
}
__ret_0_ := __var_79;
return;
}

implementation transfer_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s920: Ref, _value_s920: int) returns (__ret_0_: bool)
{
var __var_79: bool;
assume ((_value_s920) >= (0));
call __var_79 := transfer_ManagedToken_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s920, _value_s920);
if (revert) {
return;
}
__ret_0_ := __var_79;
return;
}

implementation transfer_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s956: Ref, _value_s956: int) returns (__ret_0_: bool)
{
var success_s955: bool;
var __var_80: bool;
var __var_81: int;
call transfersAllowed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s956) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call success_s955 := transfer_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s956, _value_s956);
if (revert) {
return;
}
} else {
assume (false);
}
success_s955 := success_s955;
call __var_80 := hasListener_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_80) && (success_s955)) {
assume ((_value_s956) >= (0));
call onTokenTransfer_ITokenEventListener(__tmp__eventListener_ManagedToken[this], this, __var_81, msgsender_MSG, _to_s956, _value_s956);
}
__ret_0_ := success_s955;
return;
}

implementation transfer_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s956: Ref, _value_s956: int) returns (__ret_0_: bool)
{
var success_s955: bool;
var __var_80: bool;
var __var_81: int;
call transfersAllowed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s956) >= (0));
if ((DType[this]) == (ManagedToken)) {
call success_s955 := transfer_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s956, _value_s956);
if (revert) {
return;
}
} else {
assume (false);
}
success_s955 := success_s955;
call __var_80 := hasListener_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_80) && (success_s955)) {
assume ((_value_s956) >= (0));
call onTokenTransfer_ITokenEventListener(eventListener_ManagedToken[this], this, __var_81, msgsender_MSG, _to_s956, _value_s956);
}
__ret_0_ := success_s955;
return;
}

implementation transferFrom_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s974: Ref, _to_s974: Ref, _value_s974: int) returns (__ret_0_: bool)
{
var __var_82: bool;
assume ((_value_s974) >= (0));
call __var_82 := transferFrom_ManagedToken_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s974, _to_s974, _value_s974);
if (revert) {
return;
}
__ret_0_ := __var_82;
return;
}

implementation transferFrom_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s974: Ref, _to_s974: Ref, _value_s974: int) returns (__ret_0_: bool)
{
var __var_82: bool;
assume ((_value_s974) >= (0));
call __var_82 := transferFrom_ManagedToken_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s974, _to_s974, _value_s974);
if (revert) {
return;
}
__ret_0_ := __var_82;
return;
}

implementation transferFrom_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1012: Ref, _to_s1012: Ref, _value_s1012: int) returns (__ret_0_: bool)
{
var success_s1011: bool;
var __var_83: bool;
var __var_84: int;
call transfersAllowed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s1012) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call success_s1011 := transferFrom_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1012, _to_s1012, _value_s1012);
if (revert) {
return;
}
} else {
assume (false);
}
success_s1011 := success_s1011;
call __var_83 := hasListener_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_83) && (success_s1011)) {
assume ((_value_s1012) >= (0));
call onTokenTransfer_ITokenEventListener(__tmp__eventListener_ManagedToken[this], this, __var_84, _from_s1012, _to_s1012, _value_s1012);
}
__ret_0_ := success_s1011;
return;
}

implementation transferFrom_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1012: Ref, _to_s1012: Ref, _value_s1012: int) returns (__ret_0_: bool)
{
var success_s1011: bool;
var __var_83: bool;
var __var_84: int;
call transfersAllowed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s1012) >= (0));
if ((DType[this]) == (ManagedToken)) {
call success_s1011 := transferFrom_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s1012, _to_s1012, _value_s1012);
if (revert) {
return;
}
} else {
assume (false);
}
success_s1011 := success_s1011;
call __var_83 := hasListener_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_83) && (success_s1011)) {
assume ((_value_s1012) >= (0));
call onTokenTransfer_ITokenEventListener(eventListener_ManagedToken[this], this, __var_84, _from_s1012, _to_s1012, _value_s1012);
}
__ret_0_ := success_s1011;
return;
}

implementation hasListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_85: Ref;
var __var_86: Ref;
__var_85 := __tmp__eventListener_ManagedToken[this];
__var_86 := null;
if ((__tmp__eventListener_ManagedToken[this]) == (null)) {
__ret_0_ := false;
return;
}
__ret_0_ := true;
return;
}

implementation hasListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_85: Ref;
var __var_86: Ref;
__var_85 := eventListener_ManagedToken[this];
__var_86 := null;
if ((eventListener_ManagedToken[this]) == (null)) {
__ret_0_ := false;
return;
}
__ret_0_ := true;
return;
}

implementation issue_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1067: Ref, _value_s1067: int)
{
var __var_87: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canIssue_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1067]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1067]) >= (0));
assume ((_value_s1067) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_87 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1067], _value_s1067);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s1067] := __var_87;
assume ((__var_87) >= (0));
}

implementation issue_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s1067: Ref, _value_s1067: int)
{
var __var_87: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canIssue_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s1067]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s1067]) >= (0));
assume ((_value_s1067) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_87 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s1067], _value_s1067);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s1067] := __var_87;
assume ((__var_87) >= (0));
assert {:EventEmitted "Issue_ManagedToken"} (true);
assert {:EventEmitted "Transfer_ManagedToken"} (true);
}

implementation destroy_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1119: Ref, _value_s1119: int)
{
var __var_88: int;
if (!((__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][msgsender_MSG]) || ((msgsender_MSG) == (_from_s1119)))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1119]) >= (0));
assume ((_value_s1119) >= (0));
if (!((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1119]) >= (_value_s1119))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1119]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1119]) >= (0));
assume ((_value_s1119) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_88 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1119], _value_s1119);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s1119] := __var_88;
assume ((__var_88) >= (0));
}

implementation destroy_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s1119: Ref, _value_s1119: int)
{
var __var_88: int;
if (!((M_Ref_bool[ownerByAddress_MultiOwnable[this]][msgsender_MSG]) || ((msgsender_MSG) == (_from_s1119)))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s1119]) >= (0));
assume ((_value_s1119) >= (0));
if (!((M_Ref_int[balances_ERC20Token[this]][_from_s1119]) >= (_value_s1119))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s1119]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s1119]) >= (0));
assume ((_value_s1119) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_88 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_from_s1119], _value_s1119);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_from_s1119] := __var_88;
assume ((__var_88) >= (0));
assert {:EventEmitted "Transfer_ManagedToken"} (true);
assert {:EventEmitted "Destroy_ManagedToken"} (true);
}

implementation increaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1160: Ref, _addedValue_s1160: int) returns (__ret_0_: bool)
{
var __var_89: Ref;
var __var_90: int;
var __var_91: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_89 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_89;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160]) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_91 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_91;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160]) >= (0));
assume ((_addedValue_s1160) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_90 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160], _addedValue_s1160);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160] := __var_90;
assume ((__var_90) >= (0));
__ret_0_ := true;
return;
}

implementation increaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1160: Ref, _addedValue_s1160: int) returns (__ret_0_: bool)
{
var __var_89: Ref;
var __var_90: int;
var __var_91: Ref;
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_89 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_89;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160]) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_91 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_91;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160]) >= (0));
assume ((_addedValue_s1160) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_90 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160], _addedValue_s1160);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1160] := __var_90;
assume ((__var_90) >= (0));
assert {:EventEmitted "Approval_ManagedToken"} (true);
__ret_0_ := true;
return;
}

implementation decreaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1220: Ref, _subtractedValue_s1220: int) returns (__ret_0_: bool)
{
var oldValue_s1219: int;
var __var_92: Ref;
var __var_93: Ref;
var __var_94: Ref;
var __var_95: int;
assume ((oldValue_s1219) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_92 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_92;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220]) >= (0));
oldValue_s1219 := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220];
assume ((_subtractedValue_s1220) >= (0));
assume ((oldValue_s1219) >= (0));
if ((_subtractedValue_s1220) > (oldValue_s1219)) {
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_93 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_93;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220]) >= (0));
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220] := 0;
} else {
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_94 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_94;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220]) >= (0));
assume ((oldValue_s1219) >= (0));
assume ((_subtractedValue_s1220) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_95 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, oldValue_s1219, _subtractedValue_s1220);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220] := __var_95;
assume ((__var_95) >= (0));
}
__ret_0_ := true;
return;
}

implementation decreaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s1220: Ref, _subtractedValue_s1220: int) returns (__ret_0_: bool)
{
var oldValue_s1219: int;
var __var_92: Ref;
var __var_93: Ref;
var __var_94: Ref;
var __var_95: int;
assume ((oldValue_s1219) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_92 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_92;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220]) >= (0));
oldValue_s1219 := M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220];
assume ((_subtractedValue_s1220) >= (0));
assume ((oldValue_s1219) >= (0));
if ((_subtractedValue_s1220) > (oldValue_s1219)) {
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_93 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_93;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220]) >= (0));
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220] := 0;
} else {
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_94 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_94;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220]) >= (0));
assume ((oldValue_s1219) >= (0));
assume ((_subtractedValue_s1220) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_95 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, oldValue_s1219, _subtractedValue_s1220);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s1220] := __var_95;
assume ((__var_95) >= (0));
}
assert {:EventEmitted "Approval_ManagedToken"} (true);
__ret_0_ := true;
return;
}

implementation finishIssuance_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp__issuanceFinished_ManagedToken[this] := true;
__ret_0_ := true;
return;
}

implementation finishIssuance_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
issuanceFinished_ManagedToken[this] := true;
assert {:EventEmitted "IssuanceFinished_ManagedToken"} (true);
__ret_0_ := true;
return;
}

implementation MultiOwnable_MultiOwnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_96: Ref;
var __var_97: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__manager_MultiOwnable[this] := null;
// Make array/mapping vars distinct for owners
call __var_96 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__owners_MultiOwnable[this] := __var_96;
assume ((__tmp__Length[__tmp__owners_MultiOwnable[this]]) == (0));
// Make array/mapping vars distinct for ownerByAddress
call __var_97 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__ownerByAddress_MultiOwnable[this] := __var_97;
// Initialize Boolean mapping ownerByAddress
__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]] := zeroRefBoolArr();
// end of initialization
__tmp__manager_MultiOwnable[this] := msgsender_MSG;
}

implementation MultiOwnable_MultiOwnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_96: Ref;
var __var_97: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
manager_MultiOwnable[this] := null;
// Make array/mapping vars distinct for owners
call __var_96 := FreshRefGenerator__success();
if (revert) {
return;
}
owners_MultiOwnable[this] := __var_96;
assume ((Length[owners_MultiOwnable[this]]) == (0));
// Make array/mapping vars distinct for ownerByAddress
call __var_97 := FreshRefGenerator__success();
if (revert) {
return;
}
ownerByAddress_MultiOwnable[this] := __var_97;
// Initialize Boolean mapping ownerByAddress
M_Ref_bool[ownerByAddress_MultiOwnable[this]] := zeroRefBoolArr();
// end of initialization
manager_MultiOwnable[this] := msgsender_MSG;
}

implementation MultiOwnable_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_96: Ref;
var __var_97: Ref;
call MultiOwnable_MultiOwnable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation MultiOwnable_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_96: Ref;
var __var_97: Ref;
call MultiOwnable_MultiOwnable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1294: Ref)
{
if (!((msgsender_MSG) == (__tmp__manager_MultiOwnable[this]))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (Fund)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MultiOwnable)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1294: Ref)
{
if (!((msgsender_MSG) == (manager_MultiOwnable[this]))) {
revert := true;
return;
}
if ((DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
if (revert) {
return;
}
} else if ((DType[this]) == (Fund)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
if (revert) {
return;
}
} else if ((DType[this]) == (MultiOwnable)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1351: Ref)
{
var i_s1320: int;
var j_s1341: int;
assume ((i_s1320) >= (0));
assume ((__tmp__Length[__tmp__owners_MultiOwnable[this]]) >= (0));
assume ((i_s1320) >= (0));
i_s1320 := 0;
while ((i_s1320) < (__tmp__Length[__tmp__owners_MultiOwnable[this]]))
{
assume ((i_s1320) >= (0));
__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][__tmp__M_int_Ref[__tmp__owners_MultiOwnable[this]][i_s1320]] := false;
assume ((i_s1320) >= (0));
i_s1320 := (i_s1320) + (1);
assume ((i_s1320) >= (0));
if ((gas) < (0)) {
return;
}
}
assume ((j_s1341) >= (0));
assume ((__tmp__Length[_owners_s1351]) >= (0));
assume ((j_s1341) >= (0));
j_s1341 := 0;
while ((j_s1341) < (__tmp__Length[_owners_s1351]))
{
assume ((j_s1341) >= (0));
__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][__tmp__M_int_Ref[_owners_s1351][j_s1341]] := true;
assume ((j_s1341) >= (0));
j_s1341 := (j_s1341) + (1);
assume ((j_s1341) >= (0));
if ((gas) < (0)) {
return;
}
}
__tmp__owners_MultiOwnable[this] := _owners_s1351;
}

implementation _setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s1351: Ref)
{
var i_s1320: int;
var j_s1341: int;
assume ((i_s1320) >= (0));
assume ((Length[owners_MultiOwnable[this]]) >= (0));
assume ((i_s1320) >= (0));
i_s1320 := 0;
while ((i_s1320) < (Length[owners_MultiOwnable[this]]))
{
assume ((i_s1320) >= (0));
M_Ref_bool[ownerByAddress_MultiOwnable[this]][M_int_Ref[owners_MultiOwnable[this]][i_s1320]] := false;
assume ((i_s1320) >= (0));
i_s1320 := (i_s1320) + (1);
assume ((i_s1320) >= (0));
if ((gas) < (0)) {
return;
}
}
assume ((j_s1341) >= (0));
assume ((Length[_owners_s1351]) >= (0));
assume ((j_s1341) >= (0));
j_s1341 := 0;
while ((j_s1341) < (Length[_owners_s1351]))
{
assume ((j_s1341) >= (0));
M_Ref_bool[ownerByAddress_MultiOwnable[this]][M_int_Ref[_owners_s1351][j_s1341]] := true;
assume ((j_s1341) >= (0));
j_s1341 := (j_s1341) + (1);
assume ((j_s1341) >= (0));
if ((gas) < (0)) {
return;
}
}
owners_MultiOwnable[this] := _owners_s1351;
assert {:EventEmitted "SetOwners_MultiOwnable"} (true);
}

implementation getOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := __tmp__owners_MultiOwnable[this];
return;
}

implementation getOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := owners_MultiOwnable[this];
return;
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

// implementation safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1397: int, b_s1397: int) returns (__ret_0_: int)
// {
// var c_s1396: int;
// assume ((c_s1396) >= (0));
// assume ((a_s1397) >= (0));
// assume ((b_s1397) >= (0));
// assume (((a_s1397) * (b_s1397)) >= (0));
// c_s1396 := (a_s1397) * (b_s1397);
// assume ((a_s1397) >= (0));
// assume ((c_s1396) >= (0));
// assume ((a_s1397) >= (0));
// assume (((c_s1396) /(a_s1397)) >= (0));
// assume ((b_s1397) >= (0));
// assume ((c_s1396) >= (0));
// __ret_0_ := c_s1396;
// return;
// }

// implementation safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1397: int, b_s1397: int) returns (__ret_0_: int)
// {
// var c_s1396: int;
// assume ((c_s1396) >= (0));
// assume ((a_s1397) >= (0));
// assume ((b_s1397) >= (0));
// assume (((a_s1397) * (b_s1397)) >= (0));
// c_s1396 := (a_s1397) * (b_s1397);
// assume ((a_s1397) >= (0));
// assume ((c_s1396) >= (0));
// assume ((a_s1397) >= (0));
// assume (((c_s1396) /(a_s1397)) >= (0));
// assume ((b_s1397) >= (0));
// assert (((a_s1397) == (0)) || (((c_s1396) /(a_s1397)) == (b_s1397)));
// assume ((c_s1396) >= (0));
// __ret_0_ := c_s1396;
// return;
// }

// implementation safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1415: int, b_s1415: int) returns (__ret_0_: int)
// {
// var c_s1414: int;
// assume ((c_s1414) >= (0));
// assume ((a_s1415) >= (0));
// assume ((b_s1415) >= (0));
// assume (((a_s1415) /(b_s1415)) >= (0));
// c_s1414 := (a_s1415) /(b_s1415);
// assume ((c_s1414) >= (0));
// __ret_0_ := c_s1414;
// return;
// }

// implementation safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1415: int, b_s1415: int) returns (__ret_0_: int)
// {
// var c_s1414: int;
// assume ((c_s1414) >= (0));
// assume ((a_s1415) >= (0));
// assume ((b_s1415) >= (0));
// assume (((a_s1415) /(b_s1415)) >= (0));
// c_s1414 := (a_s1415) /(b_s1415);
// assume ((c_s1414) >= (0));
// __ret_0_ := c_s1414;
// return;
// }

implementation safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1435: int, b_s1435: int) returns (__ret_0_: int)
{
assume ((a_s1435) >= (0));
assume ((b_s1435) >= (0));
assume ((a_s1435) >= (0));
assume ((b_s1435) >= (0));
assume (((a_s1435) - (b_s1435)) >= (0));
__ret_0_ := (a_s1435) - (b_s1435);
return;
}

implementation safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1435: int, b_s1435: int) returns (__ret_0_: int)
{
assume ((a_s1435) >= (0));
assume ((b_s1435) >= (0));
assert ((a_s1435) >= (b_s1435));
assume ((a_s1435) >= (0));
assume ((b_s1435) >= (0));
assume (((a_s1435) - (b_s1435)) >= (0));
__ret_0_ := (a_s1435) - (b_s1435);
return;
}

implementation safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1459: int, b_s1459: int) returns (__ret_0_: int)
{
var c_s1458: int;
assume ((c_s1458) >= (0));
assume ((a_s1459) >= (0));
assume ((b_s1459) >= (0));
assume (((a_s1459) + (b_s1459)) >= (0));
c_s1458 := (a_s1459) + (b_s1459);
assume ((c_s1458) >= (0));
assume ((a_s1459) >= (0));
assume ((c_s1458) >= (0));
__ret_0_ := c_s1458;
return;
}

implementation safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1459: int, b_s1459: int) returns (__ret_0_: int)
{
var c_s1458: int;
assume ((c_s1458) >= (0));
assume ((a_s1459) >= (0));
assume ((b_s1459) >= (0));
assume (((a_s1459) + (b_s1459)) >= (0));
c_s1458 := (a_s1459) + (b_s1459);
assume ((c_s1458) >= (0));
assume ((a_s1459) >= (0));
assert ((c_s1458) >= (a_s1459));
assume ((c_s1458) >= (0));
__ret_0_ := c_s1458;
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (SafeMath)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (MultiOwnable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ManagedToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ITokenEventListener)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ISimpleCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (IERC20Token)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ICrowdsaleFund)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Fund)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20Token)) {
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
if ((DType[to]) == (SafeMath)) {
assume ((amount) == (0));
} else if ((DType[to]) == (MultiOwnable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ManagedToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ITokenEventListener)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ISimpleCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (IERC20Token)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ICrowdsaleFund)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Fund)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20Token)) {
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
var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
var __snap___tmp__M_int_Ref: [Ref][int]Ref;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__balances_ERC20Token: [Ref]Ref;
var __snap___tmp__allowed_ERC20Token: [Ref]Ref;
var __snap___tmp__state_Fund: [Ref]int;
var __snap___tmp__token_Fund: [Ref]Ref;
var __snap___tmp__INITIAL_TAP_Fund: [Ref]int;
var __snap___tmp__teamWallet_Fund: [Ref]Ref;
var __snap___tmp__crowdsaleEndDate_Fund: [Ref]int;
var __snap___tmp__referralTokenWallet_Fund: [Ref]Ref;
var __snap___tmp__foundationTokenWallet_Fund: [Ref]Ref;
var __snap___tmp__reserveTokenWallet_Fund: [Ref]Ref;
var __snap___tmp__bountyTokenWallet_Fund: [Ref]Ref;
var __snap___tmp__companyTokenWallet_Fund: [Ref]Ref;
var __snap___tmp__advisorTokenWallet_Fund: [Ref]Ref;
var __snap___tmp__lockedTokenAddress_Fund: [Ref]Ref;
var __snap___tmp__refundManager_Fund: [Ref]Ref;
var __snap___tmp__lastWithdrawTime_Fund: [Ref]int;
var __snap___tmp__firstWithdrawAmount_Fund: [Ref]int;
var __snap___tmp__crowdsaleAddress_Fund: [Ref]Ref;
var __snap___tmp__contributions_Fund: [Ref]Ref;
var __snap___tmp__name_IERC20Token: [Ref]int;
var __snap___tmp__symbol_IERC20Token: [Ref]int;
var __snap___tmp__decimals_IERC20Token: [Ref]int;
var __snap___tmp__totalSupply_IERC20Token: [Ref]int;
var __snap___tmp__allowTransfers_ManagedToken: [Ref]bool;
var __snap___tmp__issuanceFinished_ManagedToken: [Ref]bool;
var __snap___tmp__eventListener_ManagedToken: [Ref]Ref;
var __snap___tmp__manager_MultiOwnable: [Ref]Ref;
var __snap___tmp__owners_MultiOwnable: [Ref]Ref;
var __snap___tmp__ownerByAddress_MultiOwnable: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
__snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
__snap___tmp__M_int_Ref := __tmp__M_int_Ref;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__balances_ERC20Token := __tmp__balances_ERC20Token;
__snap___tmp__allowed_ERC20Token := __tmp__allowed_ERC20Token;
__snap___tmp__state_Fund := __tmp__state_Fund;
__snap___tmp__token_Fund := __tmp__token_Fund;
__snap___tmp__INITIAL_TAP_Fund := __tmp__INITIAL_TAP_Fund;
__snap___tmp__teamWallet_Fund := __tmp__teamWallet_Fund;
__snap___tmp__crowdsaleEndDate_Fund := __tmp__crowdsaleEndDate_Fund;
__snap___tmp__referralTokenWallet_Fund := __tmp__referralTokenWallet_Fund;
__snap___tmp__foundationTokenWallet_Fund := __tmp__foundationTokenWallet_Fund;
__snap___tmp__reserveTokenWallet_Fund := __tmp__reserveTokenWallet_Fund;
__snap___tmp__bountyTokenWallet_Fund := __tmp__bountyTokenWallet_Fund;
__snap___tmp__companyTokenWallet_Fund := __tmp__companyTokenWallet_Fund;
__snap___tmp__advisorTokenWallet_Fund := __tmp__advisorTokenWallet_Fund;
__snap___tmp__lockedTokenAddress_Fund := __tmp__lockedTokenAddress_Fund;
__snap___tmp__refundManager_Fund := __tmp__refundManager_Fund;
__snap___tmp__lastWithdrawTime_Fund := __tmp__lastWithdrawTime_Fund;
__snap___tmp__firstWithdrawAmount_Fund := __tmp__firstWithdrawAmount_Fund;
__snap___tmp__crowdsaleAddress_Fund := __tmp__crowdsaleAddress_Fund;
__snap___tmp__contributions_Fund := __tmp__contributions_Fund;
__snap___tmp__name_IERC20Token := __tmp__name_IERC20Token;
__snap___tmp__symbol_IERC20Token := __tmp__symbol_IERC20Token;
__snap___tmp__decimals_IERC20Token := __tmp__decimals_IERC20Token;
__snap___tmp__totalSupply_IERC20Token := __tmp__totalSupply_IERC20Token;
__snap___tmp__allowTransfers_ManagedToken := __tmp__allowTransfers_ManagedToken;
__snap___tmp__issuanceFinished_ManagedToken := __tmp__issuanceFinished_ManagedToken;
__snap___tmp__eventListener_ManagedToken := __tmp__eventListener_ManagedToken;
__snap___tmp__manager_MultiOwnable := __tmp__manager_MultiOwnable;
__snap___tmp__owners_MultiOwnable := __tmp__owners_MultiOwnable;
__snap___tmp__ownerByAddress_MultiOwnable := __tmp__ownerByAddress_MultiOwnable;
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
__tmp__M_Ref_Ref := __snap___tmp__M_Ref_Ref;
__tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
__tmp__M_int_Ref := __snap___tmp__M_int_Ref;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__balances_ERC20Token := __snap___tmp__balances_ERC20Token;
__tmp__allowed_ERC20Token := __snap___tmp__allowed_ERC20Token;
__tmp__state_Fund := __snap___tmp__state_Fund;
__tmp__token_Fund := __snap___tmp__token_Fund;
__tmp__INITIAL_TAP_Fund := __snap___tmp__INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := __snap___tmp__teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := __snap___tmp__crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := __snap___tmp__referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := __snap___tmp__foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := __snap___tmp__reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := __snap___tmp__bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := __snap___tmp__companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := __snap___tmp__advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := __snap___tmp__lockedTokenAddress_Fund;
__tmp__refundManager_Fund := __snap___tmp__refundManager_Fund;
__tmp__lastWithdrawTime_Fund := __snap___tmp__lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := __snap___tmp__firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := __snap___tmp__crowdsaleAddress_Fund;
__tmp__contributions_Fund := __snap___tmp__contributions_Fund;
__tmp__name_IERC20Token := __snap___tmp__name_IERC20Token;
__tmp__symbol_IERC20Token := __snap___tmp__symbol_IERC20Token;
__tmp__decimals_IERC20Token := __snap___tmp__decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := __snap___tmp__totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := __snap___tmp__allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := __snap___tmp__issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := __snap___tmp__eventListener_ManagedToken;
__tmp__manager_MultiOwnable := __snap___tmp__manager_MultiOwnable;
__tmp__owners_MultiOwnable := __snap___tmp__owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := __snap___tmp__ownerByAddress_MultiOwnable;
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__M_Ref_bool := M_Ref_bool;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__state_Fund := state_Fund;
__tmp__token_Fund := token_Fund;
__tmp__INITIAL_TAP_Fund := INITIAL_TAP_Fund;
__tmp__teamWallet_Fund := teamWallet_Fund;
__tmp__crowdsaleEndDate_Fund := crowdsaleEndDate_Fund;
__tmp__referralTokenWallet_Fund := referralTokenWallet_Fund;
__tmp__foundationTokenWallet_Fund := foundationTokenWallet_Fund;
__tmp__reserveTokenWallet_Fund := reserveTokenWallet_Fund;
__tmp__bountyTokenWallet_Fund := bountyTokenWallet_Fund;
__tmp__companyTokenWallet_Fund := companyTokenWallet_Fund;
__tmp__advisorTokenWallet_Fund := advisorTokenWallet_Fund;
__tmp__lockedTokenAddress_Fund := lockedTokenAddress_Fund;
__tmp__refundManager_Fund := refundManager_Fund;
__tmp__lastWithdrawTime_Fund := lastWithdrawTime_Fund;
__tmp__firstWithdrawAmount_Fund := firstWithdrawAmount_Fund;
__tmp__crowdsaleAddress_Fund := crowdsaleAddress_Fund;
__tmp__contributions_Fund := contributions_Fund;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
__tmp__allowTransfers_ManagedToken := allowTransfers_ManagedToken;
__tmp__issuanceFinished_ManagedToken := issuanceFinished_ManagedToken;
__tmp__eventListener_ManagedToken := eventListener_ManagedToken;
__tmp__manager_MultiOwnable := manager_MultiOwnable;
__tmp__owners_MultiOwnable := owners_MultiOwnable;
__tmp__ownerByAddress_MultiOwnable := ownerByAddress_MultiOwnable;
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

implementation withdrawEnabled_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_19: bool;
call __var_19 := canWithdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation withdrawEnabled_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_19: bool;
call __var_19 := canWithdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
if (!(__var_19)) {
revert := true;
return;
}
}

implementation onlyCrowdsale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__crowdsaleAddress_Fund[this]))) {
revert := true;
return;
}
}

implementation onlyCrowdsale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (crowdsaleAddress_Fund[this]))) {
revert := true;
return;
}
}

implementation transfersAllowed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(__tmp__allowTransfers_ManagedToken[this])) {
revert := true;
return;
}
}

implementation transfersAllowed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(allowTransfers_ManagedToken[this])) {
revert := true;
return;
}
}

implementation canIssue_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(__tmp__issuanceFinished_ManagedToken[this]))) {
revert := true;
return;
}
}

implementation canIssue_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!(!(issuanceFinished_ManagedToken[this]))) {
revert := true;
return;
}
}

implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][msgsender_MSG]) == (true))) {
revert := true;
return;
}
}

implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((M_Ref_bool[ownerByAddress_MultiOwnable[this]][msgsender_MSG]) == (true))) {
revert := true;
return;
}
}

implementation BoogieEntry_ERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s1667: Ref;
var __ret_0_balanceOf: int;
var _to_s1493: Ref;
var _value_s1493: int;
var __ret_0_transfer: bool;
var _from_s1571: Ref;
var _to_s1571: Ref;
var _value_s1571: int;
var __ret_0_transferFrom: bool;
var _spender_s1682: Ref;
var _value_s1682: int;
var __ret_0_approve: bool;
var _owner_s1726: Ref;
var _spender_s1726: Ref;
var __ret_0_allowance: int;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Token)) || ((DType[this]) == (ManagedToken)));
gas := (gas) - (53000);
call ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s1667;
havoc __ret_0_balanceOf;
havoc _to_s1493;
havoc _value_s1493;
havoc __ret_0_transfer;
havoc _from_s1571;
havoc _to_s1571;
havoc _value_s1571;
havoc __ret_0_transferFrom;
havoc _spender_s1682;
havoc _value_s1682;
havoc __ret_0_approve;
havoc _owner_s1726;
havoc _spender_s1726;
havoc __ret_0_allowance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1667);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1726, _spender_s1726);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var contributor_s267: Ref;
var _owners_s1294: Ref;
var __ret_0_getOwners: Ref;
var _teamWallet_s145: Ref;
var _referralTokenWallet_s145: Ref;
var _foundationTokenWallet_s145: Ref;
var _companyTokenWallet_s145: Ref;
var _reserveTokenWallet_s145: Ref;
var _bountyTokenWallet_s145: Ref;
var _advisorTokenWallet_s145: Ref;
var _refundManager_s145: Ref;
var _owners_s145: Ref;
var __ret_0_canWithdraw: bool;
var _crowdsaleAddress_s190: Ref;
var _tokenAddress_s214: Ref;
var _lockedTokenAddress_s236: Ref;
var contributorAddress_s448: Ref;
var __ret_0_getCurrentTapAmount: int;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (Fund));
call _owners_s145 := FreshRefGenerator__success();
gas := (gas) - (53000);
call Fund_Fund(this, msgsender_MSG, msgvalue_MSG, _teamWallet_s145, _referralTokenWallet_s145, _foundationTokenWallet_s145, _companyTokenWallet_s145, _reserveTokenWallet_s145, _bountyTokenWallet_s145, _advisorTokenWallet_s145, _refundManager_s145, _owners_s145);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_Fund) ==> ((manager_MultiOwnable[this]) == (null));
  // invariant (HoudiniB2_Fund) ==> ((manager_MultiOwnable[this]) != (null));
  // invariant (HoudiniB3_Fund) ==> ((teamWallet_Fund[this]) == (null));
  // invariant (HoudiniB4_Fund) ==> ((teamWallet_Fund[this]) != (null));
  // invariant (HoudiniB5_Fund) ==> ((referralTokenWallet_Fund[this]) == (null));
  // invariant (HoudiniB6_Fund) ==> ((referralTokenWallet_Fund[this]) != (null));
  // invariant (HoudiniB7_Fund) ==> ((foundationTokenWallet_Fund[this]) == (null));
  // invariant (HoudiniB8_Fund) ==> ((foundationTokenWallet_Fund[this]) != (null));
  // invariant (HoudiniB9_Fund) ==> ((reserveTokenWallet_Fund[this]) == (null));
  // invariant (HoudiniB10_Fund) ==> ((reserveTokenWallet_Fund[this]) != (null));
  // invariant (HoudiniB11_Fund) ==> ((bountyTokenWallet_Fund[this]) == (null));
  // invariant (HoudiniB12_Fund) ==> ((bountyTokenWallet_Fund[this]) != (null));
  // invariant (HoudiniB13_Fund) ==> ((companyTokenWallet_Fund[this]) == (null));
  // invariant (HoudiniB14_Fund) ==> ((companyTokenWallet_Fund[this]) != (null));
  // invariant (HoudiniB15_Fund) ==> ((advisorTokenWallet_Fund[this]) == (null));
  // invariant (HoudiniB16_Fund) ==> ((advisorTokenWallet_Fund[this]) != (null));
  // invariant (HoudiniB17_Fund) ==> ((lockedTokenAddress_Fund[this]) == (null));
  // invariant (HoudiniB18_Fund) ==> ((lockedTokenAddress_Fund[this]) != (null));
  // invariant (HoudiniB19_Fund) ==> ((refundManager_Fund[this]) == (null));
  // invariant (HoudiniB20_Fund) ==> ((refundManager_Fund[this]) != (null));
  // invariant (HoudiniB21_Fund) ==> ((crowdsaleAddress_Fund[this]) == (null));
  // invariant (HoudiniB22_Fund) ==> ((crowdsaleAddress_Fund[this]) != (null));
  // invariant (HoudiniB23_Fund) ==> ((manager_MultiOwnable[this]) == (teamWallet_Fund[this]));
  // invariant (HoudiniB24_Fund) ==> ((manager_MultiOwnable[this]) != (teamWallet_Fund[this]));
  // invariant (HoudiniB25_Fund) ==> ((manager_MultiOwnable[this]) == (referralTokenWallet_Fund[this]));
  // invariant (HoudiniB26_Fund) ==> ((manager_MultiOwnable[this]) != (referralTokenWallet_Fund[this]));
  // invariant (HoudiniB27_Fund) ==> ((manager_MultiOwnable[this]) == (foundationTokenWallet_Fund[this]));
  // invariant (HoudiniB28_Fund) ==> ((manager_MultiOwnable[this]) != (foundationTokenWallet_Fund[this]));
  // invariant (HoudiniB29_Fund) ==> ((manager_MultiOwnable[this]) == (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB30_Fund) ==> ((manager_MultiOwnable[this]) != (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB31_Fund) ==> ((manager_MultiOwnable[this]) == (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB32_Fund) ==> ((manager_MultiOwnable[this]) != (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB33_Fund) ==> ((manager_MultiOwnable[this]) == (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB34_Fund) ==> ((manager_MultiOwnable[this]) != (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB35_Fund) ==> ((manager_MultiOwnable[this]) == (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB36_Fund) ==> ((manager_MultiOwnable[this]) != (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB37_Fund) ==> ((manager_MultiOwnable[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB38_Fund) ==> ((manager_MultiOwnable[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB39_Fund) ==> ((manager_MultiOwnable[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB40_Fund) ==> ((manager_MultiOwnable[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB41_Fund) ==> ((manager_MultiOwnable[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB42_Fund) ==> ((manager_MultiOwnable[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB43_Fund) ==> ((teamWallet_Fund[this]) == (referralTokenWallet_Fund[this]));
  // invariant (HoudiniB44_Fund) ==> ((teamWallet_Fund[this]) != (referralTokenWallet_Fund[this]));
  // invariant (HoudiniB45_Fund) ==> ((teamWallet_Fund[this]) == (foundationTokenWallet_Fund[this]));
  // invariant (HoudiniB46_Fund) ==> ((teamWallet_Fund[this]) != (foundationTokenWallet_Fund[this]));
  // invariant (HoudiniB47_Fund) ==> ((teamWallet_Fund[this]) == (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB48_Fund) ==> ((teamWallet_Fund[this]) != (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB49_Fund) ==> ((teamWallet_Fund[this]) == (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB50_Fund) ==> ((teamWallet_Fund[this]) != (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB51_Fund) ==> ((teamWallet_Fund[this]) == (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB52_Fund) ==> ((teamWallet_Fund[this]) != (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB53_Fund) ==> ((teamWallet_Fund[this]) == (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB54_Fund) ==> ((teamWallet_Fund[this]) != (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB55_Fund) ==> ((teamWallet_Fund[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB56_Fund) ==> ((teamWallet_Fund[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB57_Fund) ==> ((teamWallet_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB58_Fund) ==> ((teamWallet_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB59_Fund) ==> ((teamWallet_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB60_Fund) ==> ((teamWallet_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB61_Fund) ==> ((referralTokenWallet_Fund[this]) == (foundationTokenWallet_Fund[this]));
  // invariant (HoudiniB62_Fund) ==> ((referralTokenWallet_Fund[this]) != (foundationTokenWallet_Fund[this]));
  // invariant (HoudiniB63_Fund) ==> ((referralTokenWallet_Fund[this]) == (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB64_Fund) ==> ((referralTokenWallet_Fund[this]) != (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB65_Fund) ==> ((referralTokenWallet_Fund[this]) == (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB66_Fund) ==> ((referralTokenWallet_Fund[this]) != (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB67_Fund) ==> ((referralTokenWallet_Fund[this]) == (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB68_Fund) ==> ((referralTokenWallet_Fund[this]) != (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB69_Fund) ==> ((referralTokenWallet_Fund[this]) == (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB70_Fund) ==> ((referralTokenWallet_Fund[this]) != (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB71_Fund) ==> ((referralTokenWallet_Fund[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB72_Fund) ==> ((referralTokenWallet_Fund[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB73_Fund) ==> ((referralTokenWallet_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB74_Fund) ==> ((referralTokenWallet_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB75_Fund) ==> ((referralTokenWallet_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB76_Fund) ==> ((referralTokenWallet_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB77_Fund) ==> ((foundationTokenWallet_Fund[this]) == (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB78_Fund) ==> ((foundationTokenWallet_Fund[this]) != (reserveTokenWallet_Fund[this]));
  // invariant (HoudiniB79_Fund) ==> ((foundationTokenWallet_Fund[this]) == (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB80_Fund) ==> ((foundationTokenWallet_Fund[this]) != (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB81_Fund) ==> ((foundationTokenWallet_Fund[this]) == (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB82_Fund) ==> ((foundationTokenWallet_Fund[this]) != (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB83_Fund) ==> ((foundationTokenWallet_Fund[this]) == (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB84_Fund) ==> ((foundationTokenWallet_Fund[this]) != (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB85_Fund) ==> ((foundationTokenWallet_Fund[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB86_Fund) ==> ((foundationTokenWallet_Fund[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB87_Fund) ==> ((foundationTokenWallet_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB88_Fund) ==> ((foundationTokenWallet_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB89_Fund) ==> ((foundationTokenWallet_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB90_Fund) ==> ((foundationTokenWallet_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB91_Fund) ==> ((reserveTokenWallet_Fund[this]) == (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB92_Fund) ==> ((reserveTokenWallet_Fund[this]) != (bountyTokenWallet_Fund[this]));
  // invariant (HoudiniB93_Fund) ==> ((reserveTokenWallet_Fund[this]) == (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB94_Fund) ==> ((reserveTokenWallet_Fund[this]) != (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB95_Fund) ==> ((reserveTokenWallet_Fund[this]) == (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB96_Fund) ==> ((reserveTokenWallet_Fund[this]) != (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB97_Fund) ==> ((reserveTokenWallet_Fund[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB98_Fund) ==> ((reserveTokenWallet_Fund[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB99_Fund) ==> ((reserveTokenWallet_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB100_Fund) ==> ((reserveTokenWallet_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB101_Fund) ==> ((reserveTokenWallet_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB102_Fund) ==> ((reserveTokenWallet_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB103_Fund) ==> ((bountyTokenWallet_Fund[this]) == (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB104_Fund) ==> ((bountyTokenWallet_Fund[this]) != (companyTokenWallet_Fund[this]));
  // invariant (HoudiniB105_Fund) ==> ((bountyTokenWallet_Fund[this]) == (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB106_Fund) ==> ((bountyTokenWallet_Fund[this]) != (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB107_Fund) ==> ((bountyTokenWallet_Fund[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB108_Fund) ==> ((bountyTokenWallet_Fund[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB109_Fund) ==> ((bountyTokenWallet_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB110_Fund) ==> ((bountyTokenWallet_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB111_Fund) ==> ((bountyTokenWallet_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB112_Fund) ==> ((bountyTokenWallet_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB113_Fund) ==> ((companyTokenWallet_Fund[this]) == (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB114_Fund) ==> ((companyTokenWallet_Fund[this]) != (advisorTokenWallet_Fund[this]));
  // invariant (HoudiniB115_Fund) ==> ((companyTokenWallet_Fund[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB116_Fund) ==> ((companyTokenWallet_Fund[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB117_Fund) ==> ((companyTokenWallet_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB118_Fund) ==> ((companyTokenWallet_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB119_Fund) ==> ((companyTokenWallet_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB120_Fund) ==> ((companyTokenWallet_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB121_Fund) ==> ((advisorTokenWallet_Fund[this]) == (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB122_Fund) ==> ((advisorTokenWallet_Fund[this]) != (lockedTokenAddress_Fund[this]));
  // invariant (HoudiniB123_Fund) ==> ((advisorTokenWallet_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB124_Fund) ==> ((advisorTokenWallet_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB125_Fund) ==> ((advisorTokenWallet_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB126_Fund) ==> ((advisorTokenWallet_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB127_Fund) ==> ((lockedTokenAddress_Fund[this]) == (refundManager_Fund[this]));
  // invariant (HoudiniB128_Fund) ==> ((lockedTokenAddress_Fund[this]) != (refundManager_Fund[this]));
  // invariant (HoudiniB129_Fund) ==> ((lockedTokenAddress_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB130_Fund) ==> ((lockedTokenAddress_Fund[this]) != (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB131_Fund) ==> ((refundManager_Fund[this]) == (crowdsaleAddress_Fund[this]));
  // invariant (HoudiniB132_Fund) ==> ((refundManager_Fund[this]) != (crowdsaleAddress_Fund[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc contributor_s267;
havoc _owners_s1294;
havoc __ret_0_getOwners;
havoc _teamWallet_s145;
havoc _referralTokenWallet_s145;
havoc _foundationTokenWallet_s145;
havoc _companyTokenWallet_s145;
havoc _reserveTokenWallet_s145;
havoc _bountyTokenWallet_s145;
havoc _advisorTokenWallet_s145;
havoc _refundManager_s145;
havoc _owners_s145;
havoc __ret_0_canWithdraw;
havoc _crowdsaleAddress_s190;
havoc _tokenAddress_s214;
havoc _lockedTokenAddress_s236;
havoc contributorAddress_s448;
havoc __ret_0_getCurrentTapAmount;
havoc tmpNow;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (15)) {
gas := (gas) - (21000);
call processContribution_Fund(this, msgsender_MSG, msgvalue_MSG, contributor_s267);
} else if ((choice) == (14)) {
gas := (gas) - (21000);
call onCrowdsaleEnd_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call enableCrowdsaleRefund_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (12)) {
call _owners_s1294 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_canWithdraw := canWithdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call setCrowdsaleAddress_Fund(this, msgsender_MSG, msgvalue_MSG, _crowdsaleAddress_s190);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call setTokenAddress_Fund(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s214);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call setLockedTokenAddress_Fund(this, msgsender_MSG, msgvalue_MSG, _lockedTokenAddress_s236);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call refundCrowdsaleContributor_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call autoRefundCrowdsaleContributor_Fund(this, msgsender_MSG, msgvalue_MSG, contributorAddress_s448);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_getCurrentTapAmount := getCurrentTapAmount_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call firstWithdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call withdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call refundTokenHolder_Fund(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_ICrowdsaleFund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (Fund)) || ((DType[this]) == (ICrowdsaleFund)));
gas := (gas) - (53000);
call ICrowdsaleFund_ICrowdsaleFund__success(this, msgsender_MSG, msgvalue_MSG);
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

implementation BoogieEntry_IERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s1756: Ref;
var balance_s1756: int;
var _to_s1765: Ref;
var _value_s1765: int;
var success_s1765: bool;
var _from_s1776: Ref;
var _to_s1776: Ref;
var _value_s1776: int;
var success_s1776: bool;
var _spender_s1785: Ref;
var _value_s1785: int;
var success_s1785: bool;
var _owner_s1794: Ref;
var _spender_s1794: Ref;
var remaining_s1794: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (ERC20Token)) || ((DType[this]) == (IERC20Token))) || ((DType[this]) == (ManagedToken)));
gas := (gas) - (53000);
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s1756;
havoc balance_s1756;
havoc _to_s1765;
havoc _value_s1765;
havoc success_s1765;
havoc _from_s1776;
havoc _to_s1776;
havoc _value_s1776;
havoc success_s1776;
havoc _spender_s1785;
havoc _value_s1785;
havoc success_s1785;
havoc _owner_s1794;
havoc _spender_s1794;
havoc remaining_s1794;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s1756 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1756);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s1765 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s1765, _value_s1765);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s1776 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s1776, _to_s1776, _value_s1776);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s1785 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s1785, _value_s1785);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s1794 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1794, _spender_s1794);
}
}
}

implementation BoogieEntry_ISimpleCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (ISimpleCrowdsale));
gas := (gas) - (53000);
call ISimpleCrowdsale_ISimpleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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

implementation BoogieEntry_ITokenEventListener()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (ITokenEventListener));
gas := (gas) - (53000);
call ITokenEventListener_ITokenEventListener__success(this, msgsender_MSG, msgvalue_MSG);
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

implementation BoogieEntry_ManagedToken()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s1667: Ref;
var __ret_0_balanceOf: int;
var _to_s920: Ref;
var _value_s920: int;
var __ret_0_transfer: bool;
var _from_s974: Ref;
var _to_s974: Ref;
var _value_s974: int;
var __ret_0_transferFrom: bool;
var _spender_s1682: Ref;
var _value_s1682: int;
var __ret_0_approve: bool;
var _owner_s1726: Ref;
var _spender_s1726: Ref;
var __ret_0_allowance: int;
var _owners_s1294: Ref;
var __ret_0_getOwners: Ref;
var _listener_s849: Ref;
var _owners_s849: Ref;
var _allowTransfers_s880: bool;
var _listener_s905: Ref;
var _to_s1067: Ref;
var _value_s1067: int;
var _from_s1119: Ref;
var _value_s1119: int;
var _spender_s1160: Ref;
var _addedValue_s1160: int;
var __ret_0_increaseApproval: bool;
var _spender_s1220: Ref;
var _subtractedValue_s1220: int;
var __ret_0_decreaseApproval: bool;
var __ret_0_finishIssuance: bool;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (ManagedToken));
call _owners_s849 := FreshRefGenerator__success();
gas := (gas) - (53000);
call ManagedToken_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s849, _owners_s849);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_ManagedToken) ==> ((manager_MultiOwnable[this]) == (null));
  // invariant (HoudiniB2_ManagedToken) ==> ((manager_MultiOwnable[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s1667;
havoc __ret_0_balanceOf;
havoc _to_s920;
havoc _value_s920;
havoc __ret_0_transfer;
havoc _from_s974;
havoc _to_s974;
havoc _value_s974;
havoc __ret_0_transferFrom;
havoc _spender_s1682;
havoc _value_s1682;
havoc __ret_0_approve;
havoc _owner_s1726;
havoc _spender_s1726;
havoc __ret_0_allowance;
havoc _owners_s1294;
havoc __ret_0_getOwners;
havoc _listener_s849;
havoc _owners_s849;
havoc _allowTransfers_s880;
havoc _listener_s905;
havoc _to_s1067;
havoc _value_s1067;
havoc _from_s1119;
havoc _value_s1119;
havoc _spender_s1160;
havoc _addedValue_s1160;
havoc __ret_0_increaseApproval;
havoc _spender_s1220;
havoc _subtractedValue_s1220;
havoc __ret_0_decreaseApproval;
havoc __ret_0_finishIssuance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (14)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1667);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s920, _value_s920);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s974, _to_s974, _value_s974);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1726, _spender_s1726);
} else if ((choice) == (9)) {
call _owners_s1294 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call setAllowTransfers_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s880);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call setListener_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s905);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call issue_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s1067, _value_s1067);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call destroy_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s1119, _value_s1119);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_increaseApproval := increaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1160, _addedValue_s1160);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_decreaseApproval := decreaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1220, _subtractedValue_s1220);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_finishIssuance := finishIssuance_ManagedToken(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation BoogieEntry_MultiOwnable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owners_s1294: Ref;
var __ret_0_getOwners: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (Fund)) || ((DType[this]) == (ManagedToken))) || ((DType[this]) == (MultiOwnable)));
gas := (gas) - (53000);
call MultiOwnable_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_MultiOwnable) ==> ((manager_MultiOwnable[this]) == (null));
  // invariant (HoudiniB2_MultiOwnable) ==> ((manager_MultiOwnable[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owners_s1294;
havoc __ret_0_getOwners;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
call _owners_s1294 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
}
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
assume (((((DType[this]) == (ERC20Token)) || ((DType[this]) == (Fund))) || ((DType[this]) == (ManagedToken))) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
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

implementation CorralChoice_ERC20Token(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s1667: Ref;
var __ret_0_balanceOf: int;
var _to_s1493: Ref;
var _value_s1493: int;
var __ret_0_transfer: bool;
var _from_s1571: Ref;
var _to_s1571: Ref;
var _value_s1571: int;
var __ret_0_transferFrom: bool;
var _spender_s1682: Ref;
var _value_s1682: int;
var __ret_0_approve: bool;
var _owner_s1726: Ref;
var _spender_s1726: Ref;
var __ret_0_allowance: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s1667;
havoc __ret_0_balanceOf;
havoc _to_s1493;
havoc _value_s1493;
havoc __ret_0_transfer;
havoc _from_s1571;
havoc _to_s1571;
havoc _value_s1571;
havoc __ret_0_transferFrom;
havoc _spender_s1682;
havoc _value_s1682;
havoc __ret_0_approve;
havoc _owner_s1726;
havoc _spender_s1726;
havoc __ret_0_allowance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1667);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s1493, _value_s1493);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s1571, _to_s1571, _value_s1571);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1726, _spender_s1726);
}
}

implementation CorralEntry_ERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Token)) || ((DType[this]) == (ManagedToken)));
gas := (gas) - (53000);
call ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20Token(this);
}
}

implementation CorralChoice_Fund(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var contributor_s267: Ref;
var _owners_s1294: Ref;
var __ret_0_getOwners: Ref;
var _teamWallet_s145: Ref;
var _referralTokenWallet_s145: Ref;
var _foundationTokenWallet_s145: Ref;
var _companyTokenWallet_s145: Ref;
var _reserveTokenWallet_s145: Ref;
var _bountyTokenWallet_s145: Ref;
var _advisorTokenWallet_s145: Ref;
var _refundManager_s145: Ref;
var _owners_s145: Ref;
var __ret_0_canWithdraw: bool;
var _crowdsaleAddress_s190: Ref;
var _tokenAddress_s214: Ref;
var _lockedTokenAddress_s236: Ref;
var contributorAddress_s448: Ref;
var __ret_0_getCurrentTapAmount: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc contributor_s267;
havoc _owners_s1294;
havoc __ret_0_getOwners;
havoc _teamWallet_s145;
havoc _referralTokenWallet_s145;
havoc _foundationTokenWallet_s145;
havoc _companyTokenWallet_s145;
havoc _reserveTokenWallet_s145;
havoc _bountyTokenWallet_s145;
havoc _advisorTokenWallet_s145;
havoc _refundManager_s145;
havoc _owners_s145;
havoc __ret_0_canWithdraw;
havoc _crowdsaleAddress_s190;
havoc _tokenAddress_s214;
havoc _lockedTokenAddress_s236;
havoc contributorAddress_s448;
havoc __ret_0_getCurrentTapAmount;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (15)) {
gas := (gas) - (21000);
call processContribution_Fund(this, msgsender_MSG, msgvalue_MSG, contributor_s267);
} else if ((choice) == (14)) {
gas := (gas) - (21000);
call onCrowdsaleEnd_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call enableCrowdsaleRefund_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (12)) {
call _owners_s1294 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_canWithdraw := canWithdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
gas := (gas) - (21000);
call setCrowdsaleAddress_Fund(this, msgsender_MSG, msgvalue_MSG, _crowdsaleAddress_s190);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call setTokenAddress_Fund(this, msgsender_MSG, msgvalue_MSG, _tokenAddress_s214);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call setLockedTokenAddress_Fund(this, msgsender_MSG, msgvalue_MSG, _lockedTokenAddress_s236);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call refundCrowdsaleContributor_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call autoRefundCrowdsaleContributor_Fund(this, msgsender_MSG, msgvalue_MSG, contributorAddress_s448);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_getCurrentTapAmount := getCurrentTapAmount_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call firstWithdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call withdraw_Fund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call refundTokenHolder_Fund(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_Fund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _teamWallet_s145: Ref;
var _referralTokenWallet_s145: Ref;
var _foundationTokenWallet_s145: Ref;
var _companyTokenWallet_s145: Ref;
var _reserveTokenWallet_s145: Ref;
var _bountyTokenWallet_s145: Ref;
var _advisorTokenWallet_s145: Ref;
var _refundManager_s145: Ref;
var _owners_s145: Ref;
assume ((now) >= (0));
assume ((DType[this]) == (Fund));
call _owners_s145 := FreshRefGenerator__success();
gas := (gas) - (53000);
call Fund_Fund(this, msgsender_MSG, msgvalue_MSG, _teamWallet_s145, _referralTokenWallet_s145, _foundationTokenWallet_s145, _companyTokenWallet_s145, _reserveTokenWallet_s145, _bountyTokenWallet_s145, _advisorTokenWallet_s145, _refundManager_s145, _owners_s145);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Fund(this);
}
}

implementation CorralChoice_ICrowdsaleFund(this: Ref)
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

implementation CorralEntry_ICrowdsaleFund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (Fund)) || ((DType[this]) == (ICrowdsaleFund)));
gas := (gas) - (53000);
call ICrowdsaleFund_ICrowdsaleFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ICrowdsaleFund(this);
}
}

implementation CorralChoice_IERC20Token(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s1756: Ref;
var balance_s1756: int;
var _to_s1765: Ref;
var _value_s1765: int;
var success_s1765: bool;
var _from_s1776: Ref;
var _to_s1776: Ref;
var _value_s1776: int;
var success_s1776: bool;
var _spender_s1785: Ref;
var _value_s1785: int;
var success_s1785: bool;
var _owner_s1794: Ref;
var _spender_s1794: Ref;
var remaining_s1794: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s1756;
havoc balance_s1756;
havoc _to_s1765;
havoc _value_s1765;
havoc success_s1765;
havoc _from_s1776;
havoc _to_s1776;
havoc _value_s1776;
havoc success_s1776;
havoc _spender_s1785;
havoc _value_s1785;
havoc success_s1785;
havoc _owner_s1794;
havoc _spender_s1794;
havoc remaining_s1794;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s1756 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1756);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s1765 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s1765, _value_s1765);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s1776 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s1776, _to_s1776, _value_s1776);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s1785 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s1785, _value_s1785);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s1794 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1794, _spender_s1794);
}
}

implementation CorralEntry_IERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((((DType[this]) == (ERC20Token)) || ((DType[this]) == (IERC20Token))) || ((DType[this]) == (ManagedToken)));
gas := (gas) - (53000);
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IERC20Token(this);
}
}

implementation CorralChoice_ISimpleCrowdsale(this: Ref)
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

implementation CorralEntry_ISimpleCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (ISimpleCrowdsale));
gas := (gas) - (53000);
call ISimpleCrowdsale_ISimpleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ISimpleCrowdsale(this);
}
}

implementation CorralChoice_ITokenEventListener(this: Ref)
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

implementation CorralEntry_ITokenEventListener()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (ITokenEventListener));
gas := (gas) - (53000);
call ITokenEventListener_ITokenEventListener__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ITokenEventListener(this);
}
}

implementation CorralChoice_ManagedToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s1667: Ref;
var __ret_0_balanceOf: int;
var _to_s920: Ref;
var _value_s920: int;
var __ret_0_transfer: bool;
var _from_s974: Ref;
var _to_s974: Ref;
var _value_s974: int;
var __ret_0_transferFrom: bool;
var _spender_s1682: Ref;
var _value_s1682: int;
var __ret_0_approve: bool;
var _owner_s1726: Ref;
var _spender_s1726: Ref;
var __ret_0_allowance: int;
var _owners_s1294: Ref;
var __ret_0_getOwners: Ref;
var _listener_s849: Ref;
var _owners_s849: Ref;
var _allowTransfers_s880: bool;
var _listener_s905: Ref;
var _to_s1067: Ref;
var _value_s1067: int;
var _from_s1119: Ref;
var _value_s1119: int;
var _spender_s1160: Ref;
var _addedValue_s1160: int;
var __ret_0_increaseApproval: bool;
var _spender_s1220: Ref;
var _subtractedValue_s1220: int;
var __ret_0_decreaseApproval: bool;
var __ret_0_finishIssuance: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s1667;
havoc __ret_0_balanceOf;
havoc _to_s920;
havoc _value_s920;
havoc __ret_0_transfer;
havoc _from_s974;
havoc _to_s974;
havoc _value_s974;
havoc __ret_0_transferFrom;
havoc _spender_s1682;
havoc _value_s1682;
havoc __ret_0_approve;
havoc _owner_s1726;
havoc _spender_s1726;
havoc __ret_0_allowance;
havoc _owners_s1294;
havoc __ret_0_getOwners;
havoc _listener_s849;
havoc _owners_s849;
havoc _allowTransfers_s880;
havoc _listener_s905;
havoc _to_s1067;
havoc _value_s1067;
havoc _from_s1119;
havoc _value_s1119;
havoc _spender_s1160;
havoc _addedValue_s1160;
havoc __ret_0_increaseApproval;
havoc _spender_s1220;
havoc _subtractedValue_s1220;
havoc __ret_0_decreaseApproval;
havoc __ret_0_finishIssuance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (14)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1667);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s920, _value_s920);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s974, _to_s974, _value_s974);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s1682, _value_s1682);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s1726, _spender_s1726);
} else if ((choice) == (9)) {
call _owners_s1294 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call setAllowTransfers_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s880);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call setListener_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s905);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call issue_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s1067, _value_s1067);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call destroy_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s1119, _value_s1119);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_increaseApproval := increaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1160, _addedValue_s1160);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_decreaseApproval := decreaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1220, _subtractedValue_s1220);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_finishIssuance := finishIssuance_ManagedToken(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_ManagedToken()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _listener_s849: Ref;
var _owners_s849: Ref;
assume ((now) >= (0));
assume ((DType[this]) == (ManagedToken));
call _owners_s849 := FreshRefGenerator__success();
gas := (gas) - (53000);
call ManagedToken_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s849, _owners_s849);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ManagedToken(this);
}
}

implementation CorralChoice_MultiOwnable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owners_s1294: Ref;
var __ret_0_getOwners: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owners_s1294;
havoc __ret_0_getOwners;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
call _owners_s1294 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s1294);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_MultiOwnable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((((DType[this]) == (Fund)) || ((DType[this]) == (ManagedToken))) || ((DType[this]) == (MultiOwnable)));
gas := (gas) - (53000);
call MultiOwnable_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_MultiOwnable(this);
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
assume (((((DType[this]) == (ERC20Token)) || ((DType[this]) == (Fund))) || ((DType[this]) == (ManagedToken))) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}


