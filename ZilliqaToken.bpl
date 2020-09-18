// #LTLProperty: [](started(ZilliqaToken.transferFrom(from, to, value), from == to && (value > this.balances[from] || value > this.allowed[from][msg.sender])) ==> <>(reverted(ZilliqaToken.transferFrom)))
type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique ERC20Basic: ContractName;
const unique SafeMath: ContractName;
const unique BasicToken: ContractName;
const unique ERC20: ContractName;
const unique StandardToken: ContractName;
const unique Ownable: ContractName;
const unique Pausable: ContractName;
const unique PausableToken: ContractName;
const unique ZilliqaToken: ContractName;
function {:smtdefined "x"} ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefintArr() returns (ret: [Ref]int);
function {:smtdefined "((as const (Array Int (Array Int Int))) ((as const (Array Int Int)) 0))"} zeroRefRefintArr() returns (ret: [Ref][Ref]int);
function nonlinearMul(x: int, y: int) returns (ret: int);
function nonlinearDiv(x: int, y: int) returns (ret: int);
function nonlinearPow(x: int, y: int) returns (ret: int);
function nonlinearMod(x: int, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var sum_balances0: [Ref]int;
var M_Ref_Ref: [Ref][Ref]Ref;
var sum_allowed1: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies totalSupply_ERC20Basic;
procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies totalSupply_ERC20Basic;
implementation ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.totalSupply=totalSupply_ERC20Basic[this]"} totalSupply_ERC20Basic: [Ref]int;
procedure {:public} {:inline 1} balanceOf_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s10: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s19: Ref, value_s19: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} totalSupply_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation totalSupply_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := totalSupply_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := totalSupply_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int);
procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int) returns (__ret_0_: int);
procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies balances_BasicToken;
modifies sum_balances0;
procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
implementation BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.balances[i1]=balances_BasicToken[this][i1]"} {:sum "sum(this.balances)=sum_balances0[this]"} balances_BasicToken: [Ref][Ref]int;
procedure {:public} {:inline 1} transfer_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s142: Ref, _value_s142: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
implementation transfer_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s142: Ref, _value_s142: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s142, _value_s142);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s142, _value_s142);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref) returns (balance_s154: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref) returns (balance_s154: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call balance_s154 := balanceOf_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
assume ((revert) || ((gas) < (0)));
} else {
call balance_s154 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies totalSupply_ERC20Basic;
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} allowance_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s166: Ref, spender_s166: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, from_s177: Ref, to_s177: Ref, value_s177: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} approve_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s186: Ref, value_s186: int) returns (__ret_0_: bool);
procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies allowed_StandardToken;
modifies sum_allowed1;
procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
modifies allowed_StandardToken;
modifies sum_allowed1;
implementation StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.allowed[i1][i2]=allowed_StandardToken[this][i1][i2]"} {:sum "sum(this.allowed)=sum_allowed1[this]"} allowed_StandardToken: [Ref][Ref][Ref]int;
procedure {:public} {:inline 1} transferFrom_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s291: Ref, _to_s291: Ref, _value_s291: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation transferFrom_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s291: Ref, _to_s291: Ref, _value_s291: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s291, _to_s291, _value_s291);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s291, _to_s291, _value_s291);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s319: Ref, _value_s319: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation approve_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s319: Ref, _value_s319: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s319, _value_s319);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s319, _value_s319);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s335: Ref, _spender_s335: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation allowance_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s335: Ref, _spender_s335: Ref) returns (__ret_0_: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} increaseApproval_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s376: Ref, _addedValue_s376: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation increaseApproval_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s376: Ref, _addedValue_s376: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s376, _addedValue_s376);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s376, _addedValue_s376);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decreaseApproval_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s436: Ref, _subtractedValue_s436: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation decreaseApproval_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s436: Ref, _subtractedValue_s436: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s436, _subtractedValue_s436);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s436, _subtractedValue_s436);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;
procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies owner_Ownable;
procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies owner_Ownable;
implementation Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
assume ((revert) || ((gas) < (0)));
} else {
call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} owner_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation owner_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies admin_Pausable;
procedure {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies admin_Pausable;
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
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.pausedPublic=pausedPublic_Pausable[this]"} pausedPublic_Pausable: [Ref]bool;
var {:access "this.pausedOwnerAdmin=pausedOwnerAdmin_Pausable[this]"} pausedOwnerAdmin_Pausable: [Ref]bool;
var {:access "this.admin=admin_Pausable[this]"} admin_Pausable: [Ref]Ref;
procedure {:public} {:inline 1} pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newPausedPublic_s574: bool, newPausedOwnerAdmin_s574: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
implementation pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newPausedPublic_s574: bool, newPausedOwnerAdmin_s574: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call pause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
assume ((revert) || ((gas) < (0)));
} else {
call pause_Pausable__success(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} pausedPublic_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation pausedPublic_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := pausedPublic_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := pausedPublic_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} pausedOwnerAdmin_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation pausedOwnerAdmin_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := pausedOwnerAdmin_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := pausedOwnerAdmin_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} admin_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation admin_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := admin_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := admin_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
modifies allowed_StandardToken;
modifies sum_allowed1;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies admin_Pausable;
implementation PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call PausableToken_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s597: Ref, _value_s597: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
implementation transfer_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s597: Ref, _value_s597: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferFrom_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s618: Ref, _to_s618: Ref, _value_s618: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation transferFrom_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s618: Ref, _to_s618: Ref, _value_s618: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := transferFrom_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} approve_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s636: Ref, _value_s636: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation approve_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s636: Ref, _value_s636: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := approve_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := approve_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} increaseApproval_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s654: Ref, _addedValue_s654: int) returns (success_s654: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation increaseApproval_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s654: Ref, _addedValue_s654: int) returns (success_s654: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call success_s654 := increaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
assume ((revert) || ((gas) < (0)));
} else {
call success_s654 := increaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decreaseApproval_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s672: Ref, _subtractedValue_s672: int) returns (success_s672: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation decreaseApproval_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s672: Ref, _subtractedValue_s672: int) returns (success_s672: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call success_s672 := decreaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
assume ((revert) || ((gas) < (0)));
} else {
call success_s672 := decreaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var {:access "this.name=name_ZilliqaToken[this]"} name_ZilliqaToken: [Ref]int;
var {:access "this.symbol=symbol_ZilliqaToken[this]"} symbol_ZilliqaToken: [Ref]int;
var {:access "this.decimals=decimals_ZilliqaToken[this]"} decimals_ZilliqaToken: [Ref]int;
procedure {:inline 1} ZilliqaToken_ZilliqaToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int);
modifies Balance;
modifies name_ZilliqaToken;
modifies symbol_ZilliqaToken;
modifies decimals_ZilliqaToken;
modifies admin_Pausable;
modifies totalSupply_ERC20Basic;
modifies sum_balances0;
modifies balances_BasicToken;
procedure {:constructor} {:public} {:inline 1} ZilliqaToken_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
modifies allowed_StandardToken;
modifies sum_allowed1;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies admin_Pausable;
modifies name_ZilliqaToken;
modifies symbol_ZilliqaToken;
modifies decimals_ZilliqaToken;
implementation ZilliqaToken_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call ZilliqaToken_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
assume ((revert) || ((gas) < (0)));
} else {
call ZilliqaToken_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transfer_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s757: Ref, _value_s757: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
implementation transfer_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s757: Ref, _value_s757: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := transfer_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transfer_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferFrom_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s779: Ref, _to_s779: Ref, _value_s779: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
implementation transferFrom_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s779: Ref, _to_s779: Ref, _value_s779: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := transferFrom_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := transferFrom_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} burn_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
modifies totalSupply_ERC20Basic;
implementation burn_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := burn_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s830);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := burn_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s830);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} burnFrom_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s853: Ref, _value_s853: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
modifies totalSupply_ERC20Basic;
implementation burnFrom_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s853: Ref, _value_s853: int) returns (__ret_0_: bool)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := burnFrom_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s853, _value_s853);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := burnFrom_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s853, _value_s853);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} emergencyERC20Drain_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s870: Ref, amount_s870: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
implementation emergencyERC20Drain_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s870: Ref, amount_s870: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call emergencyERC20Drain_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, token_s870, amount_s870);
assume ((revert) || ((gas) < (0)));
} else {
call emergencyERC20Drain_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, token_s870, amount_s870);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} changeAdmin_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies admin_Pausable;
implementation changeAdmin_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call changeAdmin_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, newAdmin_s893);
assume ((revert) || ((gas) < (0)));
} else {
call changeAdmin_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, newAdmin_s893);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} name_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation name_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := name_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := name_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} symbol_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation symbol_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := symbol_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := symbol_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} decimals_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
implementation decimals_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
call __ret_0_ := decimals_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := decimals_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies totalSupply_ERC20Basic;
modifies admin_Pausable;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies totalSupply_ERC20Basic;
modifies admin_Pausable;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies revert;
modifies gas;
modifies Balance;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies totalSupply_ERC20Basic;
modifies admin_Pausable;
procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} validDestination_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref);
modifies revert;
procedure CorralChoice_ERC20Basic(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
procedure CorralEntry_ERC20Basic();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
procedure CorralEntry_SafeMath();
modifies Alloc;
modifies gas;
modifies now;
procedure CorralChoice_BasicToken(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
procedure CorralEntry_BasicToken();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
procedure CorralChoice_ERC20(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
procedure CorralEntry_ERC20();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
procedure CorralChoice_StandardToken(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure CorralEntry_StandardToken();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure CorralChoice_Ownable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
procedure CorralEntry_Ownable();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
procedure CorralChoice_Pausable(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
procedure CorralEntry_Pausable();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
procedure CorralChoice_PausableToken(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure CorralEntry_PausableToken();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure CorralChoice_ZilliqaToken(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies sum_balances0;
modifies balances_BasicToken;
modifies totalSupply_ERC20Basic;
modifies admin_Pausable;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure main();
modifies Alloc;
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies sum_balances0;
modifies balances_BasicToken;
modifies totalSupply_ERC20Basic;
modifies admin_Pausable;
modifies sum_allowed1;
modifies allowed_StandardToken;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__sum_balances0: [Ref]int;
var __tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __tmp__sum_allowed1: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__totalSupply_ERC20Basic: [Ref]int;
var __tmp__balances_BasicToken: [Ref][Ref]int;
var __tmp__allowed_StandardToken: [Ref][Ref][Ref]int;
var __tmp__owner_Ownable: [Ref]Ref;
var __tmp__pausedPublic_Pausable: [Ref]bool;
var __tmp__pausedOwnerAdmin_Pausable: [Ref]bool;
var __tmp__admin_Pausable: [Ref]Ref;
var __tmp__name_ZilliqaToken: [Ref]int;
var __tmp__symbol_ZilliqaToken: [Ref]int;
var __tmp__decimals_ZilliqaToken: [Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__totalSupply_ERC20Basic;
procedure {:inline 1} ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies totalSupply_ERC20Basic;
procedure {:inline 1} ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__totalSupply_ERC20Basic;
procedure {:inline 1} totalSupply_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} totalSupply_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int);
procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int) returns (__ret_0_: int);
procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_balances0;
procedure {:inline 1} BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
procedure {:inline 1} BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_balances0;
procedure {:inline 1} transfer_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s142: Ref, _value_s142: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
procedure {:inline 1} transfer_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s142: Ref, _value_s142: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref) returns (balance_s154: int);
procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref) returns (balance_s154: int);
procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies totalSupply_ERC20Basic;
procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__totalSupply_ERC20Basic;
procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__allowed_StandardToken;
modifies __tmp__sum_allowed1;
procedure {:inline 1} StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
modifies allowed_StandardToken;
modifies sum_allowed1;
procedure {:inline 1} StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_balances0;
modifies __tmp__allowed_StandardToken;
modifies __tmp__sum_allowed1;
procedure {:inline 1} transferFrom_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s291: Ref, _to_s291: Ref, _value_s291: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s291: Ref, _to_s291: Ref, _value_s291: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} approve_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s319: Ref, _value_s319: int) returns (__ret_0_: bool);
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} approve_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s319: Ref, _value_s319: int) returns (__ret_0_: bool);
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} allowance_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s335: Ref, _spender_s335: Ref) returns (__ret_0_: int);
procedure {:inline 1} allowance_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s335: Ref, _spender_s335: Ref) returns (__ret_0_: int);
procedure {:inline 1} increaseApproval_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s376: Ref, _addedValue_s376: int) returns (__ret_0_: bool);
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} increaseApproval_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s376: Ref, _addedValue_s376: int) returns (__ret_0_: bool);
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} decreaseApproval_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s436: Ref, _subtractedValue_s436: int) returns (__ret_0_: bool);
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} decreaseApproval_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s436: Ref, _subtractedValue_s436: int) returns (__ret_0_: bool);
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies owner_Ownable;
procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref);
modifies revert;
modifies owner_Ownable;
procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref);
modifies revert;
modifies __tmp__owner_Ownable;
procedure {:inline 1} owner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} owner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
procedure {:inline 1} Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies admin_Pausable;
procedure {:inline 1} Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
procedure {:inline 1} pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newPausedPublic_s574: bool, newPausedOwnerAdmin_s574: bool);
modifies revert;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
procedure {:inline 1} pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newPausedPublic_s574: bool, newPausedOwnerAdmin_s574: bool);
modifies revert;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
procedure {:inline 1} pausedPublic_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} pausedPublic_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} pausedOwnerAdmin_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} pausedOwnerAdmin_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
procedure {:inline 1} admin_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} admin_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
procedure {:inline 1} PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
modifies allowed_StandardToken;
modifies sum_allowed1;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies admin_Pausable;
procedure {:inline 1} PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_balances0;
modifies __tmp__allowed_StandardToken;
modifies __tmp__sum_allowed1;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
procedure {:inline 1} transfer_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s597: Ref, _value_s597: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
procedure {:inline 1} transfer_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s597: Ref, _value_s597: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
procedure {:inline 1} transferFrom_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s618: Ref, _to_s618: Ref, _value_s618: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} transferFrom_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s618: Ref, _to_s618: Ref, _value_s618: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} approve_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s636: Ref, _value_s636: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} approve_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s636: Ref, _value_s636: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} increaseApproval_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s654: Ref, _addedValue_s654: int) returns (success_s654: bool);
modifies revert;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} increaseApproval_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s654: Ref, _addedValue_s654: int) returns (success_s654: bool);
modifies revert;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} decreaseApproval_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s672: Ref, _subtractedValue_s672: int) returns (success_s672: bool);
modifies revert;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} decreaseApproval_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s672: Ref, _subtractedValue_s672: int) returns (success_s672: bool);
modifies revert;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} ZilliqaToken_ZilliqaToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int);
modifies __tmp__Balance;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies __tmp__admin_Pausable;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
procedure {:constructor} {:inline 1} ZilliqaToken_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int);
modifies Balance;
modifies totalSupply_ERC20Basic;
modifies balances_BasicToken;
modifies sum_balances0;
modifies allowed_StandardToken;
modifies sum_allowed1;
modifies owner_Ownable;
modifies pausedPublic_Pausable;
modifies pausedOwnerAdmin_Pausable;
modifies admin_Pausable;
modifies name_ZilliqaToken;
modifies symbol_ZilliqaToken;
modifies decimals_ZilliqaToken;
procedure {:constructor} {:inline 1} ZilliqaToken_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int);
modifies __tmp__Balance;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_balances0;
modifies __tmp__allowed_StandardToken;
modifies __tmp__sum_allowed1;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
procedure {:inline 1} transfer_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s757: Ref, _value_s757: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
procedure {:inline 1} transfer_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s757: Ref, _value_s757: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
procedure {:inline 1} transferFrom_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s779: Ref, _to_s779: Ref, _value_s779: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
procedure {:inline 1} transferFrom_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s779: Ref, _to_s779: Ref, _value_s779: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
procedure {:inline 1} burn_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int) returns (__ret_0_: bool);
modifies sum_balances0;
modifies balances_BasicToken;
modifies totalSupply_ERC20Basic;
procedure {:inline 1} burn_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int) returns (__ret_0_: bool);
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
modifies __tmp__totalSupply_ERC20Basic;
procedure {:inline 1} burnFrom_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s853: Ref, _value_s853: int) returns (__ret_0_: bool);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
modifies sum_allowed1;
modifies allowed_StandardToken;
modifies totalSupply_ERC20Basic;
procedure {:inline 1} burnFrom_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s853: Ref, _value_s853: int) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
modifies __tmp__totalSupply_ERC20Basic;
procedure {:inline 1} emergencyERC20Drain_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s870: Ref, amount_s870: int);
modifies revert;
modifies sum_balances0;
modifies balances_BasicToken;
procedure {:inline 1} emergencyERC20Drain_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s870: Ref, amount_s870: int);
modifies revert;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
procedure {:inline 1} changeAdmin_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref);
modifies admin_Pausable;
modifies revert;
procedure {:inline 1} changeAdmin_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref);
modifies __tmp__admin_Pausable;
modifies revert;
procedure {:inline 1} name_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} name_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} symbol_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} symbol_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} decimals_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} decimals_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__admin_Pausable;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_balances0;
modifies __tmp__balances_BasicToken;
modifies __tmp__sum_allowed1;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__admin_Pausable;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balances0;
modifies __tmp__M_Ref_Ref;
modifies __tmp__sum_allowed1;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__totalSupply_ERC20Basic;
modifies __tmp__balances_BasicToken;
modifies __tmp__allowed_StandardToken;
modifies __tmp__owner_Ownable;
modifies __tmp__pausedPublic_Pausable;
modifies __tmp__pausedOwnerAdmin_Pausable;
modifies __tmp__admin_Pausable;
modifies __tmp__name_ZilliqaToken;
modifies __tmp__symbol_ZilliqaToken;
modifies __tmp__decimals_ZilliqaToken;
modifies revert;
modifies gas;
procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure {:inline 1} validDestination_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref);
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

