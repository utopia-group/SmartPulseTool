// #LTLFairness: [](<>(call(ERC20.transfer) {}))
// #LTLProperty: [](call(ERC20.transfer(recipient, amount)) {amount <= ERC20.balanceOf(msg.sender) && ERC20.balanceOf(msg.sender) > 0 && recipient != null} ==> <>(success(ERC20.transfer) {}))

type Ref = int;
type ContractName = int;

var null: Ref;
var Context: ContractName;
var ERC20: ContractName;
var IERC20: ContractName;
var SafeMath: ContractName;
// const unique null: Ref;
// const unique Context: ContractName;
// const unique ERC20: ContractName;
// const unique IERC20: ContractName;
// const unique SafeMath: ContractName;

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
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _totalSupply_ERC20;
modifies _balances_ERC20;
modifies M_Ref_int;
modifies _allowances_ERC20;
modifies M_Ref_Ref;
modifies Alloc;
procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies _totalSupply_ERC20;
modifies _balances_ERC20;
modifies M_Ref_int;
modifies _allowances_ERC20;
modifies M_Ref_Ref;
modifies Alloc;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var _balances_ERC20: [Ref]Ref;
var _allowances_ERC20: [Ref]Ref;
var _totalSupply_ERC20: [Ref]int;
procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
implementation totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s43: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s43: Ref) returns (__ret_0_: int)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s43);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s43);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s58: Ref, amount_s58: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_int;
implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s58: Ref, amount_s58: int) returns (__ret_0_: bool)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s58, amount_s58);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s58, amount_s58);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transfer_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s77: Ref, amount_s77: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:public} {:inline 1} allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s93: Ref, spender_s93: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s93: Ref, spender_s93: Ref) returns (__ret_0_: int)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s93, spender_s93);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s93, spender_s93);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s108: Ref, amount_s108: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s108: Ref, amount_s108: int) returns (__ret_0_: bool)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s108, amount_s108);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s108, amount_s108);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} approve_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s127: Ref, amount_s127: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s145: Ref, recipient_s145: Ref, amount_s145: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s145: Ref, recipient_s145: Ref, amount_s145: int) returns (__ret_0_: bool)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s145, recipient_s145, amount_s145);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s145, recipient_s145, amount_s145);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} transferFrom_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s180: Ref, recipient_s180: Ref, amount_s180: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies revert;
modifies Alloc;
procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s195: Ref, addedValue_s195: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation increaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s195: Ref, addedValue_s195: int) returns (__ret_0_: bool)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s195, addedValue_s195);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s195, addedValue_s195);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} increaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s222: Ref, addedValue_s222: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
modifies revert;
procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s237: Ref, subtractedValue_s237: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
implementation decreaseAllowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s237: Ref, subtractedValue_s237: int) returns (__ret_0_: bool)
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s237, subtractedValue_s237);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s237, subtractedValue_s237);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} decreaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s264: Ref, subtractedValue_s264: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
modifies revert;
procedure {:inline 1} _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s320: Ref, recipient_s320: Ref, amount_s320: int);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} _mint_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s333: Ref, amount_s333: int);
modifies revert;
modifies _totalSupply_ERC20;
modifies M_Ref_int;
procedure {:inline 1} _mint_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s376: Ref, amount_s376: int);
modifies revert;
modifies _totalSupply_ERC20;
modifies M_Ref_int;
procedure {:inline 1} _burn_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s419: Ref, amount_s419: int);
modifies revert;
modifies M_Ref_int;
modifies _totalSupply_ERC20;
procedure {:inline 1} _approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s461: Ref, spender_s461: Ref, amount_s461: int);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s489: Ref, amount_s489: int);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies revert;
modifies _totalSupply_ERC20;
modifies Alloc;
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
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
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__Length := Length;
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s520: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s529: Ref, amount_s529: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s538: Ref, spender_s538: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s547: Ref, amount_s547: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s558: Ref, recipient_s558: Ref, amount_s558: int) returns (__ret_0_: bool);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s602: int, b_s602: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s627: int, b_s627: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s686: int, b_s686: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s707: int, b_s707: int) returns (__ret_0_: int);
// modifies revert;
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
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies revert;
modifies Balance;
procedure BoogieEntry_Context();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
procedure main();
modifies gas;
modifies _totalSupply_ERC20;
modifies _balances_ERC20;
modifies M_Ref_int;
modifies _allowances_ERC20;
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
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
procedure BoogieEntry_IERC20();
modifies gas;
procedure BoogieEntry_SafeMath();
modifies gas;
procedure CorralChoice_Context(this: Ref);
modifies gas;
procedure CorralEntry_Context();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
procedure CorralChoice_ERC20(this: Ref);
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Length;
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure CorralEntry_ERC20();
modifies gas;
modifies _totalSupply_ERC20;
modifies _balances_ERC20;
modifies M_Ref_int;
modifies _allowances_ERC20;
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
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
procedure CorralChoice_IERC20(this: Ref);
modifies gas;
procedure CorralEntry_IERC20();
modifies gas;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
procedure CorralEntry_SafeMath();
modifies gas;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __tmp__Length: [Ref]int;
var __tmp___balances_ERC20: [Ref]Ref;
var __tmp___allowances_ERC20: [Ref]Ref;
var __tmp___totalSupply_ERC20: [Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___totalSupply_ERC20;
modifies __tmp___balances_ERC20;
modifies __tmp__M_Ref_int;
modifies __tmp___allowances_ERC20;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Alloc;
procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies _totalSupply_ERC20;
modifies _balances_ERC20;
modifies M_Ref_int;
modifies _allowances_ERC20;
modifies M_Ref_Ref;
modifies Alloc;
procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp___totalSupply_ERC20;
modifies __tmp___balances_ERC20;
modifies __tmp__M_Ref_int;
modifies __tmp___allowances_ERC20;
modifies __tmp__M_Ref_Ref;
modifies __tmp__Alloc;
procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s43: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s43: Ref) returns (__ret_0_: int);
procedure {:inline 1} transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s58: Ref, amount_s58: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s58: Ref, amount_s58: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} transfer_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s77: Ref, amount_s77: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} allowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s93: Ref, spender_s93: Ref) returns (__ret_0_: int);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} allowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s93: Ref, spender_s93: Ref) returns (__ret_0_: int);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s108: Ref, amount_s108: int) returns (__ret_0_: bool);
modifies revert;
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
procedure {:inline 1} approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s108: Ref, amount_s108: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} approve_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s127: Ref, amount_s127: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s145: Ref, recipient_s145: Ref, amount_s145: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies revert;
modifies Alloc;
procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s145: Ref, recipient_s145: Ref, amount_s145: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies revert;
modifies __tmp__Alloc;
procedure {:inline 1} transferFrom_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s180: Ref, recipient_s180: Ref, amount_s180: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies revert;
modifies __tmp__Alloc;
procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s195: Ref, addedValue_s195: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
modifies revert;
procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s195: Ref, addedValue_s195: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} increaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s222: Ref, addedValue_s222: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s237: Ref, subtractedValue_s237: int) returns (__ret_0_: bool);
modifies M_Ref_Ref;
modifies M_Ref_int;
modifies Alloc;
modifies revert;
procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s237: Ref, subtractedValue_s237: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} decreaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s264: Ref, subtractedValue_s264: int) returns (__ret_0_: bool);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
modifies revert;
procedure {:inline 1} _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s320: Ref, recipient_s320: Ref, amount_s320: int);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} _mint_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s333: Ref, amount_s333: int);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__M_Ref_int;
procedure {:inline 1} _mint_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s376: Ref, amount_s376: int);
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__M_Ref_int;
procedure {:inline 1} _burn_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s419: Ref, amount_s419: int);
modifies revert;
modifies __tmp__M_Ref_int;
modifies __tmp___totalSupply_ERC20;
procedure {:inline 1} _approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s461: Ref, spender_s461: Ref, amount_s461: int);
modifies revert;
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies __tmp__Alloc;
procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s489: Ref, amount_s489: int);
modifies __tmp__M_Ref_Ref;
modifies __tmp__M_Ref_int;
modifies revert;
modifies __tmp___totalSupply_ERC20;
modifies __tmp__Alloc;
procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s602: int, b_s602: int) returns (__ret_0_: int);
modifies revert;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s627: int, b_s627: int) returns (__ret_0_: int);
modifies revert;
// procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s686: int, b_s686: int) returns (__ret_0_: int);
// modifies revert;
// procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s707: int, b_s707: int) returns (__ret_0_: int);
// modifies revert;
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
modifies __tmp___balances_ERC20;
modifies __tmp___allowances_ERC20;
modifies __tmp___totalSupply_ERC20;
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

implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp___totalSupply_ERC20[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_1 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___balances_ERC20[this] := __var_1;
// Initialize Integer mapping _balances
__tmp__M_Ref_int[__tmp___balances_ERC20[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for _allowances
call __var_2 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp___allowances_ERC20[this] := __var_2;
// Initialize length of 1-level nested array in _allowances
__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]] := zeroRefRefArr();
// end of initialization
}

implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
_totalSupply_ERC20[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_1 := FreshRefGenerator__success();
if (revert) {
return;
}
_balances_ERC20[this] := __var_1;
// Initialize Integer mapping _balances
M_Ref_int[_balances_ERC20[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for _allowances
call __var_2 := FreshRefGenerator__success();
if (revert) {
return;
}
_allowances_ERC20[this] := __var_2;
// Initialize length of 1-level nested array in _allowances
M_Ref_Ref[_allowances_ERC20[this]] := zeroRefRefArr();
// end of initialization
}

implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := __tmp___totalSupply_ERC20[this];
return;
}

implementation totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := _totalSupply_ERC20[this];
return;
}

implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s43: Ref) returns (__ret_0_: int)
{
__ret_0_ := __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s43];
return;
}

implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s43: Ref) returns (__ret_0_: int)
{
__ret_0_ := M_Ref_int[_balances_ERC20[this]][account_s43];
return;
}

