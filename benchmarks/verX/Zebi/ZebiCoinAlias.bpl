// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:ZebiCoin.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// spec_02
// LTLProperty: [](!INV { old(transferAllowed_MintableToken[this]) != transferAllowed_MintableToken[this] && msg.sender != owner_Ownable[this] })

// spec_04
// LTLProperty: [](!INV { sum_balances0[balances_BasicToken[this]] != totalSupply__BasicToken[this] })
// #LTLProperty: [](!finished(*, sum_balances0[balances_BasicToken[this]] != totalSupply__BasicToken[this]))

// spec_05
// LTLProperty: [](!INV { transferAllowed_MintableToken[this] == false && msg.sender != owner_Ownable[this] && M_Ref_int_balances0[balances_BasicToken[this]][321] != old(M_Ref_int_balances0[balances_BasicToken[this]][321])})

type Ref = int;

type ContractName = int;

var null: Ref;

var Ownable: ContractName;

var ERC20Basic: ContractName;

var ERC20: ContractName;

var SafeMath: ContractName;

var BasicToken: ContractName;

var StandardToken: ContractName;

var MintableToken: ContractName;

var ZebiCoin: ContractName;

function ConstantToRef(x: int) : Ref;

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



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance, owner_Ownable;



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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance;



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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} totalSupply_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:public} {:inline 1} balanceOf_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s67: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s76: Ref, value_s76: int)
   returns (__ret_0_: bool);



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance;



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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
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
    owner_s96: Ref, 
    spender_s96: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s107: Ref, 
    to_s107: Ref, 
    value_s107: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s116: Ref, 
    value_s116: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance;



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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
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

var {:access "this.totalSupply_=totalSupply__BasicToken[this]"} totalSupply__BasicToken: [Ref]int;

procedure {:public} {:inline 1} totalSupply_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas;



implementation totalSupply_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := totalSupply_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s204: Ref, 
    _value_s204: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s204: Ref, 
    _value_s204: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transfer_BasicToken_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s264: Ref, 
    _value_s264: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s276: Ref)
   returns (balance_s276: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas;



implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s276: Ref)
   returns (balance_s276: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call balance_s276 := balanceOf_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s276);
        assume revert || gas < 0;
    }
    else
    {
        call balance_s276 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s276);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed1, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1;



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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
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

procedure {:inline 1} transfer_StandardToken_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s302: Ref, 
    _value_s302: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:public} {:inline 1} transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s320: Ref, 
    _to_s320: Ref, 
    _value_s320: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s320: Ref, 
    _to_s320: Ref, 
    _value_s320: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} transferFrom_StandardToken_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s406: Ref, 
    _to_s406: Ref, 
    _value_s406: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s434: Ref, 
    _value_s434: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s434: Ref, 
    _value_s434: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s434, _value_s434);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s434, _value_s434);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s450: Ref, 
    _spender_s450: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s450: Ref, 
    _spender_s450: Ref)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s450, _spender_s450);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s450, _spender_s450);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s491: Ref, 
    _addedValue_s491: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s491: Ref, 
    _addedValue_s491: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s491, _addedValue_s491);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s491, _addedValue_s491);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s551: Ref, 
    _subtractedValue_s551: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s551: Ref, 
    _subtractedValue_s551: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s551, _subtractedValue_s551);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s551, _subtractedValue_s551);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} MintableToken_MintableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, mintingFinished_MintableToken, transferAllowed_MintableToken;



procedure {:inline 1} MintableToken_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, owner_Ownable, mintingFinished_MintableToken, transferAllowed_MintableToken;



implementation MintableToken_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call MintableToken_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.mintingFinished=mintingFinished_MintableToken[this]"} mintingFinished_MintableToken: [Ref]bool;

var {:access "this.transferAllowed=transferAllowed_MintableToken[this]"} transferAllowed_MintableToken: [Ref]bool;

procedure {:public} {:inline 1} mint_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s632: Ref, 
    _amount_s632: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, totalSupply__BasicToken, sum_balances0, M_Ref_int_balances0;



implementation mint_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s632: Ref, 
    _amount_s632: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := mint_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s632, _amount_s632);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := mint_MintableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s632, _amount_s632);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} finishMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, mintingFinished_MintableToken;



implementation finishMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := finishMinting_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := finishMinting_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} resumeMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, mintingFinished_MintableToken;



implementation resumeMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := resumeMinting_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := resumeMinting_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s709: Ref)
   returns (success_s709: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



implementation burn_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s709: Ref)
   returns (success_s709: bool)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call success_s709 := burn_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s709);
        assume revert || gas < 0;
    }
    else
    {
        call success_s709 := burn_MintableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s709);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} startTransfer_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, transferAllowed_MintableToken;



implementation startTransfer_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call startTransfer_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call startTransfer_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} endTransfer_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, transferAllowed_MintableToken;



implementation endTransfer_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call endTransfer_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call endTransfer_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s750: Ref, 
    _value_s750: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s750: Ref, 
    _value_s750: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := transfer_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_MintableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s774: Ref, 
    _to_s774: Ref, 
    _value_s774: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s774: Ref, 
    _to_s774: Ref, 
    _value_s774: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call __ret_0_ := transferFrom_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_MintableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ZebiCoin_ZebiCoin_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, name_ZebiCoin, symbol_ZebiCoin, decimals_ZebiCoin;



