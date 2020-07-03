// DUMMY PROPERTY
// LTLProperty: [](finished(CrowdsaleERC20.cancel))

// Spec L1
// #LTLVariables: user:Ref
// LTLFairness: <>(finished(CrowdsaleERC20.buyAssetOrderERC20, user == msg.sender)) && <>(finished(Crowdsale.ERC20.refund(ref), ref == user))
// LTLProperty: !(<>(finished(CrowdsaleERC20.buyAssetOrderERC20, user == msg.sender)))
// LTLProperty: !(<>(finished(CrowdsaleERC20.refund(ref), ref == user)))
// #LTLProperty: !(<>(finished(CrowdsaleERC20.buyAssetOrderERC20, user == msg.sender)) && <>(finished(CrowdsaleERC20.refund(ref), ref == user)))
// LTLProperty: <>(finished(send(from, to, amt), to == user && amt == fsum(CrowdsaleERC20.buyAssetOrderERC20, 2, msg.sender == user)))

type Ref = int;
type ContractName = int;
var null: Ref;
var SafeMath: ContractName;
var ERC20: ContractName;
var DividendInterface: ContractName;
var KyberInterface: ContractName;
var MinterInterface: ContractName;
var CrowdsaleReserveInterface: ContractName;
var Events: ContractName;
var DB: ContractName;
var CrowdsaleERC20: ContractName;
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
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int) returns (__ret_0_: int);
procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int);
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s68: int, b_s68: int) returns (__ret_0_: int);
procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int);
procedure {:inline 1} getFractionalAmount_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s102: int, _percentage_s102: int) returns (__ret_0_: int);
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decimals_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _who_s120: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s129: Ref, _spender_s129: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s138: Ref, _value_s138: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s147: Ref, _value_s147: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s158: Ref, _to_s158: Ref, _value_s158: int) returns (__ret_0_: bool);
procedure {:inline 1} DividendInterface_DividendInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} DividendInterface_DividendInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
implementation DividendInterface_DividendInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call DividendInterface_DividendInterface__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call DividendInterface_DividendInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} issueDividends_DividendInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s182: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} totalSupply_DividendInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} getERC20_DividendInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} KyberInterface_KyberInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} KyberInterface_KyberInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
implementation KyberInterface_KyberInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call KyberInterface_KyberInterface__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call KyberInterface_KyberInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} getExpectedRate_KyberInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, src_s206: Ref, dest_s206: Ref, srcQty_s206: int) returns (expectedRate_s206: int, slippageRate_s206: int);
procedure {:public} {:inline 1} trade_KyberInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, src_s225: Ref, srcAmount_s225: int, dest_s225: Ref, destAddress_s225: Ref, maxDestAmount_s225: int, minConversionRate_s225: int, walletId_s225: Ref) returns (__ret_0_: int);
procedure {:inline 1} MinterInterface_MinterInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} MinterInterface_MinterInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
implementation MinterInterface_MinterInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call MinterInterface_MinterInterface__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call MinterInterface_MinterInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} cloneToken_MinterInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _uri_s235: int, _erc20Address_s235: Ref) returns (asset_s235: Ref);
procedure {:public} {:inline 1} mintAssetTokens_MinterInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s246: Ref, _receiver_s246: Ref, _amount_s246: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} changeTokenController_MinterInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s255: Ref, _newController_s255: Ref) returns (__ret_0_: bool);
procedure {:inline 1} CrowdsaleReserveInterface_CrowdsaleReserveInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} CrowdsaleReserveInterface_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
implementation CrowdsaleReserveInterface_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call CrowdsaleReserveInterface_CrowdsaleReserveInterface__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call CrowdsaleReserveInterface_CrowdsaleReserveInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} issueETH_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _receiver_s265: Ref, _amount_s265: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} receiveETH_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _payer_s272: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} refundETHAsset_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _asset_s281: Ref, _amount_s281: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} issueERC20_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _receiver_s292: Ref, _amount_s292: int, _tokenAddress_s292: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} requestERC20_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _payer_s303: Ref, _amount_s303: int, _tokenAddress_s303: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} approveERC20_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _receiver_s314: Ref, _amount_s314: int, _tokenAddress_s314: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} refundERC20Asset_CrowdsaleReserveInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _asset_s325: Ref, _amount_s325: int, _tokenAddress_s325: Ref) returns (__ret_0_: bool);
procedure {:inline 1} Events_Events_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} Events_Events(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
implementation Events_Events(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call Events_Events__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Events_Events__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transaction_Events(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _message_s339: int, _from_s339: Ref, _to_s339: Ref, _amount_s339: int, _token_s339: Ref);
procedure {:public} {:inline 1} asset_Events(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _message_s350: int, _uri_s350: int, _assetAddress_s350: Ref, _manager_s350: Ref);
procedure {:inline 1} DB_DB_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} DB_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
implementation DB_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call DB_DB__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call DB_DB__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} addressStorage_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _key_s358: int) returns (__ret_0_: Ref);
procedure {:public} {:inline 1} uintStorage_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _key_s365: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} setUint_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _key_s372: int, _value_s372: int);
procedure {:public} {:inline 1} deleteUint_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _key_s377: int);
procedure {:public} {:inline 1} setBool_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _key_s384: int, _value_s384: bool);
procedure {:public} {:inline 1} boolStorage_DB(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _key_s391: int) returns (__ret_0_: bool);
var {:access "this.database=database_CrowdsaleERC20[this]"} database_CrowdsaleERC20: [Ref]Ref;
var {:access "this.events=events_CrowdsaleERC20[this]"} events_CrowdsaleERC20: [Ref]Ref;
var {:access "this.minter=minter_CrowdsaleERC20[this]"} minter_CrowdsaleERC20: [Ref]Ref;
var {:access "this.reserve=reserve_CrowdsaleERC20[this]"} reserve_CrowdsaleERC20: [Ref]Ref;
var {:access "this.kyber=kyber_CrowdsaleERC20[this]"} kyber_CrowdsaleERC20: [Ref]Ref;
procedure {:inline 1} CrowdsaleERC20_CrowdsaleERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref);
modifies Balance;
modifies database_CrowdsaleERC20;
modifies events_CrowdsaleERC20;
modifies minter_CrowdsaleERC20;
modifies reserve_CrowdsaleERC20;
modifies kyber_CrowdsaleERC20;
procedure {:constructor} {:public} {:inline 1} CrowdsaleERC20_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
modifies database_CrowdsaleERC20;
modifies events_CrowdsaleERC20;
modifies minter_CrowdsaleERC20;
modifies reserve_CrowdsaleERC20;
modifies kyber_CrowdsaleERC20;
implementation CrowdsaleERC20_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call CrowdsaleERC20_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _database_s463, _events_s463, _kyber_s463);
assume ((revert) || ((gas) < (0)));
} else {
call CrowdsaleERC20_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _database_s463, _events_s463, _kyber_s463);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} buyAssetOrderERC20_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s791: Ref, _amount_s791: int, _paymentToken_s791: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
modifies gas;
implementation buyAssetOrderERC20_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s791: Ref, _amount_s791: int, _paymentToken_s791: Ref) returns (__ret_0_: bool)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call __ret_0_ := buyAssetOrderERC20_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s791, _amount_s791, _paymentToken_s791);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := buyAssetOrderERC20_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s791, _amount_s791, _paymentToken_s791);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} payoutERC20_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1069: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
implementation payoutERC20_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1069: Ref) returns (__ret_0_: bool)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call __ret_0_ := payoutERC20_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1069);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := payoutERC20_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1069);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} cancel_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1121: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
implementation cancel_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1121: Ref) returns (__ret_0_: bool)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call __ret_0_ := cancel_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := cancel_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} refund_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1214: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
implementation refund_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1214: Ref) returns (__ret_0_: bool)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call __ret_0_ := refund_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := refund_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} collectPayment_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s1258: Ref, amount_s1258: int, max_s1258: int, token_s1258: Ref) returns (__ret_0_: int);
procedure {:inline 1} convertTokens_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s1485: Ref, _amount_s1485: int, _fundingToken_s1485: Ref, _paymentToken_s1485: Ref, _maxTokens_s1485: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
procedure {:public} {:inline 1} recoverTokens_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _erc20Token_s1516: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
implementation recoverTokens_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _erc20Token_s1516: Ref)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call recoverTokens_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _erc20Token_s1516);
assume ((revert) || ((gas) < (0)));
} else {
call recoverTokens_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _erc20Token_s1516);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} destroy_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies gas;
modifies Balance;
implementation destroy_CrowdsaleERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
call destroy_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call destroy_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackMethod_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies revert;
modifies Balance;
procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} validAsset_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1625: Ref);
modifies revert;
procedure {:inline 1} beforeDeadline_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1647: Ref);
modifies revert;
procedure {:inline 1} betweenDeadlines_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1685: Ref);
modifies revert;
procedure {:inline 1} afterDeadline_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1707: Ref);
modifies revert;
procedure {:inline 1} finalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1727: Ref);
modifies revert;
procedure {:inline 1} notFinalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1748: Ref);
modifies revert;
procedure {:inline 1} notPaid_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1769: Ref);
modifies revert;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_SafeMath();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_ERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_ERC20();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_DividendInterface(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_DividendInterface();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_KyberInterface(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_KyberInterface();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_MinterInterface(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_MinterInterface();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_CrowdsaleReserveInterface(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_CrowdsaleReserveInterface();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_Events(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_Events();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_DB(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_DB();
modifies gas;
modifies Alloc;
modifies Balance;
modifies now;
procedure CorralChoice_CrowdsaleERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies now;
modifies Balance;
modifies database_CrowdsaleERC20;
modifies events_CrowdsaleERC20;
modifies minter_CrowdsaleERC20;
modifies reserve_CrowdsaleERC20;
modifies kyber_CrowdsaleERC20;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__database_CrowdsaleERC20: [Ref]Ref;
var __tmp__events_CrowdsaleERC20: [Ref]Ref;
var __tmp__minter_CrowdsaleERC20: [Ref]Ref;
var __tmp__reserve_CrowdsaleERC20: [Ref]Ref;
var __tmp__kyber_CrowdsaleERC20: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int) returns (__ret_0_: int);
procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int);
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s68: int, b_s68: int) returns (__ret_0_: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int);
procedure {:inline 1} getFractionalAmount_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s102: int, _percentage_s102: int) returns (__ret_0_: int);
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} DividendInterface_DividendInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} DividendInterface_DividendInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} DividendInterface_DividendInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} KyberInterface_KyberInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} KyberInterface_KyberInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} KyberInterface_KyberInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} MinterInterface_MinterInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} MinterInterface_MinterInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} MinterInterface_MinterInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} CrowdsaleReserveInterface_CrowdsaleReserveInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} CrowdsaleReserveInterface_CrowdsaleReserveInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} CrowdsaleReserveInterface_CrowdsaleReserveInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} Events_Events_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} Events_Events__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} Events_Events__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} DB_DB_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} DB_DB__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} DB_DB__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} CrowdsaleERC20_CrowdsaleERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref);
modifies __tmp__Balance;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
procedure {:constructor} {:inline 1} CrowdsaleERC20_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref);
modifies Balance;
modifies database_CrowdsaleERC20;
modifies events_CrowdsaleERC20;
modifies minter_CrowdsaleERC20;
modifies reserve_CrowdsaleERC20;
modifies kyber_CrowdsaleERC20;
procedure {:constructor} {:inline 1} CrowdsaleERC20_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref);
modifies __tmp__Balance;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
procedure {:inline 1} buyAssetOrderERC20_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s791: Ref, _amount_s791: int, _paymentToken_s791: Ref) returns (__ret_0_: bool);
modifies Balance;
modifies revert;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
procedure {:inline 1} buyAssetOrderERC20_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s791: Ref, _amount_s791: int, _paymentToken_s791: Ref) returns (__ret_0_: bool);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
procedure {:inline 1} payoutERC20_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1069: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} payoutERC20_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1069: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} cancel_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1121: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} cancel_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1121: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} refund_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1214: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} refund_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1214: Ref) returns (__ret_0_: bool);
modifies revert;
procedure {:inline 1} collectPayment_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s1258: Ref, amount_s1258: int, max_s1258: int, token_s1258: Ref) returns (__ret_0_: int);
procedure {:inline 1} convertTokens_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s1485: Ref, _amount_s1485: int, _fundingToken_s1485: Ref, _paymentToken_s1485: Ref, _maxTokens_s1485: int) returns (__ret_0_: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
procedure {:inline 1} recoverTokens_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _erc20Token_s1516: Ref);
modifies revert;
procedure {:inline 1} recoverTokens_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _erc20Token_s1516: Ref);
modifies revert;
procedure {:inline 1} destroy_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies Balance;
procedure {:inline 1} destroy_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
procedure {:inline 1} FallbackMethod_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__database_CrowdsaleERC20;
modifies __tmp__events_CrowdsaleERC20;
modifies __tmp__minter_CrowdsaleERC20;
modifies __tmp__reserve_CrowdsaleERC20;
modifies __tmp__kyber_CrowdsaleERC20;
modifies revert;
procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} validAsset_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1625: Ref);
modifies revert;
procedure {:inline 1} beforeDeadline_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1647: Ref);
modifies revert;
procedure {:inline 1} betweenDeadlines_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1685: Ref);
modifies revert;
procedure {:inline 1} afterDeadline_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1707: Ref);
modifies revert;
procedure {:inline 1} finalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1727: Ref);
modifies revert;
procedure {:inline 1} notFinalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1748: Ref);
modifies revert;
procedure {:inline 1} notPaid_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1769: Ref);
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

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int) returns (__ret_0_: int)
// {
// var c_s33: int;
// assume ((a_s34) >= (0));
// if ((a_s34) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s33) >= (0));
// assume ((a_s34) >= (0));
// assume ((b_s34) >= (0));
// assume (((a_s34) * (b_s34)) >= (0));
// c_s33 := (a_s34) * (b_s34);
// assume ((c_s33) >= (0));
// assume ((a_s34) >= (0));
// assume (((c_s33) div (a_s34)) >= (0));
// assume ((b_s34) >= (0));
// assume ((c_s33) >= (0));
// __ret_0_ := c_s33;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int) returns (__ret_0_: int)
// {
// var c_s33: int;
// assume ((a_s34) >= (0));
// if ((a_s34) == (0)) {
// __ret_0_ := 0;
// return;
// }
// assume ((c_s33) >= (0));
// assume ((a_s34) >= (0));
// assume ((b_s34) >= (0));
// assume (((a_s34) * (b_s34)) >= (0));
// c_s33 := (a_s34) * (b_s34);
// assume ((c_s33) >= (0));
// assume ((a_s34) >= (0));
// assume (((c_s33) div (a_s34)) >= (0));
// assume ((b_s34) >= (0));
// assert (((c_s33) div (a_s34)) == (b_s34));
// assume ((c_s33) >= (0));
// __ret_0_ := c_s33;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int)
// {
// assume ((a_s48) >= (0));
// assume ((b_s48) >= (0));
// assume (((a_s48) div (b_s48)) >= (0));
// __ret_0_ := (a_s48) div (b_s48);
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int)
// {
// assume ((a_s48) >= (0));
// assume ((b_s48) >= (0));
// assume (((a_s48) div (b_s48)) >= (0));
// __ret_0_ := (a_s48) div (b_s48);
// return;
// }

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s68: int, b_s68: int) returns (__ret_0_: int)
{
assume ((b_s68) >= (0));
assume ((a_s68) >= (0));
assume ((a_s68) >= (0));
assume ((b_s68) >= (0));
assume (((a_s68) - (b_s68)) >= (0));
__ret_0_ := (a_s68) - (b_s68);
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s68: int, b_s68: int) returns (__ret_0_: int)
{
assume ((b_s68) >= (0));
assume ((a_s68) >= (0));
assert ((b_s68) <= (a_s68));
assume ((a_s68) >= (0));
assume ((b_s68) >= (0));
assume (((a_s68) - (b_s68)) >= (0));
__ret_0_ := (a_s68) - (b_s68);
return;
}

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int)
{
var c_s91: int;
assume ((c_s91) >= (0));
assume ((a_s92) >= (0));
assume ((b_s92) >= (0));
assume (((a_s92) + (b_s92)) >= (0));
c_s91 := (a_s92) + (b_s92);
assume ((c_s91) >= (0));
assume ((a_s92) >= (0));
assume ((c_s91) >= (0));
__ret_0_ := c_s91;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int) returns (__ret_0_: int)
{
var c_s91: int;
assume ((c_s91) >= (0));
assume ((a_s92) >= (0));
assume ((b_s92) >= (0));
assume (((a_s92) + (b_s92)) >= (0));
c_s91 := (a_s92) + (b_s92);
assume ((c_s91) >= (0));
assume ((a_s92) >= (0));
assert ((c_s91) >= (a_s92));
assume ((c_s91) >= (0));
__ret_0_ := c_s91;
return;
}