implementation ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__totalSupply_ERC20Basic[this] := 0;
// end of initialization
}

implementation ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
totalSupply_ERC20Basic[this] := 0;
// end of initialization
}

implementation ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation totalSupply_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := __tmp__totalSupply_ERC20Basic[this];
return;
}

implementation totalSupply_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := totalSupply_ERC20Basic[this];
return;
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

implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int)
{
__ret_0_ := ((a_s48) - (b_s48)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
return;
}

implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int) returns (__ret_0_: int)
{
assert ((b_s48) <= (a_s48));
__ret_0_ := ((a_s48) - (b_s48)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
return;
}

implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int) returns (__ret_0_: int)
{
var c_s71: int;
c_s71 := ((a_s72) + (b_s72)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
__ret_0_ := c_s71;
return;
}

implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int) returns (__ret_0_: int)
{
var c_s71: int;
c_s71 := ((a_s72) + (b_s72)) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
assert ((c_s71) >= (a_s72));
__ret_0_ := c_s71;
return;
}

implementation BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__balances_BasicToken[this] := zeroRefintArr();
__tmp__sum_balances0[this] := 0;
// end of initialization
}

implementation BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
balances_BasicToken[this] := zeroRefintArr();
sum_balances0[this] := 0;
// end of initialization
}