procedure {:inline 1} ZebiCoin_ZebiCoin(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, owner_Ownable, mintingFinished_MintableToken, transferAllowed_MintableToken, name_ZebiCoin, symbol_ZebiCoin, decimals_ZebiCoin;



implementation ZebiCoin_ZebiCoin(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
        call ZebiCoin_ZebiCoin__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ZebiCoin_ZebiCoin__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.name=name_ZebiCoin[this]"} name_ZebiCoin: [Ref]int;

var {:access "this.symbol=symbol_ZebiCoin[this]"} symbol_ZebiCoin: [Ref]int;

var {:access "this.decimals=decimals_ZebiCoin[this]"} decimals_ZebiCoin: [Ref]int;

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, revert, Balance;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} canMint_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, now, owner_Ownable, Balance;



procedure CorralChoice_ERC20Basic(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20Basic();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, M_Ref_int_allowed1, sum_allowed1;



procedure CorralChoice_MintableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, owner_Ownable, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply__BasicToken, sum_balances0, M_Ref_int_balances0, mintingFinished_MintableToken, transferAllowed_MintableToken;



procedure CorralEntry_MintableToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, owner_Ownable, mintingFinished_MintableToken, transferAllowed_MintableToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, M_Ref_int_allowed1, sum_allowed1;



procedure CorralChoice_ZebiCoin(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, owner_Ownable, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply__BasicToken, sum_balances0, M_Ref_int_balances0, mintingFinished_MintableToken, transferAllowed_MintableToken;



procedure main();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, owner_Ownable, mintingFinished_MintableToken, transferAllowed_MintableToken, name_ZebiCoin, symbol_ZebiCoin, decimals_ZebiCoin, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, M_Ref_int_allowed1, sum_allowed1;



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

var __tmp__owner_Ownable: [Ref]Ref;

var __tmp__balances_BasicToken: [Ref]Ref;

var __tmp__totalSupply__BasicToken: [Ref]int;

var __tmp__allowed_StandardToken: [Ref]Ref;

var __tmp__mintingFinished_MintableToken: [Ref]bool;

var __tmp__transferAllowed_MintableToken: [Ref]bool;

var __tmp__name_ZebiCoin: [Ref]int;

var __tmp__symbol_ZebiCoin: [Ref]int;

var __tmp__decimals_ZebiCoin: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref);
  modifies gas, revert, owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref);
  modifies gas, revert, __tmp__owner_Ownable;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} totalSupply_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} totalSupply_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s204: Ref, 
    _value_s204: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s204: Ref, 
    _value_s204: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transfer_BasicToken_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s264: Ref, 
    _value_s264: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s276: Ref)
   returns (balance_s276: int);
  modifies gas;



procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s276: Ref)
   returns (balance_s276: int);
  modifies gas;



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__Alloc;



procedure {:inline 1} StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1;



procedure {:inline 1} StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1;



procedure {:inline 1} transfer_StandardToken_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s302: Ref, 
    _value_s302: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s320: Ref, 
    _to_s320: Ref, 
    _value_s320: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s320: Ref, 
    _to_s320: Ref, 
    _value_s320: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} transferFrom_StandardToken_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s406: Ref, 
    _to_s406: Ref, 
    _value_s406: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s434: Ref, 
    _value_s434: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s434: Ref, 
    _value_s434: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s450: Ref, 
    _spender_s450: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s450: Ref, 
    _spender_s450: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s491: Ref, 
    _addedValue_s491: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s491: Ref, 
    _addedValue_s491: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s551: Ref, 
    _subtractedValue_s551: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s551: Ref, 
    _subtractedValue_s551: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} MintableToken_MintableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken;



procedure {:inline 1} MintableToken_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, owner_Ownable, mintingFinished_MintableToken, transferAllowed_MintableToken;



procedure {:inline 1} MintableToken_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken;



procedure {:inline 1} mint_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s632: Ref, 
    _amount_s632: int)
   returns (__ret_0_: bool);
  modifies gas, totalSupply__BasicToken, sum_balances0, M_Ref_int_balances0, revert;



procedure {:inline 1} mint_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s632: Ref, 
    _amount_s632: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__totalSupply__BasicToken, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, revert;



procedure {:inline 1} finishMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, mintingFinished_MintableToken, revert;



procedure {:inline 1} finishMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, __tmp__mintingFinished_MintableToken, revert;



procedure {:inline 1} resumeMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, mintingFinished_MintableToken, revert;



procedure {:inline 1} resumeMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, __tmp__mintingFinished_MintableToken, revert;



procedure {:inline 1} burn_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s709: Ref)
   returns (success_s709: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



procedure {:inline 1} burn_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s709: Ref)
   returns (success_s709: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply__BasicToken;



procedure {:inline 1} startTransfer_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, transferAllowed_MintableToken, revert;



procedure {:inline 1} startTransfer_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__transferAllowed_MintableToken, revert;



procedure {:inline 1} endTransfer_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, transferAllowed_MintableToken, revert;



procedure {:inline 1} endTransfer_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__transferAllowed_MintableToken, revert;



procedure {:inline 1} transfer_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s750: Ref, 
    _value_s750: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s750: Ref, 
    _value_s750: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s774: Ref, 
    _to_s774: Ref, 
    _value_s774: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s774: Ref, 
    _to_s774: Ref, 
    _value_s774: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} ZebiCoin_ZebiCoin_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin;



procedure {:inline 1} ZebiCoin_ZebiCoin__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, owner_Ownable, mintingFinished_MintableToken, transferAllowed_MintableToken, name_ZebiCoin, symbol_ZebiCoin, decimals_ZebiCoin;



