// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:Alchemist.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

//constant_gold
// LTLProperty: [](!finished(*, old(GOLD_Alchemist[a_Deployer[this]]) != GOLD_Alchemist[a_Deployer[this]]))

//constant_lead
// LTLProperty: [](!finished(*, old(LEAD_Alchemist[a_Deployer[this]]) != LEAD_Alchemist[a_Deployer[this]]))

//transmute
// #LTLProperty: [](!finished(Alchemist.transmute(mass), M_Ref_int__balances0[_balances_ERC20[LEAD_Alchemist[this]]][msg.sender] != old(M_Ref_int__balances0[_balances_ERC20[LEAD_Alchemist[this]]][msg.sender]) - mass || M_Ref_int__balances0[_balances_ERC20[GOLD_Alchemist[this]]][msg.sender] != old(M_Ref_int__balances0[_balances_ERC20[GOLD_Alchemist[this]]][msg.sender]) + mass))

type Ref = int;

type ContractName = int;

var null: Ref;

var IERC20: ContractName;

var Alchemist: ContractName;

var SafeMath: ContractName;

var ERC20: ContractName;

var ERC20Detailed: ContractName;

var Lead: ContractName;

var Gold: ContractName;

var Deployer: ContractName;

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

var M_Ref_int__balances0: [Ref][Ref]int;

var sum__balances0: [Ref]int;

var M_Ref_int__allowed1: [Ref][Ref]int;

var M_Ref_Ref__allowed1: [Ref][Ref]Ref;

var sum__allowed1: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, Balance;



implementation IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s13: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s22: Ref, 
    spender_s22: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s31: Ref, value_s31: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s40: Ref, 
    value_s40: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s51: Ref, 
    to_s51: Ref, 
    value_s51: int)
   returns (__ret_0_: bool);



var {:access "this.LEAD=LEAD_Alchemist[this]"} LEAD_Alchemist: [Ref]Ref;

var {:access "this.GOLD=GOLD_Alchemist[this]"} GOLD_Alchemist: [Ref]Ref;

procedure {:inline 1} Alchemist_Alchemist_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref);
  modifies Balance, LEAD_Alchemist, GOLD_Alchemist;



procedure {:constructor} {:public} {:inline 1} Alchemist_Alchemist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, Balance, LEAD_Alchemist, GOLD_Alchemist;



implementation Alchemist_Alchemist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call Alchemist_Alchemist__fail(this, msgsender_MSG, msgvalue_MSG, _lead_s88, _gold_s88);
        assume revert || gas < 0;
    }
    else
    {
        call Alchemist_Alchemist__success(this, msgsender_MSG, msgvalue_MSG, _lead_s88, _gold_s88);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transmute_Alchemist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _mass_s121: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, sum__balances0, M_Ref_int__balances0;



implementation transmute_Alchemist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _mass_s121: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call transmute_Alchemist__fail(this, msgsender_MSG, msgvalue_MSG, _mass_s121);
        assume revert || gas < 0;
    }
    else
    {
        call transmute_Alchemist__success(this, msgsender_MSG, msgvalue_MSG, _mass_s121);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, Balance;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s146: int, b_s146: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s170: int, b_s170: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this._balances[i0]=M_Ref_int__balances0[_balances_ERC20[this]][i0]"} {:sum "sum(this._balances)=sum__balances0[_balances_ERC20[this]]"} _balances_ERC20: [Ref]Ref;

var {:access "this._allowed[i0][i1]=M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][i0]][i1]"} {:sum "sum(this._allowed)=sum__allowed1[_allowed_ERC20[this]]"} _allowed_ERC20: [Ref]Ref;

var {:access "this._totalSupply=_totalSupply_ERC20[this]"} _totalSupply_ERC20: [Ref]int;

procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas;



implementation totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s208: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s208: Ref)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s208);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s208);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s224: Ref, 
    spender_s224: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s224: Ref, 
    spender_s224: Ref)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s224, spender_s224);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s224, spender_s224);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s243: Ref, value_s243: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, sum__balances0, M_Ref_int__balances0;



implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s243: Ref, value_s243: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s243, value_s243);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s243, value_s243);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s279: Ref, 
    value_s279: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s279: Ref, 
    value_s279: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s279, value_s279);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s279, value_s279);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s328: Ref, 
    to_s328: Ref, 
    value_s328: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, sum__balances0, M_Ref_int__balances0;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s328: Ref, 
    to_s328: Ref, 
    value_s328: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s377: Ref, 
    addedValue_s377: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s377: Ref, 
    addedValue_s377: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s377, addedValue_s377);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s377, addedValue_s377);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s426: Ref, 
    subtractedValue_s426: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s426: Ref, 
    subtractedValue_s426: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s426, subtractedValue_s426);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s426, subtractedValue_s426);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s472: Ref, 
    to_s472: Ref, 
    value_s472: int);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s514: Ref, 
    value_s514: int);
  modifies revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, gas;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s556: Ref, 
    value_s556: int);
  modifies revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, gas;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s598: Ref, 
    value_s598: int);
  modifies M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



var {:access "this._name=_name_ERC20Detailed[this]"} _name_ERC20Detailed: [Ref]int;

var {:access "this._symbol=_symbol_ERC20Detailed[this]"} _symbol_ERC20Detailed: [Ref]int;

var {:access "this._decimals=_decimals_ERC20Detailed[this]"} _decimals_ERC20Detailed: [Ref]int;

procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:public} {:inline 1} ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



implementation ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, name_s629, symbol_s629, decimals_s629);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, name_s629, symbol_s629, decimals_s629);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer;



implementation name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := name_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := name_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} symbol_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer;



implementation symbol_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := symbol_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := symbol_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decimals_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer;



implementation decimals_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call __ret_0_ := decimals_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decimals_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Lead_Lead_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas;