implementation transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s58: Ref, amount_s58: int) returns (__ret_0_: bool)
{
var __var_3: bool;
call __var_3 := transfer_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s58, amount_s58);
if (revert) {
return;
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s58: Ref, amount_s58: int) returns (__ret_0_: bool)
{
var __var_3: bool;
call __var_3 := transfer_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s58, amount_s58);
if (revert) {
return;
}
__ret_0_ := __var_3;
return;
}

implementation transfer_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s77: Ref, amount_s77: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
if ((__tmp__DType[this]) == (ERC20)) {
call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s77, amount_s77);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation transfer_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s77: Ref, amount_s77: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
if ((DType[this]) == (ERC20)) {
call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_4, recipient_s77, amount_s77);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation allowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s93: Ref, spender_s93: Ref) returns (__ret_0_: int)
{
var __var_5: Ref;
if ((__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s93]) == (null)) {
call __var_5 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s93] := __var_5;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s93]] := zeroRefIntArr();
}
__ret_0_ := __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s93]][spender_s93];
return;
}

implementation allowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s93: Ref, spender_s93: Ref) returns (__ret_0_: int)
{
var __var_5: Ref;
if ((M_Ref_Ref[_allowances_ERC20[this]][owner_s93]) == (null)) {
call __var_5 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[_allowances_ERC20[this]][owner_s93] := __var_5;
M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s93]] := zeroRefIntArr();
}
__ret_0_ := M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s93]][spender_s93];
return;
}

implementation approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s108: Ref, amount_s108: int) returns (__ret_0_: bool)
{
var __var_6: bool;
call __var_6 := approve_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s108, amount_s108);
if (revert) {
return;
}
__ret_0_ := __var_6;
return;
}

implementation approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s108: Ref, amount_s108: int) returns (__ret_0_: bool)
{
var __var_6: bool;
call __var_6 := approve_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s108, amount_s108);
if (revert) {
return;
}
__ret_0_ := __var_6;
return;
}