// implementation getFractionalAmount_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s102: int, _percentage_s102: int) returns (__ret_0_: int)
// {
// }

// implementation getFractionalAmount_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s102: int, _percentage_s102: int) returns (__ret_0_: int)
// {
// }

implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation DividendInterface_DividendInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation DividendInterface_DividendInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation DividendInterface_DividendInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call DividendInterface_DividendInterface_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation DividendInterface_DividendInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call DividendInterface_DividendInterface_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation KyberInterface_KyberInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation KyberInterface_KyberInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation KyberInterface_KyberInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call KyberInterface_KyberInterface_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation KyberInterface_KyberInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call KyberInterface_KyberInterface_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation MinterInterface_MinterInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation MinterInterface_MinterInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation MinterInterface_MinterInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call MinterInterface_MinterInterface_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation MinterInterface_MinterInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call MinterInterface_MinterInterface_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation CrowdsaleReserveInterface_CrowdsaleReserveInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation CrowdsaleReserveInterface_CrowdsaleReserveInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation CrowdsaleReserveInterface_CrowdsaleReserveInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call CrowdsaleReserveInterface_CrowdsaleReserveInterface_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation CrowdsaleReserveInterface_CrowdsaleReserveInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call CrowdsaleReserveInterface_CrowdsaleReserveInterface_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Events_Events_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation Events_Events_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation Events_Events__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Events_Events_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Events_Events__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Events_Events_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation DB_DB_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation DB_DB_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation DB_DB__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call DB_DB_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation DB_DB__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call DB_DB_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation CrowdsaleERC20_CrowdsaleERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
var __var_7: int;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: int;
var __var_13: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
assume ((__tmp__DType[_database_s463]) == (DB));
__var_1 := _database_s463;
__tmp__database_CrowdsaleERC20[this] := __var_1;
assume ((__tmp__DType[_events_s463]) == (Events));
__var_2 := _events_s463;
__tmp__events_CrowdsaleERC20[this] := __var_2;
__var_7 := abiEncodePacked2(2088276862, -220359811);
__var_6 := keccak256(__var_7);
assume ((__var_6) != (0));
call __var_4 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_5, __var_6);
assume ((__tmp__DType[__var_4]) == (MinterInterface));
__var_3 := __var_4;
__tmp__minter_CrowdsaleERC20[this] := __var_3;
__var_12 := abiEncodePacked2(2088276862, -1419277538);
__var_11 := keccak256(__var_12);
assume ((__var_11) != (0));
call __var_9 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_10, __var_11);
assume ((__tmp__DType[__var_9]) == (CrowdsaleReserveInterface));
__var_8 := __var_9;
__tmp__reserve_CrowdsaleERC20[this] := __var_8;
assume ((__tmp__DType[_kyber_s463]) == (KyberInterface));
__var_13 := _kyber_s463;
__tmp__kyber_CrowdsaleERC20[this] := __var_13;
}

implementation CrowdsaleERC20_CrowdsaleERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
var __var_7: int;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: int;
var __var_13: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
assume ((DType[_database_s463]) == (DB));
__var_1 := _database_s463;
database_CrowdsaleERC20[this] := __var_1;
assume ((DType[_events_s463]) == (Events));
__var_2 := _events_s463;
events_CrowdsaleERC20[this] := __var_2;
__var_7 := abiEncodePacked2(2088276862, -220359811);
__var_6 := keccak256(__var_7);
assume ((__var_6) != (0));
call __var_4 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_5, __var_6);
assume ((DType[__var_4]) == (MinterInterface));
__var_3 := __var_4;
minter_CrowdsaleERC20[this] := __var_3;
__var_12 := abiEncodePacked2(2088276862, -1419277538);
__var_11 := keccak256(__var_12);
assume ((__var_11) != (0));
call __var_9 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_10, __var_11);
assume ((DType[__var_9]) == (CrowdsaleReserveInterface));
__var_8 := __var_9;
reserve_CrowdsaleERC20[this] := __var_8;
assume ((DType[_kyber_s463]) == (KyberInterface));
__var_13 := _kyber_s463;
kyber_CrowdsaleERC20[this] := __var_13;
}

implementation CrowdsaleERC20_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
var __var_7: int;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: int;
var __var_13: Ref;
call CrowdsaleERC20_CrowdsaleERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _database_s463, _events_s463, _kyber_s463);
if (revert) {
return;
}
}

implementation CrowdsaleERC20_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _database_s463: Ref, _events_s463: Ref, _kyber_s463: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
var __var_7: int;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: int;
var __var_13: Ref;
call CrowdsaleERC20_CrowdsaleERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _database_s463, _events_s463, _kyber_s463);
if (revert) {
return;
}
}