procedure {:inline 1} Lead_Lead(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



implementation Lead_Lead(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call Lead_Lead__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Lead_Lead__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Gold_Gold_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Gold_Gold(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



implementation Gold_Gold(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call Gold_Gold__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Gold_Gold__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.l=l_Deployer[this]"} l_Deployer: [Ref]Ref;

var {:access "this.g=g_Deployer[this]"} g_Deployer: [Ref]Ref;

var {:access "this.a=a_Deployer[this]"} a_Deployer: [Ref]Ref;

procedure {:inline 1} Deployer_Deployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, l_Deployer, g_Deployer, a_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, gas, LEAD_Alchemist, GOLD_Alchemist;



procedure {:constructor} {:public} {:inline 1} Deployer_Deployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, gas, Balance, l_Deployer, g_Deployer, a_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, LEAD_Alchemist, GOLD_Alchemist;



implementation Deployer_Deployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
        call Deployer_Deployer__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Deployer_Deployer__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, revert, Balance;



procedure CorralChoice_IERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_IERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_Alchemist(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_Alchemist();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, now, Balance, LEAD_Alchemist, GOLD_Alchemist, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, sum__allowed1;



procedure CorralChoice_ERC20Detailed(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer;



procedure CorralEntry_ERC20Detailed();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, now, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure CorralChoice_Lead(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_Lead();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, sum__allowed1;



procedure CorralChoice_Gold(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_Gold();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, sum__allowed1;



procedure CorralChoice_Deployer(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, now, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Balance, l_Deployer, g_Deployer, a_Deployer, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, _totalSupply_ERC20, LEAD_Alchemist, GOLD_Alchemist;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int__balances0: [Ref][Ref]int;

var __tmp__sum__balances0: [Ref]int;

var __tmp__M_Ref_int__allowed1: [Ref][Ref]int;

var __tmp__M_Ref_Ref__allowed1: [Ref][Ref]Ref;

var __tmp__sum__allowed1: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__LEAD_Alchemist: [Ref]Ref;

var __tmp__GOLD_Alchemist: [Ref]Ref;

var __tmp___balances_ERC20: [Ref]Ref;

var __tmp___allowed_ERC20: [Ref]Ref;

var __tmp___totalSupply_ERC20: [Ref]int;

var __tmp___name_ERC20Detailed: [Ref]int;

var __tmp___symbol_ERC20Detailed: [Ref]int;

var __tmp___decimals_ERC20Detailed: [Ref]int;

var __tmp__l_Deployer: [Ref]Ref;

var __tmp__g_Deployer: [Ref]Ref;

var __tmp__a_Deployer: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Alchemist_Alchemist_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref);
  modifies __tmp__Balance, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist;



procedure {:constructor} {:inline 1} Alchemist_Alchemist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref);
  modifies Balance, LEAD_Alchemist, GOLD_Alchemist;



procedure {:constructor} {:inline 1} Alchemist_Alchemist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref);
  modifies __tmp__Balance, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist;



procedure {:inline 1} transmute_Alchemist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _mass_s121: int);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} transmute_Alchemist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _mass_s121: int);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s146: int, b_s146: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s170: int, b_s170: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s208: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s208: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s224: Ref, 
    spender_s224: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s224: Ref, 
    spender_s224: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s243: Ref, value_s243: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s243: Ref, value_s243: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s279: Ref, 
    value_s279: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s279: Ref, 
    value_s279: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s328: Ref, 
    to_s328: Ref, 
    value_s328: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s328: Ref, 
    to_s328: Ref, 
    value_s328: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s377: Ref, 
    addedValue_s377: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s377: Ref, 
    addedValue_s377: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s426: Ref, 
    subtractedValue_s426: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s426: Ref, 
    subtractedValue_s426: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s472: Ref, 
    to_s472: Ref, 
    value_s472: int);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s514: Ref, 
    value_s514: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, gas;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s556: Ref, 
    value_s556: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, gas;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s598: Ref, 
    value_s598: int);
  modifies __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc, gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int);
  modifies __tmp__Balance, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int);
  modifies __tmp__Balance, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:inline 1} name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} Lead_Lead_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas;



procedure {:inline 1} Lead_Lead__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc, gas;



procedure {:inline 1} Lead_Lead__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, __tmp__Alloc, gas;



procedure {:inline 1} Gold_Gold_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Gold_Gold__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



procedure {:inline 1} Gold_Gold__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} Deployer_Deployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, __tmp__Alloc, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, gas, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist;



procedure {:constructor} {:inline 1} Deployer_Deployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, l_Deployer, g_Deployer, a_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, gas, LEAD_Alchemist, GOLD_Alchemist;



procedure {:constructor} {:inline 1} Deployer_Deployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, __tmp__Alloc, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, gas, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp__LEAD_Alchemist, __tmp__GOLD_Alchemist, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__l_Deployer, __tmp__g_Deployer, __tmp__a_Deployer, revert;



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



implementation IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Alchemist_Alchemist_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__LEAD_Alchemist[this] := null;
    __tmp__GOLD_Alchemist[this] := null;
    __tmp__LEAD_Alchemist[this] := _lead_s88;
    __tmp__GOLD_Alchemist[this] := _gold_s88;
}



implementation Alchemist_Alchemist_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    LEAD_Alchemist[this] := null;
    GOLD_Alchemist[this] := null;
    LEAD_Alchemist[this] := _lead_s88;
    GOLD_Alchemist[this] := _gold_s88;
}



implementation Alchemist_Alchemist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref)
{
    call Alchemist_Alchemist_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _lead_s88, _gold_s88);
    if (revert)
    {
        return;
    }
}



implementation Alchemist_Alchemist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _lead_s88: Ref, _gold_s88: Ref)
{
    call Alchemist_Alchemist_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _lead_s88, _gold_s88);
    if (revert)
    {
        return;
    }
}



