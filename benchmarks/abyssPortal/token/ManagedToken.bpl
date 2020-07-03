type Ref = int;
type ContractName = int;
var null: Ref;
var ERC20Token: ContractName;
var IERC20Token: ContractName;
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
procedure {:public} {:inline 1} transfer_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s499: Ref, _value_s499: int) returns (__ret_0_: bool);
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
implementation transfer_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s499: Ref, _value_s499: int) returns (__ret_0_: bool)
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
call __ret_0_ := transfer_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transfer_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s559: Ref, _value_s559: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:public} {:inline 1} transferFrom_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s577: Ref, _to_s577: Ref, _value_s577: int) returns (__ret_0_: bool);
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
implementation transferFrom_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s577: Ref, _to_s577: Ref, _value_s577: int) returns (__ret_0_: bool)
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
call __ret_0_ := transferFrom_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transferFrom_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s661: Ref, _to_s661: Ref, _value_s661: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s673: Ref) returns (__ret_0_: int);
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
implementation balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s673: Ref) returns (__ret_0_: int)
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
call __ret_0_ := balanceOf_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s673);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s673);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s688: Ref, _value_s688: int) returns (__ret_0_: bool);
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
implementation approve_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s688: Ref, _value_s688: int) returns (__ret_0_: bool)
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
call __ret_0_ := approve_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} approve_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s716: Ref, _value_s716: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} allowance_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s732: Ref, _spender_s732: Ref) returns (__ret_0_: int);
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
implementation allowance_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s732: Ref, _spender_s732: Ref) returns (__ret_0_: int)
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
call __ret_0_ := allowance_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s732, _spender_s732);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s732, _spender_s732);
assume ((!(revert)) && ((gas) >= (0)));
}
}

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
procedure {:public} {:inline 1} balanceOf_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s885: Ref) returns (balance_s885: int);
procedure {:public} {:inline 1} transfer_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s894: Ref, _value_s894: int) returns (success_s894: bool);
procedure {:public} {:inline 1} transferFrom_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s905: Ref, _to_s905: Ref, _value_s905: int) returns (success_s905: bool);
procedure {:public} {:inline 1} approve_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s914: Ref, _value_s914: int) returns (success_s914: bool);
procedure {:public} {:inline 1} allowance_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s923: Ref, _spender_s923: Ref) returns (remaining_s923: int);
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

procedure {:public} {:inline 1} onTokenTransfer_ITokenEventListener(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s744: Ref, _to_s744: Ref, _value_s744: int);
var allowTransfers_ManagedToken: [Ref]bool;
var issuanceFinished_ManagedToken: [Ref]bool;
var eventListener_ManagedToken: [Ref]Ref;
procedure {:inline 1} ManagedToken_ManagedToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref);
modifies allowTransfers_ManagedToken;
modifies issuanceFinished_ManagedToken;
modifies eventListener_ManagedToken;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure {:constructor} {:public} {:inline 1} ManagedToken_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref);
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
implementation ManagedToken_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref)
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
call ManagedToken_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _listener_s77, _owners_s77);
assume ((revert) || ((gas) < (0)));
} else {
call ManagedToken_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _listener_s77, _owners_s77);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} approve_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s92: Ref, _value_s92: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} setAllowTransfers_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s108: bool);
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
implementation setAllowTransfers_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s108: bool)
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
call setAllowTransfers_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s108);
assume ((revert) || ((gas) < (0)));
} else {
call setAllowTransfers_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s108);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setListener_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s133: Ref);
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
implementation setListener_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s133: Ref)
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
call setListener_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _listener_s133);
assume ((revert) || ((gas) < (0)));
} else {
call setListener_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _listener_s133);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s148: Ref, _value_s148: int) returns (__ret_0_: bool);
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
implementation transfer_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s148: Ref, _value_s148: int) returns (__ret_0_: bool)
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
call __ret_0_ := transfer_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s148, _value_s148);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s148, _value_s148);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transfer_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s184: Ref, _value_s184: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:public} {:inline 1} transferFrom_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s202: Ref, _to_s202: Ref, _value_s202: int) returns (__ret_0_: bool);
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
implementation transferFrom_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s202: Ref, _to_s202: Ref, _value_s202: int) returns (__ret_0_: bool)
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
call __ret_0_ := transferFrom_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s202, _to_s202, _value_s202);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s202, _to_s202, _value_s202);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transferFrom_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s240: Ref, _to_s240: Ref, _value_s240: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} hasListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} issue_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s295: Ref, _value_s295: int);
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
implementation issue_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s295: Ref, _value_s295: int)
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
call issue_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s295, _value_s295);
assume ((revert) || ((gas) < (0)));
} else {
call issue_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s295, _value_s295);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} destroy_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s347: Ref, _value_s347: int);
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
implementation destroy_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s347: Ref, _value_s347: int)
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
call destroy_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s347, _value_s347);
assume ((revert) || ((gas) < (0)));
} else {
call destroy_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s347, _value_s347);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} increaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s388: Ref, _addedValue_s388: int) returns (__ret_0_: bool);
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
implementation increaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s388: Ref, _addedValue_s388: int) returns (__ret_0_: bool)
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
call __ret_0_ := increaseApproval_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s388, _addedValue_s388);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := increaseApproval_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s388, _addedValue_s388);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decreaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s448: Ref, _subtractedValue_s448: int) returns (__ret_0_: bool);
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
implementation decreaseApproval_ManagedToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s448: Ref, _subtractedValue_s448: int) returns (__ret_0_: bool)
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
call __ret_0_ := decreaseApproval_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s448, _subtractedValue_s448);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decreaseApproval_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s448, _subtractedValue_s448);
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

procedure {:public} {:inline 1} setOwners_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s801: Ref);
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
implementation setOwners_MultiOwnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s801: Ref)
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
call setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
assume ((revert) || ((gas) < (0)));
} else {
call setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s858: Ref);
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