implementation approve_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s127: Ref, amount_s127: int) returns (__ret_0_: bool)
{
var __var_7: Ref;
if ((__tmp__DType[this]) == (ERC20)) {
call __var_7 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_7, spender_s127, amount_s127);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation approve_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s127: Ref, amount_s127: int) returns (__ret_0_: bool)
{
var __var_7: Ref;
if ((DType[this]) == (ERC20)) {
call __var_7 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_7, spender_s127, amount_s127);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s145: Ref, recipient_s145: Ref, amount_s145: int) returns (__ret_0_: bool)
{
var __var_8: bool;
call __var_8 := transferFrom_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s145, recipient_s145, amount_s145);
if (revert) {
return;
}
__ret_0_ := __var_8;
return;
}

implementation transferFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s145: Ref, recipient_s145: Ref, amount_s145: int) returns (__ret_0_: bool)
{
var __var_8: bool;
call __var_8 := transferFrom_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s145, recipient_s145, amount_s145);
if (revert) {
return;
}
__ret_0_ := __var_8;
return;
}

implementation transferFrom_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s180: Ref, recipient_s180: Ref, amount_s180: int) returns (__ret_0_: bool)
{
var __var_9: Ref;
var __var_10: int;
var __var_11: Ref;
var __var_12: Ref;
call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s180, recipient_s180, amount_s180);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ERC20)) {
call __var_9 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (ERC20)) {
call __var_11 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s180]) == (null)) {
call __var_12 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s180] := __var_12;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s180]] := zeroRefIntArr();
}
call __var_10 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][sender_s180]][__var_11], amount_s180);
if (revert) {
return;
}
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sender_s180, __var_9, __var_10);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation transferFrom_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s180: Ref, recipient_s180: Ref, amount_s180: int) returns (__ret_0_: bool)
{
var __var_9: Ref;
var __var_10: int;
var __var_11: Ref;
var __var_12: Ref;
call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s180, recipient_s180, amount_s180);
if (revert) {
return;
}
if ((DType[this]) == (ERC20)) {
call __var_9 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (ERC20)) {
call __var_11 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref[_allowances_ERC20[this]][sender_s180]) == (null)) {
call __var_12 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[_allowances_ERC20[this]][sender_s180] := __var_12;
M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][sender_s180]] := zeroRefIntArr();
}
call __var_10 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][sender_s180]][__var_11], amount_s180);
if (revert) {
return;
}
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sender_s180, __var_9, __var_10);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation increaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s195: Ref, addedValue_s195: int) returns (__ret_0_: bool)
{
var __var_13: bool;
call __var_13 := increaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s195, addedValue_s195);
if (revert) {
return;
}
__ret_0_ := __var_13;
return;
}

implementation increaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s195: Ref, addedValue_s195: int) returns (__ret_0_: bool)
{
var __var_13: bool;
call __var_13 := increaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s195, addedValue_s195);
if (revert) {
return;
}
__ret_0_ := __var_13;
return;
}

implementation increaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s222: Ref, addedValue_s222: int) returns (__ret_0_: bool)
{
var __var_14: Ref;
var __var_15: int;
var __var_16: Ref;
var __var_17: Ref;
if ((__tmp__DType[this]) == (ERC20)) {
call __var_14 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (ERC20)) {
call __var_16 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_16]) == (null)) {
call __var_17 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_16] := __var_17;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_16]] := zeroRefIntArr();
}
call __var_15 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_16]][spender_s222], addedValue_s222);
if (revert) {
return;
}
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_14, spender_s222, __var_15);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation increaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s222: Ref, addedValue_s222: int) returns (__ret_0_: bool)
{
var __var_14: Ref;
var __var_15: int;
var __var_16: Ref;
var __var_17: Ref;
if ((DType[this]) == (ERC20)) {
call __var_14 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (ERC20)) {
call __var_16 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref[_allowances_ERC20[this]][__var_16]) == (null)) {
call __var_17 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[_allowances_ERC20[this]][__var_16] := __var_17;
M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_16]] := zeroRefIntArr();
}
call __var_15 := add_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_16]][spender_s222], addedValue_s222);
if (revert) {
return;
}
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_14, spender_s222, __var_15);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation decreaseAllowance_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s237: Ref, subtractedValue_s237: int) returns (__ret_0_: bool)
{
var __var_18: bool;
call __var_18 := decreaseAllowance_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s237, subtractedValue_s237);
if (revert) {
return;
}
__ret_0_ := __var_18;
return;
}