implementation transmute_Alchemist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _mass_s121: int)
{
  var __var_1: bool;
  var __var_2: Ref;
  var __var_3: int;
  var __var_4: Ref;
  var __var_5: bool;
  var __var_6: Ref;
  var __var_7: int;

    gas := gas - 28681;
    assume __tmp__DType[__tmp__LEAD_Alchemist[this]] == IERC20
       || __tmp__DType[__tmp__LEAD_Alchemist[this]] == ERC20
       || __tmp__DType[__tmp__LEAD_Alchemist[this]] == ERC20Detailed
       || __tmp__DType[__tmp__LEAD_Alchemist[this]] == Lead
       || __tmp__DType[__tmp__LEAD_Alchemist[this]] == Gold;
    __var_2 := __tmp__LEAD_Alchemist[this];
    __var_4 := this;
    assume _mass_s121 >= 0;
    if (__tmp__DType[__var_2] == Gold)
    {
        call __var_1 := transferFrom_ERC20__fail(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_2] == Lead)
    {
        call __var_1 := transferFrom_ERC20__fail(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_2] == ERC20Detailed)
    {
        call __var_1 := transferFrom_IERC20(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
    }
    else if (__tmp__DType[__var_2] == ERC20)
    {
        call __var_1 := transferFrom_ERC20__fail(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_2] == IERC20)
    {
        call __var_1 := transferFrom_IERC20(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
    }
    else
    {
        assume false;
    }

    if (!__var_1)
    {
        revert := true;
        return;
    }

    gas := gas - 29107;
    assume __tmp__DType[__tmp__GOLD_Alchemist[this]] == IERC20
       || __tmp__DType[__tmp__GOLD_Alchemist[this]] == ERC20
       || __tmp__DType[__tmp__GOLD_Alchemist[this]] == ERC20Detailed
       || __tmp__DType[__tmp__GOLD_Alchemist[this]] == Lead
       || __tmp__DType[__tmp__GOLD_Alchemist[this]] == Gold;
    __var_6 := __tmp__GOLD_Alchemist[this];
    assume _mass_s121 >= 0;
    if (__tmp__DType[__var_6] == Gold)
    {
        call __var_5 := transfer_ERC20__fail(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_6] == Lead)
    {
        call __var_5 := transfer_ERC20__fail(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_6] == ERC20Detailed)
    {
        call __var_5 := transfer_IERC20(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
    }
    else if (__tmp__DType[__var_6] == ERC20)
    {
        call __var_5 := transfer_ERC20__fail(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_6] == IERC20)
    {
        call __var_5 := transfer_IERC20(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
    }
    else
    {
        assume false;
    }

    if (!__var_5)
    {
        revert := true;
        return;
    }
}



implementation transmute_Alchemist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _mass_s121: int)
{
  var __var_1: bool;
  var __var_2: Ref;
  var __var_3: int;
  var __var_4: Ref;
  var __var_5: bool;
  var __var_6: Ref;
  var __var_7: int;

    gas := gas - 28681;
    assume DType[LEAD_Alchemist[this]] == IERC20
       || DType[LEAD_Alchemist[this]] == ERC20
       || DType[LEAD_Alchemist[this]] == ERC20Detailed
       || DType[LEAD_Alchemist[this]] == Lead
       || DType[LEAD_Alchemist[this]] == Gold;
    __var_2 := LEAD_Alchemist[this];
    __var_4 := this;
    assume _mass_s121 >= 0;
    if (DType[__var_2] == Gold)
    {
        call __var_1 := transferFrom_ERC20__success(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_2] == Lead)
    {
        call __var_1 := transferFrom_ERC20__success(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_2] == ERC20Detailed)
    {
        call __var_1 := transferFrom_IERC20(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
    }
    else if (DType[__var_2] == ERC20)
    {
        call __var_1 := transferFrom_ERC20__success(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_2] == IERC20)
    {
        call __var_1 := transferFrom_IERC20(__var_2, this, __var_3, msgsender_MSG, this, _mass_s121);
    }
    else
    {
        assume false;
    }

    if (!__var_1)
    {
        revert := true;
        return;
    }

    gas := gas - 29107;
    assume DType[GOLD_Alchemist[this]] == IERC20
       || DType[GOLD_Alchemist[this]] == ERC20
       || DType[GOLD_Alchemist[this]] == ERC20Detailed
       || DType[GOLD_Alchemist[this]] == Lead
       || DType[GOLD_Alchemist[this]] == Gold;
    __var_6 := GOLD_Alchemist[this];
    assume _mass_s121 >= 0;
    if (DType[__var_6] == Gold)
    {
        call __var_5 := transfer_ERC20__success(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_6] == Lead)
    {
        call __var_5 := transfer_ERC20__success(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_6] == ERC20Detailed)
    {
        call __var_5 := transfer_IERC20(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
    }
    else if (DType[__var_6] == ERC20)
    {
        call __var_5 := transfer_ERC20__success(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_6] == IERC20)
    {
        call __var_5 := transfer_IERC20(__var_6, this, __var_7, msgsender_MSG, _mass_s121);
    }
    else
    {
        assume false;
    }

    if (!__var_5)
    {
        revert := true;
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



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s146: int, b_s146: int)
   returns (__ret_0_: int)
{
  var c_s145: int;

    gas := gas - 9;
    gas := gas - 96;
    assume b_s146 >= 0;
    assume a_s146 >= 0;
    if (!(b_s146 <= a_s146))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s145 >= 0;
    assume a_s146 >= 0;
    assume b_s146 >= 0;
    assume a_s146 - b_s146 >= 0;
    c_s145 := a_s146 - b_s146;
    gas := gas - 30;
    assume c_s145 >= 0;
    __ret_0_ := c_s145;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s146: int, b_s146: int)
   returns (__ret_0_: int)
{
  var c_s145: int;

    gas := gas - 9;
    gas := gas - 96;
    assume b_s146 >= 0;
    assume a_s146 >= 0;
    if (!(b_s146 <= a_s146))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s145 >= 0;
    assume a_s146 >= 0;
    assume b_s146 >= 0;
    assume a_s146 - b_s146 >= 0;
    c_s145 := a_s146 - b_s146;
    gas := gas - 30;
    assume c_s145 >= 0;
    __ret_0_ := c_s145;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s170: int, b_s170: int)
   returns (__ret_0_: int)
{
  var c_s169: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s169 >= 0;
    assume a_s170 >= 0;
    assume b_s170 >= 0;
    assume a_s170 + b_s170 >= 0;
    c_s169 := a_s170 + b_s170;
    gas := gas - 96;
    assume c_s169 >= 0;
    assume a_s170 >= 0;
    if (!(c_s169 >= a_s170))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume c_s169 >= 0;
    __ret_0_ := c_s169;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s170: int, b_s170: int)
   returns (__ret_0_: int)
{
  var c_s169: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s169 >= 0;
    assume a_s170 >= 0;
    assume b_s170 >= 0;
    assume a_s170 + b_s170 >= 0;
    c_s169 := a_s170 + b_s170;
    gas := gas - 96;
    assume c_s169 >= 0;
    assume a_s170 >= 0;
    if (!(c_s169 >= a_s170))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume c_s169 >= 0;
    __ret_0_ := c_s169;
    return;
}



implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_8: Ref;
  var __var_9: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_8 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___balances_ERC20[this] := __var_8;
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]] := zeroRefIntArr();
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := 0;
    call __var_9 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___allowed_ERC20[this] := __var_9;
    __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]] := zeroRefRefArr();
    __tmp__M_Ref_int__allowed1[null] := zeroRefIntArr();
    __tmp___totalSupply_ERC20[this] := 0;
}



implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_8: Ref;
  var __var_9: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_8 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _balances_ERC20[this] := __var_8;
    M_Ref_int__balances0[_balances_ERC20[this]] := zeroRefIntArr();
    sum__balances0[_balances_ERC20[this]] := 0;
    call __var_9 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _allowed_ERC20[this] := __var_9;
    M_Ref_Ref__allowed1[_allowed_ERC20[this]] := zeroRefRefArr();
    M_Ref_int__allowed1[null] := zeroRefIntArr();
    _totalSupply_ERC20[this] := 0;
}



implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
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
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 624;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    __ret_0_ := __tmp___totalSupply_ERC20[this];
    return;
}



implementation totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 624;
    assume _totalSupply_ERC20[this] >= 0;
    __ret_0_ := _totalSupply_ERC20[this];
    return;
}



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s208: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][owner_s208] >= 0;
    __ret_0_ := __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][owner_s208];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s208: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
    assume M_Ref_int__balances0[_balances_ERC20[this]][owner_s208] >= 0;
    __ret_0_ := M_Ref_int__balances0[_balances_ERC20[this]][owner_s208];
    return;
}



implementation allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s224: Ref, 
    spender_s224: Ref)
   returns (__ret_0_: int)
{
  var __var_10: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s224] == null)
    {
        call __var_10 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s224] := __var_10;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s224]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s224]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s224]][spender_s224]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s224]][spender_s224];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s224: Ref, 
    spender_s224: Ref)
   returns (__ret_0_: int)
{
  var __var_10: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s224] == null)
    {
        call __var_10 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s224] := __var_10;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s224]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s224]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s224]][spender_s224]
       >= 0;
    __ret_0_ := M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s224]][spender_s224];
    return;
}



implementation transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s243: Ref, value_s243: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 36;
    assume value_s243 >= 0;
    if (__tmp__DType[this] == Gold)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s243, value_s243);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Lead)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s243, value_s243);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s243, value_s243);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s243: Ref, value_s243: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 36;
    assume value_s243 >= 0;
    if (DType[this] == Gold)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s243, value_s243);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Lead)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s243, value_s243);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s243, value_s243);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s279: Ref, 
    value_s279: int)
   returns (__ret_0_: bool)
{
  var __var_11: Ref;
  var __var_12: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_11 := null;
    if (!(spender_s279 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60597;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_12 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_12;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s279]
       >= 0;
    assume value_s279 >= 0;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s279];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s279] := value_s279;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s279];
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s279: Ref, 
    value_s279: int)
   returns (__ret_0_: bool)
{
  var __var_11: Ref;
  var __var_12: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_11 := null;
    if (!(spender_s279 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60597;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_12 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_12;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s279]
       >= 0;
    assume value_s279 >= 0;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s279];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s279] := value_s279;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s279];
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s328: Ref, 
    to_s328: Ref, 
    value_s328: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;
  var __var_14: int;
  var __var_15: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328] == null)
    {
        call __var_13 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328] := __var_13;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328] == null)
    {
        call __var_15 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328] := __var_15;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]][msgsender_MSG]
       >= 0;
    assume value_s328 >= 0;
    call __var_14 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]][msgsender_MSG], value_s328);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]][msgsender_MSG];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]][msgsender_MSG] := __var_14;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s328]][msgsender_MSG];
    assume __var_14 >= 0;
    gas := gas - 72;
    assume value_s328 >= 0;
    if (__tmp__DType[this] == Gold)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Lead)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s328: Ref, 
    to_s328: Ref, 
    value_s328: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;
  var __var_14: int;
  var __var_15: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328] == null)
    {
        call __var_13 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328] := __var_13;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328] == null)
    {
        call __var_15 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328] := __var_15;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]][msgsender_MSG]
       >= 0;
    assume value_s328 >= 0;
    call __var_14 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]][msgsender_MSG], value_s328);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]][msgsender_MSG];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]][msgsender_MSG] := __var_14;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s328]][msgsender_MSG];
    assume __var_14 >= 0;
    gas := gas - 72;
    assume value_s328 >= 0;
    if (DType[this] == Gold)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Lead)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s377: Ref, 
    addedValue_s377: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: Ref;
  var __var_18: int;
  var __var_19: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_16 := null;
    if (!(spender_s377 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_17 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_17;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s377]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_19 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_19;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s377]
       >= 0;
    assume addedValue_s377 >= 0;
    call __var_18 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s377], addedValue_s377);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s377];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s377] := __var_18;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s377];
    assume __var_18 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s377: Ref, 
    addedValue_s377: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: Ref;
  var __var_18: int;
  var __var_19: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_16 := null;
    if (!(spender_s377 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_17 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_17;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s377]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_19 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_19;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s377]
       >= 0;
    assume addedValue_s377 >= 0;
    call __var_18 := add_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s377], addedValue_s377);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s377];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s377] := __var_18;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s377];
    assume __var_18 >= 0;
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s426: Ref, 
    subtractedValue_s426: int)
   returns (__ret_0_: bool)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: int;
  var __var_23: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_20 := null;
    if (!(spender_s426 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_21 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_21;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s426]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_23 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_23;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s426]
       >= 0;
    assume subtractedValue_s426 >= 0;
    call __var_22 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s426], subtractedValue_s426);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s426];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s426] := __var_22;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s426];
    assume __var_22 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s426: Ref, 
    subtractedValue_s426: int)
   returns (__ret_0_: bool)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: int;
  var __var_23: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_20 := null;
    if (!(spender_s426 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_21 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_21;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s426]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_23 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_23;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s426]
       >= 0;
    assume subtractedValue_s426 >= 0;
    call __var_22 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s426], subtractedValue_s426);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s426];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s426] := __var_22;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s426];
    assume __var_22 >= 0;
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s472: Ref, 
    to_s472: Ref, 
    value_s472: int)
{
  var __var_24: Ref;
  var __var_25: int;
  var __var_26: int;

    gas := gas - 132;
    __var_24 := null;
    if (!(to_s472 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s472] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s472] >= 0;
    assume value_s472 >= 0;
    call __var_25 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s472], value_s472);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s472];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s472] := __var_25;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s472];
    assume __var_25 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s472] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s472] >= 0;
    assume value_s472 >= 0;
    call __var_26 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s472], value_s472);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s472];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s472] := __var_26;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s472];
    assume __var_26 >= 0;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s472: Ref, 
    to_s472: Ref, 
    value_s472: int)
{
  var __var_24: Ref;
  var __var_25: int;
  var __var_26: int;

    gas := gas - 132;
    __var_24 := null;
    if (!(to_s472 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int__balances0[_balances_ERC20[this]][from_s472] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][from_s472] >= 0;
    assume value_s472 >= 0;
    call __var_25 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][from_s472], value_s472);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][from_s472];
    M_Ref_int__balances0[_balances_ERC20[this]][from_s472] := __var_25;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][from_s472];
    assume __var_25 >= 0;
    gas := gas - 61299;
    assume M_Ref_int__balances0[_balances_ERC20[this]][to_s472] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][to_s472] >= 0;
    assume value_s472 >= 0;
    call __var_26 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][to_s472], value_s472);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][to_s472];
    M_Ref_int__balances0[_balances_ERC20[this]][to_s472] := __var_26;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][to_s472];
    assume __var_26 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s514: Ref, 
    value_s514: int)
{
  var __var_27: Ref;
  var __var_28: int;
  var __var_29: int;

    __var_27 := null;
    if (!(account_s514 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s514 >= 0;
    call __var_28 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s514);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_28;
    assume __var_28 >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s514] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s514] >= 0;
    assume value_s514 >= 0;
    call __var_29 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s514], value_s514);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s514];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s514] := __var_29;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s514];
    assume __var_29 >= 0;
}