implementation BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation transfer_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s142: Ref, _value_s142: int) returns (__ret_0_: bool)
{
var __var_1: Ref;
var __var_2: int;
var __var_3: int;
__var_1 := null;
if (!((_to_s142) != (null))) {
revert := true;
return;
}
if (!((_value_s142) <= (__tmp__balances_BasicToken[this][msgsender_MSG]))) {
revert := true;
return;
}
call __var_2 := sub_SafeMath__fail(this, this, 0, __tmp__balances_BasicToken[this][msgsender_MSG], _value_s142);
if (revert) {
return;
}
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) - (__tmp__balances_BasicToken[this][msgsender_MSG]);
__tmp__balances_BasicToken[this][msgsender_MSG] := __var_2;
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) + (__tmp__balances_BasicToken[this][msgsender_MSG]);
call __var_3 := add_SafeMath__fail(this, this, 0, __tmp__balances_BasicToken[this][_to_s142], _value_s142);
if (revert) {
return;
}
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) - (__tmp__balances_BasicToken[this][_to_s142]);
__tmp__balances_BasicToken[this][_to_s142] := __var_3;
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) + (__tmp__balances_BasicToken[this][_to_s142]);
__ret_0_ := true;
return;
}

implementation transfer_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s142: Ref, _value_s142: int) returns (__ret_0_: bool)
{
var __var_1: Ref;
var __var_2: int;
var __var_3: int;
__var_1 := null;
if (!((_to_s142) != (null))) {
revert := true;
return;
}
if (!((_value_s142) <= (balances_BasicToken[this][msgsender_MSG]))) {
revert := true;
return;
}
call __var_2 := sub_SafeMath__success(this, this, 0, balances_BasicToken[this][msgsender_MSG], _value_s142);
if (revert) {
return;
}
sum_balances0[this] := (sum_balances0[this]) - (balances_BasicToken[this][msgsender_MSG]);
balances_BasicToken[this][msgsender_MSG] := __var_2;
sum_balances0[this] := (sum_balances0[this]) + (balances_BasicToken[this][msgsender_MSG]);
call __var_3 := add_SafeMath__success(this, this, 0, balances_BasicToken[this][_to_s142], _value_s142);
if (revert) {
return;
}
sum_balances0[this] := (sum_balances0[this]) - (balances_BasicToken[this][_to_s142]);
balances_BasicToken[this][_to_s142] := __var_3;
sum_balances0[this] := (sum_balances0[this]) + (balances_BasicToken[this][_to_s142]);
assert {:EventEmitted "Transfer_BasicToken"} (true);
__ret_0_ := true;
return;
}

implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref) returns (balance_s154: int)
{
balance_s154 := __tmp__balances_BasicToken[this][_owner_s154];
return;
}

implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref) returns (balance_s154: int)
{
balance_s154 := balances_BasicToken[this][_owner_s154];
return;
}

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
call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
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
call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__allowed_StandardToken[this] := zeroRefRefintArr();
__tmp__sum_allowed1[this] := 0;
// end of initialization
}

implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
allowed_StandardToken[this] := zeroRefRefintArr();
sum_allowed1[this] := 0;
// end of initialization
}

implementation StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call StandardToken_StandardToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call StandardToken_StandardToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation transferFrom_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s291: Ref, _to_s291: Ref, _value_s291: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
var __var_7: int;
__var_4 := null;
if (!((_to_s291) != (null))) {
revert := true;
return;
}
if (!((_value_s291) <= (__tmp__balances_BasicToken[this][_from_s291]))) {
revert := true;
return;
}
if (!((_value_s291) <= (__tmp__allowed_StandardToken[this][_from_s291][msgsender_MSG]))) {
revert := true;
return;
}
call __var_5 := sub_SafeMath__fail(this, this, 0, __tmp__balances_BasicToken[this][_from_s291], _value_s291);
if (revert) {
return;
}
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) - (__tmp__balances_BasicToken[this][_from_s291]);
__tmp__balances_BasicToken[this][_from_s291] := __var_5;
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) + (__tmp__balances_BasicToken[this][_from_s291]);
call __var_6 := add_SafeMath__fail(this, this, 0, __tmp__balances_BasicToken[this][_to_s291], _value_s291);
if (revert) {
return;
}
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) - (__tmp__balances_BasicToken[this][_to_s291]);
__tmp__balances_BasicToken[this][_to_s291] := __var_6;
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) + (__tmp__balances_BasicToken[this][_to_s291]);
call __var_7 := sub_SafeMath__fail(this, this, 0, __tmp__allowed_StandardToken[this][_from_s291][msgsender_MSG], _value_s291);
if (revert) {
return;
}
__tmp__sum_allowed1[_from_s291] := (__tmp__sum_allowed1[_from_s291]) - (__tmp__allowed_StandardToken[this][_from_s291][msgsender_MSG]);
__tmp__allowed_StandardToken[this][_from_s291][msgsender_MSG] := __var_7;
__tmp__sum_allowed1[_from_s291] := (__tmp__sum_allowed1[_from_s291]) + (__tmp__allowed_StandardToken[this][_from_s291][msgsender_MSG]);
__ret_0_ := true;
return;
}

implementation transferFrom_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s291: Ref, _to_s291: Ref, _value_s291: int) returns (__ret_0_: bool)
{
var __var_4: Ref;
var __var_5: int;
var __var_6: int;
var __var_7: int;
__var_4 := null;
if (!((_to_s291) != (null))) {
revert := true;
return;
}
if (!((_value_s291) <= (balances_BasicToken[this][_from_s291]))) {
revert := true;
return;
}
if (!((_value_s291) <= (allowed_StandardToken[this][_from_s291][msgsender_MSG]))) {
revert := true;
return;
}
call __var_5 := sub_SafeMath__success(this, this, 0, balances_BasicToken[this][_from_s291], _value_s291);
if (revert) {
return;
}
sum_balances0[this] := (sum_balances0[this]) - (balances_BasicToken[this][_from_s291]);
balances_BasicToken[this][_from_s291] := __var_5;
sum_balances0[this] := (sum_balances0[this]) + (balances_BasicToken[this][_from_s291]);
call __var_6 := add_SafeMath__success(this, this, 0, balances_BasicToken[this][_to_s291], _value_s291);
if (revert) {
return;
}
sum_balances0[this] := (sum_balances0[this]) - (balances_BasicToken[this][_to_s291]);
balances_BasicToken[this][_to_s291] := __var_6;
sum_balances0[this] := (sum_balances0[this]) + (balances_BasicToken[this][_to_s291]);
call __var_7 := sub_SafeMath__success(this, this, 0, allowed_StandardToken[this][_from_s291][msgsender_MSG], _value_s291);
if (revert) {
return;
}
sum_allowed1[_from_s291] := (sum_allowed1[_from_s291]) - (allowed_StandardToken[this][_from_s291][msgsender_MSG]);
allowed_StandardToken[this][_from_s291][msgsender_MSG] := __var_7;
sum_allowed1[_from_s291] := (sum_allowed1[_from_s291]) + (allowed_StandardToken[this][_from_s291][msgsender_MSG]);
assert {:EventEmitted "Transfer_StandardToken"} (true);
__ret_0_ := true;
return;
}

implementation approve_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s319: Ref, _value_s319: int) returns (__ret_0_: bool)
{
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) - (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s319]);
__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s319] := _value_s319;
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) + (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s319]);
__ret_0_ := true;
return;
}

implementation approve_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s319: Ref, _value_s319: int) returns (__ret_0_: bool)
{
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) - (allowed_StandardToken[this][msgsender_MSG][_spender_s319]);
allowed_StandardToken[this][msgsender_MSG][_spender_s319] := _value_s319;
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) + (allowed_StandardToken[this][msgsender_MSG][_spender_s319]);
assert {:EventEmitted "Approval_StandardToken"} (true);
__ret_0_ := true;
return;
}

implementation allowance_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s335: Ref, _spender_s335: Ref) returns (__ret_0_: int)
{
__ret_0_ := __tmp__allowed_StandardToken[this][_owner_s335][_spender_s335];
return;
}

implementation allowance_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s335: Ref, _spender_s335: Ref) returns (__ret_0_: int)
{
__ret_0_ := allowed_StandardToken[this][_owner_s335][_spender_s335];
return;
}

implementation increaseApproval_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s376: Ref, _addedValue_s376: int) returns (__ret_0_: bool)
{
var __var_8: int;
call __var_8 := add_SafeMath__fail(this, this, 0, __tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s376], _addedValue_s376);
if (revert) {
return;
}
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) - (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s376]);
__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s376] := __var_8;
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) + (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s376]);
__ret_0_ := true;
return;
}

implementation increaseApproval_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s376: Ref, _addedValue_s376: int) returns (__ret_0_: bool)
{
var __var_8: int;
call __var_8 := add_SafeMath__success(this, this, 0, allowed_StandardToken[this][msgsender_MSG][_spender_s376], _addedValue_s376);
if (revert) {
return;
}
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) - (allowed_StandardToken[this][msgsender_MSG][_spender_s376]);
allowed_StandardToken[this][msgsender_MSG][_spender_s376] := __var_8;
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) + (allowed_StandardToken[this][msgsender_MSG][_spender_s376]);
assert {:EventEmitted "Approval_StandardToken"} (true);
__ret_0_ := true;
return;
}