procedure {:inline 1} ZebiCoin_ZebiCoin__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__mintingFinished_MintableToken, __tmp__transferAllowed_MintableToken, __tmp__name_ZebiCoin, __tmp__symbol_ZebiCoin, __tmp__decimals_ZebiCoin, revert;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} canMint_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 132;
    __var_1 := null;
    if (!(newOwner_s54 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60801;
    __tmp__owner_Ownable[this] := newOwner_s54;
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 132;
    __var_1 := null;
    if (!(newOwner_s54 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 60801;
    owner_Ownable[this] := newOwner_s54;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
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



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int)
   returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 104;
    assume b_s145 >= 0;
    assume a_s145 >= 0;
    gas := gas - 56;
    assume a_s145 >= 0;
    assume b_s145 >= 0;
    assume a_s145 - b_s145 >= 0;
    __ret_0_ := a_s145 - b_s145;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s145: int, b_s145: int)
   returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 104;
    assume b_s145 >= 0;
    assume a_s145 >= 0;
    assert b_s145 <= a_s145;
    gas := gas - 56;
    assume a_s145 >= 0;
    assume b_s145 >= 0;
    assume a_s145 - b_s145 >= 0;
    __ret_0_ := a_s145 - b_s145;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int)
{
  var c_s168: int;

    gas := gas - 12;
    gas := gas - 68;
    assume c_s168 >= 0;
    assume a_s169 >= 0;
    assume b_s169 >= 0;
    assume a_s169 + b_s169 >= 0;
    c_s168 := a_s169 + b_s169;
    gas := gas - 104;
    assume c_s168 >= 0;
    assume a_s169 >= 0;
    gas := gas - 40;
    assume c_s168 >= 0;
    __ret_0_ := c_s168;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s169: int, b_s169: int)
   returns (__ret_0_: int)
{
  var c_s168: int;

    gas := gas - 12;
    gas := gas - 68;
    assume c_s168 >= 0;
    assume a_s169 >= 0;
    assume b_s169 >= 0;
    assume a_s169 + b_s169 >= 0;
    c_s168 := a_s169 + b_s169;
    gas := gas - 104;
    assume c_s168 >= 0;
    assume a_s169 >= 0;
    assert c_s168 >= a_s169;
    gas := gas - 40;
    assume c_s168 >= 0;
    __ret_0_ := c_s168;
    return;
}



implementation BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__balances_BasicToken[this] := __var_2;
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]] := zeroRefIntArr();
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := 0;
    __tmp__totalSupply__BasicToken[this] := 0;
}



implementation BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    balances_BasicToken[this] := __var_2;
    M_Ref_int_balances0[balances_BasicToken[this]] := zeroRefIntArr();
    sum_balances0[balances_BasicToken[this]] := 0;
    totalSupply__BasicToken[this] := 0;
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



implementation totalSupply_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 832;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    __ret_0_ := __tmp__totalSupply__BasicToken[this];
    return;
}



implementation totalSupply_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 832;
    assume totalSupply__BasicToken[this] >= 0;
    __ret_0_ := totalSupply__BasicToken[this];
    return;
}



implementation transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s204: Ref, 
    _value_s204: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    gas := gas - 6;
    gas := gas - 30;
    assume _value_s204 >= 0;
    if (__tmp__DType[this] == ZebiCoin)
    {
        call __var_3 := transfer_BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintableToken)
    {
        call __var_3 := transfer_BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == StandardToken)
    {
        call __var_3 := transfer_BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BasicToken)
    {
        call __var_3 := transfer_BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_3;
    return;
}



implementation transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s204: Ref, 
    _value_s204: int)
   returns (__ret_0_: bool)
{
  var __var_3: bool;

    gas := gas - 6;
    gas := gas - 30;
    assume _value_s204 >= 0;
    if (DType[this] == ZebiCoin)
    {
        call __var_3 := transfer_BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintableToken)
    {
        call __var_3 := transfer_BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == StandardToken)
    {
        call __var_3 := transfer_BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BasicToken)
    {
        call __var_3 := transfer_BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_3;
    return;
}



implementation transfer_BasicToken_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s264: Ref, 
    _value_s264: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;
  var __var_5: int;
  var __var_6: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_4 := null;
    if (!(_to_s264 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s264 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s264
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s264 >= 0;
    call __var_5 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s264);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := __var_5;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    assume __var_5 >= 0;
    gas := gas - 81732;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s264] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s264] >= 0;
    assume _value_s264 >= 0;
    call __var_6 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s264], _value_s264);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s264];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s264] := __var_6;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s264];
    assume __var_6 >= 0;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation transfer_BasicToken_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s264: Ref, 
    _value_s264: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;
  var __var_5: int;
  var __var_6: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_4 := null;
    if (!(_to_s264 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s264 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s264 <= M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s264 >= 0;
    call __var_5 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG], _value_s264);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := __var_5;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assume __var_5 >= 0;
    gas := gas - 81732;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s264] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s264] >= 0;
    assume _value_s264 >= 0;
    call __var_6 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s264], _value_s264);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s264];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s264] := __var_6;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s264];
    assume __var_6 >= 0;
    assert {:EventEmitted "Transfer_BasicToken"} true;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s276: Ref)
   returns (balance_s276: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s276] >= 0;
    balance_s276 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s276];
    return;
}



implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s276: Ref)
   returns (balance_s276: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_owner_s276] >= 0;
    balance_s276 := M_Ref_int_balances0[balances_BasicToken[this]][_owner_s276];
    return;
}



implementation StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_7: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_7 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_StandardToken[this] := __var_7;
    __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]] := zeroRefRefArr();
}



implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_7: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_7 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_StandardToken[this] := __var_7;
    M_Ref_Ref_allowed1[allowed_StandardToken[this]] := zeroRefRefArr();
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