implementation _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s514: Ref, 
    value_s514: int)
{
  var __var_27: Ref;
  var __var_28: int;
  var __var_29: int;

    __var_27 := null;
    if (!(account_s514 != null))
    {
        revert := true;
        return;
    }

    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s514 >= 0;
    call __var_28 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s514);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_28;
    assume __var_28 >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s514] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s514] >= 0;
    assume value_s514 >= 0;
    call __var_29 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s514], value_s514);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s514];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s514] := __var_29;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s514];
    assume __var_29 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s556: Ref, 
    value_s556: int)
{
  var __var_30: Ref;
  var __var_31: int;
  var __var_32: int;

    __var_30 := null;
    if (!(account_s556 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s556 >= 0;
    call __var_31 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s556);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_31;
    assume __var_31 >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s556] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s556] >= 0;
    assume value_s556 >= 0;
    call __var_32 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s556], value_s556);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s556];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s556] := __var_32;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s556];
    assume __var_32 >= 0;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s556: Ref, 
    value_s556: int)
{
  var __var_30: Ref;
  var __var_31: int;
  var __var_32: int;

    __var_30 := null;
    if (!(account_s556 != null))
    {
        revert := true;
        return;
    }

    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s556 >= 0;
    call __var_31 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s556);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_31;
    assume __var_31 >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s556] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s556] >= 0;
    assume value_s556 >= 0;
    call __var_32 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s556], value_s556);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s556];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s556] := __var_32;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s556];
    assume __var_32 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s598: Ref, 
    value_s598: int)
{
  var __var_33: Ref;
  var __var_34: int;
  var __var_35: Ref;

    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598] == null)
    {
        call __var_33 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598] := __var_33;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598] == null)
    {
        call __var_35 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598] := __var_35;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]][msgsender_MSG]
       >= 0;
    assume value_s598 >= 0;
    call __var_34 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]][msgsender_MSG], value_s598);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]][msgsender_MSG];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]][msgsender_MSG] := __var_34;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s598]][msgsender_MSG];
    assume __var_34 >= 0;
    assume value_s598 >= 0;
    if (__tmp__DType[this] == Gold)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s598, value_s598);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Lead)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s598, value_s598);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s598, value_s598);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }
}



implementation _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s598: Ref, 
    value_s598: int)
{
  var __var_33: Ref;
  var __var_34: int;
  var __var_35: Ref;

    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598] == null)
    {
        call __var_33 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598] := __var_33;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598] == null)
    {
        call __var_35 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598] := __var_35;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]][msgsender_MSG]
       >= 0;
    assume value_s598 >= 0;
    call __var_34 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]][msgsender_MSG], value_s598);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]][msgsender_MSG];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]][msgsender_MSG] := __var_34;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s598]][msgsender_MSG];
    assume __var_34 >= 0;
    assume value_s598 >= 0;
    if (DType[this] == Gold)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s598, value_s598);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Lead)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s598, value_s598);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s598, value_s598);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "Approval_ERC20"} true;
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___name_ERC20Detailed[this] := 392004457;
    __tmp___symbol_ERC20Detailed[this] := 392004457;
    __tmp___decimals_ERC20Detailed[this] := 0;
    __tmp___name_ERC20Detailed[this] := name_s629;
    __tmp___symbol_ERC20Detailed[this] := symbol_s629;
    assume __tmp___decimals_ERC20Detailed[this] >= 0;
    assume decimals_s629 >= 0;
    __tmp___decimals_ERC20Detailed[this] := decimals_s629;
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _name_ERC20Detailed[this] := 392004457;
    _symbol_ERC20Detailed[this] := 392004457;
    _decimals_ERC20Detailed[this] := 0;
    _name_ERC20Detailed[this] := name_s629;
    _symbol_ERC20Detailed[this] := symbol_s629;
    assume _decimals_ERC20Detailed[this] >= 0;
    assume decimals_s629 >= 0;
    _decimals_ERC20Detailed[this] := decimals_s629;
}



