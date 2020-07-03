// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:ZilliqaToken.bpl /pretty:1 /noVerify /noinfer __SolToBoogieTest_out.bpl

// spec1
// LTLProperty: [](!finished(*, owner_Ownable[this] != old(owner_Ownable[this]) && msg.sender != old(owner_Ownable[this])))

// spec2
// LTLProperty: [](!INV {sum(balances_BasicToken[this]) != totalSupply_ERC20Basic[this]})
// LTLProperty: [](!finished(*, sum_balances0[balances_BasicToken[this]] != totalSupply_ERC20Basic[this]))

// spec3
// LTLProperty: [](!finished(*, admin_Pausable[this] != old(admin_Pausable[this]) && msg.sender != old(owner_Ownable[this])))

// spec4
// LTLProperty: [](!finished(ZilliqaToken.transfer(to, val), to == null))

// spec5
// #LTLProperty: [](!finished(ZilliqaToken.transfer(to, val), this == to))

type Ref = int;

type ContractName = int;

var null: Ref;

var ERC20Basic: ContractName;

var SafeMath: ContractName;

var BasicToken: ContractName;

var ERC20: ContractName;

var StandardToken: ContractName;

var Ownable: ContractName;

var Pausable: ContractName;

var PausableToken: ContractName;

var ZilliqaToken: ContractName;

function {:smtdefined "x"} ConstantToRef(x: int) : Ref;

function BoogieRefToInt(x: Ref) : int;

function {:bvbuiltin "mod"} modBpl(x: int, y: int) : int;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefIntArr() : [Ref]int;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntIntArr() : [int]int;

function {:smtdefined "((as const (Array Int Bool)) false)"} zeroRefBoolArr() : [Ref]bool;

function {:smtdefined "((as const (Array Int Bool)) false)"} zeroIntBoolArr() : [int]bool;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefRefArr() : [Ref]Ref;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntRefArr() : [int]Ref;

function nonlinearMul(x: int, y: int) : int;

function nonlinearDiv(x: int, y: int) : int;

function nonlinearPow(x: int, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int_balances0: [Ref][Ref]int;

var sum_balances0: [Ref]int;

var M_Ref_int_allowed1: [Ref][Ref]int;

var M_Ref_Ref_allowed1: [Ref][Ref]Ref;

var sum_allowed1: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, totalSupply_ERC20Basic;



implementation ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.totalSupply=totalSupply_ERC20Basic[this]"} totalSupply_ERC20Basic: [Ref]int;

procedure {:public} {:inline 1} balanceOf_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s10: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s19: Ref, value_s19: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance;



implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



implementation BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.balances[i0]=M_Ref_int_balances0[balances_BasicToken[this]][i0]"} {:sum "sum(this.balances)=sum_balances0[balances_BasicToken[this]]"} balances_BasicToken: [Ref]Ref;

procedure {:public} {:inline 1} transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s142: Ref, 
    _value_s142: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s142: Ref, 
    _value_s142: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s142, _value_s142);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref)
   returns (balance_s154: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas;



implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref)
   returns (balance_s154: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call balance_s154 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, totalSupply_ERC20Basic;



implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s166: Ref, 
    spender_s166: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s177: Ref, 
    to_s177: Ref, 
    value_s177: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s186: Ref, 
    value_s186: int)
   returns (__ret_0_: bool);



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



implementation StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.allowed[i0][i1]=M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][i0]][i1]"} {:sum "sum(this.allowed)=sum_allowed1[allowed_StandardToken[this]]"} allowed_StandardToken: [Ref]Ref;

procedure {:public} {:inline 1} transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s291: Ref, 
    _to_s291: Ref, 
    _value_s291: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s291: Ref, 
    _to_s291: Ref, 
    _value_s291: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s291, _to_s291, _value_s291);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s319: Ref, 
    _value_s319: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s319: Ref, 
    _value_s319: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s319, _value_s319);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s335: Ref, 
    _spender_s335: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s335: Ref, 
    _spender_s335: Ref)
   returns (__ret_0_: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s376: Ref, 
    _addedValue_s376: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s376: Ref, 
    _addedValue_s376: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s376, _addedValue_s376);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s436: Ref, 
    _subtractedValue_s436: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s436: Ref, 
    _subtractedValue_s436: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s436, _subtractedValue_s436);
        assume !revert && gas >= 0;
    }
}



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, owner_Ownable;



implementation Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable;



procedure {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable;



implementation Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.pausedPublic=pausedPublic_Pausable[this]"} pausedPublic_Pausable: [Ref]bool;

var {:access "this.pausedOwnerAdmin=pausedOwnerAdmin_Pausable[this]"} pausedOwnerAdmin_Pausable: [Ref]bool;

var {:access "this.admin=admin_Pausable[this]"} admin_Pausable: [Ref]Ref;

procedure {:public} {:inline 1} pause_Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    newPausedPublic_s574: bool, 
    newPausedOwnerAdmin_s574: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, pausedPublic_Pausable, pausedOwnerAdmin_Pausable;



implementation pause_Pausable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    newPausedPublic_s574: bool, 
    newPausedOwnerAdmin_s574: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call pause_Pausable__success(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable;



implementation PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s597: Ref, 
    _value_s597: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s597: Ref, 
    _value_s597: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s618: Ref, 
    _to_s618: Ref, 
    _value_s618: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s618: Ref, 
    _to_s618: Ref, 
    _value_s618: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s636: Ref, 
    _value_s636: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s636: Ref, 
    _value_s636: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s654: Ref, 
    _addedValue_s654: int)
   returns (success_s654: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s654: Ref, 
    _addedValue_s654: int)
   returns (success_s654: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call success_s654 := increaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s672: Ref, 
    _subtractedValue_s672: int)
   returns (success_s672: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s672: Ref, 
    _subtractedValue_s672: int)
   returns (success_s672: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call success_s672 := decreaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
        assume !revert && gas >= 0;
    }
}