implementation buyAssetOrderERC20_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s791: Ref, _amount_s791: int, _paymentToken_s791: Ref) returns (__ret_0_: bool)
{
var __var_14: Ref;
var __var_15: int;
var __var_16: int;
var __var_17: int;
var __var_18: Ref;
var __var_19: int;
var __var_20: int;
var __var_21: int;
var __var_22: int;
var __var_23: bool;
var __var_24: int;
var __var_25: int;
var __var_26: int;
var __var_27: Ref;
var fundingToken_s790: Ref;
var __var_28: Ref;
var __var_29: Ref;
var __var_30: int;
var fundingRemaining_s790: int;
var __var_31: int;
var __var_32: int;
var __var_33: int;
var collected_s790: int;
var amount_s790: int;
var __var_34: Ref;
var __var_35: Ref;
var __var_36: int;
var __var_37: int;
var __var_38: int;
var __var_39: int;
var __var_40: int;
var __var_41: int;
var __var_42: int;
var __var_43: int;
var __var_44: int;
var __var_45: int;
var __var_46: int;
var __var_47: bool;
var __var_48: int;
var __var_49: bool;
var __var_50: int;
var __var_51: Ref;
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
var __var_65: bool;
var __var_66: int;
var __var_67: bool;
var __var_68: int;
var __var_69: Ref;
var __var_70: int;
var __var_71: bool;
var __var_72: int;
var __var_73: int;
var __var_74: int;
var __var_75: Ref;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
__var_17 := abiEncodePacked2(1146481217, _assetAddress_s791);
__var_16 := keccak256(__var_17);
assume ((__var_16) != (0));
call __var_14 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_15, __var_16);
__var_18 := null;
if (!((__var_14) != (null))) {
revert := true;
return;
}
assume ((__tmp__now) >= (0));
assume ((__var_19) >= (0));
__var_22 := abiEncodePacked2(1810533893, _assetAddress_s791);
__var_21 := keccak256(__var_22);
assume ((__var_21) != (0));
call __var_19 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_20, __var_21);
assume ((__var_19) >= (0));
if (!((__tmp__now) <= (__var_19))) {
revert := true;
return;
}
__var_26 := abiEncodePacked2(1636974819, _assetAddress_s791);
__var_25 := keccak256(__var_26);
assume ((__var_25) != (0));
call __var_23 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_24, __var_25);
if (!(!(__var_23))) {
revert := true;
return;
}
__var_27 := ConstantToRef(-97433442488726861213578988847752201310395502866);
if ((_paymentToken_s791) == (ConstantToRef(-97433442488726861213578988847752201310395502866))) {
assume ((msgvalue_MSG) >= (0));
assume ((_amount_s791) >= (0));
if (!((msgvalue_MSG) == (_amount_s791))) {
revert := true;
return;
}
} else {
assume ((msgvalue_MSG) >= (0));
if (!((msgvalue_MSG) == (0))) {
revert := true;
return;
}
}
assume ((__tmp__DType[_assetAddress_s791]) == (DividendInterface));
__var_29 := _assetAddress_s791;
call __var_28 := getERC20_DividendInterface(__var_29, this, __var_30);
assume ((__tmp__DType[__var_28]) == (ERC20));
fundingToken_s790 := __var_28;
assume ((fundingRemaining_s790) >= (0));
__var_33 := abiEncodePacked2(486739405, _assetAddress_s791);
__var_32 := keccak256(__var_33);
assume ((__var_32) != (0));
call fundingRemaining_s790 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_31, __var_32);
fundingRemaining_s790 := fundingRemaining_s790;
havoc collected_s790;
havoc amount_s790;
__var_34 := fundingToken_s790;
if ((_paymentToken_s791) == (fundingToken_s790)) {
assume ((collected_s790) >= (0));
assume ((_amount_s791) >= (0));
assume ((fundingRemaining_s790) >= (0));
call collected_s790 := collectPayment_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _amount_s791, fundingRemaining_s790, fundingToken_s790);
if (revert) {
return;
}
collected_s790 := collected_s790;
} else {
assume ((collected_s790) >= (0));
assume ((_amount_s791) >= (0));
assume ((__tmp__DType[_paymentToken_s791]) == (ERC20));
__var_35 := _paymentToken_s791;
assume ((fundingRemaining_s790) >= (0));
call collected_s790 := convertTokens_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _amount_s791, fundingToken_s790, __var_35, fundingRemaining_s790);
if (revert) {
return;
}
collected_s790 := collected_s790;
}
assume ((collected_s790) >= (0));
if (!((collected_s790) > (0))) {
revert := true;
return;
}
assume ((collected_s790) >= (0));
assume ((fundingRemaining_s790) >= (0));
if ((collected_s790) < (fundingRemaining_s790)) {
assume ((amount_s790) >= (0));
assume ((__var_36) >= (0));
assume ((collected_s790) >= (0));
call __var_36 := mul_SafeMath__fail(this, this, 0, collected_s790, 100);
if (revert) {
return;
}
assume ((__var_36) >= (0));
assume ((__var_37) >= (0));
assume ((__var_38) >= (0));
__var_38 := 100;
assume ((100) >= (0));
assume ((__var_39) >= (0));
__var_42 := abiEncodePacked1(-818547219);
__var_41 := keccak256(__var_42);
assume ((__var_41) != (0));
call __var_39 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_40, __var_41);
assume ((__var_39) >= (0));
call __var_37 := add_SafeMath__fail(this, this, 0, 100, __var_39);
if (revert) {
return;
}
assume ((__var_37) >= (0));
call amount_s790 := div_SafeMath__fail(this, this, 0, __var_36, __var_37);
if (revert) {
return;
}
amount_s790 := amount_s790;
__var_45 := abiEncodePacked2(486739405, _assetAddress_s791);
__var_44 := keccak256(__var_45);
assume ((__var_44) != (0));
assume ((__var_46) >= (0));
assume ((fundingRemaining_s790) >= (0));
assume ((collected_s790) >= (0));
call __var_46 := sub_SafeMath__fail(this, this, 0, fundingRemaining_s790, collected_s790);
if (revert) {
return;
}
assume ((__var_46) >= (0));
call setUint_DB(__tmp__database_CrowdsaleERC20[this], this, __var_43, __var_44, __var_46);
assume ((amount_s790) >= (0));
call __var_47 := mintAssetTokens_MinterInterface(__tmp__minter_CrowdsaleERC20[this], this, __var_48, _assetAddress_s791, msgsender_MSG, amount_s790);
if (!(__var_47)) {
revert := true;
return;
}
__var_51 := __tmp__reserve_CrowdsaleERC20[this];
assume ((collected_s790) >= (0));
call __var_49 := transfer_ERC20(fundingToken_s790, this, __var_50, __tmp__reserve_CrowdsaleERC20[this], collected_s790);
if (!(__var_49)) {
revert := true;
return;
}
} else {
assume ((amount_s790) >= (0));
assume ((__var_52) >= (0));
assume ((fundingRemaining_s790) >= (0));
call __var_52 := mul_SafeMath__fail(this, this, 0, fundingRemaining_s790, 100);
if (revert) {
return;
}
assume ((__var_52) >= (0));
assume ((__var_53) >= (0));
assume ((__var_54) >= (0));
__var_54 := 100;
assume ((100) >= (0));
assume ((__var_55) >= (0));
__var_58 := abiEncodePacked1(-818547219);
__var_57 := keccak256(__var_58);
assume ((__var_57) != (0));
call __var_55 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_56, __var_57);
assume ((__var_55) >= (0));
call __var_53 := add_SafeMath__fail(this, this, 0, 100, __var_55);
if (revert) {
return;
}
assume ((__var_53) >= (0));
call amount_s790 := div_SafeMath__fail(this, this, 0, __var_52, __var_53);
if (revert) {
return;
}
amount_s790 := amount_s790;
__var_61 := abiEncodePacked2(1636974819, _assetAddress_s791);
__var_60 := keccak256(__var_61);
assume ((__var_60) != (0));
call setBool_DB(__tmp__database_CrowdsaleERC20[this], this, __var_59, __var_60, true);
__var_64 := abiEncodePacked2(486739405, _assetAddress_s791);
__var_63 := keccak256(__var_64);
assume ((__var_63) != (0));
call deleteUint_DB(__tmp__database_CrowdsaleERC20[this], this, __var_62, __var_63);
assume ((amount_s790) >= (0));
call __var_65 := mintAssetTokens_MinterInterface(__tmp__minter_CrowdsaleERC20[this], this, __var_66, _assetAddress_s791, msgsender_MSG, amount_s790);
if (!(__var_65)) {
revert := true;
return;
}
__var_69 := __tmp__reserve_CrowdsaleERC20[this];
assume ((fundingRemaining_s790) >= (0));
call __var_67 := transfer_ERC20(fundingToken_s790, this, __var_68, __tmp__reserve_CrowdsaleERC20[this], fundingRemaining_s790);
if (!(__var_67)) {
revert := true;
return;
}
call asset_Events(__tmp__events_CrowdsaleERC20[this], this, __var_70, -744132792, 2063547769, _assetAddress_s791, msgsender_MSG);
assume ((collected_s790) >= (0));
assume ((fundingRemaining_s790) >= (0));
if ((collected_s790) > (fundingRemaining_s790)) {
assume ((__var_73) >= (0));
assume ((collected_s790) >= (0));
assume ((fundingRemaining_s790) >= (0));
call __var_73 := sub_SafeMath__fail(this, this, 0, collected_s790, fundingRemaining_s790);
if (revert) {
return;
}
assume ((__var_73) >= (0));
call __var_71 := transfer_ERC20(fundingToken_s790, this, __var_72, msgsender_MSG, __var_73);
if (!(__var_71)) {
revert := true;
return;
}
}
}
__var_75 := this;
assume ((amount_s790) >= (0));
call transaction_Events(__tmp__events_CrowdsaleERC20[this], this, __var_74, -2065355309, this, msgsender_MSG, amount_s790, _assetAddress_s791);
__ret_0_ := true;
return;
}

implementation buyAssetOrderERC20_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s791: Ref, _amount_s791: int, _paymentToken_s791: Ref) returns (__ret_0_: bool)
{
var __var_14: Ref;
var __var_15: int;
var __var_16: int;
var __var_17: int;
var __var_18: Ref;
var __var_19: int;
var __var_20: int;
var __var_21: int;
var __var_22: int;
var __var_23: bool;
var __var_24: int;
var __var_25: int;
var __var_26: int;
var __var_27: Ref;
var fundingToken_s790: Ref;
var __var_28: Ref;
var __var_29: Ref;
var __var_30: int;
var fundingRemaining_s790: int;
var __var_31: int;
var __var_32: int;
var __var_33: int;
var collected_s790: int;
var amount_s790: int;
var __var_34: Ref;
var __var_35: Ref;
var __var_36: int;
var __var_37: int;
var __var_38: int;
var __var_39: int;
var __var_40: int;
var __var_41: int;
var __var_42: int;
var __var_43: int;
var __var_44: int;
var __var_45: int;
var __var_46: int;
var __var_47: bool;
var __var_48: int;
var __var_49: bool;
var __var_50: int;
var __var_51: Ref;
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
var __var_65: bool;
var __var_66: int;
var __var_67: bool;
var __var_68: int;
var __var_69: Ref;
var __var_70: int;
var __var_71: bool;
var __var_72: int;
var __var_73: int;
var __var_74: int;
var __var_75: Ref;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
__var_17 := abiEncodePacked2(1146481217, _assetAddress_s791);
__var_16 := keccak256(__var_17);
assume ((__var_16) != (0));
call __var_14 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_15, __var_16);
__var_18 := null;
if (!((__var_14) != (null))) {
revert := true;
return;
}
assume ((now) >= (0));
assume ((__var_19) >= (0));
__var_22 := abiEncodePacked2(1810533893, _assetAddress_s791);
__var_21 := keccak256(__var_22);
assume ((__var_21) != (0));
call __var_19 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_20, __var_21);
assume ((__var_19) >= (0));
if (!((now) <= (__var_19))) {
revert := true;
return;
}
__var_26 := abiEncodePacked2(1636974819, _assetAddress_s791);
__var_25 := keccak256(__var_26);
assume ((__var_25) != (0));
call __var_23 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_24, __var_25);
if (!(!(__var_23))) {
revert := true;
return;
}
__var_27 := ConstantToRef(-97433442488726861213578988847752201310395502866);
if ((_paymentToken_s791) == (ConstantToRef(-97433442488726861213578988847752201310395502866))) {
assume ((msgvalue_MSG) >= (0));
assume ((_amount_s791) >= (0));
if (!((msgvalue_MSG) == (_amount_s791))) {
revert := true;
return;
}
} else {
assume ((msgvalue_MSG) >= (0));
if (!((msgvalue_MSG) == (0))) {
revert := true;
return;
}
}
assume ((DType[_assetAddress_s791]) == (DividendInterface));
__var_29 := _assetAddress_s791;
call __var_28 := getERC20_DividendInterface(__var_29, this, __var_30);
assume ((DType[__var_28]) == (ERC20));
fundingToken_s790 := __var_28;
assume ((fundingRemaining_s790) >= (0));
__var_33 := abiEncodePacked2(486739405, _assetAddress_s791);
__var_32 := keccak256(__var_33);
assume ((__var_32) != (0));
call fundingRemaining_s790 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_31, __var_32);
fundingRemaining_s790 := fundingRemaining_s790;
havoc collected_s790;
havoc amount_s790;
__var_34 := fundingToken_s790;
if ((_paymentToken_s791) == (fundingToken_s790)) {
assume ((collected_s790) >= (0));
assume ((_amount_s791) >= (0));
assume ((fundingRemaining_s790) >= (0));
call collected_s790 := collectPayment_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _amount_s791, fundingRemaining_s790, fundingToken_s790);
if (revert) {
return;
}
collected_s790 := collected_s790;
} else {
assume ((collected_s790) >= (0));
assume ((_amount_s791) >= (0));
assume ((DType[_paymentToken_s791]) == (ERC20));
__var_35 := _paymentToken_s791;
assume ((fundingRemaining_s790) >= (0));
call collected_s790 := convertTokens_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, _amount_s791, fundingToken_s790, __var_35, fundingRemaining_s790);
if (revert) {
return;
}
collected_s790 := collected_s790;
}
assume ((collected_s790) >= (0));
if (!((collected_s790) > (0))) {
revert := true;
return;
}
assume ((collected_s790) >= (0));
assume ((fundingRemaining_s790) >= (0));
if ((collected_s790) < (fundingRemaining_s790)) {
assume ((amount_s790) >= (0));
assume ((__var_36) >= (0));
assume ((collected_s790) >= (0));
call __var_36 := mul_SafeMath__success(this, this, 0, collected_s790, 100);
if (revert) {
return;
}
assume ((__var_36) >= (0));
assume ((__var_37) >= (0));
assume ((__var_38) >= (0));
__var_38 := 100;
assume ((100) >= (0));
assume ((__var_39) >= (0));
__var_42 := abiEncodePacked1(-818547219);
__var_41 := keccak256(__var_42);
assume ((__var_41) != (0));
call __var_39 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_40, __var_41);
assume ((__var_39) >= (0));
call __var_37 := add_SafeMath__success(this, this, 0, 100, __var_39);
if (revert) {
return;
}
assume ((__var_37) >= (0));
call amount_s790 := div_SafeMath__success(this, this, 0, __var_36, __var_37);
if (revert) {
return;
}
amount_s790 := amount_s790;
__var_45 := abiEncodePacked2(486739405, _assetAddress_s791);
__var_44 := keccak256(__var_45);
assume ((__var_44) != (0));
assume ((__var_46) >= (0));
assume ((fundingRemaining_s790) >= (0));
assume ((collected_s790) >= (0));
call __var_46 := sub_SafeMath__success(this, this, 0, fundingRemaining_s790, collected_s790);
if (revert) {
return;
}
assume ((__var_46) >= (0));
call setUint_DB(database_CrowdsaleERC20[this], this, __var_43, __var_44, __var_46);
assume ((amount_s790) >= (0));
call __var_47 := mintAssetTokens_MinterInterface(minter_CrowdsaleERC20[this], this, __var_48, _assetAddress_s791, msgsender_MSG, amount_s790);
if (!(__var_47)) {
revert := true;
return;
}
__var_51 := reserve_CrowdsaleERC20[this];
assume ((collected_s790) >= (0));
call __var_49 := transfer_ERC20(fundingToken_s790, this, __var_50, reserve_CrowdsaleERC20[this], collected_s790);
if (!(__var_49)) {
revert := true;
return;
}
} else {
assume ((amount_s790) >= (0));
assume ((__var_52) >= (0));
assume ((fundingRemaining_s790) >= (0));
call __var_52 := mul_SafeMath__success(this, this, 0, fundingRemaining_s790, 100);
if (revert) {
return;
}
assume ((__var_52) >= (0));
assume ((__var_53) >= (0));
assume ((__var_54) >= (0));
__var_54 := 100;
assume ((100) >= (0));
assume ((__var_55) >= (0));
__var_58 := abiEncodePacked1(-818547219);
__var_57 := keccak256(__var_58);
assume ((__var_57) != (0));
call __var_55 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_56, __var_57);
assume ((__var_55) >= (0));
call __var_53 := add_SafeMath__success(this, this, 0, 100, __var_55);
if (revert) {
return;
}
assume ((__var_53) >= (0));
call amount_s790 := div_SafeMath__success(this, this, 0, __var_52, __var_53);
if (revert) {
return;
}
amount_s790 := amount_s790;
__var_61 := abiEncodePacked2(1636974819, _assetAddress_s791);
__var_60 := keccak256(__var_61);
assume ((__var_60) != (0));
call setBool_DB(database_CrowdsaleERC20[this], this, __var_59, __var_60, true);
__var_64 := abiEncodePacked2(486739405, _assetAddress_s791);
__var_63 := keccak256(__var_64);
assume ((__var_63) != (0));
call deleteUint_DB(database_CrowdsaleERC20[this], this, __var_62, __var_63);
assume ((amount_s790) >= (0));
call __var_65 := mintAssetTokens_MinterInterface(minter_CrowdsaleERC20[this], this, __var_66, _assetAddress_s791, msgsender_MSG, amount_s790);
if (!(__var_65)) {
revert := true;
return;
}
__var_69 := reserve_CrowdsaleERC20[this];
assume ((fundingRemaining_s790) >= (0));
call __var_67 := transfer_ERC20(fundingToken_s790, this, __var_68, reserve_CrowdsaleERC20[this], fundingRemaining_s790);
if (!(__var_67)) {
revert := true;
return;
}
call asset_Events(events_CrowdsaleERC20[this], this, __var_70, -744132792, 2063547769, _assetAddress_s791, msgsender_MSG);
assume ((collected_s790) >= (0));
assume ((fundingRemaining_s790) >= (0));
if ((collected_s790) > (fundingRemaining_s790)) {
assume ((__var_73) >= (0));
assume ((collected_s790) >= (0));
assume ((fundingRemaining_s790) >= (0));
call __var_73 := sub_SafeMath__success(this, this, 0, collected_s790, fundingRemaining_s790);
if (revert) {
return;
}
assume ((__var_73) >= (0));
call __var_71 := transfer_ERC20(fundingToken_s790, this, __var_72, msgsender_MSG, __var_73);
if (!(__var_71)) {
revert := true;
return;
}
}
}
__var_75 := this;
assume ((amount_s790) >= (0));
call transaction_Events(events_CrowdsaleERC20[this], this, __var_74, -2065355309, this, msgsender_MSG, amount_s790, _assetAddress_s791);
__ret_0_ := true;
return;
}