// procedure {:inline 1} safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s976: int, b_s976: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s994: int, b_s994: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1014: int, b_s1014: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1038: int, b_s1038: int) returns (__ret_0_: int);
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
procedure BoogieEntry_IERC20Token();
modifies gas;
modifies now;
modifies name_IERC20Token;
modifies symbol_IERC20Token;
modifies decimals_IERC20Token;
modifies totalSupply_IERC20Token;
procedure BoogieEntry_ITokenEventListener();
modifies gas;
modifies now;
// const {:existential true} HoudiniB1_ManagedToken: bool;
// const {:existential true} HoudiniB2_ManagedToken: bool;
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
procedure {:inline 1} transfer_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s499: Ref, _value_s499: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} transfer_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s499: Ref, _value_s499: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transfer_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s559: Ref, _value_s559: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transferFrom_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s577: Ref, _to_s577: Ref, _value_s577: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} transferFrom_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s577: Ref, _to_s577: Ref, _value_s577: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s661: Ref, _to_s661: Ref, _value_s661: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s673: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s673: Ref) returns (__ret_0_: int);
procedure {:inline 1} approve_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s688: Ref, _value_s688: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} approve_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s688: Ref, _value_s688: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} approve_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s716: Ref, _value_s716: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} allowance_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s732: Ref, _spender_s732: Ref) returns (__ret_0_: int);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} allowance_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s732: Ref, _spender_s732: Ref) returns (__ret_0_: int);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
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
procedure {:inline 1} ITokenEventListener_ITokenEventListener_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ITokenEventListener_ITokenEventListener__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ITokenEventListener_ITokenEventListener__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ManagedToken_ManagedToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref);
modifies __tmp__allowTransfers_ManagedToken;
modifies __tmp__issuanceFinished_ManagedToken;
modifies __tmp__eventListener_ManagedToken;
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
procedure {:constructor} {:inline 1} ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref);
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
procedure {:constructor} {:inline 1} ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref);
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
procedure {:inline 1} approve_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s92: Ref, _value_s92: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} setAllowTransfers_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s108: bool);
modifies allowTransfers_ManagedToken;
modifies revert;
procedure {:inline 1} setAllowTransfers_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s108: bool);
modifies __tmp__allowTransfers_ManagedToken;
modifies revert;
procedure {:inline 1} setListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s133: Ref);
modifies eventListener_ManagedToken;
modifies revert;
procedure {:inline 1} setListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s133: Ref);
modifies __tmp__eventListener_ManagedToken;
modifies revert;
procedure {:inline 1} transfer_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s148: Ref, _value_s148: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} transfer_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s148: Ref, _value_s148: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transfer_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s184: Ref, _value_s184: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transferFrom_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s202: Ref, _to_s202: Ref, _value_s202: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} transferFrom_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s202: Ref, _to_s202: Ref, _value_s202: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s240: Ref, _to_s240: Ref, _value_s240: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} hasListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} issue_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s295: Ref, _value_s295: int);
modifies M_Ref_int;
modifies revert;
procedure {:inline 1} issue_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s295: Ref, _value_s295: int);
modifies __tmp__M_Ref_int;
modifies revert;
procedure {:inline 1} destroy_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s347: Ref, _value_s347: int);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} destroy_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s347: Ref, _value_s347: int);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} increaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s388: Ref, _addedValue_s388: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} increaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s388: Ref, _addedValue_s388: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} decreaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s448: Ref, _subtractedValue_s448: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} decreaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s448: Ref, _subtractedValue_s448: int) returns (__ret_0_: bool);
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
procedure {:inline 1} setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s801: Ref);
modifies revert;
modifies M_Ref_bool;
modifies owners_MultiOwnable;
procedure {:inline 1} setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s801: Ref);
modifies revert;
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
procedure {:inline 1} _setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s858: Ref);
modifies __tmp__M_Ref_bool;
modifies __tmp__owners_MultiOwnable;
procedure {:inline 1} getOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} getOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
// procedure {:inline 1} safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s976: int, b_s976: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s994: int, b_s994: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1014: int, b_s1014: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1038: int, b_s1038: int) returns (__ret_0_: int);
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

implementation transfer_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s499: Ref, _value_s499: int) returns (__ret_0_: bool)
{
var __var_3: bool;
assume ((_value_s499) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_3 := transfer_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_3 := transfer_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s499: Ref, _value_s499: int) returns (__ret_0_: bool)
{
var __var_3: bool;
assume ((_value_s499) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_3 := transfer_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_3 := transfer_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s559: Ref, _value_s559: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
__var_4 := null;
if (!((_to_s559) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s559) >= (0));
if (!((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (_value_s559))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s559) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_5 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG], _value_s559);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_5 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG], _value_s559);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG] := __var_5;
assume ((__var_5) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s559]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s559]) >= (0));
assume ((_value_s559) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_6 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s559], _value_s559);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_6 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s559], _value_s559);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s559] := __var_6;
assume ((__var_6) >= (0));
__ret_0_ := true;
return;
}