implementation transfer_StandardToken_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s302: Ref, 
    _value_s302: int)
   returns (__ret_0_: bool)
{
  var __var_8: bool;

    gas := gas - 6;
    gas := gas - 30;
    assume _value_s302 >= 0;
    if (__tmp__DType[this] == ZebiCoin)
    {
        call __var_8 := transfer_BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s302, _value_s302);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintableToken)
    {
        call __var_8 := transfer_BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s302, _value_s302);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == StandardToken)
    {
        call __var_8 := transfer_BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s302, _value_s302);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_8;
    return;
}



implementation transfer_StandardToken_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s302: Ref, 
    _value_s302: int)
   returns (__ret_0_: bool)
{
  var __var_8: bool;

    gas := gas - 6;
    gas := gas - 30;
    assume _value_s302 >= 0;
    if (DType[this] == ZebiCoin)
    {
        call __var_8 := transfer_BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s302, _value_s302);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintableToken)
    {
        call __var_8 := transfer_BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s302, _value_s302);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == StandardToken)
    {
        call __var_8 := transfer_BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s302, _value_s302);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_8;
    return;
}



implementation transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s320: Ref, 
    _to_s320: Ref, 
    _value_s320: int)
   returns (__ret_0_: bool)
{
  var __var_9: bool;

    gas := gas - 3;
    gas := gas - 18;
    assume _value_s320 >= 0;
    if (__tmp__DType[this] == ZebiCoin)
    {
        call __var_9 := transferFrom_StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintableToken)
    {
        call __var_9 := transferFrom_StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == StandardToken)
    {
        call __var_9 := transferFrom_StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_9;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s320: Ref, 
    _to_s320: Ref, 
    _value_s320: int)
   returns (__ret_0_: bool)
{
  var __var_9: bool;

    gas := gas - 3;
    gas := gas - 18;
    assume _value_s320 >= 0;
    if (DType[this] == ZebiCoin)
    {
        call __var_9 := transferFrom_StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintableToken)
    {
        call __var_9 := transferFrom_StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == StandardToken)
    {
        call __var_9 := transferFrom_StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_9;
    return;
}



implementation transferFrom_StandardToken_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s406: Ref, 
    _to_s406: Ref, 
    _value_s406: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: int;
  var __var_14: Ref;
  var __var_15: int;
  var __var_16: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_10 := null;
    if (!(_to_s406 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s406 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406] >= 0;
    if (!(_value_s406
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s406 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]
       == null)
    {
        call __var_11 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406] := __var_11;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG]
       >= 0;
    if (!(_value_s406
       <= __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406] >= 0;
    assume _value_s406 >= 0;
    call __var_12 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406], _value_s406);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406] := __var_12;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s406];
    assume __var_12 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s406] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s406] >= 0;
    assume _value_s406 >= 0;
    call __var_13 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s406], _value_s406);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s406];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s406] := __var_13;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s406];
    assume __var_13 >= 0;
    gas := gas - 61833;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]
       == null)
    {
        call __var_14 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406] := __var_14;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]
       == null)
    {
        call __var_16 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406] := __var_16;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG]
       >= 0;
    assume _value_s406 >= 0;
    call __var_15 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG], _value_s406);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG] := __var_15;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s406]][msgsender_MSG];
    assume __var_15 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s406: Ref, 
    _to_s406: Ref, 
    _value_s406: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: int;
  var __var_14: Ref;
  var __var_15: int;
  var __var_16: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_10 := null;
    if (!(_to_s406 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s406 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s406] >= 0;
    if (!(_value_s406 <= M_Ref_int_balances0[balances_BasicToken[this]][_from_s406]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s406 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406] == null)
    {
        call __var_11 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406] := __var_11;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG]
       >= 0;
    if (!(_value_s406
       <= M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s406] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s406] >= 0;
    assume _value_s406 >= 0;
    call __var_12 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_from_s406], _value_s406);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_from_s406];
    M_Ref_int_balances0[balances_BasicToken[this]][_from_s406] := __var_12;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_from_s406];
    assume __var_12 >= 0;
    gas := gas - 61299;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s406] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s406] >= 0;
    assume _value_s406 >= 0;
    call __var_13 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s406], _value_s406);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s406];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s406] := __var_13;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s406];
    assume __var_13 >= 0;
    gas := gas - 61833;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406] == null)
    {
        call __var_14 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406] := __var_14;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406] == null)
    {
        call __var_16 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406] := __var_16;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG]
       >= 0;
    assume _value_s406 >= 0;
    call __var_15 := sub_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG], _value_s406);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG] := __var_15;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s406]][msgsender_MSG];
    assume __var_15 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s434: Ref, 
    _value_s434: int)
   returns (__ret_0_: bool)
{
  var __var_17: Ref;

    gas := gas - 9;
    gas := gas - 60597;
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

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s434]
       >= 0;
    assume _value_s434 >= 0;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s434];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s434] := _value_s434;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s434];
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s434: Ref, 
    _value_s434: int)
   returns (__ret_0_: bool)
{
  var __var_17: Ref;

    gas := gas - 9;
    gas := gas - 60597;
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

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s434]
       >= 0;
    assume _value_s434 >= 0;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s434];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s434] := _value_s434;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s434];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s450: Ref, 
    _spender_s450: Ref)
   returns (__ret_0_: int)
{
  var __var_18: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s450]
       == null)
    {
        call __var_18 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s450] := __var_18;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s450]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s450]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s450]][_spender_s450]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s450]][_spender_s450];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s450: Ref, 
    _spender_s450: Ref)
   returns (__ret_0_: int)
{
  var __var_18: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s450] == null)
    {
        call __var_18 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s450] := __var_18;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s450]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s450]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s450]][_spender_s450]
       >= 0;
    __ret_0_ := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s450]][_spender_s450];
    return;
}



