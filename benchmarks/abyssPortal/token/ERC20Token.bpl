type Ref = int;
type ContractName = int;
var null: Ref;
var ERC20Token: ContractName;
var IERC20Token: ContractName;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
call ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var balances_ERC20Token: [Ref]Ref;
var allowed_ERC20Token: [Ref]Ref;
procedure {:public} {:inline 1} transfer_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s32: Ref, _value_s32: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies M_Ref_int;
implementation transfer_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s32: Ref, _value_s32: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
call __ret_0_ := transfer_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s32, _value_s32);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s32, _value_s32);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transfer_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s92: Ref, _value_s92: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:public} {:inline 1} transferFrom_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s110: Ref, _to_s110: Ref, _value_s110: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation transferFrom_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s110: Ref, _to_s110: Ref, _value_s110: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
call __ret_0_ := transferFrom_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s110, _to_s110, _value_s110);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s110, _to_s110, _value_s110);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transferFrom_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s194: Ref, _to_s194: Ref, _value_s194: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s206: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
implementation balanceOf_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s206: Ref) returns (__ret_0_: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
call __ret_0_ := balanceOf_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s206);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s206);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s221: Ref, _value_s221: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation approve_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s221: Ref, _value_s221: int) returns (__ret_0_: bool)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
call __ret_0_ := approve_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s221, _value_s221);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s221, _value_s221);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} approve_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s249: Ref, _value_s249: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} allowance_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref, _spender_s265: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation allowance_ERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref, _spender_s265: Ref) returns (__ret_0_: int)
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
call __ret_0_ := allowance_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s265, _spender_s265);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _owner_s265, _spender_s265);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
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
procedure {:public} {:inline 1} balanceOf_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s283: Ref) returns (balance_s283: int);
procedure {:public} {:inline 1} transfer_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s292: Ref, _value_s292: int) returns (success_s292: bool);
procedure {:public} {:inline 1} transferFrom_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s303: Ref, _to_s303: Ref, _value_s303: int) returns (success_s303: bool);
procedure {:public} {:inline 1} approve_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s312: Ref, _value_s312: int) returns (success_s312: bool);
procedure {:public} {:inline 1} allowance_IERC20Token(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s321: Ref, _spender_s321: Ref) returns (remaining_s321: int);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

// procedure {:inline 1} safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s374: int, b_s374: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s392: int, b_s392: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s412: int, b_s412: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s436: int, b_s436: int) returns (__ret_0_: int);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies revert;
modifies Balance;
procedure main();
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
modifies now;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__balances_ERC20Token: [Ref]Ref;
var __tmp__allowed_ERC20Token: [Ref]Ref;
var __tmp__name_IERC20Token: [Ref]int;
var __tmp__symbol_IERC20Token: [Ref]int;
var __tmp__decimals_IERC20Token: [Ref]int;
var __tmp__totalSupply_IERC20Token: [Ref]int;
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
procedure {:inline 1} transfer_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s32: Ref, _value_s32: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} transfer_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s32: Ref, _value_s32: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transfer_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s92: Ref, _value_s92: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transferFrom_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s110: Ref, _to_s110: Ref, _value_s110: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} transferFrom_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s110: Ref, _to_s110: Ref, _value_s110: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s194: Ref, _to_s194: Ref, _value_s194: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s206: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s206: Ref) returns (__ret_0_: int);
procedure {:inline 1} approve_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s221: Ref, _value_s221: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} approve_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s221: Ref, _value_s221: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} approve_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s249: Ref, _value_s249: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} allowance_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref, _spender_s265: Ref) returns (__ret_0_: int);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} allowance_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref, _spender_s265: Ref) returns (__ret_0_: int);
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
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
// procedure {:inline 1} safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s374: int, b_s374: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s392: int, b_s392: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s412: int, b_s412: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s436: int, b_s436: int) returns (__ret_0_: int);
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
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balances_ERC20Token;
modifies __tmp__allowed_ERC20Token;
modifies __tmp__name_IERC20Token;
modifies __tmp__symbol_IERC20Token;
modifies __tmp__decimals_IERC20Token;
modifies __tmp__totalSupply_IERC20Token;
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