implementation transfer_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s559: Ref, _value_s559: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
__var_4 := null;
if (!((_to_s559) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s559) >= (0));
if (!((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (_value_s559))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s559) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_5 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][msgsender_MSG], _value_s559);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_5 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][msgsender_MSG], _value_s559);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][msgsender_MSG] := __var_5;
assume ((__var_5) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s559]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s559]) >= (0));
assume ((_value_s559) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_6 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s559], _value_s559);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_6 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s559], _value_s559);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s559] := __var_6;
assume ((__var_6) >= (0));
assert {:EventEmitted "Transfer_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s577: Ref, _to_s577: Ref, _value_s577: int) returns (__ret_0_: bool)
{
var __var_7: bool;
assume ((_value_s577) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_7;
return;
}

implementation transferFrom_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s577: Ref, _to_s577: Ref, _value_s577: int) returns (__ret_0_: bool)
{
var __var_7: bool;
assume ((_value_s577) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_7 := transferFrom_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_7;
return;
}

implementation transferFrom_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s661: Ref, _to_s661: Ref, _value_s661: int) returns (__ret_0_: bool)
{
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: Ref;
var __var_13: int;
var __var_14: Ref;
__var_8 := null;
if (!((_to_s661) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s661]) >= (0));
assume ((_value_s661) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]) == (null)) {
call __var_9 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661] := __var_9;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (0));
assume ((_value_s661) >= (0));
if (!(((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s661]) >= (_value_s661)) && ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (_value_s661)))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s661]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s661]) >= (0));
assume ((_value_s661) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_10 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s661], _value_s661);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_10 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s661], _value_s661);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s661] := __var_10;
assume ((__var_10) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s661]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s661]) >= (0));
assume ((_value_s661) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s661], _value_s661);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s661], _value_s661);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s661] := __var_11;
assume ((__var_11) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]) == (null)) {
call __var_12 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661] := __var_12;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]) == (null)) {
call __var_14 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661] := __var_14;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (0));
assume ((_value_s661) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]][msgsender_MSG], _value_s661);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]][msgsender_MSG], _value_s661);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s661]][msgsender_MSG] := __var_13;
assume ((__var_13) >= (0));
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s661: Ref, _to_s661: Ref, _value_s661: int) returns (__ret_0_: bool)
{
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: Ref;
var __var_13: int;
var __var_14: Ref;
__var_8 := null;
if (!((_to_s661) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s661]) >= (0));
assume ((_value_s661) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]) == (null)) {
call __var_9 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s661] := __var_9;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (0));
assume ((_value_s661) >= (0));
if (!(((M_Ref_int[balances_ERC20Token[this]][_from_s661]) >= (_value_s661)) && ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (_value_s661)))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s661]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s661]) >= (0));
assume ((_value_s661) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_10 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s661], _value_s661);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_10 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s661], _value_s661);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s661] := __var_10;
assume ((__var_10) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s661]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s661]) >= (0));
assume ((_value_s661) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_from_s661], _value_s661);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_from_s661], _value_s661);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_from_s661] := __var_11;
assume ((__var_11) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]) == (null)) {
call __var_12 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s661] := __var_12;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]) == (null)) {
call __var_14 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s661] := __var_14;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]][msgsender_MSG]) >= (0));
assume ((_value_s661) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]][msgsender_MSG], _value_s661);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]][msgsender_MSG], _value_s661);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s661]][msgsender_MSG] := __var_13;
assume ((__var_13) >= (0));
assert {:EventEmitted "Transfer_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s673: Ref) returns (__ret_0_: int)
{
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_owner_s673]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_owner_s673];
return;
}

implementation balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s673: Ref) returns (__ret_0_: int)
{
assume ((M_Ref_int[balances_ERC20Token[this]][_owner_s673]) >= (0));
__ret_0_ := M_Ref_int[balances_ERC20Token[this]][_owner_s673];
return;
}

implementation approve_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s688: Ref, _value_s688: int) returns (__ret_0_: bool)
{
var __var_15: bool;
assume ((_value_s688) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_15 := approve_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_15 := approve_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_15;
return;
}

implementation approve_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s688: Ref, _value_s688: int) returns (__ret_0_: bool)
{
var __var_15: bool;
assume ((_value_s688) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_15 := approve_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
if (revert) {
return;
}
} else if ((DType[this]) == (ERC20Token)) {
call __var_15 := approve_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_15;
return;
}

implementation approve_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s716: Ref, _value_s716: int) returns (__ret_0_: bool)
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
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s716]) >= (0));
assume ((_value_s716) >= (0));
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s716] := _value_s716;
__ret_0_ := true;
return;
}

implementation approve_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s716: Ref, _value_s716: int) returns (__ret_0_: bool)
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
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s716]) >= (0));
assume ((_value_s716) >= (0));
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s716] := _value_s716;
assert {:EventEmitted "Approval_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation allowance_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s732: Ref, _spender_s732: Ref) returns (__ret_0_: int)
{
var __var_17: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s732]) == (null)) {
call __var_17 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s732] := __var_17;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s732]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s732]][_spender_s732]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s732]][_spender_s732];
return;
}

implementation allowance_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s732: Ref, _spender_s732: Ref) returns (__ret_0_: int)
{
var __var_17: Ref;
if ((M_Ref_Ref[allowed_ERC20Token[this]][_owner_s732]) == (null)) {
call __var_17 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_owner_s732] := __var_17;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s732]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s732]][_spender_s732]) >= (0));
__ret_0_ := M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s732]][_spender_s732];
return;
}

implementation IERC20Token_IERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__name_IERC20Token[this] := -424057208;
__tmp__symbol_IERC20Token[this] := -424057208;
__tmp__decimals_IERC20Token[this] := 0;
__tmp__totalSupply_IERC20Token[this] := 0;
// end of initialization
}

implementation IERC20Token_IERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
name_IERC20Token[this] := -424057208;
symbol_IERC20Token[this] := -424057208;
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

implementation ManagedToken_ManagedToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref)
{
var __var_18: Ref;
var __var_19: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__allowTransfers_ManagedToken[this] := false;
__tmp__issuanceFinished_ManagedToken[this] := false;
// end of initialization
__var_18 := null;
if ((_listener_s77) != (null)) {
assume ((__tmp__DType[_listener_s77]) == (ITokenEventListener));
__var_19 := _listener_s77;
__tmp__eventListener_ManagedToken[this] := __var_19;
}
if ((__tmp__DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s77);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation ManagedToken_ManagedToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref)
{
var __var_18: Ref;
var __var_19: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
allowTransfers_ManagedToken[this] := false;
issuanceFinished_ManagedToken[this] := false;
// end of initialization
__var_18 := null;
if ((_listener_s77) != (null)) {
assume ((DType[_listener_s77]) == (ITokenEventListener));
__var_19 := _listener_s77;
eventListener_ManagedToken[this] := __var_19;
}
if ((DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s77);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref)
{
var __var_18: Ref;
var __var_19: Ref;
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
call ManagedToken_ManagedToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _listener_s77, _owners_s77);
if (revert) {
return;
}
}

implementation ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s77: Ref, _owners_s77: Ref)
{
var __var_18: Ref;
var __var_19: Ref;
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
call ManagedToken_ManagedToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _listener_s77, _owners_s77);
if (revert) {
return;
}
}

implementation approve_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s92: Ref, _value_s92: int) returns (__ret_0_: bool)
{
var __var_20: bool;
assume ((_value_s92) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_20 := approve_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s92, _value_s92);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_20;
return;
}