implementation payoutERC20_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1069: Ref) returns (__ret_0_: bool)
{
var __var_76: bool;
var __var_77: int;
var __var_78: int;
var __var_79: int;
var __var_80: bool;
var __var_81: int;
var __var_82: int;
var __var_83: int;
var __var_84: int;
var __var_85: int;
var __var_86: int;
var fundingToken_s1068: Ref;
var __var_87: Ref;
var __var_88: int;
var platformAssetsWallet_s1068: Ref;
var __var_89: int;
var __var_90: int;
var __var_91: int;
var __var_92: Ref;
var __var_93: bool;
var __var_94: int;
var __var_95: Ref;
var __var_96: int;
var __var_97: int;
var __var_98: int;
var __var_99: int;
var __var_100: int;
var __var_101: int;
var __var_102: int;
var __var_103: bool;
var __var_104: int;
var __var_105: int;
var __var_106: int;
var __var_107: int;
var __var_108: int;
var receiver_s1068: Ref;
var __var_109: int;
var __var_110: int;
var __var_111: int;
var platformFundsWallet_s1068: Ref;
var __var_112: int;
var __var_113: int;
var __var_114: int;
var __var_115: Ref;
var __var_116: Ref;
var amount_s1068: int;
var __var_117: int;
var __var_118: int;
var __var_119: int;
var platformFee_s1068: int;
var __var_120: int;
var __var_121: int;
var __var_122: int;
var __var_123: int;
var __var_124: bool;
var __var_125: int;
var __var_126: bool;
var __var_127: int;
var __var_128: int;
var __var_129: int;
var __var_130: int;
var manager_s1068: Ref;
var __var_131: int;
var __var_132: int;
var __var_133: int;
var __var_134: int;
var __var_135: int;
var __var_136: int;
var __var_137: int;
var __var_138: int;
var __var_139: int;
var __var_140: int;
var __var_141: int;
var __var_142: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_79 := abiEncodePacked2(1636974819, _assetAddress_s1069);
__var_78 := keccak256(__var_79);
assume ((__var_78) != (0));
call __var_76 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_77, __var_78);
if (!(__var_76)) {
revert := true;
return;
}
__var_83 := abiEncodePacked2(-493134529, _assetAddress_s1069);
__var_82 := keccak256(__var_83);
assume ((__var_82) != (0));
call __var_80 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_81, __var_82);
if (!(!(__var_80))) {
revert := true;
return;
}
__var_86 := abiEncodePacked2(-493134529, _assetAddress_s1069);
__var_85 := keccak256(__var_86);
assume ((__var_85) != (0));
call setBool_DB(__tmp__database_CrowdsaleERC20[this], this, __var_84, __var_85, true);
assume ((__tmp__DType[_assetAddress_s1069]) == (DividendInterface));
__var_87 := _assetAddress_s1069;
call fundingToken_s1068 := getERC20_DividendInterface(__var_87, this, __var_88);
fundingToken_s1068 := fundingToken_s1068;
__var_91 := abiEncodePacked1(-965312941);
__var_90 := keccak256(__var_91);
assume ((__var_90) != (0));
call platformAssetsWallet_s1068 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_89, __var_90);
platformAssetsWallet_s1068 := platformAssetsWallet_s1068;
__var_92 := null;
if (!((platformAssetsWallet_s1068) != (null))) {
revert := true;
return;
}
__var_98 := abiEncodePacked2(2088276862, -1809180927);
__var_97 := keccak256(__var_98);
assume ((__var_97) != (0));
call __var_95 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_96, __var_97);
assume ((__var_99) >= (0));
__var_102 := abiEncodePacked2(-979018339, _assetAddress_s1069);
__var_101 := keccak256(__var_102);
assume ((__var_101) != (0));
call __var_99 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_100, __var_101);
assume ((__var_99) >= (0));
call __var_93 := mintAssetTokens_MinterInterface(__tmp__minter_CrowdsaleERC20[this], this, __var_94, _assetAddress_s1069, __var_95, __var_99);
if (!(__var_93)) {
revert := true;
return;
}
assume ((__var_105) >= (0));
__var_108 := abiEncodePacked2(515193722, _assetAddress_s1069);
__var_107 := keccak256(__var_108);
assume ((__var_107) != (0));
call __var_105 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_106, __var_107);
assume ((__var_105) >= (0));
call __var_103 := mintAssetTokens_MinterInterface(__tmp__minter_CrowdsaleERC20[this], this, __var_104, _assetAddress_s1069, platformAssetsWallet_s1068, __var_105);
if (!(__var_103)) {
revert := true;
return;
}
__var_111 := abiEncodePacked2(1146481217, _assetAddress_s1069);
__var_110 := keccak256(__var_111);
assume ((__var_110) != (0));
call receiver_s1068 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_109, __var_110);
receiver_s1068 := receiver_s1068;
__var_114 := abiEncodePacked1(-744967681);
__var_113 := keccak256(__var_114);
assume ((__var_113) != (0));
call platformFundsWallet_s1068 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_112, __var_113);
platformFundsWallet_s1068 := platformFundsWallet_s1068;
__var_115 := null;
__var_116 := null;
if (!(((receiver_s1068) != (null)) && ((platformFundsWallet_s1068) != (null)))) {
revert := true;
return;
}
assume ((amount_s1068) >= (0));
__var_119 := abiEncodePacked2(935007667, _assetAddress_s1069);
__var_118 := keccak256(__var_119);
assume ((__var_118) != (0));
call amount_s1068 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_117, __var_118);
amount_s1068 := amount_s1068;
assume ((platformFee_s1068) >= (0));
assume ((amount_s1068) >= (0));
assume ((__var_120) >= (0));
__var_123 := abiEncodePacked1(-818547219);
__var_122 := keccak256(__var_123);
assume ((__var_122) != (0));
call __var_120 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_121, __var_122);
assume ((__var_120) >= (0));
call platformFee_s1068 := getFractionalAmount_SafeMath__fail(this, this, 0, amount_s1068, __var_120);
if (revert) {
return;
}
platformFee_s1068 := platformFee_s1068;
assume ((platformFee_s1068) >= (0));
call __var_124 := issueERC20_CrowdsaleReserveInterface(__tmp__reserve_CrowdsaleERC20[this], this, __var_125, platformFundsWallet_s1068, platformFee_s1068, fundingToken_s1068);
if (!(__var_124)) {
revert := true;
return;
}
assume ((amount_s1068) >= (0));
call __var_126 := issueERC20_CrowdsaleReserveInterface(__tmp__reserve_CrowdsaleERC20[this], this, __var_127, receiver_s1068, amount_s1068, fundingToken_s1068);
if (!(__var_126)) {
revert := true;
return;
}
__var_130 := abiEncodePacked2(1979834469, _assetAddress_s1069);
__var_129 := keccak256(__var_130);
assume ((__var_129) != (0));
call deleteUint_DB(__tmp__database_CrowdsaleERC20[this], this, __var_128, __var_129);
__var_133 := abiEncodePacked2(1146481217, _assetAddress_s1069);
__var_132 := keccak256(__var_133);
assume ((__var_132) != (0));
call manager_s1068 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_131, __var_132);
manager_s1068 := manager_s1068;
__var_136 := abiEncodePacked2(1005787856, manager_s1068);
__var_135 := keccak256(__var_136);
assume ((__var_135) != (0));
assume ((__var_137) >= (0));
assume ((__var_138) >= (0));
__var_141 := abiEncodePacked2(1005787856, manager_s1068);
__var_140 := keccak256(__var_141);
assume ((__var_140) != (0));
call __var_138 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_139, __var_140);
assume ((__var_138) >= (0));
call __var_137 := add_SafeMath__fail(this, this, 0, __var_138, 1);
if (revert) {
return;
}
assume ((__var_137) >= (0));
call setUint_DB(__tmp__database_CrowdsaleERC20[this], this, __var_134, __var_135, __var_137);
assume ((amount_s1068) >= (0));
call transaction_Events(__tmp__events_CrowdsaleERC20[this], this, __var_142, 2111495225, _assetAddress_s1069, receiver_s1068, amount_s1068, fundingToken_s1068);
__ret_0_ := true;
return;
}