var {:access "this.name=name_ZilliqaToken[this]"} name_ZilliqaToken: [Ref]int;

var {:access "this.symbol=symbol_ZilliqaToken[this]"} symbol_ZilliqaToken: [Ref]int;

var {:access "this.decimals=decimals_ZilliqaToken[this]"} decimals_ZilliqaToken: [Ref]int;

procedure {:inline 1} ZilliqaToken_ZilliqaToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int);
  modifies Balance, name_ZilliqaToken, symbol_ZilliqaToken, decimals_ZilliqaToken, admin_Pausable, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0;



procedure {:constructor} {:public} {:inline 1} ZilliqaToken_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable, name_ZilliqaToken, symbol_ZilliqaToken, decimals_ZilliqaToken;



implementation ZilliqaToken_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call ZilliqaToken_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s757: Ref, 
    _value_s757: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s757: Ref, 
    _value_s757: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s779: Ref, 
    _to_s779: Ref, 
    _value_s779: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s779: Ref, 
    _to_s779: Ref, 
    _value_s779: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation burn_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := burn_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s830);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burnFrom_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s853: Ref, 
    _value_s853: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc, totalSupply_ERC20Basic;



implementation burnFrom_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s853: Ref, 
    _value_s853: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := burnFrom_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s853, _value_s853);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} emergencyERC20Drain_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s870: Ref, 
    amount_s870: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, sum_balances0, M_Ref_int_balances0;



implementation emergencyERC20Drain_ZilliqaToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s870: Ref, 
    amount_s870: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call emergencyERC20Drain_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, token_s870, amount_s870);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} changeAdmin_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, gas, admin_Pausable;



implementation changeAdmin_ZilliqaToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        assume revert || gas < 0;
    }
    else
    {
        call changeAdmin_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, newAdmin_s893);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, revert, Balance;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} validDestination_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref);
  modifies gas, revert;



procedure CorralChoice_ERC20Basic(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20Basic();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, sum_allowed1;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, now, owner_Ownable, Balance;



procedure CorralChoice_Pausable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable;



procedure CorralEntry_Pausable();
  modifies gas, Alloc, Balance, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken;



procedure CorralChoice_PausableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_PausableToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, sum_allowed1;



procedure CorralChoice_ZilliqaToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, admin_Pausable;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, now, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, admin_Pausable, Balance, balances_BasicToken, allowed_StandardToken, name_ZilliqaToken, symbol_ZilliqaToken, decimals_ZilliqaToken;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_balances0: [Ref][Ref]int;

var __tmp__sum_balances0: [Ref]int;

var __tmp__M_Ref_int_allowed1: [Ref][Ref]int;

var __tmp__M_Ref_Ref_allowed1: [Ref][Ref]Ref;

var __tmp__sum_allowed1: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__totalSupply_ERC20Basic: [Ref]int;

var __tmp__balances_BasicToken: [Ref]Ref;

var __tmp__allowed_StandardToken: [Ref]Ref;

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
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s142: Ref, 
    _value_s142: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s142: Ref, 
    _value_s142: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref)
   returns (balance_s154: int);
  modifies gas;



procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref)
   returns (balance_s154: int);
  modifies gas;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__Alloc;



procedure {:inline 1} StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



procedure {:inline 1} StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1;



procedure {:inline 1} transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s291: Ref, 
    _to_s291: Ref, 
    _value_s291: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s291: Ref, 
    _to_s291: Ref, 
    _value_s291: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s319: Ref, 
    _value_s319: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s319: Ref, 
    _value_s319: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s335: Ref, 
    _spender_s335: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s335: Ref, 
    _spender_s335: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s376: Ref, 
    _addedValue_s376: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s376: Ref, 
    _addedValue_s376: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s436: Ref, 
    _subtractedValue_s436: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s436: Ref, 
    _subtractedValue_s436: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref);
  modifies gas, revert, owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref);
  modifies gas, revert, __tmp__owner_Ownable;



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable;



procedure {:inline 1} Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable;



procedure {:inline 1} Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable;



procedure {:inline 1} pause_Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    newPausedPublic_s574: bool, 
    newPausedOwnerAdmin_s574: bool);
  modifies gas, revert, pausedPublic_Pausable, pausedOwnerAdmin_Pausable;



procedure {:inline 1} pause_Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    newPausedPublic_s574: bool, 
    newPausedOwnerAdmin_s574: bool);
  modifies gas, revert, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable;



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable;



procedure {:inline 1} PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable;



procedure {:inline 1} transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s597: Ref, 
    _value_s597: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s597: Ref, 
    _value_s597: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s618: Ref, 
    _to_s618: Ref, 
    _value_s618: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s618: Ref, 
    _to_s618: Ref, 
    _value_s618: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s636: Ref, 
    _value_s636: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s636: Ref, 
    _value_s636: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s654: Ref, 
    _addedValue_s654: int)
   returns (success_s654: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s654: Ref, 
    _addedValue_s654: int)
   returns (success_s654: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s672: Ref, 
    _subtractedValue_s672: int)
   returns (success_s672: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s672: Ref, 
    _subtractedValue_s672: int)
   returns (success_s672: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} ZilliqaToken_ZilliqaToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int);
  modifies __tmp__Balance, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, __tmp__admin_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:constructor} {:inline 1} ZilliqaToken_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, pausedPublic_Pausable, pausedOwnerAdmin_Pausable, admin_Pausable, name_ZilliqaToken, symbol_ZilliqaToken, decimals_ZilliqaToken;