implementation approve_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s92: Ref, _value_s92: int) returns (__ret_0_: bool)
{
var __var_20: bool;
assume ((_value_s92) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_20 := approve_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s92, _value_s92);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_20;
return;
}

implementation setAllowTransfers_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s108: bool)
{
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp__allowTransfers_ManagedToken[this] := _allowTransfers_s108;
}

implementation setAllowTransfers_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _allowTransfers_s108: bool)
{
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
allowTransfers_ManagedToken[this] := _allowTransfers_s108;
assert {:EventEmitted "AllowTransfersChanged_ManagedToken"} (true);
}

implementation setListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s133: Ref)
{
var __var_21: Ref;
var __var_22: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_21 := null;
if ((_listener_s133) != (null)) {
assume ((__tmp__DType[_listener_s133]) == (ITokenEventListener));
__var_22 := _listener_s133;
__tmp__eventListener_ManagedToken[this] := __var_22;
} else {
}
}

implementation setListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _listener_s133: Ref)
{
var __var_21: Ref;
var __var_22: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_21 := null;
if ((_listener_s133) != (null)) {
assume ((DType[_listener_s133]) == (ITokenEventListener));
__var_22 := _listener_s133;
eventListener_ManagedToken[this] := __var_22;
} else {
}
}

implementation transfer_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s148: Ref, _value_s148: int) returns (__ret_0_: bool)
{
var __var_23: bool;
assume ((_value_s148) >= (0));
call __var_23 := transfer_ManagedToken_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s148, _value_s148);
if (revert) {
return;
}
__ret_0_ := __var_23;
return;
}

implementation transfer_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s148: Ref, _value_s148: int) returns (__ret_0_: bool)
{
var __var_23: bool;
assume ((_value_s148) >= (0));
call __var_23 := transfer_ManagedToken_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s148, _value_s148);
if (revert) {
return;
}
__ret_0_ := __var_23;
return;
}

implementation transfer_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s184: Ref, _value_s184: int) returns (__ret_0_: bool)
{
var success_s183: bool;
var __var_24: bool;
var __var_25: int;
call transfersAllowed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s184) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call success_s183 := transfer_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s184, _value_s184);
if (revert) {
return;
}
} else {
assume (false);
}
success_s183 := success_s183;
call __var_24 := hasListener_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_24) && (success_s183)) {
assume ((_value_s184) >= (0));
call onTokenTransfer_ITokenEventListener(__tmp__eventListener_ManagedToken[this], this, __var_25, msgsender_MSG, _to_s184, _value_s184);
}
__ret_0_ := success_s183;
return;
}

implementation transfer_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s184: Ref, _value_s184: int) returns (__ret_0_: bool)
{
var success_s183: bool;
var __var_24: bool;
var __var_25: int;
call transfersAllowed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s184) >= (0));
if ((DType[this]) == (ManagedToken)) {
call success_s183 := transfer_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s184, _value_s184);
if (revert) {
return;
}
} else {
assume (false);
}
success_s183 := success_s183;
call __var_24 := hasListener_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_24) && (success_s183)) {
assume ((_value_s184) >= (0));
call onTokenTransfer_ITokenEventListener(eventListener_ManagedToken[this], this, __var_25, msgsender_MSG, _to_s184, _value_s184);
}
__ret_0_ := success_s183;
return;
}

implementation transferFrom_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s202: Ref, _to_s202: Ref, _value_s202: int) returns (__ret_0_: bool)
{
var __var_26: bool;
assume ((_value_s202) >= (0));
call __var_26 := transferFrom_ManagedToken_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s202, _to_s202, _value_s202);
if (revert) {
return;
}
__ret_0_ := __var_26;
return;
}

implementation transferFrom_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s202: Ref, _to_s202: Ref, _value_s202: int) returns (__ret_0_: bool)
{
var __var_26: bool;
assume ((_value_s202) >= (0));
call __var_26 := transferFrom_ManagedToken_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s202, _to_s202, _value_s202);
if (revert) {
return;
}
__ret_0_ := __var_26;
return;
}

implementation transferFrom_ManagedToken_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s240: Ref, _to_s240: Ref, _value_s240: int) returns (__ret_0_: bool)
{
var success_s239: bool;
var __var_27: bool;
var __var_28: int;
call transfersAllowed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s240) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call success_s239 := transferFrom_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s240, _to_s240, _value_s240);
if (revert) {
return;
}
} else {
assume (false);
}
success_s239 := success_s239;
call __var_27 := hasListener_ManagedToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_27) && (success_s239)) {
assume ((_value_s240) >= (0));
call onTokenTransfer_ITokenEventListener(__tmp__eventListener_ManagedToken[this], this, __var_28, _from_s240, _to_s240, _value_s240);
}
__ret_0_ := success_s239;
return;
}

implementation transferFrom_ManagedToken_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s240: Ref, _to_s240: Ref, _value_s240: int) returns (__ret_0_: bool)
{
var success_s239: bool;
var __var_27: bool;
var __var_28: int;
call transfersAllowed_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((_value_s240) >= (0));
if ((DType[this]) == (ManagedToken)) {
call success_s239 := transferFrom_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s240, _to_s240, _value_s240);
if (revert) {
return;
}
} else {
assume (false);
}
success_s239 := success_s239;
call __var_27 := hasListener_ManagedToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__var_27) && (success_s239)) {
assume ((_value_s240) >= (0));
call onTokenTransfer_ITokenEventListener(eventListener_ManagedToken[this], this, __var_28, _from_s240, _to_s240, _value_s240);
}
__ret_0_ := success_s239;
return;
}

implementation hasListener_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_29: Ref;
var __var_30: Ref;
__var_29 := __tmp__eventListener_ManagedToken[this];
__var_30 := null;
if ((__tmp__eventListener_ManagedToken[this]) == (null)) {
__ret_0_ := false;
return;
}
__ret_0_ := true;
return;
}

implementation hasListener_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
var __var_29: Ref;
var __var_30: Ref;
__var_29 := eventListener_ManagedToken[this];
__var_30 := null;
if ((eventListener_ManagedToken[this]) == (null)) {
__ret_0_ := false;
return;
}
__ret_0_ := true;
return;
}