implementation increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s491: Ref, 
    _addedValue_s491: int)
   returns (__ret_0_: bool)
{
  var __var_19: Ref;
  var __var_20: int;
  var __var_21: Ref;

    gas := gas - 9;
    gas := gas - 61851;
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

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s491]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_21 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_21;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s491]
       >= 0;
    assume _addedValue_s491 >= 0;
    call __var_20 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s491], _addedValue_s491);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s491];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s491] := __var_20;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s491];
    assume __var_20 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s491: Ref, 
    _addedValue_s491: int)
   returns (__ret_0_: bool)
{
  var __var_19: Ref;
  var __var_20: int;
  var __var_21: Ref;

    gas := gas - 9;
    gas := gas - 61851;
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

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s491]
       >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_21 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_21;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s491]
       >= 0;
    assume _addedValue_s491 >= 0;
    call __var_20 := add_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s491], _addedValue_s491);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s491];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s491] := __var_20;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s491];
    assume __var_20 >= 0;
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s551: Ref, 
    _subtractedValue_s551: int)
   returns (__ret_0_: bool)
{
  var oldValue_s550: int;
  var __var_22: Ref;
  var __var_23: Ref;
  var __var_24: Ref;
  var __var_25: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s550 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_22 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_22;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551]
       >= 0;
    oldValue_s550 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
    gas := gas - 27;
    assume _subtractedValue_s551 >= 0;
    assume oldValue_s550 >= 0;
    if (_subtractedValue_s551 > oldValue_s550)
    {
        gas := gas - 15597;
        if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_23 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_23;
            __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551]
           >= 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551] := 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
    }
    else
    {
        gas := gas - 60696;
        if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_24 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_24;
            __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551]
           >= 0;
        assume oldValue_s550 >= 0;
        assume _subtractedValue_s551 >= 0;
        call __var_25 := sub_SafeMath__fail(this, this, 0, oldValue_s550, _subtractedValue_s551);
        if (revert)
        {
            return;
        }

        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551] := __var_25;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
        assume __var_25 >= 0;
    }

    gas := gas - 30;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s551: Ref, 
    _subtractedValue_s551: int)
   returns (__ret_0_: bool)
{
  var oldValue_s550: int;
  var __var_22: Ref;
  var __var_23: Ref;
  var __var_24: Ref;
  var __var_25: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s550 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_22 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_22;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551]
       >= 0;
    oldValue_s550 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
    gas := gas - 27;
    assume _subtractedValue_s551 >= 0;
    assume oldValue_s550 >= 0;
    if (_subtractedValue_s551 > oldValue_s550)
    {
        gas := gas - 15597;
        if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_23 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_23;
            M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551]
           >= 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551] := 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
    }
    else
    {
        gas := gas - 60696;
        if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_24 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_24;
            M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551]
           >= 0;
        assume oldValue_s550 >= 0;
        assume _subtractedValue_s551 >= 0;
        call __var_25 := sub_SafeMath__success(this, this, 0, oldValue_s550, _subtractedValue_s551);
        if (revert)
        {
            return;
        }

        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551] := __var_25;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s551];
        assume __var_25 >= 0;
    }

    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 30;
    __ret_0_ := true;
    return;
}



implementation MintableToken_MintableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__mintingFinished_MintableToken[this] := false;
    __tmp__transferAllowed_MintableToken[this] := false;
}



implementation MintableToken_MintableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    mintingFinished_MintableToken[this] := false;
    transferAllowed_MintableToken[this] := false;
}



implementation MintableToken_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MintableToken_MintableToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MintableToken_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MintableToken_MintableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation mint_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s632: Ref, 
    _amount_s632: int)
   returns (__ret_0_: bool)
{
  var __var_26: int;
  var __var_27: int;

    gas := gas - 6;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call canMint_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40494;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume _amount_s632 >= 0;
    call __var_26 := add_SafeMath__fail(this, this, 0, __tmp__totalSupply__BasicToken[this], _amount_s632);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply__BasicToken[this] := __var_26;
    assume __var_26 >= 0;
    gas := gas - 40878;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s632] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s632] >= 0;
    assume _amount_s632 >= 0;
    call __var_27 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s632], _amount_s632);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s632];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s632] := __var_27;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s632];
    assume __var_27 >= 0;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation mint_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s632: Ref, 
    _amount_s632: int)
   returns (__ret_0_: bool)
{
  var __var_26: int;
  var __var_27: int;

    gas := gas - 6;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call canMint_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40494;
    assume totalSupply__BasicToken[this] >= 0;
    assume totalSupply__BasicToken[this] >= 0;
    assume _amount_s632 >= 0;
    call __var_26 := add_SafeMath__success(this, this, 0, totalSupply__BasicToken[this], _amount_s632);
    if (revert)
    {
        return;
    }

    totalSupply__BasicToken[this] := __var_26;
    assume __var_26 >= 0;
    gas := gas - 40878;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s632] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s632] >= 0;
    assume _amount_s632 >= 0;
    call __var_27 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s632], _amount_s632);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s632];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s632] := __var_27;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s632];
    assume __var_27 >= 0;
    assert {:EventEmitted "Mint_MintableToken"} true;
    assert {:EventEmitted "Transfer_MintableToken"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation finishMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call canMint_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    __tmp__mintingFinished_MintableToken[this] := true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation finishMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call canMint_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    mintingFinished_MintableToken[this] := true;
    assert {:EventEmitted "MintFinished_MintableToken"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation resumeMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    __tmp__mintingFinished_MintableToken[this] := false;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation resumeMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    mintingFinished_MintableToken[this] := false;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation burn_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s709: Ref)
   returns (success_s709: bool)
{
  var tokencount_s708: int;
  var __var_28: int;

    gas := gas - 6;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 656;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709] >= 0;
    if (!(__tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709] != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 614;
    assume tokencount_s708 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709] >= 0;
    tokencount_s708 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709];
    gas := gas - 10208;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709] >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709] := 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s709];
    gas := gas - 40494;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume tokencount_s708 >= 0;
    call __var_28 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply__BasicToken[this], tokencount_s708);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply__BasicToken[this] := __var_28;
    assume __var_28 >= 0;
    gas := gas - 20;
    success_s709 := true;
    return;
}