implementation transfer_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s32: Ref, _value_s32: int) returns (__ret_0_: bool)
{
var __var_3: bool;
assume ((_value_s32) >= (0));
call __var_3 := transfer_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _to_s32, _value_s32);
if (revert) {
return;
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s32: Ref, _value_s32: int) returns (__ret_0_: bool)
{
var __var_3: bool;
assume ((_value_s32) >= (0));
call __var_3 := transfer_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _to_s32, _value_s32);
if (revert) {
return;
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s92: Ref, _value_s92: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
__var_4 := null;
if (!((_to_s92) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s92) >= (0));
if (!((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (_value_s92))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s92) >= (0));
if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_5 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG], _value_s92);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][msgsender_MSG] := __var_5;
assume ((__var_5) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s92]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s92]) >= (0));
assume ((_value_s92) >= (0));
if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_6 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s92], _value_s92);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s92] := __var_6;
assume ((__var_6) >= (0));
__ret_0_ := true;
return;
}

implementation transfer_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s92: Ref, _value_s92: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
__var_4 := null;
if (!((_to_s92) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s92) >= (0));
if (!((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (_value_s92))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][msgsender_MSG]) >= (0));
assume ((_value_s92) >= (0));
if ((DType[this]) == (ERC20Token)) {
call __var_5 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][msgsender_MSG], _value_s92);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][msgsender_MSG] := __var_5;
assume ((__var_5) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s92]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s92]) >= (0));
assume ((_value_s92) >= (0));
if ((DType[this]) == (ERC20Token)) {
call __var_6 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s92], _value_s92);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s92] := __var_6;
assume ((__var_6) >= (0));
assert {:EventEmitted "Transfer_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s110: Ref, _to_s110: Ref, _value_s110: int) returns (__ret_0_: bool)
{
var __var_7: bool;
assume ((_value_s110) >= (0));
call __var_7 := transferFrom_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _from_s110, _to_s110, _value_s110);
if (revert) {
return;
}
__ret_0_ := __var_7;
return;
}

implementation transferFrom_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s110: Ref, _to_s110: Ref, _value_s110: int) returns (__ret_0_: bool)
{
var __var_7: bool;
assume ((_value_s110) >= (0));
call __var_7 := transferFrom_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _from_s110, _to_s110, _value_s110);
if (revert) {
return;
}
__ret_0_ := __var_7;
return;
}