implementation issue_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s295: Ref, _value_s295: int)
{
var __var_31: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canIssue_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s295]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s295]) >= (0));
assume ((_value_s295) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_31 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s295], _value_s295);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s295] := __var_31;
assume ((__var_31) >= (0));
}

implementation issue_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s295: Ref, _value_s295: int)
{
var __var_31: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call canIssue_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s295]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s295]) >= (0));
assume ((_value_s295) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_31 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s295], _value_s295);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s295] := __var_31;
assume ((__var_31) >= (0));
assert {:EventEmitted "Issue_ManagedToken"} (true);
assert {:EventEmitted "Transfer_ManagedToken"} (true);
}

implementation destroy_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s347: Ref, _value_s347: int)
{
var __var_32: int;
if (!((__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][msgsender_MSG]) || ((msgsender_MSG) == (_from_s347)))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s347]) >= (0));
assume ((_value_s347) >= (0));
if (!((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s347]) >= (_value_s347))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s347]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s347]) >= (0));
assume ((_value_s347) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_32 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s347], _value_s347);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s347] := __var_32;
assume ((__var_32) >= (0));
}

implementation destroy_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s347: Ref, _value_s347: int)
{
var __var_32: int;
if (!((M_Ref_bool[ownerByAddress_MultiOwnable[this]][msgsender_MSG]) || ((msgsender_MSG) == (_from_s347)))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s347]) >= (0));
assume ((_value_s347) >= (0));
if (!((M_Ref_int[balances_ERC20Token[this]][_from_s347]) >= (_value_s347))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s347]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s347]) >= (0));
assume ((_value_s347) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_32 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_from_s347], _value_s347);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_from_s347] := __var_32;
assume ((__var_32) >= (0));
assert {:EventEmitted "Transfer_ManagedToken"} (true);
assert {:EventEmitted "Destroy_ManagedToken"} (true);
}

implementation increaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s388: Ref, _addedValue_s388: int) returns (__ret_0_: bool)
{
var __var_33: Ref;
var __var_34: int;
var __var_35: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_33 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_33;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388]) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_35 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_35;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388]) >= (0));
assume ((_addedValue_s388) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_34 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388], _addedValue_s388);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388] := __var_34;
assume ((__var_34) >= (0));
__ret_0_ := true;
return;
}

implementation increaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s388: Ref, _addedValue_s388: int) returns (__ret_0_: bool)
{
var __var_33: Ref;
var __var_34: int;
var __var_35: Ref;
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_33 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_33;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388]) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_35 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_35;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388]) >= (0));
assume ((_addedValue_s388) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_34 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388], _addedValue_s388);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s388] := __var_34;
assume ((__var_34) >= (0));
assert {:EventEmitted "Approval_ManagedToken"} (true);
__ret_0_ := true;
return;
}

implementation decreaseApproval_ManagedToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s448: Ref, _subtractedValue_s448: int) returns (__ret_0_: bool)
{
var oldValue_s447: int;
var __var_36: Ref;
var __var_37: Ref;
var __var_38: Ref;
var __var_39: int;
assume ((oldValue_s447) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_36 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_36;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448]) >= (0));
oldValue_s447 := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448];
assume ((_subtractedValue_s448) >= (0));
assume ((oldValue_s447) >= (0));
if ((_subtractedValue_s448) > (oldValue_s447)) {
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_37 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_37;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448]) >= (0));
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448] := 0;
} else {
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_38 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG] := __var_38;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448]) >= (0));
assume ((oldValue_s447) >= (0));
assume ((_subtractedValue_s448) >= (0));
if ((__tmp__DType[this]) == (ManagedToken)) {
call __var_39 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, oldValue_s447, _subtractedValue_s448);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448] := __var_39;
assume ((__var_39) >= (0));
}
__ret_0_ := true;
return;
}

implementation decreaseApproval_ManagedToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s448: Ref, _subtractedValue_s448: int) returns (__ret_0_: bool)
{
var oldValue_s447: int;
var __var_36: Ref;
var __var_37: Ref;
var __var_38: Ref;
var __var_39: int;
assume ((oldValue_s447) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_36 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_36;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448]) >= (0));
oldValue_s447 := M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448];
assume ((_subtractedValue_s448) >= (0));
assume ((oldValue_s447) >= (0));
if ((_subtractedValue_s448) > (oldValue_s447)) {
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_37 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_37;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448]) >= (0));
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448] := 0;
} else {
if ((M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]) == (null)) {
call __var_38 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG] := __var_38;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448]) >= (0));
assume ((oldValue_s447) >= (0));
assume ((_subtractedValue_s448) >= (0));
if ((DType[this]) == (ManagedToken)) {
call __var_39 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, oldValue_s447, _subtractedValue_s448);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s448] := __var_39;
assume ((__var_39) >= (0));
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
var __var_40: Ref;
var __var_41: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__manager_MultiOwnable[this] := null;
// Make array/mapping vars distinct for owners
call __var_40 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__owners_MultiOwnable[this] := __var_40;
assume ((__tmp__Length[__tmp__owners_MultiOwnable[this]]) == (0));
// Make array/mapping vars distinct for ownerByAddress
call __var_41 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__ownerByAddress_MultiOwnable[this] := __var_41;
// Initialize Boolean mapping ownerByAddress
__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]] := zeroRefBoolArr();
// end of initialization
__tmp__manager_MultiOwnable[this] := msgsender_MSG;
}

implementation MultiOwnable_MultiOwnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_40: Ref;
var __var_41: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
manager_MultiOwnable[this] := null;
// Make array/mapping vars distinct for owners
call __var_40 := FreshRefGenerator__success();
if (revert) {
return;
}
owners_MultiOwnable[this] := __var_40;
assume ((Length[owners_MultiOwnable[this]]) == (0));
// Make array/mapping vars distinct for ownerByAddress
call __var_41 := FreshRefGenerator__success();
if (revert) {
return;
}
ownerByAddress_MultiOwnable[this] := __var_41;
// Initialize Boolean mapping ownerByAddress
M_Ref_bool[ownerByAddress_MultiOwnable[this]] := zeroRefBoolArr();
// end of initialization
manager_MultiOwnable[this] := msgsender_MSG;
}