implementation payoutERC20_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1069: Ref) returns (__ret_0_: bool)
{
var __var_76: bool;
var __var_77: int;
var __var_78: int;
var __var_79: int;
var __var_80: bool;
var __var_81: int;
var __var_82: int;
var __var_83: int;
var __var_84: int;
var __var_85: int;
var __var_86: int;
var fundingToken_s1068: Ref;
var __var_87: Ref;
var __var_88: int;
var platformAssetsWallet_s1068: Ref;
var __var_89: int;
var __var_90: int;
var __var_91: int;
var __var_92: Ref;
var __var_93: bool;
var __var_94: int;
var __var_95: Ref;
var __var_96: int;
var __var_97: int;
var __var_98: int;
var __var_99: int;
var __var_100: int;
var __var_101: int;
var __var_102: int;
var __var_103: bool;
var __var_104: int;
var __var_105: int;
var __var_106: int;
var __var_107: int;
var __var_108: int;
var receiver_s1068: Ref;
var __var_109: int;
var __var_110: int;
var __var_111: int;
var platformFundsWallet_s1068: Ref;
var __var_112: int;
var __var_113: int;
var __var_114: int;
var __var_115: Ref;
var __var_116: Ref;
var amount_s1068: int;
var __var_117: int;
var __var_118: int;
var __var_119: int;
var platformFee_s1068: int;
var __var_120: int;
var __var_121: int;
var __var_122: int;
var __var_123: int;
var __var_124: bool;
var __var_125: int;
var __var_126: bool;
var __var_127: int;
var __var_128: int;
var __var_129: int;
var __var_130: int;
var manager_s1068: Ref;
var __var_131: int;
var __var_132: int;
var __var_133: int;
var __var_134: int;
var __var_135: int;
var __var_136: int;
var __var_137: int;
var __var_138: int;
var __var_139: int;
var __var_140: int;
var __var_141: int;
var __var_142: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_79 := abiEncodePacked2(1636974819, _assetAddress_s1069);
__var_78 := keccak256(__var_79);
assume ((__var_78) != (0));
call __var_76 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_77, __var_78);
if (!(__var_76)) {
revert := true;
return;
}
__var_83 := abiEncodePacked2(-493134529, _assetAddress_s1069);
__var_82 := keccak256(__var_83);
assume ((__var_82) != (0));
call __var_80 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_81, __var_82);
if (!(!(__var_80))) {
revert := true;
return;
}
__var_86 := abiEncodePacked2(-493134529, _assetAddress_s1069);
__var_85 := keccak256(__var_86);
assume ((__var_85) != (0));
call setBool_DB(database_CrowdsaleERC20[this], this, __var_84, __var_85, true);
assume ((DType[_assetAddress_s1069]) == (DividendInterface));
__var_87 := _assetAddress_s1069;
call fundingToken_s1068 := getERC20_DividendInterface(__var_87, this, __var_88);
fundingToken_s1068 := fundingToken_s1068;
__var_91 := abiEncodePacked1(-965312941);
__var_90 := keccak256(__var_91);
assume ((__var_90) != (0));
call platformAssetsWallet_s1068 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_89, __var_90);
platformAssetsWallet_s1068 := platformAssetsWallet_s1068;
__var_92 := null;
if (!((platformAssetsWallet_s1068) != (null))) {
revert := true;
return;
}
__var_98 := abiEncodePacked2(2088276862, -1809180927);
__var_97 := keccak256(__var_98);
assume ((__var_97) != (0));
call __var_95 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_96, __var_97);
assume ((__var_99) >= (0));
__var_102 := abiEncodePacked2(-979018339, _assetAddress_s1069);
__var_101 := keccak256(__var_102);
assume ((__var_101) != (0));
call __var_99 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_100, __var_101);
assume ((__var_99) >= (0));
call __var_93 := mintAssetTokens_MinterInterface(minter_CrowdsaleERC20[this], this, __var_94, _assetAddress_s1069, __var_95, __var_99);
if (!(__var_93)) {
revert := true;
return;
}
assume ((__var_105) >= (0));
__var_108 := abiEncodePacked2(515193722, _assetAddress_s1069);
__var_107 := keccak256(__var_108);
assume ((__var_107) != (0));
call __var_105 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_106, __var_107);
assume ((__var_105) >= (0));
call __var_103 := mintAssetTokens_MinterInterface(minter_CrowdsaleERC20[this], this, __var_104, _assetAddress_s1069, platformAssetsWallet_s1068, __var_105);
if (!(__var_103)) {
revert := true;
return;
}
__var_111 := abiEncodePacked2(1146481217, _assetAddress_s1069);
__var_110 := keccak256(__var_111);
assume ((__var_110) != (0));
call receiver_s1068 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_109, __var_110);
receiver_s1068 := receiver_s1068;
__var_114 := abiEncodePacked1(-744967681);
__var_113 := keccak256(__var_114);
assume ((__var_113) != (0));
call platformFundsWallet_s1068 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_112, __var_113);
platformFundsWallet_s1068 := platformFundsWallet_s1068;
__var_115 := null;
__var_116 := null;
if (!(((receiver_s1068) != (null)) && ((platformFundsWallet_s1068) != (null)))) {
revert := true;
return;
}
assume ((amount_s1068) >= (0));
__var_119 := abiEncodePacked2(935007667, _assetAddress_s1069);
__var_118 := keccak256(__var_119);
assume ((__var_118) != (0));
call amount_s1068 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_117, __var_118);
amount_s1068 := amount_s1068;
assume ((platformFee_s1068) >= (0));
assume ((amount_s1068) >= (0));
assume ((__var_120) >= (0));
__var_123 := abiEncodePacked1(-818547219);
__var_122 := keccak256(__var_123);
assume ((__var_122) != (0));
call __var_120 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_121, __var_122);
assume ((__var_120) >= (0));
call platformFee_s1068 := getFractionalAmount_SafeMath__success(this, this, 0, amount_s1068, __var_120);
if (revert) {
return;
}
platformFee_s1068 := platformFee_s1068;
assume ((platformFee_s1068) >= (0));
call __var_124 := issueERC20_CrowdsaleReserveInterface(reserve_CrowdsaleERC20[this], this, __var_125, platformFundsWallet_s1068, platformFee_s1068, fundingToken_s1068);
if (!(__var_124)) {
revert := true;
return;
}
assume ((amount_s1068) >= (0));
call __var_126 := issueERC20_CrowdsaleReserveInterface(reserve_CrowdsaleERC20[this], this, __var_127, receiver_s1068, amount_s1068, fundingToken_s1068);
if (!(__var_126)) {
revert := true;
return;
}
__var_130 := abiEncodePacked2(1979834469, _assetAddress_s1069);
__var_129 := keccak256(__var_130);
assume ((__var_129) != (0));
call deleteUint_DB(database_CrowdsaleERC20[this], this, __var_128, __var_129);
__var_133 := abiEncodePacked2(1146481217, _assetAddress_s1069);
__var_132 := keccak256(__var_133);
assume ((__var_132) != (0));
call manager_s1068 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_131, __var_132);
manager_s1068 := manager_s1068;
__var_136 := abiEncodePacked2(1005787856, manager_s1068);
__var_135 := keccak256(__var_136);
assume ((__var_135) != (0));
assume ((__var_137) >= (0));
assume ((__var_138) >= (0));
__var_141 := abiEncodePacked2(1005787856, manager_s1068);
__var_140 := keccak256(__var_141);
assume ((__var_140) != (0));
call __var_138 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_139, __var_140);
assume ((__var_138) >= (0));
call __var_137 := add_SafeMath__success(this, this, 0, __var_138, 1);
if (revert) {
return;
}
assume ((__var_137) >= (0));
call setUint_DB(database_CrowdsaleERC20[this], this, __var_134, __var_135, __var_137);
assume ((amount_s1068) >= (0));
call transaction_Events(events_CrowdsaleERC20[this], this, __var_142, 2111495225, _assetAddress_s1069, receiver_s1068, amount_s1068, fundingToken_s1068);
__ret_0_ := true;
return;
}

implementation cancel_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1121: Ref) returns (__ret_0_: bool)
{
var __var_143: Ref;
var __var_144: int;
var __var_145: int;
var __var_146: int;
var __var_147: int;
var __var_148: int;
var __var_149: int;
var __var_150: bool;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call validAsset_pre__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
call beforeDeadline_pre__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
call notFinalized_pre__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
__var_146 := abiEncodePacked2(1146481217, _assetAddress_s1121);
__var_145 := keccak256(__var_146);
assume ((__var_145) != (0));
call __var_143 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_144, __var_145);
if (!((msgsender_MSG) == (__var_143))) {
revert := true;
return;
}
__var_149 := abiEncodePacked2(1810533893, _assetAddress_s1121);
__var_148 := keccak256(__var_149);
assume ((__var_148) != (0));
call setUint_DB(__tmp__database_CrowdsaleERC20[this], this, __var_147, __var_148, 1);
call __var_150 := refund_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
}

implementation cancel_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1121: Ref) returns (__ret_0_: bool)
{
var __var_143: Ref;
var __var_144: int;
var __var_145: int;
var __var_146: int;
var __var_147: int;
var __var_148: int;
var __var_149: int;
var __var_150: bool;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call validAsset_pre__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
call beforeDeadline_pre__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
call notFinalized_pre__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
__var_146 := abiEncodePacked2(1146481217, _assetAddress_s1121);
__var_145 := keccak256(__var_146);
assume ((__var_145) != (0));
call __var_143 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_144, __var_145);
if (!((msgsender_MSG) == (__var_143))) {
revert := true;
return;
}
__var_149 := abiEncodePacked2(1810533893, _assetAddress_s1121);
__var_148 := keccak256(__var_149);
assume ((__var_148) != (0));
call setUint_DB(database_CrowdsaleERC20[this], this, __var_147, __var_148, 1);
call __var_150 := refund_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
if (revert) {
return;
}
}

implementation refund_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1214: Ref) returns (__ret_0_: bool)
{
var __var_151: int;
var __var_152: int;
var __var_153: int;
var __var_154: int;
var __var_155: int;
var __var_156: int;
var __var_157: int;
var assetToken_s1213: Ref;
var tokenAddress_s1213: Ref;
var __var_158: int;
var refundValue_s1213: int;
var __var_159: int;
var __var_160: int;
var __var_161: int;
var __var_162: int;
var __var_163: int;
var __var_164: int;
var __var_165: int;
var __var_166: int;
var __var_167: int;
var __var_168: bool;
var __var_169: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call validAsset_pre__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
if (revert) {
return;
}
call afterDeadline_pre__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
if (revert) {
return;
}
call notFinalized_pre__fail(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
if (revert) {
return;
}
assume ((__var_151) >= (0));
__var_154 := abiEncodePacked2(1810533893, _assetAddress_s1214);
__var_153 := keccak256(__var_154);
assume ((__var_153) != (0));
call __var_151 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_152, __var_153);
assume ((__var_151) >= (0));
if (!((__var_151) != (0))) {
revert := true;
return;
}
__var_157 := abiEncodePacked2(1810533893, _assetAddress_s1214);
__var_156 := keccak256(__var_157);
assume ((__var_156) != (0));
call deleteUint_DB(__tmp__database_CrowdsaleERC20[this], this, __var_155, __var_156);
assume ((__tmp__DType[_assetAddress_s1214]) == (DividendInterface));
assetToken_s1213 := _assetAddress_s1214;
call tokenAddress_s1213 := getERC20_DividendInterface(assetToken_s1213, this, __var_158);
tokenAddress_s1213 := tokenAddress_s1213;
assume ((refundValue_s1213) >= (0));
assume ((__var_159) >= (0));
assume ((__var_160) >= (0));
if ((__tmp__DType[assetToken_s1213]) == (DividendInterface)) {
call __var_160 := totalSupply_DividendInterface(assetToken_s1213, this, __var_161);
} else if ((__tmp__DType[assetToken_s1213]) == (ERC20)) {
call __var_160 := totalSupply_ERC20(assetToken_s1213, this, __var_161);
} else {
assume (false);
}
assume ((__var_160) >= (0));
assume ((__var_162) >= (0));
assume ((__var_163) >= (0));
__var_163 := 100;
assume ((100) >= (0));
assume ((__var_164) >= (0));
__var_167 := abiEncodePacked1(-818547219);
__var_166 := keccak256(__var_167);
assume ((__var_166) != (0));
call __var_164 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_165, __var_166);
assume ((__var_164) >= (0));
call __var_162 := add_SafeMath__fail(this, this, 0, 100, __var_164);
if (revert) {
return;
}
assume ((__var_162) >= (0));
call __var_159 := mul_SafeMath__fail(this, this, 0, __var_160, __var_162);
if (revert) {
return;
}
assume ((__var_159) >= (0));
call refundValue_s1213 := div_SafeMath__fail(this, this, 0, __var_159, 100);
if (revert) {
return;
}
refundValue_s1213 := refundValue_s1213;
assume ((refundValue_s1213) >= (0));
call __var_168 := refundERC20Asset_CrowdsaleReserveInterface(__tmp__reserve_CrowdsaleERC20[this], this, __var_169, _assetAddress_s1214, refundValue_s1213, tokenAddress_s1213);
__ret_0_ := true;
return;
}