implementation decreaseAllowance_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s237: Ref, subtractedValue_s237: int) returns (__ret_0_: bool)
{
var __var_18: bool;
call __var_18 := decreaseAllowance_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s237, subtractedValue_s237);
if (revert) {
return;
}
__ret_0_ := __var_18;
return;
}

implementation decreaseAllowance_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s264: Ref, subtractedValue_s264: int) returns (__ret_0_: bool)
{
var __var_19: Ref;
var __var_20: int;
var __var_21: Ref;
var __var_22: Ref;
if ((__tmp__DType[this]) == (ERC20)) {
call __var_19 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (ERC20)) {
call __var_21 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_21]) == (null)) {
call __var_22 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_21] := __var_22;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_21]] := zeroRefIntArr();
}
call __var_20 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][__var_21]][spender_s264], subtractedValue_s264);
if (revert) {
return;
}
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __var_19, spender_s264, __var_20);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation decreaseAllowance_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s264: Ref, subtractedValue_s264: int) returns (__ret_0_: bool)
{
var __var_19: Ref;
var __var_20: int;
var __var_21: Ref;
var __var_22: Ref;
if ((DType[this]) == (ERC20)) {
call __var_19 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (ERC20)) {
call __var_21 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref[_allowances_ERC20[this]][__var_21]) == (null)) {
call __var_22 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[_allowances_ERC20[this]][__var_21] := __var_22;
M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_21]] := zeroRefIntArr();
}
call __var_20 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][__var_21]][spender_s264], subtractedValue_s264);
if (revert) {
return;
}
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, __var_19, spender_s264, __var_20);
if (revert) {
return;
}
__ret_0_ := true;
return;
}

implementation _transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s320: Ref, recipient_s320: Ref, amount_s320: int)
{
var __var_23: Ref;
var __var_24: Ref;
var __var_25: int;
var __var_26: int;
__var_23 := null;
if (!((sender_s320) != (null))) {
revert := true;
return;
}
__var_24 := null;
if (!((recipient_s320) != (null))) {
revert := true;
return;
}
call __var_25 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s320], amount_s320);
if (revert) {
return;
}
__tmp__M_Ref_int[__tmp___balances_ERC20[this]][sender_s320] := __var_25;
call __var_26 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s320], amount_s320);
if (revert) {
return;
}
__tmp__M_Ref_int[__tmp___balances_ERC20[this]][recipient_s320] := __var_26;
}

implementation _transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s320: Ref, recipient_s320: Ref, amount_s320: int)
{
var __var_23: Ref;
var __var_24: Ref;
var __var_25: int;
var __var_26: int;
__var_23 := null;
if (!((sender_s320) != (null))) {
revert := true;
return;
}
__var_24 := null;
if (!((recipient_s320) != (null))) {
revert := true;
return;
}
call __var_25 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][sender_s320], amount_s320);
if (revert) {
return;
}
M_Ref_int[_balances_ERC20[this]][sender_s320] := __var_25;
call __var_26 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][recipient_s320], amount_s320);
if (revert) {
return;
}
M_Ref_int[_balances_ERC20[this]][recipient_s320] := __var_26;
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _mint_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s333: Ref, amount_s333: int)
{
call _mint_ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s333, amount_s333);
if (revert) {
return;
}
}

implementation _mint_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s333: Ref, amount_s333: int)
{
call _mint_ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s333, amount_s333);
if (revert) {
return;
}
}

implementation _mint_ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s376: Ref, amount_s376: int)
{
var __var_27: Ref;
var __var_28: int;
var __var_29: int;
__var_27 := null;
if (!((account_s376) != (null))) {
revert := true;
return;
}
call __var_28 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s376);
if (revert) {
return;
}
__tmp___totalSupply_ERC20[this] := __var_28;
call __var_29 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s376], amount_s376);
if (revert) {
return;
}
__tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s376] := __var_29;
}