implementation burn_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _from_s709: Ref)
   returns (success_s709: bool)
{
  var tokencount_s708: int;
  var __var_28: int;

    gas := gas - 6;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 656;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s709] >= 0;
    if (!(M_Ref_int_balances0[balances_BasicToken[this]][_from_s709] != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 614;
    assume tokencount_s708 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s709] >= 0;
    tokencount_s708 := M_Ref_int_balances0[balances_BasicToken[this]][_from_s709];
    gas := gas - 10208;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s709] >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_from_s709];
    M_Ref_int_balances0[balances_BasicToken[this]][_from_s709] := 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_from_s709];
    gas := gas - 40494;
    assume totalSupply__BasicToken[this] >= 0;
    assume totalSupply__BasicToken[this] >= 0;
    assume tokencount_s708 >= 0;
    call __var_28 := sub_SafeMath__success(this, this, 0, totalSupply__BasicToken[this], tokencount_s708);
    if (revert)
    {
        return;
    }

    totalSupply__BasicToken[this] := __var_28;
    assume __var_28 >= 0;
    assert {:EventEmitted "Burn_MintableToken"} true;
    gas := gas - 20;
    success_s709 := true;
    return;
}



implementation startTransfer_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    __tmp__transferAllowed_MintableToken[this] := true;
}



implementation startTransfer_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    transferAllowed_MintableToken[this] := true;
}



implementation endTransfer_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    __tmp__transferAllowed_MintableToken[this] := false;
}



implementation endTransfer_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    transferAllowed_MintableToken[this] := false;
}