implementation MultiOwnable_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_40: Ref;
var __var_41: Ref;
call MultiOwnable_MultiOwnable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation MultiOwnable_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_40: Ref;
var __var_41: Ref;
call MultiOwnable_MultiOwnable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s801: Ref)
{
if (!((msgsender_MSG) == (__tmp__manager_MultiOwnable[this]))) {
revert := true;
return;
}
if ((__tmp__DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (MultiOwnable)) {
call _setOwners_MultiOwnable__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s801: Ref)
{
if (!((msgsender_MSG) == (manager_MultiOwnable[this]))) {
revert := true;
return;
}
if ((DType[this]) == (ManagedToken)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
if (revert) {
return;
}
} else if ((DType[this]) == (MultiOwnable)) {
call _setOwners_MultiOwnable__success(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
if (revert) {
return;
}
} else {
assume (false);
}
}

implementation _setOwners_MultiOwnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s858: Ref)
{
var i_s827: int;
var j_s848: int;
assume ((i_s827) >= (0));
assume ((__tmp__Length[__tmp__owners_MultiOwnable[this]]) >= (0));
assume ((i_s827) >= (0));
i_s827 := 0;
while ((i_s827) < (__tmp__Length[__tmp__owners_MultiOwnable[this]]))
{
assume ((i_s827) >= (0));
__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][__tmp__M_int_Ref[__tmp__owners_MultiOwnable[this]][i_s827]] := false;
assume ((i_s827) >= (0));
i_s827 := (i_s827) + (1);
assume ((i_s827) >= (0));
if ((gas) < (0)) {
return;
}
}
assume ((j_s848) >= (0));
assume ((__tmp__Length[_owners_s858]) >= (0));
assume ((j_s848) >= (0));
j_s848 := 0;
while ((j_s848) < (__tmp__Length[_owners_s858]))
{
assume ((j_s848) >= (0));
__tmp__M_Ref_bool[__tmp__ownerByAddress_MultiOwnable[this]][__tmp__M_int_Ref[_owners_s858][j_s848]] := true;
assume ((j_s848) >= (0));
j_s848 := (j_s848) + (1);
assume ((j_s848) >= (0));
if ((gas) < (0)) {
return;
}
}
__tmp__owners_MultiOwnable[this] := _owners_s858;
}

implementation _setOwners_MultiOwnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owners_s858: Ref)
{
var i_s827: int;
var j_s848: int;
assume ((i_s827) >= (0));
assume ((Length[owners_MultiOwnable[this]]) >= (0));
assume ((i_s827) >= (0));
i_s827 := 0;
while ((i_s827) < (Length[owners_MultiOwnable[this]]))
{
assume ((i_s827) >= (0));
M_Ref_bool[ownerByAddress_MultiOwnable[this]][M_int_Ref[owners_MultiOwnable[this]][i_s827]] := false;
assume ((i_s827) >= (0));
i_s827 := (i_s827) + (1);
assume ((i_s827) >= (0));
if ((gas) < (0)) {
return;
}
}
assume ((j_s848) >= (0));
assume ((Length[_owners_s858]) >= (0));
assume ((j_s848) >= (0));
j_s848 := 0;
while ((j_s848) < (Length[_owners_s858]))
{
assume ((j_s848) >= (0));
M_Ref_bool[ownerByAddress_MultiOwnable[this]][M_int_Ref[_owners_s858][j_s848]] := true;
assume ((j_s848) >= (0));
j_s848 := (j_s848) + (1);
assume ((j_s848) >= (0));
if ((gas) < (0)) {
return;
}
}
owners_MultiOwnable[this] := _owners_s858;
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

// implementation safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s976: int, b_s976: int) returns (__ret_0_: int)
// {
// var c_s975: int;
// assume ((c_s975) >= (0));
// assume ((a_s976) >= (0));
// assume ((b_s976) >= (0));
// assume (((a_s976) * (b_s976)) >= (0));
// c_s975 := (a_s976) * (b_s976);
// assume ((a_s976) >= (0));
// assume ((c_s975) >= (0));
// assume ((a_s976) >= (0));
// assume (((c_s975) / (a_s976)) >= (0));
// assume ((b_s976) >= (0));
// assume ((c_s975) >= (0));
// __ret_0_ := c_s975;
// return;
// }

// implementation safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s976: int, b_s976: int) returns (__ret_0_: int)
// {
// var c_s975: int;
// assume ((c_s975) >= (0));
// assume ((a_s976) >= (0));
// assume ((b_s976) >= (0));
// assume (((a_s976) * (b_s976)) >= (0));
// c_s975 := (a_s976) * (b_s976);
// assume ((a_s976) >= (0));
// assume ((c_s975) >= (0));
// assume ((a_s976) >= (0));
// assume (((c_s975) / (a_s976)) >= (0));
// assume ((b_s976) >= (0));
// assert (((a_s976) == (0)) || (((c_s975) / (a_s976)) == (b_s976)));
// assume ((c_s975) >= (0));
// __ret_0_ := c_s975;
// return;
// }

// implementation safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s994: int, b_s994: int) returns (__ret_0_: int)
// {
// var c_s993: int;
// assume ((c_s993) >= (0));
// assume ((a_s994) >= (0));
// assume ((b_s994) >= (0));
// assume (((a_s994) / (b_s994)) >= (0));
// c_s993 := (a_s994) / (b_s994);
// assume ((c_s993) >= (0));
// __ret_0_ := c_s993;
// return;
// }

// implementation safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s994: int, b_s994: int) returns (__ret_0_: int)
// {
// var c_s993: int;
// assume ((c_s993) >= (0));
// assume ((a_s994) >= (0));
// assume ((b_s994) >= (0));
// assume (((a_s994) / (b_s994)) >= (0));
// c_s993 := (a_s994) / (b_s994);
// assume ((c_s993) >= (0));
// __ret_0_ := c_s993;
// return;
// }

implementation safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1014: int, b_s1014: int) returns (__ret_0_: int)
{
assume ((a_s1014) >= (0));
assume ((b_s1014) >= (0));
assume ((a_s1014) >= (0));
assume ((b_s1014) >= (0));
assume (((a_s1014) - (b_s1014)) >= (0));
__ret_0_ := (a_s1014) - (b_s1014);
return;
}