implementation _mint_ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s376: Ref, amount_s376: int)
{
var __var_27: Ref;
var __var_28: int;
var __var_29: int;
__var_27 := null;
if (!((account_s376) != (null))) {
revert := true;
return;
}
call __var_28 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s376);
if (revert) {
return;
}
_totalSupply_ERC20[this] := __var_28;
call __var_29 := add_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s376], amount_s376);
if (revert) {
return;
}
M_Ref_int[_balances_ERC20[this]][account_s376] := __var_29;
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _burn_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s419: Ref, amount_s419: int)
{
var __var_30: Ref;
var __var_31: int;
var __var_32: int;
__var_30 := null;
if (!((account_s419) != (null))) {
revert := true;
return;
}
call __var_31 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s419], amount_s419);
if (revert) {
return;
}
__tmp__M_Ref_int[__tmp___balances_ERC20[this]][account_s419] := __var_31;
call __var_32 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], amount_s419);
if (revert) {
return;
}
__tmp___totalSupply_ERC20[this] := __var_32;
}

implementation _burn_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s419: Ref, amount_s419: int)
{
var __var_30: Ref;
var __var_31: int;
var __var_32: int;
__var_30 := null;
if (!((account_s419) != (null))) {
revert := true;
return;
}
call __var_31 := sub_SafeMath__success(this, this, 0, M_Ref_int[_balances_ERC20[this]][account_s419], amount_s419);
if (revert) {
return;
}
M_Ref_int[_balances_ERC20[this]][account_s419] := __var_31;
call __var_32 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], amount_s419);
if (revert) {
return;
}
_totalSupply_ERC20[this] := __var_32;
assert {:EventEmitted "Transfer_ERC20"} (true);
}

implementation _approve_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s461: Ref, spender_s461: Ref, amount_s461: int)
{
var __var_33: Ref;
var __var_34: Ref;
var __var_35: Ref;
__var_33 := null;
if (!((owner_s461) != (null))) {
revert := true;
return;
}
__var_34 := null;
if (!((spender_s461) != (null))) {
revert := true;
return;
}
if ((__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s461]) == (null)) {
call __var_35 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s461] := __var_35;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s461]] := zeroRefIntArr();
}
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][owner_s461]][spender_s461] := amount_s461;
}

implementation _approve_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s461: Ref, spender_s461: Ref, amount_s461: int)
{
var __var_33: Ref;
var __var_34: Ref;
var __var_35: Ref;
__var_33 := null;
if (!((owner_s461) != (null))) {
revert := true;
return;
}
__var_34 := null;
if (!((spender_s461) != (null))) {
revert := true;
return;
}
if ((M_Ref_Ref[_allowances_ERC20[this]][owner_s461]) == (null)) {
call __var_35 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[_allowances_ERC20[this]][owner_s461] := __var_35;
M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s461]] := zeroRefIntArr();
}
M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][owner_s461]][spender_s461] := amount_s461;
assert {:EventEmitted "Approval_ERC20"} (true);
}

implementation _burnFrom_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s489: Ref, amount_s489: int)
{
var __var_36: Ref;
var __var_37: int;
var __var_38: Ref;
var __var_39: Ref;
call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s489, amount_s489);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ERC20)) {
call __var_36 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__DType[this]) == (ERC20)) {
call __var_38 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s489]) == (null)) {
call __var_39 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s489] := __var_39;
__tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s489]] := zeroRefIntArr();
}
call __var_37 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp__M_Ref_Ref[__tmp___allowances_ERC20[this]][account_s489]][__var_38], amount_s489);
if (revert) {
return;
}
call _approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s489, __var_36, __var_37);
if (revert) {
return;
}
}