implementation transfer_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s750: Ref, 
    _value_s750: int)
   returns (__ret_0_: bool)
{
  var __var_29: bool;

    gas := gas - 6;
    gas := gas - 618;
    if (!__tmp__transferAllowed_MintableToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 24;
    assume _value_s750 >= 0;
    if (__tmp__DType[this] == ZebiCoin)
    {
        call __var_29 := transfer_StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintableToken)
    {
        call __var_29 := transfer_StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation transfer_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s750: Ref, 
    _value_s750: int)
   returns (__ret_0_: bool)
{
  var __var_29: bool;

    gas := gas - 6;
    gas := gas - 618;
    if (!transferAllowed_MintableToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 24;
    assume _value_s750 >= 0;
    if (DType[this] == ZebiCoin)
    {
        call __var_29 := transfer_StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintableToken)
    {
        call __var_29 := transfer_StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation transferFrom_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s774: Ref, 
    _to_s774: Ref, 
    _value_s774: int)
   returns (__ret_0_: bool)
{
  var __var_30: bool;

    gas := gas - 6;
    gas := gas - 618;
    if (!__tmp__transferAllowed_MintableToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume _value_s774 >= 0;
    if (__tmp__DType[this] == ZebiCoin)
    {
        call __var_30 := transferFrom_StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintableToken)
    {
        call __var_30 := transferFrom_StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation transferFrom_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s774: Ref, 
    _to_s774: Ref, 
    _value_s774: int)
   returns (__ret_0_: bool)
{
  var __var_30: bool;

    gas := gas - 6;
    gas := gas - 618;
    if (!transferAllowed_MintableToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume _value_s774 >= 0;
    if (DType[this] == ZebiCoin)
    {
        call __var_30 := transferFrom_StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintableToken)
    {
        call __var_30 := transferFrom_StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation ZebiCoin_ZebiCoin_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_ZebiCoin[this] := -800701992;
    __tmp__symbol_ZebiCoin[this] := 1329047381;
    __tmp__decimals_ZebiCoin[this] := 8;
}



implementation ZebiCoin_ZebiCoin_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_ZebiCoin[this] := -800701992;
    symbol_ZebiCoin[this] := 1329047381;
    decimals_ZebiCoin[this] := 8;
}



implementation ZebiCoin_ZebiCoin__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MintableToken_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ZebiCoin_ZebiCoin_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ZebiCoin_ZebiCoin__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ZebiCoin_ZebiCoin_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == ZebiCoin)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MintableToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Basic)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Ownable)
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
    if (DType[to] == ZebiCoin)
    {
        assume amount == 0;
    }
    else if (DType[to] == MintableToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Basic)
    {
        assume amount == 0;
    }
    else if (DType[to] == Ownable)
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
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__balances_BasicToken: [Ref]Ref;
  var __snap___tmp__totalSupply__BasicToken: [Ref]int;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__mintingFinished_MintableToken: [Ref]bool;
  var __snap___tmp__transferAllowed_MintableToken: [Ref]bool;
  var __snap___tmp__name_ZebiCoin: [Ref]int;
  var __snap___tmp__symbol_ZebiCoin: [Ref]int;
  var __snap___tmp__decimals_ZebiCoin: [Ref]int;

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
        __snap___tmp__owner_Ownable := __tmp__owner_Ownable;
        __snap___tmp__balances_BasicToken := __tmp__balances_BasicToken;
        __snap___tmp__totalSupply__BasicToken := __tmp__totalSupply__BasicToken;
        __snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
        __snap___tmp__mintingFinished_MintableToken := __tmp__mintingFinished_MintableToken;
        __snap___tmp__transferAllowed_MintableToken := __tmp__transferAllowed_MintableToken;
        __snap___tmp__name_ZebiCoin := __tmp__name_ZebiCoin;
        __snap___tmp__symbol_ZebiCoin := __tmp__symbol_ZebiCoin;
        __snap___tmp__decimals_ZebiCoin := __tmp__decimals_ZebiCoin;
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
        __tmp__owner_Ownable := __snap___tmp__owner_Ownable;
        __tmp__balances_BasicToken := __snap___tmp__balances_BasicToken;
        __tmp__totalSupply__BasicToken := __snap___tmp__totalSupply__BasicToken;
        __tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := __snap___tmp__mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := __snap___tmp__transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := __snap___tmp__name_ZebiCoin;
        __tmp__symbol_ZebiCoin := __snap___tmp__symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := __snap___tmp__decimals_ZebiCoin;
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
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__transferAllowed_MintableToken := transferAllowed_MintableToken;
        __tmp__name_ZebiCoin := name_ZebiCoin;
        __tmp__symbol_ZebiCoin := symbol_ZebiCoin;
        __tmp__decimals_ZebiCoin := decimals_ZebiCoin;
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
    gas := gas - 4140;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 4140;
    if (!(msgsender_MSG == owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation canMint_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1248;
    if (!!__tmp__mintingFinished_MintableToken[this])
    {
        revert := true;
        return;
    }
}



implementation canMint_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1248;
    if (!!mintingFinished_MintableToken[this])
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s54: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s54;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
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
       || DType[this] == MintableToken
       || DType[this] == ZebiCoin;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_ERC20Basic(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var who_s67: Ref;
  var __ret_0_balanceOf: int;
  var to_s76: Ref;
  var value_s76: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc who_s67;
    havoc __ret_0_balanceOf;
    havoc to_s76;
    havoc value_s76;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s67);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s76, value_s76);
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
       || DType[this] == ERC20
       || DType[this] == BasicToken
       || DType[this] == StandardToken
       || DType[this] == MintableToken
       || DType[this] == ZebiCoin;
    gas := gas - 53000;
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Basic(this);
    }
}



implementation CorralChoice_ERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var who_s67: Ref;
  var __ret_0_balanceOf: int;
  var to_s76: Ref;
  var value_s76: int;
  var __ret_0_transfer: bool;
  var owner_s96: Ref;
  var spender_s96: Ref;
  var __ret_0_allowance: int;
  var from_s107: Ref;
  var to_s107: Ref;
  var value_s107: int;
  var __ret_0_transferFrom: bool;
  var spender_s116: Ref;
  var value_s116: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc who_s67;
    havoc __ret_0_balanceOf;
    havoc to_s76;
    havoc value_s76;
    havoc __ret_0_transfer;
    havoc owner_s96;
    havoc spender_s96;
    havoc __ret_0_allowance;
    havoc from_s107;
    havoc to_s107;
    havoc value_s107;
    havoc __ret_0_transferFrom;
    havoc spender_s116;
    havoc value_s116;
    havoc __ret_0_approve;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
    Alloc[msgsender_MSG] := true;
    if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s67);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s76, value_s76);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s96, spender_s96);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s107, to_s107, value_s107);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s116, value_s116);
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
       || DType[this] == MintableToken
       || DType[this] == ZebiCoin;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
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
  var __ret_0_totalSupply: int;
  var _owner_s276: Ref;
  var balance_s276: int;
  var _to_s204: Ref;
  var _value_s204: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s276;
    havoc balance_s276;
    havoc _to_s204;
    havoc _value_s204;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call balance_s276 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s276);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
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
       || DType[this] == MintableToken
       || DType[this] == ZebiCoin;
    gas := gas - 53000;
    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BasicToken(this);
    }
}



implementation CorralChoice_StandardToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s276: Ref;
  var balance_s276: int;
  var _to_s204: Ref;
  var _value_s204: int;
  var __ret_0_transfer: bool;
  var _owner_s450: Ref;
  var _spender_s450: Ref;
  var __ret_0_allowance: int;
  var _from_s320: Ref;
  var _to_s320: Ref;
  var _value_s320: int;
  var __ret_0_transferFrom: bool;
  var _spender_s434: Ref;
  var _value_s434: int;
  var __ret_0_approve: bool;
  var _spender_s491: Ref;
  var _addedValue_s491: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s551: Ref;
  var _subtractedValue_s551: int;
  var __ret_0_decreaseApproval: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s276;
    havoc balance_s276;
    havoc _to_s204;
    havoc _value_s204;
    havoc __ret_0_transfer;
    havoc _owner_s450;
    havoc _spender_s450;
    havoc __ret_0_allowance;
    havoc _from_s320;
    havoc _to_s320;
    havoc _value_s320;
    havoc __ret_0_transferFrom;
    havoc _spender_s434;
    havoc _value_s434;
    havoc __ret_0_approve;
    havoc _spender_s491;
    havoc _addedValue_s491;
    havoc __ret_0_increaseApproval;
    havoc _spender_s551;
    havoc _subtractedValue_s551;
    havoc __ret_0_decreaseApproval;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call balance_s276 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s276);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s204, _value_s204);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s450, _spender_s450);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s320, _to_s320, _value_s320);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s434, _value_s434);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s491, _addedValue_s491);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s551, _subtractedValue_s551);
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
       || DType[this] == MintableToken
       || DType[this] == ZebiCoin;
    gas := gas - 53000;
    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_StandardToken(this);
    }
}