procedure {:constructor} {:inline 1} ZilliqaToken_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken;



procedure {:inline 1} transfer_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s757: Ref, 
    _value_s757: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s757: Ref, 
    _value_s757: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s779: Ref, 
    _to_s779: Ref, 
    _value_s779: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s779: Ref, 
    _to_s779: Ref, 
    _value_s779: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} burn_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int)
   returns (__ret_0_: bool);
  modifies gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} burn_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} burnFrom_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s853: Ref, 
    _value_s853: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc, totalSupply_ERC20Basic;



procedure {:inline 1} burnFrom_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s853: Ref, 
    _value_s853: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} emergencyERC20Drain_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s870: Ref, 
    amount_s870: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} emergencyERC20Drain_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s870: Ref, 
    amount_s870: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} changeAdmin_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref);
  modifies gas, admin_Pausable, revert;



procedure {:inline 1} changeAdmin_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref);
  modifies gas, __tmp__admin_Pausable, revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__pausedPublic_Pausable, __tmp__pausedOwnerAdmin_Pausable, __tmp__admin_Pausable, __tmp__name_ZilliqaToken, __tmp__symbol_ZilliqaToken, __tmp__decimals_ZilliqaToken, revert;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} validDestination_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref);
  modifies gas, revert;



implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
    havoc newRef;
    assume __tmp__Alloc[newRef] == false;
    __tmp__Alloc[newRef] := true;
    assume newRef != null;
}



implementation FreshRefGenerator__success() returns (newRef: Ref)
{
    havoc newRef;
    assume Alloc[newRef] == false;
    Alloc[newRef] := true;
    assume newRef != null;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__totalSupply_ERC20Basic[this] := 0;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    totalSupply_ERC20Basic[this] := 0;
}



implementation ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeMath_SafeMath_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeMath_SafeMath_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 104;
    assume b_s48 >= 0;
    assume a_s48 >= 0;
    gas := gas - 56;
    assume a_s48 >= 0;
    assume b_s48 >= 0;
    assume a_s48 - b_s48 >= 0;
    __ret_0_ := a_s48 - b_s48;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s48: int, b_s48: int)
   returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 104;
    assume b_s48 >= 0;
    assume a_s48 >= 0;
    assert b_s48 <= a_s48;
    gas := gas - 56;
    assume a_s48 >= 0;
    assume b_s48 >= 0;
    assume a_s48 - b_s48 >= 0;
    __ret_0_ := a_s48 - b_s48;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int)
{
  var c_s71: int;

    gas := gas - 12;
    gas := gas - 68;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    assume b_s72 >= 0;
    assume a_s72 + b_s72 >= 0;
    c_s71 := a_s72 + b_s72;
    gas := gas - 104;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    gas := gas - 40;
    assume c_s71 >= 0;
    __ret_0_ := c_s71;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int)
{
  var c_s71: int;

    gas := gas - 12;
    gas := gas - 68;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    assume b_s72 >= 0;
    assume a_s72 + b_s72 >= 0;
    c_s71 := a_s72 + b_s72;
    gas := gas - 104;
    assume c_s71 >= 0;
    assume a_s72 >= 0;
    assert c_s71 >= a_s72;
    gas := gas - 40;
    assume c_s71 >= 0;
    __ret_0_ := c_s71;
    return;
}



implementation BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__balances_BasicToken[this] := __var_1;
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]] := zeroRefIntArr();
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := 0;
}



implementation BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    balances_BasicToken[this] := __var_1;
    M_Ref_int_balances0[balances_BasicToken[this]] := zeroRefIntArr();
    sum_balances0[balances_BasicToken[this]] := 0;
}



implementation BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s142: Ref, 
    _value_s142: int)
   returns (__ret_0_: bool)
{
  var __var_2: Ref;
  var __var_3: int;
  var __var_4: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_2 := null;
    if (!(_to_s142 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s142 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s142
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s142 >= 0;
    call __var_3 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s142);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := __var_3;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    assume __var_3 >= 0;
    gas := gas - 81732;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s142] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s142] >= 0;
    assume _value_s142 >= 0;
    call __var_4 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s142], _value_s142);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s142];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s142] := __var_4;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s142];
    assume __var_4 >= 0;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s142: Ref, 
    _value_s142: int)
   returns (__ret_0_: bool)
{
  var __var_2: Ref;
  var __var_3: int;
  var __var_4: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_2 := null;
    if (!(_to_s142 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s142 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s142 <= M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s142 >= 0;
    call __var_3 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG], _value_s142);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := __var_3;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assume __var_3 >= 0;
    gas := gas - 81732;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s142] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s142] >= 0;
    assume _value_s142 >= 0;
    call __var_4 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s142], _value_s142);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s142];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s142] := __var_4;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s142];
    assume __var_4 >= 0;
    assert {:EventEmitted "Transfer_BasicToken"} true;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref)
   returns (balance_s154: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s154] >= 0;
    balance_s154 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s154];
    return;
}



implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s154: Ref)
   returns (balance_s154: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_owner_s154] >= 0;
    balance_s154 := M_Ref_int_balances0[balances_BasicToken[this]][_owner_s154];
    return;
}



implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_5: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_5 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_StandardToken[this] := __var_5;
    __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]] := zeroRefRefArr();
    __tmp__M_Ref_int_allowed1[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_5: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_5 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_StandardToken[this] := __var_5;
    M_Ref_Ref_allowed1[allowed_StandardToken[this]] := zeroRefRefArr();
    M_Ref_int_allowed1[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s291: Ref, 
    _to_s291: Ref, 
    _value_s291: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: int;
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: int;
  var __var_12: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_6 := null;
    if (!(_to_s291 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s291 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291] >= 0;
    if (!(_value_s291
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s291 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]
       == null)
    {
        call __var_7 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291] := __var_7;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG]
       >= 0;
    if (!(_value_s291
       <= __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291] >= 0;
    assume _value_s291 >= 0;
    call __var_8 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291], _value_s291);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291] := __var_8;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s291];
    assume __var_8 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s291] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s291] >= 0;
    assume _value_s291 >= 0;
    call __var_9 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s291], _value_s291);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s291];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s291] := __var_9;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s291];
    assume __var_9 >= 0;
    gas := gas - 61833;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]
       == null)
    {
        call __var_10 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291] := __var_10;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]
       == null)
    {
        call __var_12 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291] := __var_12;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG]
       >= 0;
    assume _value_s291 >= 0;
    call __var_11 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG], _value_s291);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG] := __var_11;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s291]][msgsender_MSG];
    assume __var_11 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s291: Ref, 
    _to_s291: Ref, 
    _value_s291: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: int;
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: int;
  var __var_12: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_6 := null;
    if (!(_to_s291 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s291 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s291] >= 0;
    if (!(_value_s291 <= M_Ref_int_balances0[balances_BasicToken[this]][_from_s291]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s291 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291] == null)
    {
        call __var_7 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291] := __var_7;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG]
       >= 0;
    if (!(_value_s291
       <= M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s291] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s291] >= 0;
    assume _value_s291 >= 0;
    call __var_8 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_from_s291], _value_s291);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_from_s291];
    M_Ref_int_balances0[balances_BasicToken[this]][_from_s291] := __var_8;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_from_s291];
    assume __var_8 >= 0;
    gas := gas - 61299;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s291] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s291] >= 0;
    assume _value_s291 >= 0;
    call __var_9 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s291], _value_s291);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s291];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s291] := __var_9;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s291];
    assume __var_9 >= 0;
    gas := gas - 61833;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291] == null)
    {
        call __var_10 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291] := __var_10;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291] == null)
    {
        call __var_12 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291] := __var_12;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG]
       >= 0;
    assume _value_s291 >= 0;
    call __var_11 := sub_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG], _value_s291);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG] := __var_11;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s291]][msgsender_MSG];
    assume __var_11 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s319: Ref, 
    _value_s319: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_13 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_13;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s319]
       >= 0;
    assume _value_s319 >= 0;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s319];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s319] := _value_s319;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s319];
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s319: Ref, 
    _value_s319: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_13 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_13;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s319]
       >= 0;
    assume _value_s319 >= 0;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s319];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s319] := _value_s319;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s319];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s335: Ref, 
    _spender_s335: Ref)
   returns (__ret_0_: int)
{
  var __var_14: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s335]
       == null)
    {
        call __var_14 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s335] := __var_14;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s335]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s335]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s335]][_spender_s335]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s335]][_spender_s335];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s335: Ref, 
    _spender_s335: Ref)
   returns (__ret_0_: int)
{
  var __var_14: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s335] == null)
    {
        call __var_14 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s335] := __var_14;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s335]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s335]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s335]][_spender_s335]
       >= 0;
    __ret_0_ := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s335]][_spender_s335];
    return;
}



implementation increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s376: Ref, 
    _addedValue_s376: int)
   returns (__ret_0_: bool)
{
  var __var_15: Ref;
  var __var_16: int;
  var __var_17: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_15 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_15;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s376]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_17 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_17;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s376]
       >= 0;
    assume _addedValue_s376 >= 0;
    call __var_16 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s376], _addedValue_s376);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s376];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s376] := __var_16;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s376];
    assume __var_16 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s376: Ref, 
    _addedValue_s376: int)
   returns (__ret_0_: bool)
{
  var __var_15: Ref;
  var __var_16: int;
  var __var_17: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_15 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_15;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s376]
       >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_17 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_17;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s376]
       >= 0;
    assume _addedValue_s376 >= 0;
    call __var_16 := add_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s376], _addedValue_s376);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s376];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s376] := __var_16;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s376];
    assume __var_16 >= 0;
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s436: Ref, 
    _subtractedValue_s436: int)
   returns (__ret_0_: bool)
{
  var oldValue_s435: int;
  var __var_18: Ref;
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s435 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_18 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_18;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436]
       >= 0;
    oldValue_s435 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
    gas := gas - 27;
    assume _subtractedValue_s436 >= 0;
    assume oldValue_s435 >= 0;
    if (_subtractedValue_s436 > oldValue_s435)
    {
        gas := gas - 15597;
        if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_19 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_19;
            __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436]
           >= 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436] := 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
    }
    else
    {
        gas := gas - 60696;
        if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_20 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_20;
            __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436]
           >= 0;
        assume oldValue_s435 >= 0;
        assume _subtractedValue_s436 >= 0;
        call __var_21 := sub_SafeMath__fail(this, this, 0, oldValue_s435, _subtractedValue_s436);
        if (revert)
        {
            return;
        }

        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436] := __var_21;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
        assume __var_21 >= 0;
    }

    gas := gas - 30;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s436: Ref, 
    _subtractedValue_s436: int)
   returns (__ret_0_: bool)
{
  var oldValue_s435: int;
  var __var_18: Ref;
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s435 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_18 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_18;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436]
       >= 0;
    oldValue_s435 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
    gas := gas - 27;
    assume _subtractedValue_s436 >= 0;
    assume oldValue_s435 >= 0;
    if (_subtractedValue_s436 > oldValue_s435)
    {
        gas := gas - 15597;
        if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_19 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_19;
            M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436]
           >= 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436] := 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
    }
    else
    {
        gas := gas - 60696;
        if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_20 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_20;
            M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436]
           >= 0;
        assume oldValue_s435 >= 0;
        assume _subtractedValue_s436 >= 0;
        call __var_21 := sub_SafeMath__success(this, this, 0, oldValue_s435, _subtractedValue_s436);
        if (revert)
        {
            return;
        }

        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436] := __var_21;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s436];
        assume __var_21 >= 0;
    }

    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 30;
    __ret_0_ := true;
    return;
}



implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__owner_Ownable[this] := null;
    __tmp__owner_Ownable[this] := msgsender_MSG;
}



implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    owner_Ownable[this] := null;
    owner_Ownable[this] := msgsender_MSG;
}



implementation Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref)
{
  var __var_22: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 176;
    __var_22 := null;
    if (!(newOwner_s490 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 81068;
    __tmp__owner_Ownable[this] := newOwner_s490;
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s490: Ref)
{
  var __var_22: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 176;
    __var_22 := null;
    if (!(newOwner_s490 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 81068;
    owner_Ownable[this] := newOwner_s490;
}



implementation Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__pausedPublic_Pausable[this] := true;
    __tmp__pausedOwnerAdmin_Pausable[this] := false;
    __tmp__admin_Pausable[this] := null;
}



implementation Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    pausedPublic_Pausable[this] := true;
    pausedOwnerAdmin_Pausable[this] := false;
    admin_Pausable[this] := null;
}



implementation Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation pause_Pausable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    newPausedPublic_s574: bool, 
    newPausedOwnerAdmin_s574: bool)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 261;
    if (!!(newPausedPublic_s574 == false && newPausedOwnerAdmin_s574 == true))
    {
        revert := true;
        return;
    }

    gas := gas - 60951;
    __tmp__pausedPublic_Pausable[this] := newPausedPublic_s574;
    gas := gas - 60951;
    __tmp__pausedOwnerAdmin_Pausable[this] := newPausedOwnerAdmin_s574;
}



implementation pause_Pausable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    newPausedPublic_s574: bool, 
    newPausedOwnerAdmin_s574: bool)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 261;
    if (!!(newPausedPublic_s574 == false && newPausedOwnerAdmin_s574 == true))
    {
        revert := true;
        return;
    }

    gas := gas - 60951;
    pausedPublic_Pausable[this] := newPausedPublic_s574;
    gas := gas - 60951;
    pausedOwnerAdmin_Pausable[this] := newPausedOwnerAdmin_s574;
    assert {:EventEmitted "PausePublic_Pausable"} true;
    assert {:EventEmitted "PauseOwnerAdmin_Pausable"} true;
}



implementation PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transfer_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s597: Ref, 
    _value_s597: int)
   returns (__ret_0_: bool)
{
  var __var_23: bool;
  var __var_24: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s597 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_23 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_23 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_23;
    return;
}



implementation transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s597: Ref, 
    _value_s597: int)
   returns (__ret_0_: bool)
{
  var __var_23: bool;
  var __var_24: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s597 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_23 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_23 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_23;
    return;
}



implementation transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s618: Ref, 
    _to_s618: Ref, 
    _value_s618: int)
   returns (__ret_0_: bool)
{
  var __var_25: bool;
  var __var_26: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s618 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_25 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_25 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_25;
    return;
}



implementation transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s618: Ref, 
    _to_s618: Ref, 
    _value_s618: int)
   returns (__ret_0_: bool)
{
  var __var_25: bool;
  var __var_26: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s618 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_25 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_25 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_25;
    return;
}



implementation approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s636: Ref, 
    _value_s636: int)
   returns (__ret_0_: bool)
{
  var __var_27: bool;
  var __var_28: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s636 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_27 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_27 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_27;
    return;
}



implementation approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s636: Ref, 
    _value_s636: int)
   returns (__ret_0_: bool)
{
  var __var_27: bool;
  var __var_28: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s636 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_27 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_27 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_27;
    return;
}



implementation increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s654: Ref, 
    _addedValue_s654: int)
   returns (success_s654: bool)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s654 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_29 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_29 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s654 := __var_29;
    return;
}



implementation increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s654: Ref, 
    _addedValue_s654: int)
   returns (success_s654: bool)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s654 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_29 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_29 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s654 := __var_29;
    return;
}



implementation decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s672: Ref, 
    _subtractedValue_s672: int)
   returns (success_s672: bool)
{
  var __var_31: bool;
  var __var_32: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s672 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_31 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_31 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s672 := __var_31;
    return;
}



implementation decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s672: Ref, 
    _subtractedValue_s672: int)
   returns (success_s672: bool)
{
  var __var_31: bool;
  var __var_32: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s672 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_31 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_31 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s672 := __var_31;
    return;
}