implementation refund_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1214: Ref) returns (__ret_0_: bool)
{
var __var_151: int;
var __var_152: int;
var __var_153: int;
var __var_154: int;
var __var_155: int;
var __var_156: int;
var __var_157: int;
var assetToken_s1213: Ref;
var tokenAddress_s1213: Ref;
var __var_158: int;
var refundValue_s1213: int;
var __var_159: int;
var __var_160: int;
var __var_161: int;
var __var_162: int;
var __var_163: int;
var __var_164: int;
var __var_165: int;
var __var_166: int;
var __var_167: int;
var __var_168: bool;
var __var_169: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call validAsset_pre__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
if (revert) {
return;
}
call afterDeadline_pre__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
if (revert) {
return;
}
call notFinalized_pre__success(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
if (revert) {
return;
}
assume ((__var_151) >= (0));
__var_154 := abiEncodePacked2(1810533893, _assetAddress_s1214);
__var_153 := keccak256(__var_154);
assume ((__var_153) != (0));
call __var_151 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_152, __var_153);
assume ((__var_151) >= (0));
if (!((__var_151) != (0))) {
revert := true;
return;
}
__var_157 := abiEncodePacked2(1810533893, _assetAddress_s1214);
__var_156 := keccak256(__var_157);
assume ((__var_156) != (0));
call deleteUint_DB(database_CrowdsaleERC20[this], this, __var_155, __var_156);
assume ((DType[_assetAddress_s1214]) == (DividendInterface));
assetToken_s1213 := _assetAddress_s1214;
call tokenAddress_s1213 := getERC20_DividendInterface(assetToken_s1213, this, __var_158);
tokenAddress_s1213 := tokenAddress_s1213;
assume ((refundValue_s1213) >= (0));
assume ((__var_159) >= (0));
assume ((__var_160) >= (0));
if ((DType[assetToken_s1213]) == (DividendInterface)) {
call __var_160 := totalSupply_DividendInterface(assetToken_s1213, this, __var_161);
} else if ((DType[assetToken_s1213]) == (ERC20)) {
call __var_160 := totalSupply_ERC20(assetToken_s1213, this, __var_161);
} else {
assume (false);
}
assume ((__var_160) >= (0));
assume ((__var_162) >= (0));
assume ((__var_163) >= (0));
__var_163 := 100;
assume ((100) >= (0));
assume ((__var_164) >= (0));
__var_167 := abiEncodePacked1(-818547219);
__var_166 := keccak256(__var_167);
assume ((__var_166) != (0));
call __var_164 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_165, __var_166);
assume ((__var_164) >= (0));
call __var_162 := add_SafeMath__success(this, this, 0, 100, __var_164);
if (revert) {
return;
}
assume ((__var_162) >= (0));
call __var_159 := mul_SafeMath__success(this, this, 0, __var_160, __var_162);
if (revert) {
return;
}
assume ((__var_159) >= (0));
call refundValue_s1213 := div_SafeMath__success(this, this, 0, __var_159, 100);
if (revert) {
return;
}
refundValue_s1213 := refundValue_s1213;
assume ((refundValue_s1213) >= (0));
call __var_168 := refundERC20Asset_CrowdsaleReserveInterface(reserve_CrowdsaleERC20[this], this, __var_169, _assetAddress_s1214, refundValue_s1213, tokenAddress_s1213);
__ret_0_ := true;
return;
}

implementation collectPayment_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s1258: Ref, amount_s1258: int, max_s1258: int, token_s1258: Ref) returns (__ret_0_: int)
{
var __var_170: bool;
var __var_171: int;
var __var_172: Ref;
var __var_173: bool;
var __var_174: int;
var __var_175: Ref;
assume ((amount_s1258) >= (0));
assume ((max_s1258) >= (0));
if ((amount_s1258) > (max_s1258)) {
__var_172 := this;
assume ((max_s1258) >= (0));
call __var_170 := transferFrom_ERC20(token_s1258, this, __var_171, user_s1258, this, max_s1258);
assume ((max_s1258) >= (0));
__ret_0_ := max_s1258;
return;
} else {
__var_175 := this;
assume ((amount_s1258) >= (0));
call __var_173 := transferFrom_ERC20(token_s1258, this, __var_174, user_s1258, this, amount_s1258);
assume ((amount_s1258) >= (0));
__ret_0_ := amount_s1258;
return;
}
}

implementation collectPayment_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s1258: Ref, amount_s1258: int, max_s1258: int, token_s1258: Ref) returns (__ret_0_: int)
{
var __var_170: bool;
var __var_171: int;
var __var_172: Ref;
var __var_173: bool;
var __var_174: int;
var __var_175: Ref;
assume ((amount_s1258) >= (0));
assume ((max_s1258) >= (0));
if ((amount_s1258) > (max_s1258)) {
__var_172 := this;
assume ((max_s1258) >= (0));
call __var_170 := transferFrom_ERC20(token_s1258, this, __var_171, user_s1258, this, max_s1258);
assume ((max_s1258) >= (0));
__ret_0_ := max_s1258;
return;
} else {
__var_175 := this;
assume ((amount_s1258) >= (0));
call __var_173 := transferFrom_ERC20(token_s1258, this, __var_174, user_s1258, this, amount_s1258);
assume ((amount_s1258) >= (0));
__ret_0_ := amount_s1258;
return;
}
}

implementation convertTokens_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s1485: Ref, _amount_s1485: int, _fundingToken_s1485: Ref, _paymentToken_s1485: Ref, _maxTokens_s1485: int) returns (__ret_0_: int)
{
var paymentBalanceBefore_s1484: int;
var fundingBalanceBefore_s1484: int;
var change_s1484: int;
var investment_s1484: int;
var __var_176: Ref;
var __var_177: Ref;
var __var_178: Ref;
var __var_179: int;
var __var_180: Ref;
var __var_181: int;
var __var_182: Ref;
var __var_183: Ref;
var __var_184: Ref;
var __var_185: Ref;
var __var_186: int;
var __var_187: Ref;
var __var_188: int;
var __var_189: int;
var __var_190: Ref;
var __var_191: int;
var __var_192: bool;
var __var_193: int;
var __var_194: bool;
var __var_195: int;
var __var_196: Ref;
var __var_197: bool;
var __var_198: int;
var __var_199: Ref;
var __var_200: int;
var __var_201: Ref;
var __var_202: int;
var __var_203: Ref;
var __var_204: int;
var __var_205: int;
var __var_206: Ref;
var __var_207: Ref;
var __var_208: Ref;
var __var_209: Ref;
var __var_210: int;
var __var_211: int;
var __var_212: int;
var __var_213: Ref;
var __var_214: int;
var __var_215: int;
var __var_216: Ref;
var __var_217: bool;
var __var_218: int;
havoc paymentBalanceBefore_s1484;
havoc fundingBalanceBefore_s1484;
havoc change_s1484;
havoc investment_s1484;
__var_176 := _paymentToken_s1485;
__var_177 := ConstantToRef(-97433442488726861213578988847752201310395502866);
if ((_paymentToken_s1485) == (ConstantToRef(-97433442488726861213578988847752201310395502866))) {
assume ((paymentBalanceBefore_s1484) >= (0));
__var_178 := this;
assume ((__tmp__Balance[this]) >= (0));
paymentBalanceBefore_s1484 := __tmp__Balance[this];
assume ((fundingBalanceBefore_s1484) >= (0));
__var_180 := this;
call fundingBalanceBefore_s1484 := balanceOf_ERC20(_fundingToken_s1485, this, __var_179, this);
fundingBalanceBefore_s1484 := fundingBalanceBefore_s1484;
assume ((__var_181) >= (0));
assume ((_amount_s1485) >= (0));
__var_182 := _paymentToken_s1485;
assume ((_amount_s1485) >= (0));
__var_183 := _fundingToken_s1485;
__var_184 := this;
assume ((_maxTokens_s1485) >= (0));
__var_185 := null;
call __var_181 := trade_KyberInterface(__tmp__kyber_CrowdsaleERC20[this], this, _amount_s1485, _paymentToken_s1485, _amount_s1485, _fundingToken_s1485, this, _maxTokens_s1485, 0, null);
assume ((change_s1484) >= (0));
assume ((_amount_s1485) >= (0));
assume ((__var_186) >= (0));
assume ((paymentBalanceBefore_s1484) >= (0));
__var_187 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_186 := sub_SafeMath__fail(this, this, 0, paymentBalanceBefore_s1484, __tmp__Balance[this]);
if (revert) {
return;
}
assume ((__var_186) >= (0));
call change_s1484 := sub_SafeMath__fail(this, this, 0, _amount_s1485, __var_186);
if (revert) {
return;
}
change_s1484 := change_s1484;
assume ((investment_s1484) >= (0));
assume ((__var_188) >= (0));
__var_190 := this;
call __var_188 := balanceOf_ERC20(_fundingToken_s1485, this, __var_189, this);
assume ((__var_188) >= (0));
assume ((fundingBalanceBefore_s1484) >= (0));
call investment_s1484 := sub_SafeMath__fail(this, this, 0, __var_188, fundingBalanceBefore_s1484);
if (revert) {
return;
}
investment_s1484 := investment_s1484;
assume ((change_s1484) >= (0));
if ((change_s1484) > (0)) {
__var_191 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_191 := (__var_191) - (gas);
assume ((change_s1484) >= (0));
call __var_192 := send__fail(this, _investor_s1485, change_s1484);
if (!(__var_192)) {
revert := true;
return;
}
gas := (__var_191) + (gas);
}
} else {
assume ((__var_193) >= (0));
assume ((_amount_s1485) >= (0));
assume ((_amount_s1485) >= (0));
call __var_193 := collectPayment_CrowdsaleERC20__fail(this, msgsender_MSG, msgvalue_MSG, _investor_s1485, _amount_s1485, _amount_s1485, _paymentToken_s1485);
if (revert) {
return;
}
__var_196 := __tmp__kyber_CrowdsaleERC20[this];
call __var_194 := approve_ERC20(_paymentToken_s1485, this, __var_195, __tmp__kyber_CrowdsaleERC20[this], 0);
if (!(__var_194)) {
revert := true;
return;
}
__var_199 := __tmp__kyber_CrowdsaleERC20[this];
assume ((_amount_s1485) >= (0));
call __var_197 := approve_ERC20(_paymentToken_s1485, this, __var_198, __tmp__kyber_CrowdsaleERC20[this], _amount_s1485);
assume ((paymentBalanceBefore_s1484) >= (0));
__var_201 := this;
call paymentBalanceBefore_s1484 := balanceOf_ERC20(_paymentToken_s1485, this, __var_200, this);
paymentBalanceBefore_s1484 := paymentBalanceBefore_s1484;
assume ((fundingBalanceBefore_s1484) >= (0));
__var_203 := this;
call fundingBalanceBefore_s1484 := balanceOf_ERC20(_fundingToken_s1485, this, __var_202, this);
fundingBalanceBefore_s1484 := fundingBalanceBefore_s1484;
assume ((__var_204) >= (0));
__var_206 := _paymentToken_s1485;
assume ((_amount_s1485) >= (0));
__var_207 := _fundingToken_s1485;
__var_208 := this;
assume ((_maxTokens_s1485) >= (0));
__var_209 := null;
call __var_204 := trade_KyberInterface(__tmp__kyber_CrowdsaleERC20[this], this, __var_205, _paymentToken_s1485, _amount_s1485, _fundingToken_s1485, this, _maxTokens_s1485, 0, null);
assume ((change_s1484) >= (0));
assume ((_amount_s1485) >= (0));
assume ((__var_210) >= (0));
assume ((paymentBalanceBefore_s1484) >= (0));
assume ((__var_211) >= (0));
__var_213 := this;
call __var_211 := balanceOf_ERC20(_paymentToken_s1485, this, __var_212, this);
assume ((__var_211) >= (0));
call __var_210 := sub_SafeMath__fail(this, this, 0, paymentBalanceBefore_s1484, __var_211);
if (revert) {
return;
}
assume ((__var_210) >= (0));
call change_s1484 := sub_SafeMath__fail(this, this, 0, _amount_s1485, __var_210);
if (revert) {
return;
}
change_s1484 := change_s1484;
assume ((investment_s1484) >= (0));
assume ((__var_214) >= (0));
__var_216 := this;
call __var_214 := balanceOf_ERC20(_fundingToken_s1485, this, __var_215, this);
assume ((__var_214) >= (0));
assume ((fundingBalanceBefore_s1484) >= (0));
call investment_s1484 := sub_SafeMath__fail(this, this, 0, __var_214, fundingBalanceBefore_s1484);
if (revert) {
return;
}
investment_s1484 := investment_s1484;
assume ((change_s1484) >= (0));
if ((change_s1484) > (0)) {
assume ((change_s1484) >= (0));
call __var_217 := transfer_ERC20(_paymentToken_s1485, this, __var_218, _investor_s1485, change_s1484);
}
}
assume ((investment_s1484) >= (0));
__ret_0_ := investment_s1484;
return;
}