implementation decreaseApproval_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s436: Ref, _subtractedValue_s436: int) returns (__ret_0_: bool)
{
var oldValue_s435: int;
var __var_9: int;
oldValue_s435 := __tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s436];
if ((_subtractedValue_s436) > (oldValue_s435)) {
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) - (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s436] := 0;
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) + (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
} else {
call __var_9 := sub_SafeMath__fail(this, this, 0, oldValue_s435, _subtractedValue_s436);
if (revert) {
return;
}
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) - (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s436] := __var_9;
__tmp__sum_allowed1[msgsender_MSG] := (__tmp__sum_allowed1[msgsender_MSG]) + (__tmp__allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
}
__ret_0_ := true;
return;
}

implementation decreaseApproval_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s436: Ref, _subtractedValue_s436: int) returns (__ret_0_: bool)
{
var oldValue_s435: int;
var __var_9: int;
oldValue_s435 := allowed_StandardToken[this][msgsender_MSG][_spender_s436];
if ((_subtractedValue_s436) > (oldValue_s435)) {
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) - (allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
allowed_StandardToken[this][msgsender_MSG][_spender_s436] := 0;
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) + (allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
} else {
call __var_9 := sub_SafeMath__success(this, this, 0, oldValue_s435, _subtractedValue_s436);
if (revert) {
return;
}
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) - (allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
allowed_StandardToken[this][msgsender_MSG][_spender_s436] := __var_9;
sum_allowed1[msgsender_MSG] := (sum_allowed1[msgsender_MSG]) + (allowed_StandardToken[this][msgsender_MSG][_spender_s436]);
}
assert {:EventEmitted "Approval_StandardToken"} (true);
__ret_0_ := true;
return;
}

implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__owner_Ownable[this] := null;
// end of initialization
__tmp__owner_Ownable[this] := msgsender_MSG;
}

implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
owner_Ownable[this] := null;
// end of initialization
owner_Ownable[this] := msgsender_MSG;
}

implementation Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Ownable_Ownable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Ownable_Ownable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref)
{
var __var_10: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_10 := null;
if (!((newOwner_s490) != (null))) {
revert := true;
return;
}
__tmp__owner_Ownable[this] := newOwner_s490;
}

implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref)
{
var __var_10: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_10 := null;
if (!((newOwner_s490) != (null))) {
revert := true;
return;
}
assert {:EventEmitted "OwnershipTransferred_Ownable"} (true);
owner_Ownable[this] := newOwner_s490;
}

implementation owner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := __tmp__owner_Ownable[this];
return;
}

implementation owner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := owner_Ownable[this];
return;
}

implementation Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__pausedPublic_Pausable[this] := true;
__tmp__pausedOwnerAdmin_Pausable[this] := false;
__tmp__admin_Pausable[this] := null;
// end of initialization
}

implementation Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
pausedPublic_Pausable[this] := true;
pausedOwnerAdmin_Pausable[this] := false;
admin_Pausable[this] := null;
// end of initialization
}

implementation Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
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
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newPausedPublic_s574: bool, newPausedOwnerAdmin_s574: bool)
{
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!((((newPausedPublic_s574) == (false)) && ((newPausedOwnerAdmin_s574) == (true)))))) {
revert := true;
return;
}
__tmp__pausedPublic_Pausable[this] := newPausedPublic_s574;
__tmp__pausedOwnerAdmin_Pausable[this] := newPausedOwnerAdmin_s574;
}

implementation pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newPausedPublic_s574: bool, newPausedOwnerAdmin_s574: bool)
{
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!(!((((newPausedPublic_s574) == (false)) && ((newPausedOwnerAdmin_s574) == (true)))))) {
revert := true;
return;
}
pausedPublic_Pausable[this] := newPausedPublic_s574;
pausedOwnerAdmin_Pausable[this] := newPausedOwnerAdmin_s574;
assert {:EventEmitted "PausePublic_Pausable"} (true);
assert {:EventEmitted "PauseOwnerAdmin_Pausable"} (true);
}

implementation pausedPublic_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
__ret_0_ := __tmp__pausedPublic_Pausable[this];
return;
}

implementation pausedPublic_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
__ret_0_ := pausedPublic_Pausable[this];
return;
}

implementation pausedOwnerAdmin_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
__ret_0_ := __tmp__pausedOwnerAdmin_Pausable[this];
return;
}

implementation pausedOwnerAdmin_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
__ret_0_ := pausedOwnerAdmin_Pausable[this];
return;
}

implementation admin_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := __tmp__admin_Pausable[this];
return;
}

implementation admin_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
__ret_0_ := admin_Pausable[this];
return;
}

implementation PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// end of initialization
}

implementation PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

implementation PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PausableToken_PausableToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PausableToken_PausableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation transfer_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s597: Ref, _value_s597: int) returns (__ret_0_: bool)
{
var __var_11: bool;
var __var_12: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_11 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PausableToken)) {
call __var_11 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_11;
return;
}

implementation transfer_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s597: Ref, _value_s597: int) returns (__ret_0_: bool)
{
var __var_11: bool;
var __var_12: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (ZilliqaToken)) {
call __var_11 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
if (revert) {
return;
}
} else if ((DType[this]) == (PausableToken)) {
call __var_11 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_11;
return;
}

implementation transferFrom_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s618: Ref, _to_s618: Ref, _value_s618: int) returns (__ret_0_: bool)
{
var __var_13: bool;
var __var_14: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_13 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PausableToken)) {
call __var_13 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_13;
return;
}

implementation transferFrom_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s618: Ref, _to_s618: Ref, _value_s618: int) returns (__ret_0_: bool)
{
var __var_13: bool;
var __var_14: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (ZilliqaToken)) {
call __var_13 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
if (revert) {
return;
}
} else if ((DType[this]) == (PausableToken)) {
call __var_13 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_13;
return;
}

implementation approve_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s636: Ref, _value_s636: int) returns (__ret_0_: bool)
{
var __var_15: bool;
var __var_16: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_15 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PausableToken)) {
call __var_15 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_15;
return;
}

implementation approve_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s636: Ref, _value_s636: int) returns (__ret_0_: bool)
{
var __var_15: bool;
var __var_16: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (ZilliqaToken)) {
call __var_15 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
} else if ((DType[this]) == (PausableToken)) {
call __var_15 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_15;
return;
}

implementation increaseApproval_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s654: Ref, _addedValue_s654: int) returns (success_s654: bool)
{
var __var_17: bool;
var __var_18: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_17 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PausableToken)) {
call __var_17 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
} else {
assume (false);
}
success_s654 := __var_17;
return;
}

implementation increaseApproval_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s654: Ref, _addedValue_s654: int) returns (success_s654: bool)
{
var __var_17: bool;
var __var_18: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (ZilliqaToken)) {
call __var_17 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
} else if ((DType[this]) == (PausableToken)) {
call __var_17 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
} else {
assume (false);
}
success_s654 := __var_17;
return;
}

implementation decreaseApproval_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s672: Ref, _subtractedValue_s672: int) returns (success_s672: bool)
{
var __var_19: bool;
var __var_20: int;
call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_19 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
} else if ((__tmp__DType[this]) == (PausableToken)) {
call __var_19 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
} else {
assume (false);
}
success_s672 := __var_19;
return;
}

implementation decreaseApproval_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _spender_s672: Ref, _subtractedValue_s672: int) returns (success_s672: bool)
{
var __var_19: bool;
var __var_20: int;
call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[this]) == (ZilliqaToken)) {
call __var_19 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
} else if ((DType[this]) == (PausableToken)) {
call __var_19 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
} else {
assume (false);
}
success_s672 := __var_19;
return;
}

implementation ZilliqaToken_ZilliqaToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__name_ZilliqaToken[this] := -631553333;
__tmp__symbol_ZilliqaToken[this] := -1550257751;
__tmp__decimals_ZilliqaToken[this] := 12;
// end of initialization
__tmp__admin_Pausable[this] := _admin_s738;
__tmp__totalSupply_ERC20Basic[this] := _totalTokenAmount_s738;
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) - (__tmp__balances_BasicToken[this][msgsender_MSG]);
__tmp__balances_BasicToken[this][msgsender_MSG] := _totalTokenAmount_s738;
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) + (__tmp__balances_BasicToken[this][msgsender_MSG]);
}

implementation ZilliqaToken_ZilliqaToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
name_ZilliqaToken[this] := -631553333;
symbol_ZilliqaToken[this] := -1550257751;
decimals_ZilliqaToken[this] := 12;
// end of initialization
admin_Pausable[this] := _admin_s738;
totalSupply_ERC20Basic[this] := _totalTokenAmount_s738;
sum_balances0[this] := (sum_balances0[this]) - (balances_BasicToken[this][msgsender_MSG]);
balances_BasicToken[this][msgsender_MSG] := _totalTokenAmount_s738;
sum_balances0[this] := (sum_balances0[this]) + (balances_BasicToken[this][msgsender_MSG]);
assert {:EventEmitted "Transfer_ZilliqaToken"} (true);
}

implementation ZilliqaToken_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int)
{
call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PausableToken_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ZilliqaToken_ZilliqaToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
if (revert) {
return;
}
}

implementation ZilliqaToken_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s738: Ref, _totalTokenAmount_s738: int)
{
call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ZilliqaToken_ZilliqaToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
if (revert) {
return;
}
}

implementation transfer_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s757: Ref, _value_s757: int) returns (__ret_0_: bool)
{
var __var_23: bool;
var __var_24: int;
call validDestination_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s757);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_23 := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_23;
return;
}

implementation transfer_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s757: Ref, _value_s757: int) returns (__ret_0_: bool)
{
var __var_23: bool;
var __var_24: int;
call validDestination_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s757);
if (revert) {
return;
}
if ((DType[this]) == (ZilliqaToken)) {
call __var_23 := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_23;
return;
}

implementation transferFrom_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s779: Ref, _to_s779: Ref, _value_s779: int) returns (__ret_0_: bool)
{
var __var_25: bool;
var __var_26: int;
call validDestination_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s779);
if (revert) {
return;
}
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_25 := transferFrom_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_25;
return;
}