implementation _burnFrom_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s489: Ref, amount_s489: int)
{
var __var_36: Ref;
var __var_37: int;
var __var_38: Ref;
var __var_39: Ref;
call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s489, amount_s489);
if (revert) {
return;
}
if ((DType[this]) == (ERC20)) {
call __var_36 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((DType[this]) == (ERC20)) {
call __var_38 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
if ((M_Ref_Ref[_allowances_ERC20[this]][account_s489]) == (null)) {
call __var_39 := FreshRefGenerator__success();
if (revert) {
return;
}
M_Ref_Ref[_allowances_ERC20[this]][account_s489] := __var_39;
M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][account_s489]] := zeroRefIntArr();
}
call __var_37 := sub_SafeMath__success(this, this, 0, M_Ref_int[M_Ref_Ref[_allowances_ERC20[this]][account_s489]][__var_38], amount_s489);
if (revert) {
return;
}
call _approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s489, __var_36, __var_37);
if (revert) {
return;
}
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

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s602: int, b_s602: int) returns (__ret_0_: int)
{
var c_s601: int;

assume ((a_s602 >= 0) && (b_s602 >= 0));

c_s601 := (a_s602) + (b_s602);
if (!((c_s601) >= (a_s602))) {
revert := true;
return;
}
__ret_0_ := c_s601;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s602: int, b_s602: int) returns (__ret_0_: int)
{
var c_s601: int;

assume ((a_s602 >= 0) && (b_s602 >= 0));

c_s601 := (a_s602) + (b_s602);
if (!((c_s601) >= (a_s602))) {
revert := true;
return;
}
__ret_0_ := c_s601;
return;
}

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s627: int, b_s627: int) returns (__ret_0_: int)
{
var c_s626: int;

assume ((a_s627 >= 0) && (b_s627 >= 0));

if (!((b_s627) <= (a_s627))) {
revert := true;
return;
}
c_s626 := (a_s627) - (b_s627);
__ret_0_ := c_s626;
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s627: int, b_s627: int) returns (__ret_0_: int)
{
var c_s626: int;

assume ((a_s627 >= 0) && (b_s627 >= 0));

if (!((b_s627) <= (a_s627))) {
revert := true;
return;
}
c_s626 := (a_s627) - (b_s627);
__ret_0_ := c_s626;
return;
}

// implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int) returns (__ret_0_: int)
// {
// var c_s660: int;
// if ((a_s661) == (0)) {
// __ret_0_ := 0;
// return;
// }
// c_s660 := (a_s661) * (b_s661);
// if (!(((c_s660) div (a_s661)) == (b_s661))) {
// revert := true;
// return;
// }
// __ret_0_ := c_s660;
// return;
// }

// implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s661: int, b_s661: int) returns (__ret_0_: int)
// {
// var c_s660: int;
// if ((a_s661) == (0)) {
// __ret_0_ := 0;
// return;
// }
// c_s660 := (a_s661) * (b_s661);
// if (!(((c_s660) div (a_s661)) == (b_s661))) {
// revert := true;
// return;
// }
// __ret_0_ := c_s660;
// return;
// }

// implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s686: int, b_s686: int) returns (__ret_0_: int)
// {
// var c_s685: int;
// if (!((b_s686) > (0))) {
// revert := true;
// return;
// }
// c_s685 := (a_s686) div (b_s686);
// __ret_0_ := c_s685;
// return;
// }

// implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s686: int, b_s686: int) returns (__ret_0_: int)
// {
// var c_s685: int;
// if (!((b_s686) > (0))) {
// revert := true;
// return;
// }
// c_s685 := (a_s686) div (b_s686);
// __ret_0_ := c_s685;
// return;
// }

// implementation mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s707: int, b_s707: int) returns (__ret_0_: int)
// {
// if (!((b_s707) != (0))) {
// revert := true;
// return;
// }
// __ret_0_ := (a_s707) mod (b_s707);
// return;
// }