implementation transferFrom_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s194: Ref, _to_s194: Ref, _value_s194: int) returns (__ret_0_: bool)
{
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: Ref;
var __var_13: int;
var __var_14: Ref;
__var_8 := null;
if (!((_to_s194) != (null))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s194]) >= (0));
assume ((_value_s194) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]) == (null)) {
call __var_9 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194] := __var_9;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (0));
assume ((_value_s194) >= (0));
if (!(((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s194]) >= (_value_s194)) && ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (_value_s194)))) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s194]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s194]) >= (0));
assume ((_value_s194) >= (0));
if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_10 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s194], _value_s194);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_to_s194] := __var_10;
assume ((__var_10) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s194]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s194]) >= (0));
assume ((_value_s194) >= (0));
if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_11 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s194], _value_s194);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_from_s194] := __var_11;
assume ((__var_11) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]) == (null)) {
call __var_12 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194] := __var_12;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (0));
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]) == (null)) {
call __var_14 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194] := __var_14;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (0));
assume ((_value_s194) >= (0));
if ((__tmp__DType[this]) == (ERC20Token)) {
call __var_13 := safeSub_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]][msgsender_MSG], _value_s194);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_from_s194]][msgsender_MSG] := __var_13;
assume ((__var_13) >= (0));
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s194: Ref, _to_s194: Ref, _value_s194: int) returns (__ret_0_: bool)
{
var __var_8: Ref;
var __var_9: Ref;
var __var_10: int;
var __var_11: int;
var __var_12: Ref;
var __var_13: int;
var __var_14: Ref;
__var_8 := null;
if (!((_to_s194) != (null))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s194]) >= (0));
assume ((_value_s194) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]) == (null)) {
call __var_9 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s194] := __var_9;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (0));
assume ((_value_s194) >= (0));
if (!(((M_Ref_int[balances_ERC20Token[this]][_from_s194]) >= (_value_s194)) && ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (_value_s194)))) {
revert := true;
return;
}
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s194]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_to_s194]) >= (0));
assume ((_value_s194) >= (0));
if ((DType[this]) == (ERC20Token)) {
call __var_10 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_to_s194], _value_s194);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_to_s194] := __var_10;
assume ((__var_10) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s194]) >= (0));
assume ((M_Ref_int[balances_ERC20Token[this]][_from_s194]) >= (0));
assume ((_value_s194) >= (0));
if ((DType[this]) == (ERC20Token)) {
call __var_11 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[balances_ERC20Token[this]][_from_s194], _value_s194);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[balances_ERC20Token[this]][_from_s194] := __var_11;
assume ((__var_11) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]) == (null)) {
call __var_12 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s194] := __var_12;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (0));
if ((M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]) == (null)) {
call __var_14 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_from_s194] := __var_14;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]][msgsender_MSG]) >= (0));
assume ((_value_s194) >= (0));
if ((DType[this]) == (ERC20Token)) {
call __var_13 := safeSub_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]][msgsender_MSG], _value_s194);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_from_s194]][msgsender_MSG] := __var_13;
assume ((__var_13) >= (0));
assert {:EventEmitted "Transfer_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation balanceOf_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s206: Ref) returns (__ret_0_: int)
{
assume ((__tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_owner_s206]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__balances_ERC20Token[this]][_owner_s206];
return;
}

implementation balanceOf_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s206: Ref) returns (__ret_0_: int)
{
assume ((M_Ref_int[balances_ERC20Token[this]][_owner_s206]) >= (0));
__ret_0_ := M_Ref_int[balances_ERC20Token[this]][_owner_s206];
return;
}

implementation approve_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s221: Ref, _value_s221: int) returns (__ret_0_: bool)
{
var __var_15: bool;
assume ((_value_s221) >= (0));
call __var_15 := approve_ERC20Token_ERC20Token__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s221, _value_s221);
if (revert) {
return;
}
__ret_0_ := __var_15;
return;
}

implementation approve_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s221: Ref, _value_s221: int) returns (__ret_0_: bool)
{
var __var_15: bool;
assume ((_value_s221) >= (0));
call __var_15 := approve_ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG, _spender_s221, _value_s221);
if (revert) {
return;
}
__ret_0_ := __var_15;
return;
}

implementation approve_ERC20Token_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s249: Ref, _value_s249: int) returns (__ret_0_: bool)
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
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s249]) >= (0));
assume ((_value_s249) >= (0));
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][msgsender_MSG]][_spender_s249] := _value_s249;
__ret_0_ := true;
return;
}

implementation approve_ERC20Token_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s249: Ref, _value_s249: int) returns (__ret_0_: bool)
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
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s249]) >= (0));
assume ((_value_s249) >= (0));
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][msgsender_MSG]][_spender_s249] := _value_s249;
assert {:EventEmitted "Approval_ERC20Token"} (true);
__ret_0_ := true;
return;
}

implementation allowance_ERC20Token__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref, _spender_s265: Ref) returns (__ret_0_: int)
{
var __var_17: Ref;
if ((__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s265]) == (null)) {
call __var_17 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s265] := __var_17;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s265]] := zeroRefIntArr();
}
assume ((__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s265]][_spender_s265]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp__allowed_ERC20Token[this]][_owner_s265]][_spender_s265];
return;
}