implementation safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1014: int, b_s1014: int) returns (__ret_0_: int)
{
assume ((a_s1014) >= (0));
assume ((b_s1014) >= (0));
assert ((a_s1014) >= (b_s1014));
assume ((a_s1014) >= (0));
assume ((b_s1014) >= (0));
assume (((a_s1014) - (b_s1014)) >= (0));
__ret_0_ := (a_s1014) - (b_s1014);
return;
}

implementation safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1038: int, b_s1038: int) returns (__ret_0_: int)
{
var c_s1037: int;
assume ((c_s1037) >= (0));
assume ((a_s1038) >= (0));
assume ((b_s1038) >= (0));
assume (((a_s1038) + (b_s1038)) >= (0));
c_s1037 := (a_s1038) + (b_s1038);
assume ((c_s1037) >= (0));
assume ((a_s1038) >= (0));
assume ((c_s1037) >= (0));
__ret_0_ := c_s1037;
return;
}

implementation safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s1038: int, b_s1038: int) returns (__ret_0_: int)
{
var c_s1037: int;
assume ((c_s1037) >= (0));
assume ((a_s1038) >= (0));
assume ((b_s1038) >= (0));
assume (((a_s1038) + (b_s1038)) >= (0));
c_s1037 := (a_s1038) + (b_s1038);
assume ((c_s1037) >= (0));
assume ((a_s1038) >= (0));
assert ((c_s1037) >= (a_s1038));
assume ((c_s1037) >= (0));
__ret_0_ := c_s1037;
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
} else if ((__tmp__DType[to]) == (IERC20Token)) {
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
} else if ((DType[to]) == (IERC20Token)) {
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
var _owner_s673: Ref;
var __ret_0_balanceOf: int;
var _to_s499: Ref;
var _value_s499: int;
var __ret_0_transfer: bool;
var _from_s577: Ref;
var _to_s577: Ref;
var _value_s577: int;
var __ret_0_transferFrom: bool;
var _spender_s688: Ref;
var _value_s688: int;
var __ret_0_approve: bool;
var _owner_s732: Ref;
var _spender_s732: Ref;
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
havoc _owner_s673;
havoc __ret_0_balanceOf;
havoc _to_s499;
havoc _value_s499;
havoc __ret_0_transfer;
havoc _from_s577;
havoc _to_s577;
havoc _value_s577;
havoc __ret_0_transferFrom;
havoc _spender_s688;
havoc _value_s688;
havoc __ret_0_approve;
havoc _owner_s732;
havoc _spender_s732;
havoc __ret_0_allowance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s673);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s732, _spender_s732);
}
}
}

implementation BoogieEntry_IERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s885: Ref;
var balance_s885: int;
var _to_s894: Ref;
var _value_s894: int;
var success_s894: bool;
var _from_s905: Ref;
var _to_s905: Ref;
var _value_s905: int;
var success_s905: bool;
var _spender_s914: Ref;
var _value_s914: int;
var success_s914: bool;
var _owner_s923: Ref;
var _spender_s923: Ref;
var remaining_s923: int;
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
havoc _owner_s885;
havoc balance_s885;
havoc _to_s894;
havoc _value_s894;
havoc success_s894;
havoc _from_s905;
havoc _to_s905;
havoc _value_s905;
havoc success_s905;
havoc _spender_s914;
havoc _value_s914;
havoc success_s914;
havoc _owner_s923;
havoc _spender_s923;
havoc remaining_s923;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s885 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s885);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s894 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s894, _value_s894);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s905 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s905, _to_s905, _value_s905);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s914 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s914, _value_s914);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s923 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s923, _spender_s923);
}
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

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s673: Ref;
var __ret_0_balanceOf: int;
var _to_s148: Ref;
var _value_s148: int;
var __ret_0_transfer: bool;
var _from_s202: Ref;
var _to_s202: Ref;
var _value_s202: int;
var __ret_0_transferFrom: bool;
var _spender_s688: Ref;
var _value_s688: int;
var __ret_0_approve: bool;
var _owner_s732: Ref;
var _spender_s732: Ref;
var __ret_0_allowance: int;
var _owners_s801: Ref;
var __ret_0_getOwners: Ref;
var _listener_s77: Ref;
var _owners_s77: Ref;
var _allowTransfers_s108: bool;
var _listener_s133: Ref;
var _to_s295: Ref;
var _value_s295: int;
var _from_s347: Ref;
var _value_s347: int;
var _spender_s388: Ref;
var _addedValue_s388: int;
var __ret_0_increaseApproval: bool;
var _spender_s448: Ref;
var _subtractedValue_s448: int;
var __ret_0_decreaseApproval: bool;
var __ret_0_finishIssuance: bool;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (ManagedToken));
call _owners_s77 := FreshRefGenerator__success();
gas := (gas) - (53000);
call ManagedToken_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s77, _owners_s77);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_ManagedToken) ==> ((manager_MultiOwnable[this]) == (null));
  // invariant (HoudiniB2_ManagedToken) ==> ((manager_MultiOwnable[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s673;