implementation ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, name_s629, symbol_s629, decimals_s629);
    if (revert)
    {
        return;
    }
}



implementation ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s629: int, 
    symbol_s629: int, 
    decimals_s629: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, name_s629, symbol_s629, decimals_s629);
    if (revert)
    {
        return;
    }
}



implementation name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___name_ERC20Detailed[this];
    return;
}



implementation name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _name_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___symbol_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _symbol_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume __tmp___decimals_ERC20Detailed[this] >= 0;
    __ret_0_ := __tmp___decimals_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume _decimals_ERC20Detailed[this] >= 0;
    __ret_0_ := _decimals_ERC20Detailed[this];
    return;
}



implementation Lead_Lead_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    gas := gas - 277;
}



implementation Lead_Lead_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    gas := gas - 277;
}



implementation Lead_Lead__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Lead_Lead_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Lead_Lead__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Lead_Lead_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Gold_Gold_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Gold_Gold_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation Gold_Gold__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Gold_Gold_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Gold_Gold__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Gold_Gold_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Deployer_Deployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_36: Ref;
  var __var_37: Ref;
  var __var_38: Ref;
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: Ref;
  var __var_42: Ref;
  var __var_43: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_37 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_37] == Lead;
    call Lead_Lead__fail(__var_37, this, 0);
    if (revert)
    {
        return;
    }

    __var_36 := __var_37;
    __tmp__l_Deployer[this] := __var_36;
    call __var_39 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_39] == Gold;
    call Gold_Gold__fail(__var_39, this, 0);
    if (revert)
    {
        return;
    }

    __var_38 := __var_39;
    __tmp__g_Deployer[this] := __var_38;
    call __var_41 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_42 := __tmp__l_Deployer[this];
    __var_43 := __tmp__g_Deployer[this];
    assume __tmp__DType[__var_41] == Alchemist;
    call Alchemist_Alchemist__fail(__var_41, this, 0, __tmp__l_Deployer[this], __tmp__g_Deployer[this]);
    if (revert)
    {
        return;
    }

    __var_40 := __var_41;
    __tmp__a_Deployer[this] := __var_40;
}



implementation Deployer_Deployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_36: Ref;
  var __var_37: Ref;
  var __var_38: Ref;
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: Ref;
  var __var_42: Ref;
  var __var_43: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_37 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_37] == Lead;
    call Lead_Lead__success(__var_37, this, 0);
    if (revert)
    {
        return;
    }

    __var_36 := __var_37;
    l_Deployer[this] := __var_36;
    call __var_39 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_39] == Gold;
    call Gold_Gold__success(__var_39, this, 0);
    if (revert)
    {
        return;
    }

    __var_38 := __var_39;
    g_Deployer[this] := __var_38;
    call __var_41 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_42 := l_Deployer[this];
    __var_43 := g_Deployer[this];
    assume DType[__var_41] == Alchemist;
    call Alchemist_Alchemist__success(__var_41, this, 0, l_Deployer[this], g_Deployer[this]);
    if (revert)
    {
        return;
    }

    __var_40 := __var_41;
    a_Deployer[this] := __var_40;
}