implementation allowance_ERC20Token__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref, _spender_s265: Ref) returns (__ret_0_: int)
{
var __var_17: Ref;
if ((M_Ref_Ref[allowed_ERC20Token[this]][_owner_s265]) == (null)) {
call __var_17 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[allowed_ERC20Token[this]][_owner_s265] := __var_17;
M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s265]] := zeroRefIntArr();
}
assume ((M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s265]][_spender_s265]) >= (0));
__ret_0_ := M_Ref_int[M_Ref_Ref[allowed_ERC20Token[this]][_owner_s265]][_spender_s265];
return;
}

implementation IERC20Token_IERC20Token_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__name_IERC20Token[this] := -1889466476;
__tmp__symbol_IERC20Token[this] := -1889466476;
__tmp__decimals_IERC20Token[this] := 0;
__tmp__totalSupply_IERC20Token[this] := 0;
// end of initialization
}

implementation IERC20Token_IERC20Token_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
name_IERC20Token[this] := -1889466476;
symbol_IERC20Token[this] := -1889466476;
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

// implementation safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s374: int, b_s374: int) returns (__ret_0_: int)
// {
// var c_s373: int;
// assume ((c_s373) >= (0));
// assume ((a_s374) >= (0));
// assume ((b_s374) >= (0));
// assume (((a_s374) * (b_s374)) >= (0));
// c_s373 := (a_s374) * (b_s374);
// assume ((a_s374) >= (0));
// assume ((c_s373) >= (0));
// assume ((a_s374) >= (0));
// assume (((c_s373) / (a_s374)) >= (0));
// assume ((b_s374) >= (0));
// assume ((c_s373) >= (0));
// __ret_0_ := c_s373;
// return;
// }

// implementation safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s374: int, b_s374: int) returns (__ret_0_: int)
// {
// var c_s373: int;
// assume ((c_s373) >= (0));
// assume ((a_s374) >= (0));
// assume ((b_s374) >= (0));
// assume (((a_s374) * (b_s374)) >= (0));
// c_s373 := (a_s374) * (b_s374);
// assume ((a_s374) >= (0));
// assume ((c_s373) >= (0));
// assume ((a_s374) >= (0));
// assume (((c_s373) / (a_s374)) >= (0));
// assume ((b_s374) >= (0));
// assert (((a_s374) == (0)) || (((c_s373) / (a_s374)) == (b_s374)));
// assume ((c_s373) >= (0));
// __ret_0_ := c_s373;
// return;
// }

// implementation safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s392: int, b_s392: int) returns (__ret_0_: int)
// {
// var c_s391: int;
// assume ((c_s391) >= (0));
// assume ((a_s392) >= (0));
// assume ((b_s392) >= (0));
// assume (((a_s392) / (b_s392)) >= (0));
// c_s391 := (a_s392) / (b_s392);
// assume ((c_s391) >= (0));
// __ret_0_ := c_s391;
// return;
// }

// implementation safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s392: int, b_s392: int) returns (__ret_0_: int)
// {
// var c_s391: int;
// assume ((c_s391) >= (0));
// assume ((a_s392) >= (0));
// assume ((b_s392) >= (0));
// assume (((a_s392) / (b_s392)) >= (0));
// c_s391 := (a_s392) / (b_s392);
// assume ((c_s391) >= (0));
// __ret_0_ := c_s391;
// return;
// }

implementation safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s412: int, b_s412: int) returns (__ret_0_: int)
{
assume ((a_s412) >= (0));
assume ((b_s412) >= (0));
assume ((a_s412) >= (0));
assume ((b_s412) >= (0));
assume (((a_s412) - (b_s412)) >= (0));
__ret_0_ := (a_s412) - (b_s412);
return;
}

implementation safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s412: int, b_s412: int) returns (__ret_0_: int)
{
assume ((a_s412) >= (0));
assume ((b_s412) >= (0));
assert ((a_s412) >= (b_s412));
assume ((a_s412) >= (0));
assume ((b_s412) >= (0));
assume (((a_s412) - (b_s412)) >= (0));
__ret_0_ := (a_s412) - (b_s412);
return;
}