implementation ZilliqaToken_ZilliqaToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_ZilliqaToken[this] := -94716068;
    __tmp__symbol_ZilliqaToken[this] := -713479528;
    __tmp__decimals_ZilliqaToken[this] := 12;
    __tmp__admin_Pausable[this] := _admin_s738;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume _totalTokenAmount_s738 >= 0;
    __tmp__totalSupply_ERC20Basic[this] := _totalTokenAmount_s738;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _totalTokenAmount_s738 >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := _totalTokenAmount_s738;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
}



implementation ZilliqaToken_ZilliqaToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_ZilliqaToken[this] := -94716068;
    symbol_ZilliqaToken[this] := -713479528;
    decimals_ZilliqaToken[this] := 12;
    admin_Pausable[this] := _admin_s738;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume _totalTokenAmount_s738 >= 0;
    totalSupply_ERC20Basic[this] := _totalTokenAmount_s738;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _totalTokenAmount_s738 >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := _totalTokenAmount_s738;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assert {:EventEmitted "Transfer_ZilliqaToken"} true;
}



implementation ZilliqaToken_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ZilliqaToken_ZilliqaToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
    if (revert)
    {
        return;
    }
}



implementation ZilliqaToken_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s738: Ref, 
    _totalTokenAmount_s738: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ZilliqaToken_ZilliqaToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
    if (revert)
    {
        return;
    }
}



implementation transfer_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s757: Ref, 
    _value_s757: int)
   returns (__ret_0_: bool)
{
  var __var_35: bool;
  var __var_36: int;

    gas := gas - 3;
    call validDestination_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s757);
    if (revert)
    {
        return;
    }

    gas := gas - 15;
    assume _value_s757 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_35 := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_35;
    return;
}



implementation transfer_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s757: Ref, 
    _value_s757: int)
   returns (__ret_0_: bool)
{
  var __var_35: bool;
  var __var_36: int;

    gas := gas - 3;
    call validDestination_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s757);
    if (revert)
    {
        return;
    }

    gas := gas - 15;
    assume _value_s757 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_35 := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_35;
    return;
}



implementation transferFrom_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s779: Ref, 
    _to_s779: Ref, 
    _value_s779: int)
   returns (__ret_0_: bool)
{
  var __var_37: bool;
  var __var_38: int;

    gas := gas - 3;
    call validDestination_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s779);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume _value_s779 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_37 := transferFrom_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37;
    return;
}



implementation transferFrom_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s779: Ref, 
    _to_s779: Ref, 
    _value_s779: int)
   returns (__ret_0_: bool)
{
  var __var_37: bool;
  var __var_38: int;

    gas := gas - 3;
    call validDestination_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s779);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume _value_s779 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_37 := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37;
    return;
}



implementation burn_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int)
   returns (__ret_0_: bool)
{
  var __var_39: int;
  var __var_40: int;

    gas := gas - 3;
    gas := gas - 20437;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s830 >= 0;
    call __var_39 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s830);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := __var_39;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    assume __var_39 >= 0;
    gas := gas - 20247;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume _value_s830 >= 0;
    call __var_40 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply_ERC20Basic[this], _value_s830);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply_ERC20Basic[this] := __var_40;
    assume __var_40 >= 0;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation burn_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s830: int)
   returns (__ret_0_: bool)
{
  var __var_39: int;
  var __var_40: int;

    gas := gas - 3;
    gas := gas - 20437;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s830 >= 0;
    call __var_39 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG], _value_s830);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := __var_39;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assume __var_39 >= 0;
    gas := gas - 20247;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume _value_s830 >= 0;
    call __var_40 := sub_SafeMath__success(this, this, 0, totalSupply_ERC20Basic[this], _value_s830);
    if (revert)
    {
        return;
    }

    totalSupply_ERC20Basic[this] := __var_40;
    assume __var_40 >= 0;
    assert {:EventEmitted "Burn_ZilliqaToken"} true;
    assert {:EventEmitted "Transfer_ZilliqaToken"} true;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation burnFrom_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s853: Ref, 
    _value_s853: int)
   returns (__ret_0_: bool)
{
  var __var_41: bool;
  var __var_42: bool;

    gas := gas - 3;
    gas := gas - 37;
    assume _value_s853 >= 0;
    if (__tmp__DType[this] == ZilliqaToken)
    {
        call __var_41 := transferFrom_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s853, msgsender_MSG, _value_s853);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 23;
    assume _value_s853 >= 0;
    call __var_42 := burn_ZilliqaToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s853);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_42;
    return;
}



implementation burnFrom_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s853: Ref, 
    _value_s853: int)
   returns (__ret_0_: bool)
{
  var __var_41: bool;
  var __var_42: bool;

    gas := gas - 3;
    gas := gas - 37;
    assume _value_s853 >= 0;
    if (DType[this] == ZilliqaToken)
    {
        call __var_41 := transferFrom_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s853, msgsender_MSG, _value_s853);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert __var_41;
    gas := gas - 23;
    assume _value_s853 >= 0;
    call __var_42 := burn_ZilliqaToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s853);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_42;
    return;
}