implementation Deployer_Deployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_36: Ref;
  var __var_37: Ref;
  var __var_38: Ref;
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: Ref;
  var __var_42: Ref;
  var __var_43: Ref;

    call Deployer_Deployer_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Deployer_Deployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_36: Ref;
  var __var_37: Ref;
  var __var_38: Ref;
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: Ref;
  var __var_42: Ref;
  var __var_43: Ref;

    call Deployer_Deployer_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == Deployer)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Gold)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Lead)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Alchemist)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == IERC20)
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
    if (DType[to] == Deployer)
    {
        assume amount == 0;
    }
    else if (DType[to] == Gold)
    {
        assume amount == 0;
    }
    else if (DType[to] == Lead)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == Alchemist)
    {
        assume amount == 0;
    }
    else if (DType[to] == IERC20)
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
  var __snap___tmp__M_Ref_int__balances0: [Ref][Ref]int;
  var __snap___tmp__sum__balances0: [Ref]int;
  var __snap___tmp__M_Ref_int__allowed1: [Ref][Ref]int;
  var __snap___tmp__M_Ref_Ref__allowed1: [Ref][Ref]Ref;
  var __snap___tmp__sum__allowed1: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__LEAD_Alchemist: [Ref]Ref;
  var __snap___tmp__GOLD_Alchemist: [Ref]Ref;
  var __snap___tmp___balances_ERC20: [Ref]Ref;
  var __snap___tmp___allowed_ERC20: [Ref]Ref;
  var __snap___tmp___totalSupply_ERC20: [Ref]int;
  var __snap___tmp___name_ERC20Detailed: [Ref]int;
  var __snap___tmp___symbol_ERC20Detailed: [Ref]int;
  var __snap___tmp___decimals_ERC20Detailed: [Ref]int;
  var __snap___tmp__l_Deployer: [Ref]Ref;
  var __snap___tmp__g_Deployer: [Ref]Ref;
  var __snap___tmp__a_Deployer: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int__balances0 := __tmp__M_Ref_int__balances0;
        __snap___tmp__sum__balances0 := __tmp__sum__balances0;
        __snap___tmp__M_Ref_int__allowed1 := __tmp__M_Ref_int__allowed1;
        __snap___tmp__M_Ref_Ref__allowed1 := __tmp__M_Ref_Ref__allowed1;
        __snap___tmp__sum__allowed1 := __tmp__sum__allowed1;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__LEAD_Alchemist := __tmp__LEAD_Alchemist;
        __snap___tmp__GOLD_Alchemist := __tmp__GOLD_Alchemist;
        __snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
        __snap___tmp___allowed_ERC20 := __tmp___allowed_ERC20;
        __snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
        __snap___tmp___name_ERC20Detailed := __tmp___name_ERC20Detailed;
        __snap___tmp___symbol_ERC20Detailed := __tmp___symbol_ERC20Detailed;
        __snap___tmp___decimals_ERC20Detailed := __tmp___decimals_ERC20Detailed;
        __snap___tmp__l_Deployer := __tmp__l_Deployer;
        __snap___tmp__g_Deployer := __tmp__g_Deployer;
        __snap___tmp__a_Deployer := __tmp__a_Deployer;
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
        __tmp__M_Ref_int__balances0 := __snap___tmp__M_Ref_int__balances0;
        __tmp__sum__balances0 := __snap___tmp__sum__balances0;
        __tmp__M_Ref_int__allowed1 := __snap___tmp__M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := __snap___tmp__M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := __snap___tmp__sum__allowed1;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__LEAD_Alchemist := __snap___tmp__LEAD_Alchemist;
        __tmp__GOLD_Alchemist := __snap___tmp__GOLD_Alchemist;
        __tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
        __tmp___allowed_ERC20 := __snap___tmp___allowed_ERC20;
        __tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
        __tmp___name_ERC20Detailed := __snap___tmp___name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := __snap___tmp___symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := __snap___tmp___decimals_ERC20Detailed;
        __tmp__l_Deployer := __snap___tmp__l_Deployer;
        __tmp__g_Deployer := __snap___tmp__g_Deployer;
        __tmp__a_Deployer := __snap___tmp__a_Deployer;
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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__LEAD_Alchemist := LEAD_Alchemist;
        __tmp__GOLD_Alchemist := GOLD_Alchemist;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__l_Deployer := l_Deployer;
        __tmp__g_Deployer := g_Deployer;
        __tmp__a_Deployer := a_Deployer;
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
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_IERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == IERC20
       || DType[this] == ERC20
       || DType[this] == ERC20Detailed
       || DType[this] == Lead
       || DType[this] == Gold;
    gas := gas - 53000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_IERC20(this);
    }
}



implementation CorralChoice_Alchemist(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _lead_s88: Ref;
  var _gold_s88: Ref;
  var _mass_s121: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _lead_s88;
    havoc _gold_s88;
    havoc _mass_s121;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transmute_Alchemist(this, msgsender_MSG, msgvalue_MSG, _mass_s121);
    }
}



implementation CorralEntry_Alchemist()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _lead_s88: Ref;
  var _gold_s88: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Alchemist;
    gas := gas - 53000;
    call Alchemist_Alchemist(this, msgsender_MSG, msgvalue_MSG, _lead_s88, _gold_s88);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Alchemist(this);
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
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
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



implementation CorralChoice_ERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var owner_s208: Ref;
  var __ret_0_balanceOf: int;
  var owner_s224: Ref;
  var spender_s224: Ref;
  var __ret_0_allowance: int;
  var to_s243: Ref;
  var value_s243: int;
  var __ret_0_transfer: bool;
  var spender_s279: Ref;
  var value_s279: int;
  var __ret_0_approve: bool;
  var from_s328: Ref;
  var to_s328: Ref;
  var value_s328: int;
  var __ret_0_transferFrom: bool;
  var spender_s377: Ref;
  var addedValue_s377: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s426: Ref;
  var subtractedValue_s426: int;
  var __ret_0_decreaseAllowance: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc owner_s208;
    havoc __ret_0_balanceOf;
    havoc owner_s224;
    havoc spender_s224;
    havoc __ret_0_allowance;
    havoc to_s243;
    havoc value_s243;
    havoc __ret_0_transfer;
    havoc spender_s279;
    havoc value_s279;
    havoc __ret_0_approve;
    havoc from_s328;
    havoc to_s328;
    havoc value_s328;
    havoc __ret_0_transferFrom;
    havoc spender_s377;
    havoc addedValue_s377;
    havoc __ret_0_increaseAllowance;
    havoc spender_s426;
    havoc subtractedValue_s426;
    havoc __ret_0_decreaseAllowance;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s208);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s224, spender_s224);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s243, value_s243);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s279, value_s279);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s377, addedValue_s377);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s426, subtractedValue_s426);
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
    assume DType[this] == ERC20 || DType[this] == Lead || DType[this] == Gold;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_ERC20Detailed(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var who_s13: Ref;
  var __ret_0_balanceOf: int;
  var owner_s22: Ref;
  var spender_s22: Ref;
  var __ret_0_allowance: int;
  var to_s31: Ref;
  var value_s31: int;
  var __ret_0_transfer: bool;
  var spender_s40: Ref;
  var value_s40: int;
  var __ret_0_approve: bool;
  var from_s51: Ref;
  var to_s51: Ref;
  var value_s51: int;
  var __ret_0_transferFrom: bool;
  var name_s629: int;
  var symbol_s629: int;
  var decimals_s629: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc who_s13;
    havoc __ret_0_balanceOf;
    havoc owner_s22;
    havoc spender_s22;
    havoc __ret_0_allowance;
    havoc to_s31;
    havoc value_s31;
    havoc __ret_0_transfer;
    havoc spender_s40;
    havoc value_s40;
    havoc __ret_0_approve;
    havoc from_s51;
    havoc to_s51;
    havoc value_s51;
    havoc __ret_0_transferFrom;
    havoc name_s629;
    havoc symbol_s629;
    havoc decimals_s629;
    havoc __ret_0_name;
    havoc __ret_0_symbol;
    havoc __ret_0_decimals;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, who_s13);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s22, spender_s22);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, to_s31, value_s31);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s40, value_s40);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, from_s51, to_s51, value_s51);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_ERC20Detailed()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var name_s629: int;
  var symbol_s629: int;
  var decimals_s629: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Detailed;
    gas := gas - 53000;
    call ERC20Detailed_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG, name_s629, symbol_s629, decimals_s629);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Detailed(this);
    }
}