implementation safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s436: int, b_s436: int) returns (__ret_0_: int)
{
var c_s435: int;
assume ((c_s435) >= (0));
assume ((a_s436) >= (0));
assume ((b_s436) >= (0));
assume (((a_s436) + (b_s436)) >= (0));
c_s435 := (a_s436) + (b_s436);
assume ((c_s435) >= (0));
assume ((a_s436) >= (0));
assume ((c_s435) >= (0));
__ret_0_ := c_s435;
return;
}

implementation safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s436: int, b_s436: int) returns (__ret_0_: int)
{
var c_s435: int;
assume ((c_s435) >= (0));
assume ((a_s436) >= (0));
assume ((b_s436) >= (0));
assume (((a_s436) + (b_s436)) >= (0));
c_s435 := (a_s436) + (b_s436);
assume ((c_s435) >= (0));
assume ((a_s436) >= (0));
assert ((c_s435) >= (a_s436));
assume ((c_s435) >= (0));
__ret_0_ := c_s435;
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (SafeMath)) {
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
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__balances_ERC20Token: [Ref]Ref;
var __snap___tmp__allowed_ERC20Token: [Ref]Ref;
var __snap___tmp__name_IERC20Token: [Ref]int;
var __snap___tmp__symbol_IERC20Token: [Ref]int;
var __snap___tmp__decimals_IERC20Token: [Ref]int;
var __snap___tmp__totalSupply_IERC20Token: [Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__balances_ERC20Token := __tmp__balances_ERC20Token;
__snap___tmp__allowed_ERC20Token := __tmp__allowed_ERC20Token;
__snap___tmp__name_IERC20Token := __tmp__name_IERC20Token;
__snap___tmp__symbol_IERC20Token := __tmp__symbol_IERC20Token;
__snap___tmp__decimals_IERC20Token := __tmp__decimals_IERC20Token;
__snap___tmp__totalSupply_IERC20Token := __tmp__totalSupply_IERC20Token;
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
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__balances_ERC20Token := __snap___tmp__balances_ERC20Token;
__tmp__allowed_ERC20Token := __snap___tmp__allowed_ERC20Token;
__tmp__name_IERC20Token := __snap___tmp__name_IERC20Token;
__tmp__symbol_IERC20Token := __snap___tmp__symbol_IERC20Token;
__tmp__decimals_IERC20Token := __snap___tmp__decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := __snap___tmp__totalSupply_IERC20Token;
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
__tmp__Length := Length;
__tmp__now := now;
__tmp__balances_ERC20Token := balances_ERC20Token;
__tmp__allowed_ERC20Token := allowed_ERC20Token;
__tmp__name_IERC20Token := name_IERC20Token;
__tmp__symbol_IERC20Token := symbol_IERC20Token;
__tmp__decimals_IERC20Token := decimals_IERC20Token;
__tmp__totalSupply_IERC20Token := totalSupply_IERC20Token;
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

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s206: Ref;
var __ret_0_balanceOf: int;
var _to_s32: Ref;
var _value_s32: int;
var __ret_0_transfer: bool;
var _from_s110: Ref;
var _to_s110: Ref;
var _value_s110: int;
var __ret_0_transferFrom: bool;
var _spender_s221: Ref;
var _value_s221: int;
var __ret_0_approve: bool;
var _owner_s265: Ref;
var _spender_s265: Ref;
var __ret_0_allowance: int;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (ERC20Token));
gas := (gas) - (53000);
call ERC20Token_ERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s206;
havoc __ret_0_balanceOf;
havoc _to_s32;
havoc _value_s32;
havoc __ret_0_transfer;
havoc _from_s110;
havoc _to_s110;
havoc _value_s110;
havoc __ret_0_transferFrom;
havoc _spender_s221;
havoc _value_s221;
havoc __ret_0_approve;
havoc _owner_s265;
havoc _spender_s265;
havoc __ret_0_allowance;
havoc tmpNow;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s206);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s32, _value_s32);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s110, _to_s110, _value_s110);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s221, _value_s221);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s265, _spender_s265);
}
}
}