implementation transferFrom_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s779: Ref, _to_s779: Ref, _value_s779: int) returns (__ret_0_: bool)
{
var __var_25: bool;
var __var_26: int;
call validDestination_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s779);
if (revert) {
return;
}
if ((DType[this]) == (ZilliqaToken)) {
call __var_25 := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
if (revert) {
return;
}
} else {
assume (false);
}
__ret_0_ := __var_25;
return;
}

implementation burn_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int) returns (__ret_0_: bool)
{
var __var_27: int;
var __var_28: int;
call __var_27 := sub_SafeMath__fail(this, this, 0, __tmp__balances_BasicToken[this][msgsender_MSG], _value_s830);
if (revert) {
return;
}
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) - (__tmp__balances_BasicToken[this][msgsender_MSG]);
__tmp__balances_BasicToken[this][msgsender_MSG] := __var_27;
__tmp__sum_balances0[this] := (__tmp__sum_balances0[this]) + (__tmp__balances_BasicToken[this][msgsender_MSG]);
call __var_28 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply_ERC20Basic[this], _value_s830);
if (revert) {
return;
}
__tmp__totalSupply_ERC20Basic[this] := __var_28;
__ret_0_ := true;
return;
}

implementation burn_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int) returns (__ret_0_: bool)
{
var __var_27: int;
var __var_28: int;
call __var_27 := sub_SafeMath__success(this, this, 0, balances_BasicToken[this][msgsender_MSG], _value_s830);
if (revert) {
return;
}
sum_balances0[this] := (sum_balances0[this]) - (balances_BasicToken[this][msgsender_MSG]);
balances_BasicToken[this][msgsender_MSG] := __var_27;
sum_balances0[this] := (sum_balances0[this]) + (balances_BasicToken[this][msgsender_MSG]);
call __var_28 := sub_SafeMath__success(this, this, 0, totalSupply_ERC20Basic[this], _value_s830);
if (revert) {
return;
}
totalSupply_ERC20Basic[this] := __var_28;
assert {:EventEmitted "Burn_ZilliqaToken"} (true);
assert {:EventEmitted "Transfer_ZilliqaToken"} (true);
__ret_0_ := true;
return;
}

implementation burnFrom_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s853: Ref, _value_s853: int) returns (__ret_0_: bool)
{
var __var_29: bool;
var __var_30: bool;
if ((__tmp__DType[this]) == (ZilliqaToken)) {
call __var_29 := transferFrom_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s853, msgsender_MSG, _value_s853);
if (revert) {
return;
}
} else {
assume (false);
}
call __var_30 := burn_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s853);
if (revert) {
return;
}
__ret_0_ := __var_30;
return;
}

implementation burnFrom_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s853: Ref, _value_s853: int) returns (__ret_0_: bool)
{
var __var_29: bool;
var __var_30: bool;
if ((DType[this]) == (ZilliqaToken)) {
call __var_29 := transferFrom_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s853, msgsender_MSG, _value_s853);
if (revert) {
return;
}
} else {
assume (false);
}
assert (__var_29);
call __var_30 := burn_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s853);
if (revert) {
return;
}
__ret_0_ := __var_30;
return;
}

implementation emergencyERC20Drain_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s870: Ref, amount_s870: int)
{
var __var_31: bool;
var __var_32: int;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((__tmp__DType[token_s870]) == (ZilliqaToken)) {
call __var_31 := transfer_ZilliqaToken__fail(token_s870, this, __var_32, __tmp__owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((__tmp__DType[token_s870]) == (PausableToken)) {
call __var_31 := transfer_PausableToken__fail(token_s870, this, __var_32, __tmp__owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((__tmp__DType[token_s870]) == (StandardToken)) {
call __var_31 := transfer_BasicToken__fail(token_s870, this, __var_32, __tmp__owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((__tmp__DType[token_s870]) == (ERC20)) {
call __var_31 := transfer_ERC20Basic(token_s870, this, __var_32, __tmp__owner_Ownable[this], amount_s870);
} else if ((__tmp__DType[token_s870]) == (BasicToken)) {
call __var_31 := transfer_BasicToken__fail(token_s870, this, __var_32, __tmp__owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((__tmp__DType[token_s870]) == (ERC20Basic)) {
call __var_31 := transfer_ERC20Basic(token_s870, this, __var_32, __tmp__owner_Ownable[this], amount_s870);
} else {
assume (false);
}
}

implementation emergencyERC20Drain_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s870: Ref, amount_s870: int)
{
var __var_31: bool;
var __var_32: int;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if ((DType[token_s870]) == (ZilliqaToken)) {
call __var_31 := transfer_ZilliqaToken__success(token_s870, this, __var_32, owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((DType[token_s870]) == (PausableToken)) {
call __var_31 := transfer_PausableToken__success(token_s870, this, __var_32, owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((DType[token_s870]) == (StandardToken)) {
call __var_31 := transfer_BasicToken__success(token_s870, this, __var_32, owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((DType[token_s870]) == (ERC20)) {
call __var_31 := transfer_ERC20Basic(token_s870, this, __var_32, owner_Ownable[this], amount_s870);
} else if ((DType[token_s870]) == (BasicToken)) {
call __var_31 := transfer_BasicToken__success(token_s870, this, __var_32, owner_Ownable[this], amount_s870);
if (revert) {
return;
}
} else if ((DType[token_s870]) == (ERC20Basic)) {
call __var_31 := transfer_ERC20Basic(token_s870, this, __var_32, owner_Ownable[this], amount_s870);
} else {
assume (false);
}
}

implementation changeAdmin_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref)
{
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp__admin_Pausable[this] := newAdmin_s893;
}

implementation changeAdmin_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref)
{
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assert {:EventEmitted "AdminTransferred_ZilliqaToken"} (true);
admin_Pausable[this] := newAdmin_s893;
}

implementation name_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := __tmp__name_ZilliqaToken[this];
return;
}

implementation name_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := name_ZilliqaToken[this];
return;
}

implementation symbol_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := __tmp__symbol_ZilliqaToken[this];
return;
}

implementation symbol_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := symbol_ZilliqaToken[this];
return;
}

implementation decimals_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := __tmp__decimals_ZilliqaToken[this];
return;
}

implementation decimals_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
__ret_0_ := decimals_ZilliqaToken[this];
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (ZilliqaToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (PausableToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Pausable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Ownable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (StandardToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (BasicToken)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ERC20Basic)) {
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
if ((DType[to]) == (ZilliqaToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (PausableToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Pausable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Ownable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (StandardToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20)) {
assume ((amount) == (0));
} else if ((DType[to]) == (BasicToken)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ERC20Basic)) {
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
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var who_s10: Ref;
var __ret_0_balanceOf: int;
var to_s19: Ref;
var value_s19: int;
var __ret_0_transfer: bool;
var _owner_s154: Ref;
var balance_s154: int;
var _to_s142: Ref;
var _value_s142: int;
var owner_s166: Ref;
var spender_s166: Ref;
var __ret_0_allowance: int;
var from_s177: Ref;
var to_s177: Ref;
var value_s177: int;
var __ret_0_transferFrom: bool;
var spender_s186: Ref;
var value_s186: int;
var __ret_0_approve: bool;
var _owner_s335: Ref;
var _spender_s335: Ref;
var _from_s291: Ref;
var _to_s291: Ref;
var _value_s291: int;
var _spender_s319: Ref;
var _value_s319: int;
var _spender_s376: Ref;
var _addedValue_s376: int;
var __ret_0_increaseApproval: bool;
var _spender_s436: Ref;
var _subtractedValue_s436: int;
var __ret_0_decreaseApproval: bool;
var __ret_0_owner: Ref;
var newOwner_s490: Ref;
var __ret_0_pausedPublic: bool;
var __ret_0_pausedOwnerAdmin: bool;
var __ret_0_admin: Ref;
var newPausedPublic_s574: bool;
var newPausedOwnerAdmin_s574: bool;
var _to_s597: Ref;
var _value_s597: int;
var _from_s618: Ref;
var _to_s618: Ref;
var _value_s618: int;
var _spender_s636: Ref;
var _value_s636: int;
var _spender_s654: Ref;
var _addedValue_s654: int;
var success_s654: bool;
var _spender_s672: Ref;
var _subtractedValue_s672: int;
var success_s672: bool;
var _to_s757: Ref;
var _value_s757: int;
var _from_s779: Ref;
var _to_s779: Ref;
var _value_s779: int;
var __ret_0_name: int;
var __ret_0_symbol: int;
var __ret_0_decimals: int;
var _admin_s738: Ref;
var _totalTokenAmount_s738: int;
var _value_s830: int;
var __ret_0_burn: bool;
var _from_s853: Ref;
var _value_s853: int;
var __ret_0_burnFrom: bool;
var token_s870: Ref;
var amount_s870: int;
var newAdmin_s893: Ref;
// ---- Logic for payable function START 
assume ((__tmp__Balance[from]) >= (amount));
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
if ((__tmp__DType[from]) == (ZilliqaToken)) {
if ((choice) == (21)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (20)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__fail(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (19)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s757) >= (0)) && ((_value_s757) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ZilliqaToken__fail(from, to, msgvalue_MSG, _to_s757, _value_s757);
if (revert) {
return;
}
}
} else if ((choice) == (18)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken__fail(from, to, msgvalue_MSG, _owner_s335, _spender_s335);
if (revert) {
return;
}
}
} else if ((choice) == (17)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s779) >= (0)) && ((_value_s779) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ZilliqaToken__fail(from, to, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
if (revert) {
return;
}
}
} else if ((choice) == (16)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s636) >= (0)) && ((_value_s636) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_PausableToken__fail(from, to, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
}
} else if ((choice) == (15)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s654) >= (0)) && ((_addedValue_s654) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s654 := increaseApproval_PausableToken__fail(from, to, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
}
} else if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s672) >= (0)) && ((_subtractedValue_s672) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s672 := decreaseApproval_PausableToken__fail(from, to, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__fail(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__fail(from, to, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ZilliqaToken__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ZilliqaToken__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ZilliqaToken__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s830) >= (0)) && ((_value_s830) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_burn := burn_ZilliqaToken__fail(from, to, msgvalue_MSG, _value_s830);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s853) >= (0)) && ((_value_s853) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_burnFrom := burnFrom_ZilliqaToken__fail(from, to, msgvalue_MSG, _from_s853, _value_s853);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((amount_s870) >= (0)) && ((amount_s870) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call emergencyERC20Drain_ZilliqaToken__fail(from, to, msgvalue_MSG, token_s870, amount_s870);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call changeAdmin_ZilliqaToken__fail(from, to, msgvalue_MSG, newAdmin_s893);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (PausableToken)) {
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__fail(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s597) >= (0)) && ((_value_s597) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_PausableToken__fail(from, to, msgvalue_MSG, _to_s597, _value_s597);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken__fail(from, to, msgvalue_MSG, _owner_s335, _spender_s335);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s618) >= (0)) && ((_value_s618) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_PausableToken__fail(from, to, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s636) >= (0)) && ((_value_s636) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_PausableToken__fail(from, to, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s654) >= (0)) && ((_addedValue_s654) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s654 := increaseApproval_PausableToken__fail(from, to, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s672) >= (0)) && ((_subtractedValue_s672) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s672 := decreaseApproval_PausableToken__fail(from, to, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__fail(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__fail(from, to, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (Pausable)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__fail(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__fail(from, to, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (Ownable)) {
if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__fail(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (StandardToken)) {
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__fail(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s142) >= (0)) && ((_value_s142) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_BasicToken__fail(from, to, msgvalue_MSG, _to_s142, _value_s142);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken__fail(from, to, msgvalue_MSG, _owner_s335, _spender_s335);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s291) >= (0)) && ((_value_s291) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_StandardToken__fail(from, to, msgvalue_MSG, _from_s291, _to_s291, _value_s291);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s319) >= (0)) && ((_value_s319) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_StandardToken__fail(from, to, msgvalue_MSG, _spender_s319, _value_s319);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s376) >= (0)) && ((_addedValue_s376) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseApproval := increaseApproval_StandardToken__fail(from, to, msgvalue_MSG, _spender_s376, _addedValue_s376);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s436) >= (0)) && ((_subtractedValue_s436) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseApproval := decreaseApproval_StandardToken__fail(from, to, msgvalue_MSG, _spender_s436, _subtractedValue_s436);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ERC20)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20Basic(from, to, msgvalue_MSG, who_s10);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Basic(from, to, msgvalue_MSG, to_s19, value_s19);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(from, to, msgvalue_MSG, owner_s166, spender_s166);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s177) >= (0)) && ((value_s177) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(from, to, msgvalue_MSG, from_s177, to_s177, value_s177);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s186) >= (0)) && ((value_s186) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(from, to, msgvalue_MSG, spender_s186, value_s186);
}
}
} else if ((__tmp__DType[from]) == (BasicToken)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__fail(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s142) >= (0)) && ((_value_s142) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_BasicToken__fail(from, to, msgvalue_MSG, _to_s142, _value_s142);
if (revert) {
return;
}
}
}
} else if ((__tmp__DType[from]) == (ERC20Basic)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20Basic(from, to, msgvalue_MSG, who_s10);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Basic(from, to, msgvalue_MSG, to_s19, value_s19);
}
}
}
}

implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var who_s10: Ref;
var __ret_0_balanceOf: int;
var to_s19: Ref;
var value_s19: int;
var __ret_0_transfer: bool;
var _owner_s154: Ref;
var balance_s154: int;
var _to_s142: Ref;
var _value_s142: int;
var owner_s166: Ref;
var spender_s166: Ref;
var __ret_0_allowance: int;
var from_s177: Ref;
var to_s177: Ref;
var value_s177: int;
var __ret_0_transferFrom: bool;
var spender_s186: Ref;
var value_s186: int;
var __ret_0_approve: bool;
var _owner_s335: Ref;
var _spender_s335: Ref;
var _from_s291: Ref;
var _to_s291: Ref;
var _value_s291: int;
var _spender_s319: Ref;
var _value_s319: int;
var _spender_s376: Ref;
var _addedValue_s376: int;
var __ret_0_increaseApproval: bool;
var _spender_s436: Ref;
var _subtractedValue_s436: int;
var __ret_0_decreaseApproval: bool;
var __ret_0_owner: Ref;
var newOwner_s490: Ref;
var __ret_0_pausedPublic: bool;
var __ret_0_pausedOwnerAdmin: bool;
var __ret_0_admin: Ref;
var newPausedPublic_s574: bool;
var newPausedOwnerAdmin_s574: bool;
var _to_s597: Ref;
var _value_s597: int;
var _from_s618: Ref;
var _to_s618: Ref;
var _value_s618: int;
var _spender_s636: Ref;
var _value_s636: int;
var _spender_s654: Ref;
var _addedValue_s654: int;
var success_s654: bool;
var _spender_s672: Ref;
var _subtractedValue_s672: int;
var success_s672: bool;
var _to_s757: Ref;
var _value_s757: int;
var _from_s779: Ref;
var _to_s779: Ref;
var _value_s779: int;
var __ret_0_name: int;
var __ret_0_symbol: int;
var __ret_0_decimals: int;
var _admin_s738: Ref;
var _totalTokenAmount_s738: int;
var _value_s830: int;
var __ret_0_burn: bool;
var _from_s853: Ref;
var _value_s853: int;
var __ret_0_burnFrom: bool;
var token_s870: Ref;
var amount_s870: int;
var newAdmin_s893: Ref;
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
if ((DType[from]) == (ZilliqaToken)) {
if ((choice) == (21)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (20)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__success(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (19)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s757) >= (0)) && ((_value_s757) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ZilliqaToken__success(from, to, msgvalue_MSG, _to_s757, _value_s757);
if (revert) {
return;
}
}
} else if ((choice) == (18)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken__success(from, to, msgvalue_MSG, _owner_s335, _spender_s335);
if (revert) {
return;
}
}
} else if ((choice) == (17)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s779) >= (0)) && ((_value_s779) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ZilliqaToken__success(from, to, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
if (revert) {
return;
}
}
} else if ((choice) == (16)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s636) >= (0)) && ((_value_s636) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_PausableToken__success(from, to, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
}
} else if ((choice) == (15)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s654) >= (0)) && ((_addedValue_s654) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s654 := increaseApproval_PausableToken__success(from, to, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
}
} else if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s672) >= (0)) && ((_subtractedValue_s672) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s672 := decreaseApproval_PausableToken__success(from, to, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__success(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__success(from, to, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ZilliqaToken__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ZilliqaToken__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ZilliqaToken__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s830) >= (0)) && ((_value_s830) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_burn := burn_ZilliqaToken__success(from, to, msgvalue_MSG, _value_s830);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s853) >= (0)) && ((_value_s853) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_burnFrom := burnFrom_ZilliqaToken__success(from, to, msgvalue_MSG, _from_s853, _value_s853);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((amount_s870) >= (0)) && ((amount_s870) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call emergencyERC20Drain_ZilliqaToken__success(from, to, msgvalue_MSG, token_s870, amount_s870);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call changeAdmin_ZilliqaToken__success(from, to, msgvalue_MSG, newAdmin_s893);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (PausableToken)) {
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__success(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s597) >= (0)) && ((_value_s597) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_PausableToken__success(from, to, msgvalue_MSG, _to_s597, _value_s597);
if (revert) {
return;
}
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken__success(from, to, msgvalue_MSG, _owner_s335, _spender_s335);
if (revert) {
return;
}
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s618) >= (0)) && ((_value_s618) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_PausableToken__success(from, to, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
if (revert) {
return;
}
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s636) >= (0)) && ((_value_s636) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_PausableToken__success(from, to, msgvalue_MSG, _spender_s636, _value_s636);
if (revert) {
return;
}
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s654) >= (0)) && ((_addedValue_s654) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s654 := increaseApproval_PausableToken__success(from, to, msgvalue_MSG, _spender_s654, _addedValue_s654);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s672) >= (0)) && ((_subtractedValue_s672) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s672 := decreaseApproval_PausableToken__success(from, to, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__success(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__success(from, to, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (Pausable)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__success(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable__success(from, to, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (Ownable)) {
if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable__success(from, to, msgvalue_MSG, newOwner_s490);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (StandardToken)) {
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__success(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s142) >= (0)) && ((_value_s142) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_BasicToken__success(from, to, msgvalue_MSG, _to_s142, _value_s142);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken__success(from, to, msgvalue_MSG, _owner_s335, _spender_s335);
if (revert) {
return;
}
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s291) >= (0)) && ((_value_s291) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_StandardToken__success(from, to, msgvalue_MSG, _from_s291, _to_s291, _value_s291);
if (revert) {
return;
}
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s319) >= (0)) && ((_value_s319) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_StandardToken__success(from, to, msgvalue_MSG, _spender_s319, _value_s319);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s376) >= (0)) && ((_addedValue_s376) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseApproval := increaseApproval_StandardToken__success(from, to, msgvalue_MSG, _spender_s376, _addedValue_s376);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s436) >= (0)) && ((_subtractedValue_s436) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseApproval := decreaseApproval_StandardToken__success(from, to, msgvalue_MSG, _spender_s436, _subtractedValue_s436);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ERC20)) {
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20Basic(from, to, msgvalue_MSG, who_s10);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Basic(from, to, msgvalue_MSG, to_s19, value_s19);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(from, to, msgvalue_MSG, owner_s166, spender_s166);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s177) >= (0)) && ((value_s177) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(from, to, msgvalue_MSG, from_s177, to_s177, value_s177);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s186) >= (0)) && ((value_s186) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(from, to, msgvalue_MSG, spender_s186, value_s186);
}
}
} else if ((DType[from]) == (BasicToken)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken__success(from, to, msgvalue_MSG, _owner_s154);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s142) >= (0)) && ((_value_s142) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_BasicToken__success(from, to, msgvalue_MSG, _to_s142, _value_s142);
if (revert) {
return;
}
}
}
} else if ((DType[from]) == (ERC20Basic)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20Basic(from, to, msgvalue_MSG, who_s10);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Basic(from, to, msgvalue_MSG, to_s19, value_s19);
}
}
}
}

implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
var __snap___tmp__Balance: [Ref]int;
var __snap___tmp__DType: [Ref]ContractName;
var __snap___tmp__Alloc: [Ref]bool;
var __snap___tmp__balance_ADDR: [Ref]int;
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__sum_balances0: [Ref]int;
var __snap___tmp__M_Ref_Ref: [Ref][Ref]Ref;
var __snap___tmp__sum_allowed1: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__totalSupply_ERC20Basic: [Ref]int;
var __snap___tmp__balances_BasicToken: [Ref][Ref]int;
var __snap___tmp__allowed_StandardToken: [Ref][Ref][Ref]int;
var __snap___tmp__owner_Ownable: [Ref]Ref;
var __snap___tmp__pausedPublic_Pausable: [Ref]bool;
var __snap___tmp__pausedOwnerAdmin_Pausable: [Ref]bool;
var __snap___tmp__admin_Pausable: [Ref]Ref;
var __snap___tmp__name_ZilliqaToken: [Ref]int;
var __snap___tmp__symbol_ZilliqaToken: [Ref]int;
var __snap___tmp__decimals_ZilliqaToken: [Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__sum_balances0 := __tmp__sum_balances0;
__snap___tmp__M_Ref_Ref := __tmp__M_Ref_Ref;
__snap___tmp__sum_allowed1 := __tmp__sum_allowed1;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__totalSupply_ERC20Basic := __tmp__totalSupply_ERC20Basic;
__snap___tmp__balances_BasicToken := __tmp__balances_BasicToken;
__snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
__snap___tmp__owner_Ownable := __tmp__owner_Ownable;
__snap___tmp__pausedPublic_Pausable := __tmp__pausedPublic_Pausable;
__snap___tmp__pausedOwnerAdmin_Pausable := __tmp__pausedOwnerAdmin_Pausable;
__snap___tmp__admin_Pausable := __tmp__admin_Pausable;
__snap___tmp__name_ZilliqaToken := __tmp__name_ZilliqaToken;
__snap___tmp__symbol_ZilliqaToken := __tmp__symbol_ZilliqaToken;
__snap___tmp__decimals_ZilliqaToken := __tmp__decimals_ZilliqaToken;
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
__tmp__sum_balances0 := __snap___tmp__sum_balances0;
__tmp__M_Ref_Ref := __snap___tmp__M_Ref_Ref;
__tmp__sum_allowed1 := __snap___tmp__sum_allowed1;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__totalSupply_ERC20Basic := __snap___tmp__totalSupply_ERC20Basic;
__tmp__balances_BasicToken := __snap___tmp__balances_BasicToken;
__tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
__tmp__owner_Ownable := __snap___tmp__owner_Ownable;
__tmp__pausedPublic_Pausable := __snap___tmp__pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := __snap___tmp__pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := __snap___tmp__admin_Pausable;
__tmp__name_ZilliqaToken := __snap___tmp__name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := __snap___tmp__symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := __snap___tmp__decimals_ZilliqaToken;
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
__tmp__sum_balances0 := sum_balances0;
__tmp__M_Ref_Ref := M_Ref_Ref;
__tmp__sum_allowed1 := sum_allowed1;
__tmp__Length := Length;
__tmp__now := now;
__tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
__tmp__balances_BasicToken := balances_BasicToken;
__tmp__allowed_StandardToken := allowed_StandardToken;
__tmp__owner_Ownable := owner_Ownable;
__tmp__pausedPublic_Pausable := pausedPublic_Pausable;
__tmp__pausedOwnerAdmin_Pausable := pausedOwnerAdmin_Pausable;
__tmp__admin_Pausable := admin_Pausable;
__tmp__name_ZilliqaToken := name_ZilliqaToken;
__tmp__symbol_ZilliqaToken := symbol_ZilliqaToken;
__tmp__decimals_ZilliqaToken := decimals_ZilliqaToken;
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
if (!((msgsender_MSG) == (__tmp__owner_Ownable[this]))) {
revert := true;
return;
}
}

implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (owner_Ownable[this]))) {
revert := true;
return;
}
}

implementation whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (__tmp__pausedPublic_Pausable[this]) {
if (!(__tmp__pausedOwnerAdmin_Pausable[this])) {
if (!(((msgsender_MSG) == (__tmp__admin_Pausable[this])) || ((msgsender_MSG) == (__tmp__owner_Ownable[this])))) {
revert := true;
return;
}
} else {
revert := true;
return;
}
}
}

implementation whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (pausedPublic_Pausable[this]) {
if (!(pausedOwnerAdmin_Pausable[this])) {
if (!(((msgsender_MSG) == (admin_Pausable[this])) || ((msgsender_MSG) == (owner_Ownable[this])))) {
revert := true;
return;
}
} else {
revert := true;
return;
}
}
}

implementation validDestination_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref)
{
var __var_21: Ref;
var __var_22: Ref;
__var_21 := null;
if (!((to_s706) != (null))) {
revert := true;
return;
}
__var_22 := this;
if (!((to_s706) != (this))) {
revert := true;
return;
}
}

implementation validDestination_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref)
{
var __var_21: Ref;
var __var_22: Ref;
__var_21 := null;
if (!((to_s706) != (null))) {
revert := true;
return;
}
__var_22 := this;
if (!((to_s706) != (this))) {
revert := true;
return;
}
}

implementation CorralChoice_ERC20Basic(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var who_s10: Ref;
var __ret_0_balanceOf: int;
var to_s19: Ref;
var value_s19: int;
var __ret_0_transfer: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc who_s10;
havoc __ret_0_balanceOf;
havoc to_s19;
havoc value_s19;
havoc __ret_0_transfer;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s10);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s19, value_s19);
}
}
}

implementation CorralEntry_ERC20Basic()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((((((DType[this]) == (ERC20Basic)) || ((DType[this]) == (BasicToken))) || ((DType[this]) == (ERC20))) || ((DType[this]) == (StandardToken))) || ((DType[this]) == (PausableToken))) || ((DType[this]) == (ZilliqaToken)));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_ERC20Basic(this);
while (true)
{
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
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
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
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_SafeMath(this);
while (true)
{
}
}

implementation CorralChoice_BasicToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var _owner_s154: Ref;
var balance_s154: int;
var _to_s142: Ref;
var _value_s142: int;
var __ret_0_transfer: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc _owner_s154;
havoc balance_s154;
havoc _to_s142;
havoc _value_s142;
havoc __ret_0_transfer;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s142) >= (0)) && ((_value_s142) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s142, _value_s142);
}
}
}

implementation CorralEntry_BasicToken()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((((DType[this]) == (BasicToken)) || ((DType[this]) == (StandardToken))) || ((DType[this]) == (PausableToken))) || ((DType[this]) == (ZilliqaToken)));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_BasicToken(this);
while (true)
{
}
}

implementation CorralChoice_ERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var who_s10: Ref;
var __ret_0_balanceOf: int;
var to_s19: Ref;
var value_s19: int;
var __ret_0_transfer: bool;
var owner_s166: Ref;
var spender_s166: Ref;
var __ret_0_allowance: int;
var from_s177: Ref;
var to_s177: Ref;
var value_s177: int;
var __ret_0_transferFrom: bool;
var spender_s186: Ref;
var value_s186: int;
var __ret_0_approve: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc who_s10;
havoc __ret_0_balanceOf;
havoc to_s19;
havoc value_s19;
havoc __ret_0_transfer;
havoc owner_s166;
havoc spender_s166;
havoc __ret_0_allowance;
havoc from_s177;
havoc to_s177;
havoc value_s177;
havoc __ret_0_transferFrom;
havoc spender_s186;
havoc value_s186;
havoc __ret_0_approve;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s10);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s19) >= (0)) && ((value_s19) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s19, value_s19);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s166, spender_s166);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s177) >= (0)) && ((value_s177) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s177, to_s177, value_s177);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((value_s186) >= (0)) && ((value_s186) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s186, value_s186);
}
}
}

implementation CorralEntry_ERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((((DType[this]) == (ERC20)) || ((DType[this]) == (StandardToken))) || ((DType[this]) == (PausableToken))) || ((DType[this]) == (ZilliqaToken)));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_ERC20(this);
while (true)
{
}
}