implementation CorralChoice_Lead(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var owner_s208: Ref;
  var __ret_0_balanceOf: int;
  var owner_s224: Ref;
  var spender_s224: Ref;
  var __ret_0_allowance: int;
  var to_s243: Ref;
  var value_s243: int;
  var __ret_0_transfer: bool;
  var spender_s279: Ref;
  var value_s279: int;
  var __ret_0_approve: bool;
  var from_s328: Ref;
  var to_s328: Ref;
  var value_s328: int;
  var __ret_0_transferFrom: bool;
  var spender_s377: Ref;
  var addedValue_s377: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s426: Ref;
  var subtractedValue_s426: int;
  var __ret_0_decreaseAllowance: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc owner_s208;
    havoc __ret_0_balanceOf;
    havoc owner_s224;
    havoc spender_s224;
    havoc __ret_0_allowance;
    havoc to_s243;
    havoc value_s243;
    havoc __ret_0_transfer;
    havoc spender_s279;
    havoc value_s279;
    havoc __ret_0_approve;
    havoc from_s328;
    havoc to_s328;
    havoc value_s328;
    havoc __ret_0_transferFrom;
    havoc spender_s377;
    havoc addedValue_s377;
    havoc __ret_0_increaseAllowance;
    havoc spender_s426;
    havoc subtractedValue_s426;
    havoc __ret_0_decreaseAllowance;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s208);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s224, spender_s224);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s243, value_s243);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s279, value_s279);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s377, addedValue_s377);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s426, subtractedValue_s426);
    }
}



implementation CorralEntry_Lead()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Lead;
    gas := gas - 53000;
    call Lead_Lead__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Lead(this);
    }
}



implementation CorralChoice_Gold(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var owner_s208: Ref;
  var __ret_0_balanceOf: int;
  var owner_s224: Ref;
  var spender_s224: Ref;
  var __ret_0_allowance: int;
  var to_s243: Ref;
  var value_s243: int;
  var __ret_0_transfer: bool;
  var spender_s279: Ref;
  var value_s279: int;
  var __ret_0_approve: bool;
  var from_s328: Ref;
  var to_s328: Ref;
  var value_s328: int;
  var __ret_0_transferFrom: bool;
  var spender_s377: Ref;
  var addedValue_s377: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s426: Ref;
  var subtractedValue_s426: int;
  var __ret_0_decreaseAllowance: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc owner_s208;
    havoc __ret_0_balanceOf;
    havoc owner_s224;
    havoc spender_s224;
    havoc __ret_0_allowance;
    havoc to_s243;
    havoc value_s243;
    havoc __ret_0_transfer;
    havoc spender_s279;
    havoc value_s279;
    havoc __ret_0_approve;
    havoc from_s328;
    havoc to_s328;
    havoc value_s328;
    havoc __ret_0_transferFrom;
    havoc spender_s377;
    havoc addedValue_s377;
    havoc __ret_0_increaseAllowance;
    havoc spender_s426;
    havoc subtractedValue_s426;
    havoc __ret_0_decreaseAllowance;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s208);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s224, spender_s224);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s243, value_s243);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s279, value_s279);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s377, addedValue_s377);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s426, subtractedValue_s426);
    }
}



implementation CorralEntry_Gold()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Gold;
    gas := gas - 53000;
    call Gold_Gold__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Gold(this);
    }
}



implementation CorralChoice_Deployer(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var owner_s208: Ref;
  var __ret_0_balanceOf: int;
  var owner_s224: Ref;
  var spender_s224: Ref;
  var __ret_0_allowance: int;
  var to_s243: Ref;
  var value_s243: int;
  var __ret_0_transfer: bool;
  var spender_s279: Ref;
  var value_s279: int;
  var __ret_0_approve: bool;
  var from_s328: Ref;
  var to_s328: Ref;
  var value_s328: int;
  var __ret_0_transferFrom: bool;
  var spender_s377: Ref;
  var addedValue_s377: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s426: Ref;
  var subtractedValue_s426: int;
  var __ret_0_decreaseAllowance: bool;
  var _lead_s88: Ref;
  var _gold_s88: Ref;
  var _mass_s121: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc owner_s208;
    havoc __ret_0_balanceOf;
    havoc owner_s224;
    havoc spender_s224;
    havoc __ret_0_allowance;
    havoc to_s243;
    havoc value_s243;
    havoc __ret_0_transfer;
    havoc spender_s279;
    havoc value_s279;
    havoc __ret_0_approve;
    havoc from_s328;
    havoc to_s328;
    havoc value_s328;
    havoc __ret_0_transferFrom;
    havoc spender_s377;
    havoc addedValue_s377;
    havoc __ret_0_increaseAllowance;
    havoc spender_s426;
    havoc subtractedValue_s426;
    havoc __ret_0_decreaseAllowance;
    havoc _lead_s88;
    havoc _gold_s88;
    havoc _mass_s121;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != Alchemist;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Lead;
    assume DType[msgsender_MSG] != Gold;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transmute_Alchemist(a_Deployer[this], msgsender_MSG, msgvalue_MSG, _mass_s121);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG, owner_s208);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG, owner_s224, spender_s224);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG, to_s243, value_s243);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s279, value_s279);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s377, addedValue_s377);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(g_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s426, subtractedValue_s426);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG, owner_s208);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG, owner_s224, spender_s224);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG, to_s243, value_s243);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s279, value_s279);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG, from_s328, to_s328, value_s328);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s377, addedValue_s377);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(l_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s426, subtractedValue_s426);
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
    assume DType[this] == Deployer;
    gas := gas - 53000;
    call Deployer_Deployer(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Deployer(this);
    }
}