havoc __ret_0_balanceOf;
havoc _to_s148;
havoc _value_s148;
havoc __ret_0_transfer;
havoc _from_s202;
havoc _to_s202;
havoc _value_s202;
havoc __ret_0_transferFrom;
havoc _spender_s688;
havoc _value_s688;
havoc __ret_0_approve;
havoc _owner_s732;
havoc _spender_s732;
havoc __ret_0_allowance;
havoc _owners_s801;
havoc __ret_0_getOwners;
havoc _listener_s77;
havoc _owners_s77;
havoc _allowTransfers_s108;
havoc _listener_s133;
havoc _to_s295;
havoc _value_s295;
havoc _from_s347;
havoc _value_s347;
havoc _spender_s388;
havoc _addedValue_s388;
havoc __ret_0_increaseApproval;
havoc _spender_s448;
havoc _subtractedValue_s448;
havoc __ret_0_decreaseApproval;
havoc __ret_0_finishIssuance;
havoc tmpNow;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (14)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s673);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s148, _value_s148);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s202, _to_s202, _value_s202);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s732, _spender_s732);
} else if ((choice) == (9)) {
call _owners_s801 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call setAllowTransfers_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s108);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call setListener_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s133);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call issue_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s295, _value_s295);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call destroy_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s347, _value_s347);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_increaseApproval := increaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s388, _addedValue_s388);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_decreaseApproval := decreaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s448, _subtractedValue_s448);
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
var _owners_s801: Ref;
var __ret_0_getOwners: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (ManagedToken)) || ((DType[this]) == (MultiOwnable)));
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
havoc _owners_s801;
havoc __ret_0_getOwners;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
call _owners_s801 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
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
assume ((((DType[this]) == (ERC20Token)) || ((DType[this]) == (ManagedToken))) || ((DType[this]) == (SafeMath)));
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
var _owner_s673: Ref;
var __ret_0_balanceOf: int;
var _to_s499: Ref;
var _value_s499: int;
var __ret_0_transfer: bool;
var _from_s577: Ref;
var _to_s577: Ref;
var _value_s577: int;
var __ret_0_transferFrom: bool;
var _spender_s688: Ref;
var _value_s688: int;
var __ret_0_approve: bool;
var _owner_s732: Ref;
var _spender_s732: Ref;
var __ret_0_allowance: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s673;
havoc __ret_0_balanceOf;
havoc _to_s499;
havoc _value_s499;
havoc __ret_0_transfer;
havoc _from_s577;
havoc _to_s577;
havoc _value_s577;
havoc __ret_0_transferFrom;
havoc _spender_s688;
havoc _value_s688;
havoc __ret_0_approve;
havoc _owner_s732;
havoc _spender_s732;
havoc __ret_0_allowance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s673);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s499, _value_s499);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s577, _to_s577, _value_s577);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s732, _spender_s732);
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

implementation CorralChoice_IERC20Token(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s885: Ref;
var balance_s885: int;
var _to_s894: Ref;
var _value_s894: int;
var success_s894: bool;
var _from_s905: Ref;
var _to_s905: Ref;
var _value_s905: int;
var success_s905: bool;
var _spender_s914: Ref;
var _value_s914: int;
var success_s914: bool;
var _owner_s923: Ref;
var _spender_s923: Ref;
var remaining_s923: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s885;
havoc balance_s885;
havoc _to_s894;
havoc _value_s894;
havoc success_s894;
havoc _from_s905;
havoc _to_s905;
havoc _value_s905;
havoc success_s905;
havoc _spender_s914;
havoc _value_s914;
havoc success_s914;
havoc _owner_s923;
havoc _spender_s923;
havoc remaining_s923;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s885 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s885);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s894 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s894, _value_s894);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s905 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s905, _to_s905, _value_s905);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s914 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s914, _value_s914);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s923 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s923, _spender_s923);
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
var _owner_s673: Ref;
var __ret_0_balanceOf: int;
var _to_s148: Ref;
var _value_s148: int;
var __ret_0_transfer: bool;
var _from_s202: Ref;
var _to_s202: Ref;
var _value_s202: int;
var __ret_0_transferFrom: bool;
var _spender_s688: Ref;
var _value_s688: int;
var __ret_0_approve: bool;
var _owner_s732: Ref;
var _spender_s732: Ref;
var __ret_0_allowance: int;
var _owners_s801: Ref;
var __ret_0_getOwners: Ref;
var _listener_s77: Ref;
var _owners_s77: Ref;
var _allowTransfers_s108: bool;
var _listener_s133: Ref;
var _to_s295: Ref;
var _value_s295: int;
var _from_s347: Ref;
var _value_s347: int;
var _spender_s388: Ref;
var _addedValue_s388: int;
var __ret_0_increaseApproval: bool;
var _spender_s448: Ref;
var _subtractedValue_s448: int;
var __ret_0_decreaseApproval: bool;
var __ret_0_finishIssuance: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s673;
havoc __ret_0_balanceOf;
havoc _to_s148;
havoc _value_s148;
havoc __ret_0_transfer;
havoc _from_s202;
havoc _to_s202;
havoc _value_s202;
havoc __ret_0_transferFrom;
havoc _spender_s688;
havoc _value_s688;
havoc __ret_0_approve;
havoc _owner_s732;
havoc _spender_s732;
havoc __ret_0_allowance;
havoc _owners_s801;
havoc __ret_0_getOwners;
havoc _listener_s77;
havoc _owners_s77;
havoc _allowTransfers_s108;
havoc _listener_s133;
havoc _to_s295;
havoc _value_s295;
havoc _from_s347;
havoc _value_s347;
havoc _spender_s388;
havoc _addedValue_s388;
havoc __ret_0_increaseApproval;
havoc _spender_s448;
havoc _subtractedValue_s448;
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
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s673);
} else if ((choice) == (13)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s148, _value_s148);
} else if ((choice) == (12)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s202, _to_s202, _value_s202);
} else if ((choice) == (11)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s688, _value_s688);
} else if ((choice) == (10)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s732, _spender_s732);
} else if ((choice) == (9)) {
call _owners_s801 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_getOwners := getOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call setAllowTransfers_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _allowTransfers_s108);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call setListener_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s133);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call issue_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _to_s295, _value_s295);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call destroy_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _from_s347, _value_s347);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_increaseApproval := increaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s388, _addedValue_s388);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_decreaseApproval := decreaseApproval_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _spender_s448, _subtractedValue_s448);
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
var _listener_s77: Ref;
var _owners_s77: Ref;
assume ((now) >= (0));
assume ((DType[this]) == (ManagedToken));
call _owners_s77 := FreshRefGenerator__success();
gas := (gas) - (53000);
call ManagedToken_ManagedToken(this, msgsender_MSG, msgvalue_MSG, _listener_s77, _owners_s77);
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
var _owners_s801: Ref;
var __ret_0_getOwners: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owners_s801;
havoc __ret_0_getOwners;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
call _owners_s801 := FreshRefGenerator__success();
gas := (gas) - (21000);
call setOwners_MultiOwnable(this, msgsender_MSG, msgvalue_MSG, _owners_s801);
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
assume (((DType[this]) == (ManagedToken)) || ((DType[this]) == (MultiOwnable)));
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
assume ((((DType[this]) == (ERC20Token)) || ((DType[this]) == (ManagedToken))) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}