implementation emergencyERC20Drain_ZilliqaToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s870: Ref, 
    amount_s870: int)
{
  var __var_43: bool;
  var __var_44: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37458;
    assume amount_s870 >= 0;
    if (__tmp__DType[token_s870] == ZilliqaToken)
    {
        call __var_43 := transfer_ZilliqaToken__fail(token_s870, this, __var_44, __tmp__owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s870] == PausableToken)
    {
        call __var_43 := transfer_PausableToken__fail(token_s870, this, __var_44, __tmp__owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s870] == StandardToken)
    {
        call __var_43 := transfer_BasicToken__fail(token_s870, this, __var_44, __tmp__owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s870] == ERC20)
    {
        call __var_43 := transfer_ERC20Basic(token_s870, this, __var_44, __tmp__owner_Ownable[this], amount_s870);
    }
    else if (__tmp__DType[token_s870] == BasicToken)
    {
        call __var_43 := transfer_BasicToken__fail(token_s870, this, __var_44, __tmp__owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s870] == ERC20Basic)
    {
        call __var_43 := transfer_ERC20Basic(token_s870, this, __var_44, __tmp__owner_Ownable[this], amount_s870);
    }
    else
    {
        assume false;
    }
}



implementation emergencyERC20Drain_ZilliqaToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s870: Ref, 
    amount_s870: int)
{
  var __var_43: bool;
  var __var_44: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37458;
    assume amount_s870 >= 0;
    if (DType[token_s870] == ZilliqaToken)
    {
        call __var_43 := transfer_ZilliqaToken__success(token_s870, this, __var_44, owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s870] == PausableToken)
    {
        call __var_43 := transfer_PausableToken__success(token_s870, this, __var_44, owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s870] == StandardToken)
    {
        call __var_43 := transfer_BasicToken__success(token_s870, this, __var_44, owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s870] == ERC20)
    {
        call __var_43 := transfer_ERC20Basic(token_s870, this, __var_44, owner_Ownable[this], amount_s870);
    }
    else if (DType[token_s870] == BasicToken)
    {
        call __var_43 := transfer_BasicToken__success(token_s870, this, __var_44, owner_Ownable[this], amount_s870);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s870] == ERC20Basic)
    {
        call __var_43 := transfer_ERC20Basic(token_s870, this, __var_44, owner_Ownable[this], amount_s870);
    }
    else
    {
        assume false;
    }
}



implementation changeAdmin_ZilliqaToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20267;
    __tmp__admin_Pausable[this] := newAdmin_s893;
}



implementation changeAdmin_ZilliqaToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newAdmin_s893: Ref)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "AdminTransferred_ZilliqaToken"} true;
    gas := gas - 20267;
    admin_Pausable[this] := newAdmin_s893;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == ZilliqaToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == PausableToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Ownable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Basic)
    {
        assume amount == 0;
    }
    else
    {
        call Fallback_UnknownType__fail(from, to, amount);
        if (revert)
        {
            return;
        }
    }
}



implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
    if (DType[to] == ZilliqaToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == PausableToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (DType[to] == Ownable)
    {
        assume amount == 0;
    }
    else if (DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Basic)
    {
        assume amount == 0;
    }
    else
    {
        call Fallback_UnknownType__success(from, to, amount);
        if (revert)
        {
            return;
        }
    }
}



implementation Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int)
{
    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
}



implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;
  var __snap___tmp__Balance: [Ref]int;
  var __snap___tmp__DType: [Ref]ContractName;
  var __snap___tmp__Alloc: [Ref]bool;
  var __snap___tmp__balance_ADDR: [Ref]int;
  var __snap___tmp__M_Ref_int_balances0: [Ref][Ref]int;
  var __snap___tmp__sum_balances0: [Ref]int;
  var __snap___tmp__M_Ref_int_allowed1: [Ref][Ref]int;
  var __snap___tmp__M_Ref_Ref_allowed1: [Ref][Ref]Ref;
  var __snap___tmp__sum_allowed1: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__totalSupply_ERC20Basic: [Ref]int;
  var __snap___tmp__balances_BasicToken: [Ref]Ref;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__pausedPublic_Pausable: [Ref]bool;
  var __snap___tmp__pausedOwnerAdmin_Pausable: [Ref]bool;
  var __snap___tmp__admin_Pausable: [Ref]Ref;
  var __snap___tmp__name_ZilliqaToken: [Ref]int;
  var __snap___tmp__symbol_ZilliqaToken: [Ref]int;
  var __snap___tmp__decimals_ZilliqaToken: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_balances0 := __tmp__M_Ref_int_balances0;
        __snap___tmp__sum_balances0 := __tmp__sum_balances0;
        __snap___tmp__M_Ref_int_allowed1 := __tmp__M_Ref_int_allowed1;
        __snap___tmp__M_Ref_Ref_allowed1 := __tmp__M_Ref_Ref_allowed1;
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
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
        }

        success := false;
        assume revert || gas < 0;
        __tmp__Balance := __snap___tmp__Balance;
        __tmp__DType := __snap___tmp__DType;
        __tmp__Alloc := __snap___tmp__Alloc;
        __tmp__balance_ADDR := __snap___tmp__balance_ADDR;
        __tmp__M_Ref_int_balances0 := __snap___tmp__M_Ref_int_balances0;
        __tmp__sum_balances0 := __snap___tmp__sum_balances0;
        __tmp__M_Ref_int_allowed1 := __snap___tmp__M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := __snap___tmp__M_Ref_Ref_allowed1;
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
    }
    else
    {
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
            success := true;
        }
        else
        {
            success := false;
        }

        assume !revert && gas >= 0;
    }
}



implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;

    havoc __exception;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
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
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
        }

        success := false;
        assume revert || gas < 0;
        revert := false;
    }
    else
    {
        if (Balance[from] >= amount)
        {
            call FallbackDispatch__success(from, to, amount);
            success := true;
        }
        else
        {
            success := false;
        }

        assume !revert && gas >= 0;
    }
}



implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2484;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2484;
    if (!(msgsender_MSG == owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2890;
    if (__tmp__pausedPublic_Pausable[this])
    {
        gas := gas - 2890;
        if (!__tmp__pausedOwnerAdmin_Pausable[this])
        {
            gas := gas - 5510;
            if (!(msgsender_MSG == __tmp__admin_Pausable[this]
               || msgsender_MSG == __tmp__owner_Ownable[this]))
            {
                revert := true;
                return;
            }
        }
        else
        {
            gas := gas - 60;
            revert := true;
            return;
        }
    }
}



implementation whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2890;
    if (pausedPublic_Pausable[this])
    {
        gas := gas - 2890;
        if (!pausedOwnerAdmin_Pausable[this])
        {
            gas := gas - 5510;
            if (!(msgsender_MSG == admin_Pausable[this] || msgsender_MSG == owner_Ownable[this]))
            {
                revert := true;
                return;
            }
        }
        else
        {
            gas := gas - 60;
            revert := true;
            return;
        }
    }
}



implementation validDestination_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref)
{
  var __var_33: Ref;
  var __var_34: Ref;

    gas := gas - 88;
    __var_33 := null;
    if (!(to_s706 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 86;
    __var_34 := this;
    if (!(to_s706 != this))
    {
        revert := true;
        return;
    }
}



implementation validDestination_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s706: Ref)
{
  var __var_33: Ref;
  var __var_34: Ref;

    gas := gas - 88;
    __var_33 := null;
    if (!(to_s706 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 86;
    __var_34 := this;
    if (!(to_s706 != this))
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_ERC20Basic(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var who_s10: Ref;
  var __ret_0_balanceOf: int;
  var to_s19: Ref;
  var value_s19: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc who_s10;
    havoc __ret_0_balanceOf;
    havoc to_s19;
    havoc value_s19;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s10);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s19, value_s19);
    }
}



implementation CorralEntry_ERC20Basic()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Basic
       || DType[this] == BasicToken
       || DType[this] == ERC20
       || DType[this] == StandardToken
       || DType[this] == PausableToken
       || DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Basic(this);
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
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_SafeMath()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == SafeMath;
    gas := gas - 53000;
    call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SafeMath(this);
    }
}



implementation CorralChoice_BasicToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s154: Ref;
  var balance_s154: int;
  var _to_s142: Ref;
  var _value_s142: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s154;
    havoc balance_s154;
    havoc _to_s142;
    havoc _value_s142;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s142, _value_s142);
    }
}



implementation CorralEntry_BasicToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == BasicToken
       || DType[this] == StandardToken
       || DType[this] == PausableToken
       || DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BasicToken(this);
    }
}



implementation CorralChoice_ERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
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
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s10);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s19, value_s19);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s166, spender_s166);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s177, to_s177, value_s177);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s186, value_s186);
    }
}



implementation CorralEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20
       || DType[this] == StandardToken
       || DType[this] == PausableToken
       || DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_StandardToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
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
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s142, _value_s142);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s291, _to_s291, _value_s291);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s319, _value_s319);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s376, _addedValue_s376);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s436, _subtractedValue_s436);
    }
}



implementation CorralEntry_StandardToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == StandardToken
       || DType[this] == PausableToken
       || DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_StandardToken(this);
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s490: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s490;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
    }
}



implementation CorralEntry_Ownable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Ownable
       || DType[this] == Pausable
       || DType[this] == PausableToken
       || DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_Pausable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s490: Ref;
  var newPausedPublic_s574: bool;
  var newPausedOwnerAdmin_s574: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s490;
    havoc newPausedPublic_s574;
    havoc newPausedOwnerAdmin_s574;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
    }
}



implementation CorralEntry_Pausable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Pausable
       || DType[this] == PausableToken
       || DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Pausable(this);
    }
}



implementation CorralChoice_PausableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
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
  var newOwner_s490: Ref;
  var newPausedPublic_s574: bool;
  var newPausedOwnerAdmin_s574: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
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
    havoc newOwner_s490;
    havoc newPausedPublic_s574;
    havoc newPausedOwnerAdmin_s574;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s597, _value_s597);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s618, _to_s618, _value_s618);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s654 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s672 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
    }
}



implementation CorralEntry_PausableToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == PausableToken || DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PausableToken(this);
    }
}



implementation CorralChoice_ZilliqaToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
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
  var newOwner_s490: Ref;
  var newPausedPublic_s574: bool;
  var newPausedOwnerAdmin_s574: bool;
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
    havoc newOwner_s490;
    havoc newPausedPublic_s574;
    havoc newPausedOwnerAdmin_s574;
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
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != ZilliqaToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s154 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s154);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _to_s757, _value_s757);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s335, _spender_s335);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _from_s779, _to_s779, _value_s779);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s636, _value_s636);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s654 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s654, _addedValue_s654);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s672 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s672, _subtractedValue_s672);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s490);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG, newPausedPublic_s574, newPausedOwnerAdmin_s574);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_burn := burn_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _value_s830);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_burnFrom := burnFrom_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _from_s853, _value_s853);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call emergencyERC20Drain_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, token_s870, amount_s870);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call changeAdmin_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, newAdmin_s893);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _admin_s738: Ref;
  var _totalTokenAmount_s738: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ZilliqaToken;
    gas := gas - 53000;
    call ZilliqaToken_ZilliqaToken(this, msgsender_MSG, msgvalue_MSG, _admin_s738, _totalTokenAmount_s738);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ZilliqaToken(this);
    }
}