// implementation mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s707: int, b_s707: int) returns (__ret_0_: int)
// {
// if (!((b_s707) != (0))) {
// revert := true;
// return;
// }
// __ret_0_ := (a_s707) mod (b_s707);
// return;
// }

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20)) {
assume ((amount) == (0));
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
if ((DType[to]) == (IERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20)) {
assume ((amount) == (0));
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
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp___balances_ERC20: [Ref]Ref;
var __snap___tmp___allowances_ERC20: [Ref]Ref;
var __snap___tmp___totalSupply_ERC20: [Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
__snap___tmp__Length := __tmp__Length;
__snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
__snap___tmp___allowances_ERC20 := __tmp___allowances_ERC20;
__snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
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
__tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
__tmp___allowances_ERC20 := __snap___tmp___allowances_ERC20;
__tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
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
__tmp___balances_ERC20 := _balances_ERC20;
__tmp___allowances_ERC20 := _allowances_ERC20;
__tmp___totalSupply_ERC20 := _totalSupply_ERC20;
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

implementation BoogieEntry_Context()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume (((DType[this]) == (Context)) || ((DType[this]) == (ERC20)));
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

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s43: Ref;
var __ret_0_balanceOf: int;
var recipient_s58: Ref;
var amount_s58: int;
var __ret_0_transfer: bool;
var owner_s93: Ref;
var spender_s93: Ref;
var __ret_0_allowance: int;
var spender_s108: Ref;
var amount_s108: int;
var __ret_0_approve: bool;
var sender_s145: Ref;
var recipient_s145: Ref;
var amount_s145: int;
var __ret_0_transferFrom: bool;
var spender_s195: Ref;
var addedValue_s195: int;
var __ret_0_increaseAllowance: bool;
var spender_s237: Ref;
var subtractedValue_s237: int;
var __ret_0_decreaseAllowance: bool;
assume ((DType[this]) == (ERC20));
gas := (gas) - (53000);
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s43;
havoc __ret_0_balanceOf;
havoc recipient_s58;
havoc amount_s58;
havoc __ret_0_transfer;
havoc owner_s93;
havoc spender_s93;
havoc __ret_0_allowance;
havoc spender_s108;
havoc amount_s108;
havoc __ret_0_approve;
havoc sender_s145;
havoc recipient_s145;
havoc amount_s145;
havoc __ret_0_transferFrom;
havoc spender_s195;
havoc addedValue_s195;
havoc __ret_0_increaseAllowance;
havoc spender_s237;
havoc subtractedValue_s237;
havoc __ret_0_decreaseAllowance;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s43);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s58, amount_s58);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s93, spender_s93);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s108, amount_s108);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s145, recipient_s145, amount_s145);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s195, addedValue_s195);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s237, subtractedValue_s237);
}
}
}

implementation BoogieEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume (((DType[this]) == (ERC20)) || ((DType[this]) == (IERC20)));
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
assume (((DType[this]) == (Context)) || ((DType[this]) == (ERC20)));
gas := (gas) - (53000);
call Context_Context(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Context(this);
}
}

implementation CorralChoice_ERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s43: Ref;
var __ret_0_balanceOf: int;
var recipient_s58: Ref;
var amount_s58: int;
var __ret_0_transfer: bool;
var owner_s93: Ref;
var spender_s93: Ref;
var __ret_0_allowance: int;
var spender_s108: Ref;
var amount_s108: int;
var __ret_0_approve: bool;
var sender_s145: Ref;
var recipient_s145: Ref;
var amount_s145: int;
var __ret_0_transferFrom: bool;
var spender_s195: Ref;
var addedValue_s195: int;
var __ret_0_increaseAllowance: bool;
var spender_s237: Ref;
var subtractedValue_s237: int;
var __ret_0_decreaseAllowance: bool;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s43;
havoc __ret_0_balanceOf;
havoc recipient_s58;
havoc amount_s58;
havoc __ret_0_transfer;
havoc owner_s93;
havoc spender_s93;
havoc __ret_0_allowance;
havoc spender_s108;
havoc amount_s108;
havoc __ret_0_approve;
havoc sender_s145;
havoc recipient_s145;
havoc amount_s145;
havoc __ret_0_transferFrom;
havoc spender_s195;
havoc addedValue_s195;
havoc __ret_0_increaseAllowance;
havoc spender_s237;
havoc subtractedValue_s237;
havoc __ret_0_decreaseAllowance;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
if ((choice) == (8)) {
gas := (gas) - (21000);
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s43);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s58, amount_s58);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s93, spender_s93);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s108, amount_s108);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, sender_s145, recipient_s145, amount_s145);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s195, addedValue_s195);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s237, subtractedValue_s237);
}
}

implementation CorralEntry_ERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((DType[this]) == (ERC20));
gas := (gas) - (53000);
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ERC20(this);
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
assume (((DType[this]) == (ERC20)) || ((DType[this]) == (IERC20)));
gas := (gas) - (53000);
call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_IERC20(this);
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