implementation CorralChoice_StandardToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var _owner_s154: Ref;
var balance_s154: int;
var _to_s142: Ref;
var _value_s142: int;
var __ret_0_transfer: bool;
var _owner_s335: Ref;
var _spender_s335: Ref;
var __ret_0_allowance: int;
var _from_s291: Ref;
var _to_s291: Ref;
var _value_s291: int;
var __ret_0_transferFrom: bool;
var _spender_s319: Ref;
var _value_s319: int;
var __ret_0_approve: bool;
var _spender_s376: Ref;
var _addedValue_s376: int;
var __ret_0_increaseApproval: bool;
var _spender_s436: Ref;
var _subtractedValue_s436: int;
var __ret_0_decreaseApproval: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc _owner_s154;
havoc balance_s154;
havoc _to_s142;
havoc _value_s142;
havoc __ret_0_transfer;
havoc _owner_s335;
havoc _spender_s335;
havoc __ret_0_allowance;
havoc _from_s291;
havoc _to_s291;
havoc _value_s291;
havoc __ret_0_transferFrom;
havoc _spender_s319;
havoc _value_s319;
havoc __ret_0_approve;
havoc _spender_s376;
havoc _addedValue_s376;
havoc __ret_0_increaseApproval;
havoc _spender_s436;
havoc _subtractedValue_s436;
havoc __ret_0_decreaseApproval;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s142) >= (0)) && ((_value_s142) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s142, _value_s142);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s291) >= (0)) && ((_value_s291) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s291, _to_s291, _value_s291);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s319) >= (0)) && ((_value_s319) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s319, _value_s319);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s376) >= (0)) && ((_addedValue_s376) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s376, _addedValue_s376);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s436) >= (0)) && ((_subtractedValue_s436) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s436, _subtractedValue_s436);
}
}
}

implementation CorralEntry_StandardToken()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (StandardToken)) || ((DType[this]) == (PausableToken))) || ((DType[this]) == (ZilliqaToken)));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_StandardToken(this);
while (true)
{
}
}

implementation CorralChoice_Ownable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_owner: Ref;
var newOwner_s490: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_owner;
havoc newOwner_s490;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
}
}
}

implementation CorralEntry_Ownable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((((DType[this]) == (Ownable)) || ((DType[this]) == (Pausable))) || ((DType[this]) == (PausableToken))) || ((DType[this]) == (ZilliqaToken)));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_Ownable(this);
while (true)
{
}
}

implementation CorralChoice_Pausable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_owner: Ref;
var newOwner_s490: Ref;
var __ret_0_pausedPublic: bool;
var __ret_0_pausedOwnerAdmin: bool;
var __ret_0_admin: Ref;
var newPausedPublic_s574: bool;
var newPausedOwnerAdmin_s574: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_owner;
havoc newOwner_s490;
havoc __ret_0_pausedPublic;
havoc __ret_0_pausedOwnerAdmin;
havoc __ret_0_admin;
havoc newPausedPublic_s574;
havoc newPausedOwnerAdmin_s574;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
}
}
}

implementation CorralEntry_Pausable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((((DType[this]) == (Pausable)) || ((DType[this]) == (PausableToken))) || ((DType[this]) == (ZilliqaToken)));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_Pausable(this);
while (true)
{
}
}

implementation CorralChoice_PausableToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var _owner_s154: Ref;
var balance_s154: int;
var _to_s597: Ref;
var _value_s597: int;
var __ret_0_transfer: bool;
var _owner_s335: Ref;
var _spender_s335: Ref;
var __ret_0_allowance: int;
var _from_s618: Ref;
var _to_s618: Ref;
var _value_s618: int;
var __ret_0_transferFrom: bool;
var _spender_s636: Ref;
var _value_s636: int;
var __ret_0_approve: bool;
var _spender_s654: Ref;
var _addedValue_s654: int;
var success_s654: bool;
var _spender_s672: Ref;
var _subtractedValue_s672: int;
var success_s672: bool;
var __ret_0_owner: Ref;
var newOwner_s490: Ref;
var __ret_0_pausedPublic: bool;
var __ret_0_pausedOwnerAdmin: bool;
var __ret_0_admin: Ref;
var newPausedPublic_s574: bool;
var newPausedOwnerAdmin_s574: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc _owner_s154;
havoc balance_s154;
havoc _to_s597;
havoc _value_s597;
havoc __ret_0_transfer;
havoc _owner_s335;
havoc _spender_s335;
havoc __ret_0_allowance;
havoc _from_s618;
havoc _to_s618;
havoc _value_s618;
havoc __ret_0_transferFrom;
havoc _spender_s636;
havoc _value_s636;
havoc __ret_0_approve;
havoc _spender_s654;
havoc _addedValue_s654;
havoc success_s654;
havoc _spender_s672;
havoc _subtractedValue_s672;
havoc success_s672;
havoc __ret_0_owner;
havoc newOwner_s490;
havoc __ret_0_pausedPublic;
havoc __ret_0_pausedOwnerAdmin;
havoc __ret_0_admin;
havoc newPausedPublic_s574;
havoc newPausedOwnerAdmin_s574;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s597) >= (0)) && ((_value_s597) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s618) >= (0)) && ((_value_s618) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s636) >= (0)) && ((_value_s636) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s654) >= (0)) && ((_addedValue_s654) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s654 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s672) >= (0)) && ((_subtractedValue_s672) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s672 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
}
}
}

implementation CorralEntry_PausableToken()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume (((DType[this]) == (PausableToken)) || ((DType[this]) == (ZilliqaToken)));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_PausableToken(this);
while (true)
{
}
}

implementation CorralChoice_ZilliqaToken(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var _owner_s154: Ref;
var balance_s154: int;
var _to_s757: Ref;
var _value_s757: int;
var __ret_0_transfer: bool;
var _owner_s335: Ref;
var _spender_s335: Ref;
var __ret_0_allowance: int;
var _from_s779: Ref;
var _to_s779: Ref;
var _value_s779: int;
var __ret_0_transferFrom: bool;
var _spender_s636: Ref;
var _value_s636: int;
var __ret_0_approve: bool;
var _spender_s654: Ref;
var _addedValue_s654: int;
var success_s654: bool;
var _spender_s672: Ref;
var _subtractedValue_s672: int;
var success_s672: bool;
var __ret_0_owner: Ref;
var newOwner_s490: Ref;
var __ret_0_pausedPublic: bool;
var __ret_0_pausedOwnerAdmin: bool;
var __ret_0_admin: Ref;
var newPausedPublic_s574: bool;
var newPausedOwnerAdmin_s574: bool;
var __ret_0_name: int;
var __ret_0_symbol: int;
var __ret_0_decimals: int;
var _admin_s738: Ref;
var _totalTokenAmount_s738: int;
var _value_s830: int;
var __ret_0_burn: bool;
var _from_s853: Ref;
var _value_s853: int;
var __ret_0_burnFrom: bool;
var token_s870: Ref;
var amount_s870: int;
var newAdmin_s893: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc _owner_s154;
havoc balance_s154;
havoc _to_s757;
havoc _value_s757;
havoc __ret_0_transfer;
havoc _owner_s335;
havoc _spender_s335;
havoc __ret_0_allowance;
havoc _from_s779;
havoc _to_s779;
havoc _value_s779;
havoc __ret_0_transferFrom;
havoc _spender_s636;
havoc _value_s636;
havoc __ret_0_approve;
havoc _spender_s654;
havoc _addedValue_s654;
havoc success_s654;
havoc _spender_s672;
havoc _subtractedValue_s672;
havoc success_s672;
havoc __ret_0_owner;
havoc newOwner_s490;
havoc __ret_0_pausedPublic;
havoc __ret_0_pausedOwnerAdmin;
havoc __ret_0_admin;
havoc newPausedPublic_s574;
havoc newPausedOwnerAdmin_s574;
havoc __ret_0_name;
havoc __ret_0_symbol;
havoc __ret_0_decimals;
havoc _admin_s738;
havoc _totalTokenAmount_s738;
havoc _value_s830;
havoc __ret_0_burn;
havoc _from_s853;
havoc _value_s853;
havoc __ret_0_burnFrom;
havoc token_s870;
havoc amount_s870;
havoc newAdmin_s893;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (ERC20Basic));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (BasicToken));
assume ((DType[msgsender_MSG]) != (ERC20));
assume ((DType[msgsender_MSG]) != (StandardToken));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (Pausable));
assume ((DType[msgsender_MSG]) != (PausableToken));
assume ((DType[msgsender_MSG]) != (ZilliqaToken));
Alloc[msgsender_MSG] := true;
if ((choice) == (21)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (20)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
}
} else if ((choice) == (19)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s757) >= (0)) && ((_value_s757) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transfer := transfer_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
}
} else if ((choice) == (18)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
}
} else if ((choice) == (17)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s779) >= (0)) && ((_value_s779) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_transferFrom := transferFrom_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
}
} else if ((choice) == (16)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s636) >= (0)) && ((_value_s636) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
}
} else if ((choice) == (15)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_addedValue_s654) >= (0)) && ((_addedValue_s654) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s654 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
}
} else if ((choice) == (14)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_subtractedValue_s672) >= (0)) && ((_subtractedValue_s672) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call success_s672 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
}
} else if ((choice) == (13)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (12)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
}
} else if ((choice) == (11)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedPublic := pausedPublic_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (10)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_pausedOwnerAdmin := pausedOwnerAdmin_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (9)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_admin := admin_Pausable(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (8)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call pause_Pausable(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
}
} else if ((choice) == (7)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_name := name_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (6)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_symbol := symbol_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (5)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_decimals := decimals_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (4)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s830) >= (0)) && ((_value_s830) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_burn := burn_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _value_s830);
}
} else if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((_value_s853) >= (0)) && ((_value_s853) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call __ret_0_burnFrom := burnFrom_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _from_s853, _value_s853);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume (((amount_s870) >= (0)) && ((amount_s870) < (115792089237316195423570985008687907853269984665640564039457584007913129639936)));
assume ((msgvalue_MSG) == (0));
call emergencyERC20Drain_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, token_s870, amount_s870);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call changeAdmin_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, newAdmin_s893);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _admin_s738: Ref;
var _totalTokenAmount_s738: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (ZilliqaToken));
assume ((!(revert)) && ((gas) >= (0)));
call CorralChoice_ZilliqaToken(this);
while (true)
{
}
}