implementation convertTokens_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _investor_s1485: Ref, _amount_s1485: int, _fundingToken_s1485: Ref, _paymentToken_s1485: Ref, _maxTokens_s1485: int) returns (__ret_0_: int)
{
var paymentBalanceBefore_s1484: int;
var fundingBalanceBefore_s1484: int;
var change_s1484: int;
var investment_s1484: int;
var __var_176: Ref;
var __var_177: Ref;
var __var_178: Ref;
var __var_179: int;
var __var_180: Ref;
var __var_181: int;
var __var_182: Ref;
var __var_183: Ref;
var __var_184: Ref;
var __var_185: Ref;
var __var_186: int;
var __var_187: Ref;
var __var_188: int;
var __var_189: int;
var __var_190: Ref;
var __var_191: int;
var __var_192: bool;
var __var_193: int;
var __var_194: bool;
var __var_195: int;
var __var_196: Ref;
var __var_197: bool;
var __var_198: int;
var __var_199: Ref;
var __var_200: int;
var __var_201: Ref;
var __var_202: int;
var __var_203: Ref;
var __var_204: int;
var __var_205: int;
var __var_206: Ref;
var __var_207: Ref;
var __var_208: Ref;
var __var_209: Ref;
var __var_210: int;
var __var_211: int;
var __var_212: int;
var __var_213: Ref;
var __var_214: int;
var __var_215: int;
var __var_216: Ref;
var __var_217: bool;
var __var_218: int;
havoc paymentBalanceBefore_s1484;
havoc fundingBalanceBefore_s1484;
havoc change_s1484;
havoc investment_s1484;
__var_176 := _paymentToken_s1485;
__var_177 := ConstantToRef(-97433442488726861213578988847752201310395502866);
if ((_paymentToken_s1485) == (ConstantToRef(-97433442488726861213578988847752201310395502866))) {
assume ((paymentBalanceBefore_s1484) >= (0));
__var_178 := this;
assume ((Balance[this]) >= (0));
paymentBalanceBefore_s1484 := Balance[this];
assume ((fundingBalanceBefore_s1484) >= (0));
__var_180 := this;
call fundingBalanceBefore_s1484 := balanceOf_ERC20(_fundingToken_s1485, this, __var_179, this);
fundingBalanceBefore_s1484 := fundingBalanceBefore_s1484;
assume ((__var_181) >= (0));
assume ((_amount_s1485) >= (0));
__var_182 := _paymentToken_s1485;
assume ((_amount_s1485) >= (0));
__var_183 := _fundingToken_s1485;
__var_184 := this;
assume ((_maxTokens_s1485) >= (0));
__var_185 := null;
call __var_181 := trade_KyberInterface(kyber_CrowdsaleERC20[this], this, _amount_s1485, _paymentToken_s1485, _amount_s1485, _fundingToken_s1485, this, _maxTokens_s1485, 0, null);
assume ((change_s1484) >= (0));
assume ((_amount_s1485) >= (0));
assume ((__var_186) >= (0));
assume ((paymentBalanceBefore_s1484) >= (0));
__var_187 := this;
assume ((Balance[this]) >= (0));
call __var_186 := sub_SafeMath__success(this, this, 0, paymentBalanceBefore_s1484, Balance[this]);
if (revert) {
return;
}
assume ((__var_186) >= (0));
call change_s1484 := sub_SafeMath__success(this, this, 0, _amount_s1485, __var_186);
if (revert) {
return;
}
change_s1484 := change_s1484;
assume ((investment_s1484) >= (0));
assume ((__var_188) >= (0));
__var_190 := this;
call __var_188 := balanceOf_ERC20(_fundingToken_s1485, this, __var_189, this);
assume ((__var_188) >= (0));
assume ((fundingBalanceBefore_s1484) >= (0));
call investment_s1484 := sub_SafeMath__success(this, this, 0, __var_188, fundingBalanceBefore_s1484);
if (revert) {
return;
}
investment_s1484 := investment_s1484;
assume ((change_s1484) >= (0));
if ((change_s1484) > (0)) {
__var_191 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_191 := (__var_191) - (gas);
assume ((change_s1484) >= (0));
call __var_192 := send__success(this, _investor_s1485, change_s1484);
if (!(__var_192)) {
revert := true;
return;
}
gas := (__var_191) + (gas);
}
} else {
assume ((__var_193) >= (0));
assume ((_amount_s1485) >= (0));
assume ((_amount_s1485) >= (0));
call __var_193 := collectPayment_CrowdsaleERC20__success(this, msgsender_MSG, msgvalue_MSG, _investor_s1485, _amount_s1485, _amount_s1485, _paymentToken_s1485);
if (revert) {
return;
}
__var_196 := kyber_CrowdsaleERC20[this];
call __var_194 := approve_ERC20(_paymentToken_s1485, this, __var_195, kyber_CrowdsaleERC20[this], 0);
if (!(__var_194)) {
revert := true;
return;
}
__var_199 := kyber_CrowdsaleERC20[this];
assume ((_amount_s1485) >= (0));
call __var_197 := approve_ERC20(_paymentToken_s1485, this, __var_198, kyber_CrowdsaleERC20[this], _amount_s1485);
assume ((paymentBalanceBefore_s1484) >= (0));
__var_201 := this;
call paymentBalanceBefore_s1484 := balanceOf_ERC20(_paymentToken_s1485, this, __var_200, this);
paymentBalanceBefore_s1484 := paymentBalanceBefore_s1484;
assume ((fundingBalanceBefore_s1484) >= (0));
__var_203 := this;
call fundingBalanceBefore_s1484 := balanceOf_ERC20(_fundingToken_s1485, this, __var_202, this);
fundingBalanceBefore_s1484 := fundingBalanceBefore_s1484;
assume ((__var_204) >= (0));
__var_206 := _paymentToken_s1485;
assume ((_amount_s1485) >= (0));
__var_207 := _fundingToken_s1485;
__var_208 := this;
assume ((_maxTokens_s1485) >= (0));
__var_209 := null;
call __var_204 := trade_KyberInterface(kyber_CrowdsaleERC20[this], this, __var_205, _paymentToken_s1485, _amount_s1485, _fundingToken_s1485, this, _maxTokens_s1485, 0, null);
assume ((change_s1484) >= (0));
assume ((_amount_s1485) >= (0));
assume ((__var_210) >= (0));
assume ((paymentBalanceBefore_s1484) >= (0));
assume ((__var_211) >= (0));
__var_213 := this;
call __var_211 := balanceOf_ERC20(_paymentToken_s1485, this, __var_212, this);
assume ((__var_211) >= (0));
call __var_210 := sub_SafeMath__success(this, this, 0, paymentBalanceBefore_s1484, __var_211);
if (revert) {
return;
}
assume ((__var_210) >= (0));
call change_s1484 := sub_SafeMath__success(this, this, 0, _amount_s1485, __var_210);
if (revert) {
return;
}
change_s1484 := change_s1484;
assume ((investment_s1484) >= (0));
assume ((__var_214) >= (0));
__var_216 := this;
call __var_214 := balanceOf_ERC20(_fundingToken_s1485, this, __var_215, this);
assume ((__var_214) >= (0));
assume ((fundingBalanceBefore_s1484) >= (0));
call investment_s1484 := sub_SafeMath__success(this, this, 0, __var_214, fundingBalanceBefore_s1484);
if (revert) {
return;
}
investment_s1484 := investment_s1484;
assume ((change_s1484) >= (0));
if ((change_s1484) > (0)) {
assume ((change_s1484) >= (0));
call __var_217 := transfer_ERC20(_paymentToken_s1485, this, __var_218, _investor_s1485, change_s1484);
}
}
assert {:EventEmitted "Convert_CrowdsaleERC20"} (true);
assume ((investment_s1484) >= (0));
__ret_0_ := investment_s1484;
return;
}

implementation recoverTokens_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _erc20Token_s1516: Ref)
{
var thisToken_s1515: Ref;
var contractBalance_s1515: int;
var __var_219: int;
var __var_220: Ref;
var __var_221: bool;
var __var_222: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__DType[_erc20Token_s1516]) == (ERC20));
thisToken_s1515 := _erc20Token_s1516;
assume ((contractBalance_s1515) >= (0));
__var_220 := this;
call contractBalance_s1515 := balanceOf_ERC20(thisToken_s1515, this, __var_219, this);
contractBalance_s1515 := contractBalance_s1515;
assume ((contractBalance_s1515) >= (0));
call __var_221 := transfer_ERC20(thisToken_s1515, this, __var_222, msgsender_MSG, contractBalance_s1515);
}

implementation recoverTokens_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _erc20Token_s1516: Ref)
{
var thisToken_s1515: Ref;
var contractBalance_s1515: int;
var __var_219: int;
var __var_220: Ref;
var __var_221: bool;
var __var_222: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((DType[_erc20Token_s1516]) == (ERC20));
thisToken_s1515 := _erc20Token_s1516;
assume ((contractBalance_s1515) >= (0));
__var_220 := this;
call contractBalance_s1515 := balanceOf_ERC20(thisToken_s1515, this, __var_219, this);
contractBalance_s1515 := contractBalance_s1515;
assume ((contractBalance_s1515) >= (0));
call __var_221 := transfer_ERC20(thisToken_s1515, this, __var_222, msgsender_MSG, contractBalance_s1515);
}

implementation destroy_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_223: int;
var __var_224: Ref;
var __var_225: Ref;
var __var_226: Ref;
var __var_227: bool;
var __var_228: Ref;
var __var_229: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_224 := this;
__var_225 := this;
assume ((__tmp__Balance[this]) >= (0));
__var_226 := null;
call transaction_Events(__tmp__events_CrowdsaleERC20[this], this, __var_223, -967504012, this, msgsender_MSG, __tmp__Balance[this], null);
__var_228 := this;
assume ((__tmp__Balance[this]) >= (0));
__var_229 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_229 := (__var_229) - (gas);
call __var_227 := send__fail(this, msgsender_MSG, __tmp__Balance[this]);
gas := (__var_229) + (gas);
}

implementation destroy_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_223: int;
var __var_224: Ref;
var __var_225: Ref;
var __var_226: Ref;
var __var_227: bool;
var __var_228: Ref;
var __var_229: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_224 := this;
__var_225 := this;
assume ((Balance[this]) >= (0));
__var_226 := null;
call transaction_Events(events_CrowdsaleERC20[this], this, __var_223, -967504012, this, msgsender_MSG, Balance[this], null);
__var_228 := this;
assume ((Balance[this]) >= (0));
__var_229 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_229 := (__var_229) - (gas);
call __var_227 := send__success(this, msgsender_MSG, Balance[this]);
gas := (__var_229) + (gas);
}

implementation FallbackMethod_CrowdsaleERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
}

implementation FallbackMethod_CrowdsaleERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assert {:EventEmitted "EtherReceived_CrowdsaleERC20"} (true);
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (CrowdsaleERC20)) {
call FallbackMethod_CrowdsaleERC20__fail(to, from, amount);
if (revert) {
return;
}
} else if ((__tmp__DType[to]) == (DB)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Events)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (CrowdsaleReserveInterface)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (MinterInterface)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (KyberInterface)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (DividendInterface)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20)) {
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
if ((DType[to]) == (CrowdsaleERC20)) {
call FallbackMethod_CrowdsaleERC20__success(to, from, amount);
if (revert) {
return;
}
} else if ((DType[to]) == (DB)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Events)) {
assume ((amount) == (0));
} else if ((DType[to]) == (CrowdsaleReserveInterface)) {
assume ((amount) == (0));
} else if ((DType[to]) == (MinterInterface)) {
assume ((amount) == (0));
} else if ((DType[to]) == (KyberInterface)) {
assume ((amount) == (0));
} else if ((DType[to]) == (DividendInterface)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20)) {
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
var __snap___tmp__database_CrowdsaleERC20: [Ref]Ref;
var __snap___tmp__events_CrowdsaleERC20: [Ref]Ref;
var __snap___tmp__minter_CrowdsaleERC20: [Ref]Ref;
var __snap___tmp__reserve_CrowdsaleERC20: [Ref]Ref;
var __snap___tmp__kyber_CrowdsaleERC20: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__database_CrowdsaleERC20 := __tmp__database_CrowdsaleERC20;
__snap___tmp__events_CrowdsaleERC20 := __tmp__events_CrowdsaleERC20;
__snap___tmp__minter_CrowdsaleERC20 := __tmp__minter_CrowdsaleERC20;
__snap___tmp__reserve_CrowdsaleERC20 := __tmp__reserve_CrowdsaleERC20;
__snap___tmp__kyber_CrowdsaleERC20 := __tmp__kyber_CrowdsaleERC20;
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
__tmp__database_CrowdsaleERC20 := __snap___tmp__database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := __snap___tmp__events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := __snap___tmp__minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := __snap___tmp__reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := __snap___tmp__kyber_CrowdsaleERC20;
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
__tmp__database_CrowdsaleERC20 := database_CrowdsaleERC20;
__tmp__events_CrowdsaleERC20 := events_CrowdsaleERC20;
__tmp__minter_CrowdsaleERC20 := minter_CrowdsaleERC20;
__tmp__reserve_CrowdsaleERC20 := reserve_CrowdsaleERC20;
__tmp__kyber_CrowdsaleERC20 := kyber_CrowdsaleERC20;
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

implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_230: bool;
var __var_231: int;
var __var_232: int;
var __var_233: int;
__var_233 := abiEncodePacked2(-1321148633, msgsender_MSG);
__var_232 := keccak256(__var_233);
assume ((__var_232) != (0));
call __var_230 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_231, __var_232);
if (!(__var_230)) {
revert := true;
return;
}
}

implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_230: bool;
var __var_231: int;
var __var_232: int;
var __var_233: int;
__var_233 := abiEncodePacked2(-1321148633, msgsender_MSG);
__var_232 := keccak256(__var_233);
assume ((__var_232) != (0));
call __var_230 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_231, __var_232);
if (!(__var_230)) {
revert := true;
return;
}
}

implementation whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_234: bool;
var __var_235: int;
var __var_236: int;
var __var_237: int;
var __var_238: Ref;
__var_238 := this;
__var_237 := abiEncodePacked2(-677030961, this);
__var_236 := keccak256(__var_237);
assume ((__var_236) != (0));
call __var_234 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_235, __var_236);
if (!(!(__var_234))) {
revert := true;
return;
}
}

implementation whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_234: bool;
var __var_235: int;
var __var_236: int;
var __var_237: int;
var __var_238: Ref;
__var_238 := this;
__var_237 := abiEncodePacked2(-677030961, this);
__var_236 := keccak256(__var_237);
assume ((__var_236) != (0));
call __var_234 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_235, __var_236);
if (!(!(__var_234))) {
revert := true;
return;
}
}

implementation validAsset_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1625: Ref)
{
var __var_239: Ref;
var __var_240: int;
var __var_241: int;
var __var_242: int;
var __var_243: Ref;
__var_242 := abiEncodePacked2(1146481217, _assetAddress_s1625);
__var_241 := keccak256(__var_242);
assume ((__var_241) != (0));
call __var_239 := addressStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_240, __var_241);
__var_243 := null;
if (!((__var_239) != (null))) {
revert := true;
return;
}
}

implementation validAsset_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1625: Ref)
{
var __var_239: Ref;
var __var_240: int;
var __var_241: int;
var __var_242: int;
var __var_243: Ref;
__var_242 := abiEncodePacked2(1146481217, _assetAddress_s1625);
__var_241 := keccak256(__var_242);
assume ((__var_241) != (0));
call __var_239 := addressStorage_DB(database_CrowdsaleERC20[this], this, __var_240, __var_241);
__var_243 := null;
if (!((__var_239) != (null))) {
revert := true;
return;
}
}

implementation beforeDeadline_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1647: Ref)
{
var __var_244: int;
var __var_245: int;
var __var_246: int;
var __var_247: int;
assume ((__tmp__now) >= (0));
assume ((__var_244) >= (0));
__var_247 := abiEncodePacked2(1810533893, _assetAddress_s1647);
__var_246 := keccak256(__var_247);
assume ((__var_246) != (0));
call __var_244 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_245, __var_246);
assume ((__var_244) >= (0));
if (!((__tmp__now) < (__var_244))) {
revert := true;
return;
}
}

implementation beforeDeadline_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1647: Ref)
{
var __var_244: int;
var __var_245: int;
var __var_246: int;
var __var_247: int;
assume ((now) >= (0));
assume ((__var_244) >= (0));
__var_247 := abiEncodePacked2(1810533893, _assetAddress_s1647);
__var_246 := keccak256(__var_247);
assume ((__var_246) != (0));
call __var_244 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_245, __var_246);
assume ((__var_244) >= (0));
if (!((now) < (__var_244))) {
revert := true;
return;
}
}

implementation betweenDeadlines_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1685: Ref)
{
var __var_248: int;
var __var_249: int;
var __var_250: int;
var __var_251: int;
var __var_252: int;
var __var_253: int;
var __var_254: int;
var __var_255: int;
assume ((__tmp__now) >= (0));
assume ((__var_248) >= (0));
__var_251 := abiEncodePacked2(1810533893, _assetAddress_s1685);
__var_250 := keccak256(__var_251);
assume ((__var_250) != (0));
call __var_248 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_249, __var_250);
assume ((__var_248) >= (0));
if (!((__tmp__now) <= (__var_248))) {
revert := true;
return;
}
assume ((__tmp__now) >= (0));
assume ((__var_252) >= (0));
__var_255 := abiEncodePacked2(1979834469, _assetAddress_s1685);
__var_254 := keccak256(__var_255);
assume ((__var_254) != (0));
call __var_252 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_253, __var_254);
assume ((__var_252) >= (0));
if (!((__tmp__now) >= (__var_252))) {
revert := true;
return;
}
}

implementation betweenDeadlines_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1685: Ref)
{
var __var_248: int;
var __var_249: int;
var __var_250: int;
var __var_251: int;
var __var_252: int;
var __var_253: int;
var __var_254: int;
var __var_255: int;
assume ((now) >= (0));
assume ((__var_248) >= (0));
__var_251 := abiEncodePacked2(1810533893, _assetAddress_s1685);
__var_250 := keccak256(__var_251);
assume ((__var_250) != (0));
call __var_248 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_249, __var_250);
assume ((__var_248) >= (0));
if (!((now) <= (__var_248))) {
revert := true;
return;
}
assume ((now) >= (0));
assume ((__var_252) >= (0));
__var_255 := abiEncodePacked2(1979834469, _assetAddress_s1685);
__var_254 := keccak256(__var_255);
assume ((__var_254) != (0));
call __var_252 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_253, __var_254);
assume ((__var_252) >= (0));
if (!((now) >= (__var_252))) {
revert := true;
return;
}
}

implementation afterDeadline_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1707: Ref)
{
var __var_256: int;
var __var_257: int;
var __var_258: int;
var __var_259: int;
assume ((__tmp__now) >= (0));
assume ((__var_256) >= (0));
__var_259 := abiEncodePacked2(1810533893, _assetAddress_s1707);
__var_258 := keccak256(__var_259);
assume ((__var_258) != (0));
call __var_256 := uintStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_257, __var_258);
assume ((__var_256) >= (0));
if (!((__tmp__now) > (__var_256))) {
revert := true;
return;
}
}

implementation afterDeadline_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1707: Ref)
{
var __var_256: int;
var __var_257: int;
var __var_258: int;
var __var_259: int;
assume ((now) >= (0));
assume ((__var_256) >= (0));
__var_259 := abiEncodePacked2(1810533893, _assetAddress_s1707);
__var_258 := keccak256(__var_259);
assume ((__var_258) != (0));
call __var_256 := uintStorage_DB(database_CrowdsaleERC20[this], this, __var_257, __var_258);
assume ((__var_256) >= (0));
if (!((now) > (__var_256))) {
revert := true;
return;
}
}

implementation finalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1727: Ref)
{
var __var_260: bool;
var __var_261: int;
var __var_262: int;
var __var_263: int;
__var_263 := abiEncodePacked2(1636974819, _assetAddress_s1727);
__var_262 := keccak256(__var_263);
assume ((__var_262) != (0));
call __var_260 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_261, __var_262);
if (!(__var_260)) {
revert := true;
return;
}
}

implementation finalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1727: Ref)
{
var __var_260: bool;
var __var_261: int;
var __var_262: int;
var __var_263: int;
__var_263 := abiEncodePacked2(1636974819, _assetAddress_s1727);
__var_262 := keccak256(__var_263);
assume ((__var_262) != (0));
call __var_260 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_261, __var_262);
if (!(__var_260)) {
revert := true;
return;
}
}

implementation notFinalized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1748: Ref)
{
var __var_264: bool;
var __var_265: int;
var __var_266: int;
var __var_267: int;
__var_267 := abiEncodePacked2(1636974819, _assetAddress_s1748);
__var_266 := keccak256(__var_267);
assume ((__var_266) != (0));
call __var_264 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_265, __var_266);
if (!(!(__var_264))) {
revert := true;
return;
}
}

implementation notFinalized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1748: Ref)
{
var __var_264: bool;
var __var_265: int;
var __var_266: int;
var __var_267: int;
__var_267 := abiEncodePacked2(1636974819, _assetAddress_s1748);
__var_266 := keccak256(__var_267);
assume ((__var_266) != (0));
call __var_264 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_265, __var_266);
if (!(!(__var_264))) {
revert := true;
return;
}
}

implementation notPaid_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1769: Ref)
{
var __var_268: bool;
var __var_269: int;
var __var_270: int;
var __var_271: int;
__var_271 := abiEncodePacked2(-493134529, _assetAddress_s1769);
__var_270 := keccak256(__var_271);
assume ((__var_270) != (0));
call __var_268 := boolStorage_DB(__tmp__database_CrowdsaleERC20[this], this, __var_269, __var_270);
if (!(!(__var_268))) {
revert := true;
return;
}
}

implementation notPaid_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _assetAddress_s1769: Ref)
{
var __var_268: bool;
var __var_269: int;
var __var_270: int;
var __var_271: int;
__var_271 := abiEncodePacked2(-493134529, _assetAddress_s1769);
__var_270 := keccak256(__var_271);
assume ((__var_270) != (0));
call __var_268 := boolStorage_DB(database_CrowdsaleERC20[this], this, __var_269, __var_270);
if (!(!(__var_268))) {
revert := true;
return;
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
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
gas := (gas) - (53000);
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}

implementation CorralChoice_ERC20(this: Ref)
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_ERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (ERC20));
gas := (gas) - (53000);
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20(this);
}
}

implementation CorralChoice_DividendInterface(this: Ref)
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_DividendInterface()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (DividendInterface));
gas := (gas) - (53000);
call DividendInterface_DividendInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_DividendInterface(this);
}
}

implementation CorralChoice_KyberInterface(this: Ref)
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_KyberInterface()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (KyberInterface));
gas := (gas) - (53000);
call KyberInterface_KyberInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_KyberInterface(this);
}
}

implementation CorralChoice_MinterInterface(this: Ref)
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_MinterInterface()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (MinterInterface));
gas := (gas) - (53000);
call MinterInterface_MinterInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_MinterInterface(this);
}
}

implementation CorralChoice_CrowdsaleReserveInterface(this: Ref)
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_CrowdsaleReserveInterface()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (CrowdsaleReserveInterface));
gas := (gas) - (53000);
call CrowdsaleReserveInterface_CrowdsaleReserveInterface__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_CrowdsaleReserveInterface(this);
}
}

implementation CorralChoice_Events(this: Ref)
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_Events()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (Events));
gas := (gas) - (53000);
call Events_Events__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Events(this);
}
}

implementation CorralChoice_DB(this: Ref)
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
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
}

implementation CorralEntry_DB()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (DB));
gas := (gas) - (53000);
call DB_DB__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_DB(this);
}
}

implementation CorralChoice_CrowdsaleERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _database_s463: Ref;
var _events_s463: Ref;
var _kyber_s463: Ref;
var _assetAddress_s791: Ref;
var _amount_s791: int;
var _paymentToken_s791: Ref;
var __ret_0_buyAssetOrderERC20: bool;
var _assetAddress_s1069: Ref;
var __ret_0_payoutERC20: bool;
var _assetAddress_s1121: Ref;
var __ret_0_cancel: bool;
var _assetAddress_s1214: Ref;
var __ret_0_refund: bool;
var _erc20Token_s1516: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _database_s463;
havoc _events_s463;
havoc _kyber_s463;
havoc _assetAddress_s791;
havoc _amount_s791;
havoc _paymentToken_s791;
havoc __ret_0_buyAssetOrderERC20;
havoc _assetAddress_s1069;
havoc __ret_0_payoutERC20;
havoc _assetAddress_s1121;
havoc __ret_0_cancel;
havoc _assetAddress_s1214;
havoc __ret_0_refund;
havoc _erc20Token_s1516;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (DividendInterface));
assume ((DType[msgsender_MSG]) != (KyberInterface));
assume ((DType[msgsender_MSG]) != (MinterInterface));
assume ((DType[msgsender_MSG]) != (CrowdsaleReserveInterface));
assume ((DType[msgsender_MSG]) != (Events));
assume ((DType[msgsender_MSG]) != (DB));
assume ((DType[msgsender_MSG]) != (CrowdsaleERC20));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_buyAssetOrderERC20 := buyAssetOrderERC20_CrowdsaleERC20(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s791, _amount_s791, _paymentToken_s791);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_payoutERC20 := payoutERC20_CrowdsaleERC20(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1069);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_cancel := cancel_CrowdsaleERC20(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1121);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call __ret_0_refund := refund_CrowdsaleERC20(this, msgsender_MSG, msgvalue_MSG, _assetAddress_s1214);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call recoverTokens_CrowdsaleERC20(this, msgsender_MSG, msgvalue_MSG, _erc20Token_s1516);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
assume ((msgvalue_MSG) == (0));
call destroy_CrowdsaleERC20(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _database_s463: Ref;
var _events_s463: Ref;
var _kyber_s463: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (CrowdsaleERC20));
gas := (gas) - (53000);
call CrowdsaleERC20_CrowdsaleERC20(this, msgsender_MSG, msgvalue_MSG, _database_s463, _events_s463, _kyber_s463);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_CrowdsaleERC20(this);
}
}