implementation CorralChoice_MintableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s54: Ref;
  var __ret_0_totalSupply: int;
  var _owner_s276: Ref;
  var balance_s276: int;
  var _to_s750: Ref;
  var _value_s750: int;
  var __ret_0_transfer: bool;
  var _owner_s450: Ref;
  var _spender_s450: Ref;
  var __ret_0_allowance: int;
  var _from_s774: Ref;
  var _to_s774: Ref;
  var _value_s774: int;
  var __ret_0_transferFrom: bool;
  var _spender_s434: Ref;
  var _value_s434: int;
  var __ret_0_approve: bool;
  var _spender_s491: Ref;
  var _addedValue_s491: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s551: Ref;
  var _subtractedValue_s551: int;
  var __ret_0_decreaseApproval: bool;
  var _to_s632: Ref;
  var _amount_s632: int;
  var __ret_0_mint: bool;
  var __ret_0_finishMinting: bool;
  var __ret_0_resumeMinting: bool;
  var _from_s709: Ref;
  var success_s709: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s54;
    havoc __ret_0_totalSupply;
    havoc _owner_s276;
    havoc balance_s276;
    havoc _to_s750;
    havoc _value_s750;
    havoc __ret_0_transfer;
    havoc _owner_s450;
    havoc _spender_s450;
    havoc __ret_0_allowance;
    havoc _from_s774;
    havoc _to_s774;
    havoc _value_s774;
    havoc __ret_0_transferFrom;
    havoc _spender_s434;
    havoc _value_s434;
    havoc __ret_0_approve;
    havoc _spender_s491;
    havoc _addedValue_s491;
    havoc __ret_0_increaseApproval;
    havoc _spender_s551;
    havoc _subtractedValue_s551;
    havoc __ret_0_decreaseApproval;
    havoc _to_s632;
    havoc _amount_s632;
    havoc __ret_0_mint;
    havoc __ret_0_finishMinting;
    havoc __ret_0_resumeMinting;
    havoc _from_s709;
    havoc success_s709;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
    Alloc[msgsender_MSG] := true;
    if (choice == 15)
    {
        gas := gas - 21000;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call balance_s276 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s276);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call __ret_0_transfer := transfer_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s450, _spender_s450);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call __ret_0_transferFrom := transferFrom_MintableToken(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s434, _value_s434);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s491, _addedValue_s491);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s551, _subtractedValue_s551);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_mint := mint_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s632, _amount_s632);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_finishMinting := finishMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_resumeMinting := resumeMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call success_s709 := burn_MintableToken(this, msgsender_MSG, msgvalue_MSG, _from_s709);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call startTransfer_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call endTransfer_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_MintableToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MintableToken || DType[this] == ZebiCoin;
    gas := gas - 53000;
    call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MintableToken(this);
    }
}



implementation CorralChoice_ZebiCoin(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s54: Ref;
  var __ret_0_totalSupply: int;
  var _owner_s276: Ref;
  var balance_s276: int;
  var _to_s750: Ref;
  var _value_s750: int;
  var __ret_0_transfer: bool;
  var _owner_s450: Ref;
  var _spender_s450: Ref;
  var __ret_0_allowance: int;
  var _from_s774: Ref;
  var _to_s774: Ref;
  var _value_s774: int;
  var __ret_0_transferFrom: bool;
  var _spender_s434: Ref;
  var _value_s434: int;
  var __ret_0_approve: bool;
  var _spender_s491: Ref;
  var _addedValue_s491: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s551: Ref;
  var _subtractedValue_s551: int;
  var __ret_0_decreaseApproval: bool;
  var _to_s632: Ref;
  var _amount_s632: int;
  var __ret_0_mint: bool;
  var __ret_0_finishMinting: bool;
  var __ret_0_resumeMinting: bool;
  var _from_s709: Ref;
  var success_s709: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s54;
    havoc __ret_0_totalSupply;
    havoc _owner_s276;
    havoc balance_s276;
    havoc _to_s750;
    havoc _value_s750;
    havoc __ret_0_transfer;
    havoc _owner_s450;
    havoc _spender_s450;
    havoc __ret_0_allowance;
    havoc _from_s774;
    havoc _to_s774;
    havoc _value_s774;
    havoc __ret_0_transferFrom;
    havoc _spender_s434;
    havoc _value_s434;
    havoc __ret_0_approve;
    havoc _spender_s491;
    havoc _addedValue_s491;
    havoc __ret_0_increaseApproval;
    havoc _spender_s551;
    havoc _subtractedValue_s551;
    havoc __ret_0_decreaseApproval;
    havoc _to_s632;
    havoc _amount_s632;
    havoc __ret_0_mint;
    havoc __ret_0_finishMinting;
    havoc __ret_0_resumeMinting;
    havoc _from_s709;
    havoc success_s709;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != ZebiCoin;
    Alloc[msgsender_MSG] := true;
    if (choice == 15)
    {
        gas := gas - 21000;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call balance_s276 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s276);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call __ret_0_transfer := transfer_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s750, _value_s750);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s450, _spender_s450);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call __ret_0_transferFrom := transferFrom_MintableToken(this, msgsender_MSG, msgvalue_MSG, _from_s774, _to_s774, _value_s774);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s434, _value_s434);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s491, _addedValue_s491);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s551, _subtractedValue_s551);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_mint := mint_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s632, _amount_s632);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_finishMinting := finishMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_resumeMinting := resumeMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call success_s709 := burn_MintableToken(this, msgsender_MSG, msgvalue_MSG, _from_s709);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call startTransfer_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call endTransfer_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ZebiCoin;
    gas := gas - 53000;
    call ZebiCoin_ZebiCoin__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ZebiCoin(this);
    }
}