implementation BoogieEntry_IERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s283: Ref;
var balance_s283: int;
var _to_s292: Ref;
var _value_s292: int;
var success_s292: bool;
var _from_s303: Ref;
var _to_s303: Ref;
var _value_s303: int;
var success_s303: bool;
var _spender_s312: Ref;
var _value_s312: int;
var success_s312: bool;
var _owner_s321: Ref;
var _spender_s321: Ref;
var remaining_s321: int;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Token)) || ((DType[this]) == (IERC20Token)));
gas := (gas) - (53000);
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s283;
havoc balance_s283;
havoc _to_s292;
havoc _value_s292;
havoc success_s292;
havoc _from_s303;
havoc _to_s303;
havoc _value_s303;
havoc success_s303;
havoc _spender_s312;
havoc _value_s312;
havoc success_s312;
havoc _owner_s321;
havoc _spender_s321;
havoc remaining_s321;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s283 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s283);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s292 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s292, _value_s292);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s303 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s303, _to_s303, _value_s303);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s312 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s312, _value_s312);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s321 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s321, _spender_s321);
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
assume (((DType[this]) == (ERC20Token)) || ((DType[this]) == (SafeMath)));
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
var _owner_s206: Ref;
var __ret_0_balanceOf: int;
var _to_s32: Ref;
var _value_s32: int;
var __ret_0_transfer: bool;
var _from_s110: Ref;
var _to_s110: Ref;
var _value_s110: int;
var __ret_0_transferFrom: bool;
var _spender_s221: Ref;
var _value_s221: int;
var __ret_0_approve: bool;
var _owner_s265: Ref;
var _spender_s265: Ref;
var __ret_0_allowance: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s206;
havoc __ret_0_balanceOf;
havoc _to_s32;
havoc _value_s32;
havoc __ret_0_transfer;
havoc _from_s110;
havoc _to_s110;
havoc _value_s110;
havoc __ret_0_transferFrom;
havoc _spender_s221;
havoc _value_s221;
havoc __ret_0_approve;
havoc _owner_s265;
havoc _spender_s265;
havoc __ret_0_allowance;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s206);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s32, _value_s32);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s110, _to_s110, _value_s110);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s221, _value_s221);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s265, _spender_s265);
}
}

implementation CorralEntry_ERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (ERC20Token));
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
var _owner_s283: Ref;
var balance_s283: int;
var _to_s292: Ref;
var _value_s292: int;
var success_s292: bool;
var _from_s303: Ref;
var _to_s303: Ref;
var _value_s303: int;
var success_s303: bool;
var _spender_s312: Ref;
var _value_s312: int;
var success_s312: bool;
var _owner_s321: Ref;
var _spender_s321: Ref;
var remaining_s321: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s283;
havoc balance_s283;
havoc _to_s292;
havoc _value_s292;
havoc success_s292;
havoc _from_s303;
havoc _to_s303;
havoc _value_s303;
havoc success_s303;
havoc _spender_s312;
havoc _value_s312;
havoc success_s312;
havoc _owner_s321;
havoc _spender_s321;
havoc remaining_s321;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (5)) {
gas := (gas) - (21000);
call balance_s283 := balanceOf_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s283);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call success_s292 := transfer_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _to_s292, _value_s292);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call success_s303 := transferFrom_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _from_s303, _to_s303, _value_s303);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call success_s312 := approve_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _spender_s312, _value_s312);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call remaining_s321 := allowance_IERC20Token(this, msgsender_MSG, msgvalue_MSG, _owner_s321, _spender_s321);
}
}

implementation CorralEntry_IERC20Token()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (ERC20Token)) || ((DType[this]) == (IERC20Token)));
gas := (gas) - (53000);
call IERC20Token_IERC20Token__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IERC20Token(this);
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
assume (((DType[this]) == (ERC20Token)) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}


