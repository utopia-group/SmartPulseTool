// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:MRVToken.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// spec_01
// LTLProperty: [](!finished(*, crowdsaleStarted_MRVToken[this] == true && maxCrowdsaleSupplyInWholeTokens_MRVToken[this] != old(maxCrowdsaleSupplyInWholeTokens_MRVToken[this])))

// spec_02
// LTLProperty: [](!finished(*, crowdsaleEnded_MRVToken[this] == true && _totalSupply_ERC20[this] != old(_totalSupply_ERC20[this])))

// spec_03
// LTLProperty: [](!finished(*, _totalSupply_ERC20[this] != sum__balances0[_balances_ERC20[this]]))

// spec_04
// LTLProperty: [](!finished(*, old(crowdsaleStarted_MRVToken[this]) == true && crowdsaleStarted_MRVToken[this] == false))

// spec_05
// #LTLProperty: [](!finished(*, old(crowdsaleEnded_MRVToken[this]) == true && crowdsaleEnded_MRVToken[this] == false))

type Ref = int;

type ContractName = int;

var null: Ref;

var IERC20: ContractName;

var SafeMath: ContractName;

var ERC20: ContractName;

var Ownable: ContractName;

var HasNoTokens: ContractName;

var HasNoContracts: ContractName;

var MRVToken: ContractName;

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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, Balance;



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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
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



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, Balance;



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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s116: int, b_s116: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s154);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s154);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s170: Ref, 
    spender_s170: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s170: Ref, 
    spender_s170: Ref)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s170, spender_s170);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s170, spender_s170);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s189: Ref, value_s189: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, sum__balances0, M_Ref_int__balances0;



implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s189: Ref, value_s189: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s189, value_s189);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s189, value_s189);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    value_s225: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    value_s225: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s225, value_s225);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s225, value_s225);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s273: Ref, 
    to_s273: Ref, 
    value_s273: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, sum__balances0, M_Ref_int__balances0;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s273: Ref, 
    to_s273: Ref, 
    value_s273: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s323: Ref, 
    addedValue_s323: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s323: Ref, 
    addedValue_s323: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s323, addedValue_s323);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s323, addedValue_s323);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s373: Ref, 
    subtractedValue_s373: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s373: Ref, 
    subtractedValue_s373: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s373, subtractedValue_s373);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s373, subtractedValue_s373);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s427: Ref, 
    to_s427: Ref, 
    value_s427: int);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    value_s469: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s519: Ref, 
    value_s519: int);
  modifies revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, gas;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s560: Ref, 
    value_s560: int);
  modifies M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, revert, Alloc, gas, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



var {:access "this._owner=_owner_Ownable[this]"} _owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, Balance, _owner_Ownable;



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
        __tmp__M_Ref_int__balances0 := M_Ref_int__balances0;
        __tmp__sum__balances0 := sum__balances0;
        __tmp__M_Ref_int__allowed1 := M_Ref_int__allowed1;
        __tmp__M_Ref_Ref__allowed1 := M_Ref_Ref__allowed1;
        __tmp__sum__allowed1 := sum__allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} owner_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation owner_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isOwner_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation isOwner_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := isOwner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isOwner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} renounceOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, _owner_Ownable;



implementation renounceOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call renounceOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call renounceOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s655: Ref);
  modifies gas, revert, _owner_Ownable;



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s667: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, _owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s667: Ref)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} HasNoTokens_HasNoTokens_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} HasNoTokens_HasNoTokens(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, Balance, _owner_Ownable;



implementation HasNoTokens_HasNoTokens(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call HasNoTokens_HasNoTokens__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call HasNoTokens_HasNoTokens__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} tokenFallback_HasNoTokens(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int, 
    __param_2_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation tokenFallback_HasNoTokens(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int, 
    __param_2_: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call tokenFallback_HasNoTokens__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_, __param_1_, __param_2_);
        assume revert || gas < 0;
    }
    else
    {
        call tokenFallback_HasNoTokens__success(this, msgsender_MSG, msgvalue_MSG, __param_0_, __param_1_, __param_2_);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} reclaimToken_HasNoTokens(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenAddr_s718: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, sum__balances0, M_Ref_int__balances0;



implementation reclaimToken_HasNoTokens(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenAddr_s718: Ref)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call reclaimToken_HasNoTokens__fail(this, msgsender_MSG, msgvalue_MSG, tokenAddr_s718);
        assume revert || gas < 0;
    }
    else
    {
        call reclaimToken_HasNoTokens__success(this, msgsender_MSG, msgvalue_MSG, tokenAddr_s718);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} HasNoContracts_HasNoContracts_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} HasNoContracts_HasNoContracts(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, Balance, _owner_Ownable;



implementation HasNoContracts_HasNoContracts(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call HasNoContracts_HasNoContracts__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call HasNoContracts_HasNoContracts__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} reclaimContract_HasNoContracts(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contractAddr_s742: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, _owner_Ownable;



implementation reclaimContract_HasNoContracts(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contractAddr_s742: Ref)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call reclaimContract_HasNoContracts__fail(this, msgsender_MSG, msgvalue_MSG, contractAddr_s742);
        assume revert || gas < 0;
    }
    else
    {
        call reclaimContract_HasNoContracts__success(this, msgsender_MSG, msgvalue_MSG, contractAddr_s742);
        assume !revert && gas >= 0;
    }
}



var {:access "this.name=name_MRVToken[this]"} name_MRVToken: [Ref]int;

var {:access "this.symbol=symbol_MRVToken[this]"} symbol_MRVToken: [Ref]int;

var {:access "this.decimals=decimals_MRVToken[this]"} decimals_MRVToken: [Ref]int;

var {:access "this.beneficiary=beneficiary_MRVToken[this]"} beneficiary_MRVToken: [Ref]Ref;

var {:access "this.maxCrowdsaleSupplyInWholeTokens=maxCrowdsaleSupplyInWholeTokens_MRVToken[this]"} maxCrowdsaleSupplyInWholeTokens_MRVToken: [Ref]int;

var {:access "this.wholeTokensReserved=wholeTokensReserved_MRVToken[this]"} wholeTokensReserved_MRVToken: [Ref]int;

var {:access "this.crowdsaleStarted=crowdsaleStarted_MRVToken[this]"} crowdsaleStarted_MRVToken: [Ref]bool;

var {:access "this.crowdsaleEnded=crowdsaleEnded_MRVToken[this]"} crowdsaleEnded_MRVToken: [Ref]bool;

var {:access "this.openTimer=openTimer_MRVToken[this]"} openTimer_MRVToken: [Ref]int;

var {:access "this.closeTimer=closeTimer_MRVToken[this]"} closeTimer_MRVToken: [Ref]int;

procedure {:inline 1} MRVToken_MRVToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref);
  modifies Balance, name_MRVToken, symbol_MRVToken, decimals_MRVToken, beneficiary_MRVToken, maxCrowdsaleSupplyInWholeTokens_MRVToken, wholeTokensReserved_MRVToken, crowdsaleStarted_MRVToken, crowdsaleEnded_MRVToken, openTimer_MRVToken, closeTimer_MRVToken, gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:constructor} {:public} {:inline 1} MRVToken_MRVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc, _owner_Ownable, name_MRVToken, symbol_MRVToken, decimals_MRVToken, beneficiary_MRVToken, maxCrowdsaleSupplyInWholeTokens_MRVToken, wholeTokensReserved_MRVToken, crowdsaleStarted_MRVToken, crowdsaleEnded_MRVToken, openTimer_MRVToken, closeTimer_MRVToken;



implementation MRVToken_MRVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call MRVToken_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, sendProceedsTo_s813, sendTokensTo_s813);
        assume revert || gas < 0;
    }
    else
    {
        call MRVToken_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, sendProceedsTo_s813, sendTokensTo_s813);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:public} {:inline 1} openTimerElapsed_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation openTimerElapsed_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := openTimerElapsed_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := openTimerElapsed_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} closeTimerElapsed_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation closeTimerElapsed_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := closeTimerElapsed_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := closeTimerElapsed_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} checkOpenTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, crowdsaleStarted_MRVToken, openTimer_MRVToken;



implementation checkOpenTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call checkOpenTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call checkOpenTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} checkCloseTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, crowdsaleEnded_MRVToken, closeTimer_MRVToken;



implementation checkCloseTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call checkCloseTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call checkCloseTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isCrowdsaleActive_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation isCrowdsaleActive_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := isCrowdsaleActive_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isCrowdsaleActive_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setMaxSupply_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newMaxInWholeTokens_s1006: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, maxCrowdsaleSupplyInWholeTokens_MRVToken, crowdsaleStarted_MRVToken, openTimer_MRVToken;



implementation setMaxSupply_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newMaxInWholeTokens_s1006: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call setMaxSupply_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, newMaxInWholeTokens_s1006);
        assume revert || gas < 0;
    }
    else
    {
        call setMaxSupply_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, newMaxInWholeTokens_s1006);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} openCrowdsale_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, crowdsaleStarted_MRVToken, openTimer_MRVToken;



implementation openCrowdsale_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call openCrowdsale_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call openCrowdsale_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setCrowdsaleOpenTimerFor_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1044: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, openTimer_MRVToken, crowdsaleStarted_MRVToken;



implementation setCrowdsaleOpenTimerFor_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1044: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call setCrowdsaleOpenTimerFor_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, minutesFromNow_s1044);
        assume revert || gas < 0;
    }
    else
    {
        call setCrowdsaleOpenTimerFor_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, minutesFromNow_s1044);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} clearCrowdsaleOpenTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, openTimer_MRVToken, crowdsaleStarted_MRVToken;



implementation clearCrowdsaleOpenTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call clearCrowdsaleOpenTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call clearCrowdsaleOpenTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setCrowdsaleCloseTimerFor_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1074: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, closeTimer_MRVToken, crowdsaleEnded_MRVToken;



implementation setCrowdsaleCloseTimerFor_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1074: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call setCrowdsaleCloseTimerFor_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, minutesFromNow_s1074);
        assume revert || gas < 0;
    }
    else
    {
        call setCrowdsaleCloseTimerFor_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, minutesFromNow_s1074);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} clearCrowdsaleCloseTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, closeTimer_MRVToken, crowdsaleEnded_MRVToken;



implementation clearCrowdsaleCloseTimer_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call clearCrowdsaleCloseTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call clearCrowdsaleCloseTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} createTokens_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1156: Ref);
  modifies gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, Balance;



procedure {:public} {:inline 1} closeCrowdsale_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, crowdsaleEnded_MRVToken, closeTimer_MRVToken, crowdsaleStarted_MRVToken, openTimer_MRVToken;



implementation closeCrowdsale_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call closeCrowdsale_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call closeCrowdsale_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setDecimals_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newDecimals_s1194: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, decimals_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken;



implementation setDecimals_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newDecimals_s1194: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call setDecimals_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, newDecimals_s1194);
        assume revert || gas < 0;
    }
    else
    {
        call setDecimals_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, newDecimals_s1194);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} reclaimEther_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, Balance, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



implementation reclaimEther_MRVToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call reclaimEther_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call reclaimEther_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseAllowance_MRVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation increaseAllowance_MRVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := increaseAllowance_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_, __param_1_);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, __param_0_, __param_1_);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseAllowance_MRVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas;



implementation decreaseAllowance_MRVToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
        call __ret_0_ := decreaseAllowance_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_, __param_1_);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, __param_0_, __param_1_);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, revert, gas, Balance, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyBeforeClosed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, crowdsaleEnded_MRVToken, closeTimer_MRVToken;



procedure {:inline 1} onlyAfterClosed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, crowdsaleEnded_MRVToken, closeTimer_MRVToken;



procedure {:inline 1} onlyBeforeOpened_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, crowdsaleStarted_MRVToken, openTimer_MRVToken;



procedure {:inline 1} onlyDuringCrowdsale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken;



procedure CorralChoice_IERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_IERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, sum__allowed1;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, _owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, now, _owner_Ownable, Balance;



procedure CorralChoice_HasNoTokens(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, _owner_Ownable, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_HasNoTokens();
  modifies gas, Alloc, Balance, _owner_Ownable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, sum__balances0, M_Ref_int__balances0;



procedure CorralChoice_HasNoContracts(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, _owner_Ownable;



procedure CorralEntry_HasNoContracts();
  modifies gas, Alloc, Balance, _owner_Ownable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken;



procedure CorralChoice_MRVToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, _owner_Ownable, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, maxCrowdsaleSupplyInWholeTokens_MRVToken, decimals_MRVToken, sum__balances0, M_Ref_int__balances0, Balance, _totalSupply_ERC20;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, now, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, _owner_Ownable, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, maxCrowdsaleSupplyInWholeTokens_MRVToken, decimals_MRVToken, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, _totalSupply_ERC20, name_MRVToken, symbol_MRVToken, beneficiary_MRVToken, wholeTokensReserved_MRVToken;



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

var __tmp___balances_ERC20: [Ref]Ref;

var __tmp___allowed_ERC20: [Ref]Ref;

var __tmp___totalSupply_ERC20: [Ref]int;

var __tmp___owner_Ownable: [Ref]Ref;

var __tmp__name_MRVToken: [Ref]int;

var __tmp__symbol_MRVToken: [Ref]int;

var __tmp__decimals_MRVToken: [Ref]int;

var __tmp__beneficiary_MRVToken: [Ref]Ref;

var __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken: [Ref]int;

var __tmp__wholeTokensReserved_MRVToken: [Ref]int;

var __tmp__crowdsaleStarted_MRVToken: [Ref]bool;

var __tmp__crowdsaleEnded_MRVToken: [Ref]bool;

var __tmp__openTimer_MRVToken: [Ref]int;

var __tmp__closeTimer_MRVToken: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s116: int, b_s116: int)
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



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s170: Ref, 
    spender_s170: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s170: Ref, 
    spender_s170: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s189: Ref, value_s189: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s189: Ref, value_s189: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    value_s225: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    value_s225: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s273: Ref, 
    to_s273: Ref, 
    value_s273: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, revert, Alloc, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s273: Ref, 
    to_s273: Ref, 
    value_s273: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, revert, __tmp__Alloc, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s323: Ref, 
    addedValue_s323: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s323: Ref, 
    addedValue_s323: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s373: Ref, 
    subtractedValue_s373: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s373: Ref, 
    subtractedValue_s373: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s427: Ref, 
    to_s427: Ref, 
    value_s427: int);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    value_s469: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s519: Ref, 
    value_s519: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, gas;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s560: Ref, 
    value_s560: int);
  modifies __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, revert, __tmp__Alloc, gas, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___owner_Ownable;



procedure {:inline 1} owner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} owner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} isOwner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} isOwner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} renounceOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, _owner_Ownable, revert;



procedure {:inline 1} renounceOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp___owner_Ownable, revert;



procedure {:inline 1} _transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s655: Ref);
  modifies gas, revert, __tmp___owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s667: Ref);
  modifies gas, revert, _owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s667: Ref);
  modifies gas, revert, __tmp___owner_Ownable;



procedure {:inline 1} HasNoTokens_HasNoTokens_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} HasNoTokens_HasNoTokens__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _owner_Ownable;



procedure {:inline 1} HasNoTokens_HasNoTokens__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___owner_Ownable;



procedure {:inline 1} tokenFallback_HasNoTokens__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int, 
    __param_2_: int);
  modifies gas, revert;



procedure {:inline 1} tokenFallback_HasNoTokens__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int, 
    __param_2_: int);
  modifies gas, revert;



procedure {:inline 1} reclaimToken_HasNoTokens__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenAddr_s718: Ref);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} reclaimToken_HasNoTokens__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenAddr_s718: Ref);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} HasNoContracts_HasNoContracts_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} HasNoContracts_HasNoContracts__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _owner_Ownable;



procedure {:inline 1} HasNoContracts_HasNoContracts__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___owner_Ownable;



procedure {:inline 1} reclaimContract_HasNoContracts__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contractAddr_s742: Ref);
  modifies gas, revert, _owner_Ownable;



procedure {:inline 1} reclaimContract_HasNoContracts__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contractAddr_s742: Ref);
  modifies gas, revert, __tmp___owner_Ownable;



procedure {:inline 1} MRVToken_MRVToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref);
  modifies __tmp__Balance, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:constructor} {:inline 1} MRVToken_MRVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc, _owner_Ownable, name_MRVToken, symbol_MRVToken, decimals_MRVToken, beneficiary_MRVToken, maxCrowdsaleSupplyInWholeTokens_MRVToken, wholeTokensReserved_MRVToken, crowdsaleStarted_MRVToken, crowdsaleEnded_MRVToken, openTimer_MRVToken, closeTimer_MRVToken, gas, revert;



procedure {:constructor} {:inline 1} MRVToken_MRVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, __tmp__Alloc, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, gas, revert;



procedure {:inline 1} FallbackMethod_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken;



procedure {:inline 1} openTimerElapsed_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} openTimerElapsed_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} closeTimerElapsed_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} closeTimerElapsed_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} checkOpenTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, crowdsaleStarted_MRVToken, openTimer_MRVToken;



procedure {:inline 1} checkOpenTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken;



procedure {:inline 1} checkCloseTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, crowdsaleEnded_MRVToken, closeTimer_MRVToken;



procedure {:inline 1} checkCloseTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:inline 1} isCrowdsaleActive_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} isCrowdsaleActive_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} setMaxSupply_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newMaxInWholeTokens_s1006: int);
  modifies gas, maxCrowdsaleSupplyInWholeTokens_MRVToken, revert, crowdsaleStarted_MRVToken, openTimer_MRVToken;



procedure {:inline 1} setMaxSupply_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newMaxInWholeTokens_s1006: int);
  modifies gas, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, revert, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken;



procedure {:inline 1} openCrowdsale_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, crowdsaleStarted_MRVToken, openTimer_MRVToken, revert;



procedure {:inline 1} openCrowdsale_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken, revert;



procedure {:inline 1} setCrowdsaleOpenTimerFor_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1044: int);
  modifies gas, openTimer_MRVToken, revert, crowdsaleStarted_MRVToken;



procedure {:inline 1} setCrowdsaleOpenTimerFor_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1044: int);
  modifies gas, __tmp__openTimer_MRVToken, revert, __tmp__crowdsaleStarted_MRVToken;



procedure {:inline 1} clearCrowdsaleOpenTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, openTimer_MRVToken, revert, crowdsaleStarted_MRVToken;



procedure {:inline 1} clearCrowdsaleOpenTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__openTimer_MRVToken, revert, __tmp__crowdsaleStarted_MRVToken;



procedure {:inline 1} setCrowdsaleCloseTimerFor_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1074: int);
  modifies gas, closeTimer_MRVToken, revert, crowdsaleEnded_MRVToken;



procedure {:inline 1} setCrowdsaleCloseTimerFor_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1074: int);
  modifies gas, __tmp__closeTimer_MRVToken, revert, __tmp__crowdsaleEnded_MRVToken;



procedure {:inline 1} clearCrowdsaleCloseTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, closeTimer_MRVToken, revert, crowdsaleEnded_MRVToken;



procedure {:inline 1} clearCrowdsaleCloseTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__closeTimer_MRVToken, revert, __tmp__crowdsaleEnded_MRVToken;



procedure {:inline 1} createTokens_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1156: Ref);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:inline 1} closeCrowdsale_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, crowdsaleEnded_MRVToken, closeTimer_MRVToken, revert, crowdsaleStarted_MRVToken, openTimer_MRVToken;



procedure {:inline 1} closeCrowdsale_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken, revert, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken;



procedure {:inline 1} setDecimals_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newDecimals_s1194: int);
  modifies gas, decimals_MRVToken, revert, crowdsaleEnded_MRVToken, closeTimer_MRVToken;



procedure {:inline 1} setDecimals_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newDecimals_s1194: int);
  modifies gas, __tmp__decimals_MRVToken, revert, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:inline 1} reclaimEther_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, Balance, crowdsaleStarted_MRVToken, openTimer_MRVToken, crowdsaleEnded_MRVToken, closeTimer_MRVToken, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} reclaimEther_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:inline 1} increaseAllowance_MRVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} increaseAllowance_MRVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} decreaseAllowance_MRVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} decreaseAllowance_MRVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___owner_Ownable, __tmp__name_MRVToken, __tmp__symbol_MRVToken, __tmp__decimals_MRVToken, __tmp__beneficiary_MRVToken, __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken, __tmp__wholeTokensReserved_MRVToken, __tmp__crowdsaleStarted_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__openTimer_MRVToken, __tmp__closeTimer_MRVToken, revert, gas;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyBeforeClosed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:inline 1} onlyAfterClosed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken;



procedure {:inline 1} onlyBeforeOpened_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken;



procedure {:inline 1} onlyDuringCrowdsale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__crowdsaleStarted_MRVToken, __tmp__openTimer_MRVToken, __tmp__crowdsaleEnded_MRVToken, __tmp__closeTimer_MRVToken;



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



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int)
   returns (__ret_0_: int)
{
  var c_s91: int;

    gas := gas - 6;
    gas := gas - 64;
    assume b_s92 >= 0;
    assume a_s92 >= 0;
    if (!(b_s92 <= a_s92))
    {
        revert := true;
        return;
    }

    gas := gas - 34;
    assume c_s91 >= 0;
    assume a_s92 >= 0;
    assume b_s92 >= 0;
    assume a_s92 - b_s92 >= 0;
    c_s91 := a_s92 - b_s92;
    gas := gas - 20;
    assume c_s91 >= 0;
    __ret_0_ := c_s91;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int)
   returns (__ret_0_: int)
{
  var c_s91: int;

    gas := gas - 6;
    gas := gas - 64;
    assume b_s92 >= 0;
    assume a_s92 >= 0;
    if (!(b_s92 <= a_s92))
    {
        revert := true;
        return;
    }

    gas := gas - 34;
    assume c_s91 >= 0;
    assume a_s92 >= 0;
    assume b_s92 >= 0;
    assume a_s92 - b_s92 >= 0;
    c_s91 := a_s92 - b_s92;
    gas := gas - 20;
    assume c_s91 >= 0;
    __ret_0_ := c_s91;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s116: int, b_s116: int)
   returns (__ret_0_: int)
{
  var c_s115: int;

    gas := gas - 6;
    gas := gas - 34;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    assume b_s116 >= 0;
    assume a_s116 + b_s116 >= 0;
    c_s115 := a_s116 + b_s116;
    gas := gas - 64;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    if (!(c_s115 >= a_s116))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume c_s115 >= 0;
    __ret_0_ := c_s115;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s116: int, b_s116: int)
   returns (__ret_0_: int)
{
  var c_s115: int;

    gas := gas - 6;
    gas := gas - 34;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    assume b_s116 >= 0;
    assume a_s116 + b_s116 >= 0;
    c_s115 := a_s116 + b_s116;
    gas := gas - 64;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    if (!(c_s115 >= a_s116))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume c_s115 >= 0;
    __ret_0_ := c_s115;
    return;
}



implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___balances_ERC20[this] := __var_1;
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]] := zeroRefIntArr();
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := 0;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___allowed_ERC20[this] := __var_2;
    __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]] := zeroRefRefArr();
    __tmp__M_Ref_int__allowed1[null] := zeroRefIntArr();
    __tmp___totalSupply_ERC20[this] := 0;
}



implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _balances_ERC20[this] := __var_1;
    M_Ref_int__balances0[_balances_ERC20[this]] := zeroRefIntArr();
    sum__balances0[_balances_ERC20[this]] := 0;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _allowed_ERC20[this] := __var_2;
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
    gas := gas - 6;
    gas := gas - 416;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    __ret_0_ := __tmp___totalSupply_ERC20[this];
    return;
}



implementation totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 416;
    assume _totalSupply_ERC20[this] >= 0;
    __ret_0_ := _totalSupply_ERC20[this];
    return;
}



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][owner_s154] >= 0;
    __ret_0_ := __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][owner_s154];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume M_Ref_int__balances0[_balances_ERC20[this]][owner_s154] >= 0;
    __ret_0_ := M_Ref_int__balances0[_balances_ERC20[this]][owner_s154];
    return;
}



implementation allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s170: Ref, 
    spender_s170: Ref)
   returns (__ret_0_: int)
{
  var __var_3: Ref;

    gas := gas - 6;
    gas := gas - 788;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s170] == null)
    {
        call __var_3 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s170] := __var_3;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s170]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s170]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s170]][spender_s170]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][owner_s170]][spender_s170];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s170: Ref, 
    spender_s170: Ref)
   returns (__ret_0_: int)
{
  var __var_3: Ref;

    gas := gas - 6;
    gas := gas - 788;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s170] == null)
    {
        call __var_3 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s170] := __var_3;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s170]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s170]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s170]][spender_s170]
       >= 0;
    __ret_0_ := M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][owner_s170]][spender_s170];
    return;
}



implementation transfer_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s189: Ref, value_s189: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 24;
    assume value_s189 >= 0;
    if (__tmp__DType[this] == MRVToken)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s189, value_s189);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s189, value_s189);
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



implementation transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s189: Ref, value_s189: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 24;
    assume value_s189 >= 0;
    if (DType[this] == MRVToken)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s189, value_s189);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s189, value_s189);
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



implementation approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    value_s225: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;
  var __var_5: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_4 := null;
    if (!(spender_s225 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40398;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_5 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_5;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s225]
       >= 0;
    assume value_s225 >= 0;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s225];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s225] := value_s225;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s225];
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s225: Ref, 
    value_s225: int)
   returns (__ret_0_: bool)
{
  var __var_4: Ref;
  var __var_5: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_4 := null;
    if (!(spender_s225 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40398;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_5 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_5;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s225]
       >= 0;
    assume value_s225 >= 0;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s225];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s225] := value_s225;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s225];
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s273: Ref, 
    to_s273: Ref, 
    value_s273: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: int;
  var __var_9: Ref;

    gas := gas - 6;
    gas := gas - 834;
    assume value_s273 >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273] == null)
    {
        call __var_6 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273] := __var_6;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG]
       >= 0;
    if (!(value_s273
       <= __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 41234;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273] == null)
    {
        call __var_7 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273] := __var_7;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273] == null)
    {
        call __var_9 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273] := __var_9;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG]
       >= 0;
    assume value_s273 >= 0;
    call __var_8 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG], value_s273);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG] := __var_8;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s273]][msgsender_MSG];
    assume __var_8 >= 0;
    gas := gas - 48;
    assume value_s273 >= 0;
    if (__tmp__DType[this] == MRVToken)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
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



implementation transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s273: Ref, 
    to_s273: Ref, 
    value_s273: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: int;
  var __var_9: Ref;

    gas := gas - 6;
    gas := gas - 834;
    assume value_s273 >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273] == null)
    {
        call __var_6 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273] := __var_6;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG]
       >= 0;
    if (!(value_s273
       <= M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 41234;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273] == null)
    {
        call __var_7 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273] := __var_7;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273] == null)
    {
        call __var_9 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273] := __var_9;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG]
       >= 0;
    assume value_s273 >= 0;
    call __var_8 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG], value_s273);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG] := __var_8;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s273]][msgsender_MSG];
    assume __var_8 >= 0;
    gas := gas - 48;
    assume value_s273 >= 0;
    if (DType[this] == MRVToken)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
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



implementation increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s323: Ref, 
    addedValue_s323: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: Ref;

    gas := gas - 3;
    gas := gas - 44;
    __var_10 := null;
    if (!(spender_s323 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20617;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_11 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_11;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
    assume __var_12 >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_13 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_13;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
    assume addedValue_s323 >= 0;
    call __var_12 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323], addedValue_s323);
    if (revert)
    {
        return;
    }

    assume __var_12 >= 0;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323] := __var_12;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s323: Ref, 
    addedValue_s323: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: Ref;

    gas := gas - 3;
    gas := gas - 44;
    __var_10 := null;
    if (!(spender_s323 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20617;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_11 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_11;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
    assume __var_12 >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_13 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_13;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
    assume addedValue_s323 >= 0;
    call __var_12 := add_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323], addedValue_s323);
    if (revert)
    {
        return;
    }

    assume __var_12 >= 0;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323] := __var_12;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s373: Ref, 
    subtractedValue_s373: int)
   returns (__ret_0_: bool)
{
  var __var_14: Ref;
  var __var_15: Ref;
  var __var_16: int;
  var __var_17: Ref;

    gas := gas - 3;
    gas := gas - 44;
    __var_14 := null;
    if (!(spender_s373 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20617;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_15 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_15;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s373]
       >= 0;
    assume __var_16 >= 0;
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

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s373]
       >= 0;
    assume subtractedValue_s373 >= 0;
    call __var_16 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s373], subtractedValue_s373);
    if (revert)
    {
        return;
    }

    assume __var_16 >= 0;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s373];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s373] := __var_16;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s373];
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s373: Ref, 
    subtractedValue_s373: int)
   returns (__ret_0_: bool)
{
  var __var_14: Ref;
  var __var_15: Ref;
  var __var_16: int;
  var __var_17: Ref;

    gas := gas - 3;
    gas := gas - 44;
    __var_14 := null;
    if (!(spender_s373 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20617;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_15 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_15;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s373]
       >= 0;
    assume __var_16 >= 0;
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

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s373]
       >= 0;
    assume subtractedValue_s373 >= 0;
    call __var_16 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s373], subtractedValue_s373);
    if (revert)
    {
        return;
    }

    assume __var_16 >= 0;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s373];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s373] := __var_16;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s373];
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s427: Ref, 
    to_s427: Ref, 
    value_s427: int)
{
  var __var_18: Ref;
  var __var_19: int;
  var __var_20: int;

    gas := gas - 656;
    assume value_s427 >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427] >= 0;
    if (!(value_s427
       <= __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427]))
    {
        revert := true;
        return;
    }

    gas := gas - 88;
    __var_18 := null;
    if (!(to_s427 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40878;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427] >= 0;
    assume value_s427 >= 0;
    call __var_19 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427], value_s427);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427] := __var_19;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s427];
    assume __var_19 >= 0;
    gas := gas - 40866;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s427] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s427] >= 0;
    assume value_s427 >= 0;
    call __var_20 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s427], value_s427);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s427];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s427] := __var_20;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s427];
    assume __var_20 >= 0;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s427: Ref, 
    to_s427: Ref, 
    value_s427: int)
{
  var __var_18: Ref;
  var __var_19: int;
  var __var_20: int;

    gas := gas - 656;
    assume value_s427 >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][from_s427] >= 0;
    if (!(value_s427 <= M_Ref_int__balances0[_balances_ERC20[this]][from_s427]))
    {
        revert := true;
        return;
    }

    gas := gas - 88;
    __var_18 := null;
    if (!(to_s427 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40878;
    assume M_Ref_int__balances0[_balances_ERC20[this]][from_s427] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][from_s427] >= 0;
    assume value_s427 >= 0;
    call __var_19 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][from_s427], value_s427);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][from_s427];
    M_Ref_int__balances0[_balances_ERC20[this]][from_s427] := __var_19;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][from_s427];
    assume __var_19 >= 0;
    gas := gas - 40866;
    assume M_Ref_int__balances0[_balances_ERC20[this]][to_s427] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][to_s427] >= 0;
    assume value_s427 >= 0;
    call __var_20 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][to_s427], value_s427);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][to_s427];
    M_Ref_int__balances0[_balances_ERC20[this]][to_s427] := __var_20;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][to_s427];
    assume __var_20 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    value_s469: int)
{
  var __var_21: Ref;
  var __var_22: int;
  var __var_23: int;

    gas := gas - 44;
    __var_21 := null;
    if (!(account_s469 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20247;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s469 >= 0;
    call __var_22 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s469);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_22;
    assume __var_22 >= 0;
    gas := gas - 20439;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s469] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s469] >= 0;
    assume value_s469 >= 0;
    call __var_23 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s469], value_s469);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s469];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s469] := __var_23;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s469];
    assume __var_23 >= 0;
}



implementation _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s469: Ref, 
    value_s469: int)
{
  var __var_21: Ref;
  var __var_22: int;
  var __var_23: int;

    gas := gas - 44;
    __var_21 := null;
    if (!(account_s469 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20247;
    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s469 >= 0;
    call __var_22 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s469);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_22;
    assume __var_22 >= 0;
    gas := gas - 20439;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s469] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s469] >= 0;
    assume value_s469 >= 0;
    call __var_23 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s469], value_s469);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s469];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s469] := __var_23;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s469];
    assume __var_23 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s519: Ref, 
    value_s519: int)
{
  var __var_24: Ref;
  var __var_25: int;
  var __var_26: int;

    __var_24 := null;
    if (!(account_s519 != null))
    {
        revert := true;
        return;
    }

    assume value_s519 >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519] >= 0;
    if (!(value_s519
       <= __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519]))
    {
        revert := true;
        return;
    }

    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s519 >= 0;
    call __var_25 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s519);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_25;
    assume __var_25 >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519] >= 0;
    assume value_s519 >= 0;
    call __var_26 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519], value_s519);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519] := __var_26;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s519];
    assume __var_26 >= 0;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s519: Ref, 
    value_s519: int)
{
  var __var_24: Ref;
  var __var_25: int;
  var __var_26: int;

    __var_24 := null;
    if (!(account_s519 != null))
    {
        revert := true;
        return;
    }

    assume value_s519 >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s519] >= 0;
    if (!(value_s519 <= M_Ref_int__balances0[_balances_ERC20[this]][account_s519]))
    {
        revert := true;
        return;
    }

    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s519 >= 0;
    call __var_25 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s519);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_25;
    assume __var_25 >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s519] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s519] >= 0;
    assume value_s519 >= 0;
    call __var_26 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s519], value_s519);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s519];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s519] := __var_26;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s519];
    assume __var_26 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s560: Ref, 
    value_s560: int)
{
  var __var_27: Ref;
  var __var_28: Ref;
  var __var_29: int;
  var __var_30: Ref;

    assume value_s560 >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560] == null)
    {
        call __var_27 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560] := __var_27;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG]
       >= 0;
    if (!(value_s560
       <= __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560] == null)
    {
        call __var_28 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560] := __var_28;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560] == null)
    {
        call __var_30 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560] := __var_30;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG]
       >= 0;
    assume value_s560 >= 0;
    call __var_29 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG], value_s560);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG] := __var_29;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s560]][msgsender_MSG];
    assume __var_29 >= 0;
    assume value_s560 >= 0;
    if (__tmp__DType[this] == MRVToken)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s560, value_s560);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s560, value_s560);
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
    account_s560: Ref, 
    value_s560: int)
{
  var __var_27: Ref;
  var __var_28: Ref;
  var __var_29: int;
  var __var_30: Ref;

    assume value_s560 >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560] == null)
    {
        call __var_27 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560] := __var_27;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG]
       >= 0;
    if (!(value_s560
       <= M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560] == null)
    {
        call __var_28 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560] := __var_28;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560] == null)
    {
        call __var_30 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560] := __var_30;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG]
       >= 0;
    assume value_s560 >= 0;
    call __var_29 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG], value_s560);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG] := __var_29;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s560]][msgsender_MSG];
    assume __var_29 >= 0;
    assume value_s560 >= 0;
    if (DType[this] == MRVToken)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s560, value_s560);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s560, value_s560);
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



implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___owner_Ownable[this] := null;
    __tmp___owner_Ownable[this] := msgsender_MSG;
}



implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _owner_Ownable[this] := null;
    _owner_Ownable[this] := msgsender_MSG;
    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
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



implementation owner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 9;
    gas := gas - 732;
    __ret_0_ := __tmp___owner_Ownable[this];
    return;
}



implementation owner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 9;
    gas := gas - 732;
    __ret_0_ := _owner_Ownable[this];
    return;
}



implementation isOwner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 783;
    __ret_0_ := msgsender_MSG == __tmp___owner_Ownable[this];
    return;
}



implementation isOwner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 783;
    __ret_0_ := msgsender_MSG == _owner_Ownable[this];
    return;
}



implementation renounceOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_32: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 60801;
    __var_32 := null;
    __tmp___owner_Ownable[this] := __var_32;
}



implementation renounceOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_32: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 60801;
    __var_32 := null;
    _owner_Ownable[this] := __var_32;
}



implementation _transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s655: Ref)
{
  var __var_33: Ref;

    gas := gas - 132;
    __var_33 := null;
    if (!(newOwner_s655 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60801;
    __tmp___owner_Ownable[this] := newOwner_s655;
}



implementation _transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s655: Ref)
{
  var __var_33: Ref;

    gas := gas - 132;
    __var_33 := null;
    if (!(newOwner_s655 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 60801;
    _owner_Ownable[this] := newOwner_s655;
}



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s667: Ref)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 21;
    if (__tmp__DType[this] == MRVToken)
    {
        call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == HasNoContracts)
    {
        call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == HasNoTokens)
    {
        call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Ownable)
    {
        call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
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



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s667: Ref)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 21;
    if (DType[this] == MRVToken)
    {
        call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == HasNoContracts)
    {
        call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == HasNoTokens)
    {
        call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Ownable)
    {
        call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
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



implementation HasNoTokens_HasNoTokens_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation HasNoTokens_HasNoTokens_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation HasNoTokens_HasNoTokens__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoTokens_HasNoTokens_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation HasNoTokens_HasNoTokens__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoTokens_HasNoTokens_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation tokenFallback_HasNoTokens__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int, 
    __param_2_: int)
{
    gas := gas - 12;
    revert := true;
    return;
}



implementation tokenFallback_HasNoTokens__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int, 
    __param_2_: int)
{
    gas := gas - 12;
    revert := true;
    return;
}



implementation reclaimToken_HasNoTokens__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenAddr_s718: Ref)
{
  var tokenInst_s717: Ref;
  var _owner_s717: Ref;
  var balance_s717: int;
  var __var_34: int;
  var __var_35: Ref;
  var __var_36: bool;
  var __var_37: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 22;
    assume __tmp__DType[tokenAddr_s718] == IERC20
       || __tmp__DType[tokenAddr_s718] == ERC20
       || __tmp__DType[tokenAddr_s718] == MRVToken;
    tokenInst_s717 := tokenAddr_s718;
    gas := gas - 46;
    if (__tmp__DType[this] == MRVToken)
    {
        call _owner_s717 := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == HasNoTokens)
    {
        call _owner_s717 := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    _owner_s717 := _owner_s717;
    gas := gas - 6202;
    assume balance_s717 >= 0;
    __var_35 := this;
    if (__tmp__DType[tokenInst_s717] == MRVToken)
    {
        call balance_s717 := balanceOf_ERC20__fail(tokenInst_s717, this, __var_34, this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[tokenInst_s717] == ERC20)
    {
        call balance_s717 := balanceOf_ERC20__fail(tokenInst_s717, this, __var_34, this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[tokenInst_s717] == IERC20)
    {
        call balance_s717 := balanceOf_IERC20(tokenInst_s717, this, __var_34, this);
    }
    else
    {
        assume false;
    }

    balance_s717 := balance_s717;
    gas := gas - 74440;
    assume balance_s717 >= 0;
    if (__tmp__DType[tokenInst_s717] == MRVToken)
    {
        call __var_36 := transfer_ERC20__fail(tokenInst_s717, this, __var_37, _owner_s717, balance_s717);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[tokenInst_s717] == ERC20)
    {
        call __var_36 := transfer_ERC20__fail(tokenInst_s717, this, __var_37, _owner_s717, balance_s717);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[tokenInst_s717] == IERC20)
    {
        call __var_36 := transfer_IERC20(tokenInst_s717, this, __var_37, _owner_s717, balance_s717);
    }
    else
    {
        assume false;
    }
}



implementation reclaimToken_HasNoTokens__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenAddr_s718: Ref)
{
  var tokenInst_s717: Ref;
  var _owner_s717: Ref;
  var balance_s717: int;
  var __var_34: int;
  var __var_35: Ref;
  var __var_36: bool;
  var __var_37: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 22;
    assume DType[tokenAddr_s718] == IERC20
       || DType[tokenAddr_s718] == ERC20
       || DType[tokenAddr_s718] == MRVToken;
    tokenInst_s717 := tokenAddr_s718;
    gas := gas - 46;
    if (DType[this] == MRVToken)
    {
        call _owner_s717 := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == HasNoTokens)
    {
        call _owner_s717 := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    _owner_s717 := _owner_s717;
    gas := gas - 6202;
    assume balance_s717 >= 0;
    __var_35 := this;
    if (DType[tokenInst_s717] == MRVToken)
    {
        call balance_s717 := balanceOf_ERC20__success(tokenInst_s717, this, __var_34, this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[tokenInst_s717] == ERC20)
    {
        call balance_s717 := balanceOf_ERC20__success(tokenInst_s717, this, __var_34, this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[tokenInst_s717] == IERC20)
    {
        call balance_s717 := balanceOf_IERC20(tokenInst_s717, this, __var_34, this);
    }
    else
    {
        assume false;
    }

    balance_s717 := balance_s717;
    gas := gas - 74440;
    assume balance_s717 >= 0;
    if (DType[tokenInst_s717] == MRVToken)
    {
        call __var_36 := transfer_ERC20__success(tokenInst_s717, this, __var_37, _owner_s717, balance_s717);
        if (revert)
        {
            return;
        }
    }
    else if (DType[tokenInst_s717] == ERC20)
    {
        call __var_36 := transfer_ERC20__success(tokenInst_s717, this, __var_37, _owner_s717, balance_s717);
        if (revert)
        {
            return;
        }
    }
    else if (DType[tokenInst_s717] == IERC20)
    {
        call __var_36 := transfer_IERC20(tokenInst_s717, this, __var_37, _owner_s717, balance_s717);
    }
    else
    {
        assume false;
    }
}



implementation HasNoContracts_HasNoContracts_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation HasNoContracts_HasNoContracts_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation HasNoContracts_HasNoContracts__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoContracts_HasNoContracts_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation HasNoContracts_HasNoContracts__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoContracts_HasNoContracts_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation reclaimContract_HasNoContracts__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contractAddr_s742: Ref)
{
  var contractInst_s741: Ref;
  var __var_38: int;
  var __var_39: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 22;
    assume __tmp__DType[contractAddr_s742] == Ownable
       || __tmp__DType[contractAddr_s742] == HasNoTokens
       || __tmp__DType[contractAddr_s742] == HasNoContracts
       || __tmp__DType[contractAddr_s742] == MRVToken;
    contractInst_s741 := contractAddr_s742;
    gas := gas - 73898;
    if (__tmp__DType[this] == MRVToken)
    {
        call __var_39 := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == HasNoContracts)
    {
        call __var_39 := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[contractInst_s741] == MRVToken)
    {
        call transferOwnership_Ownable__fail(contractInst_s741, this, __var_38, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[contractInst_s741] == HasNoContracts)
    {
        call transferOwnership_Ownable__fail(contractInst_s741, this, __var_38, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[contractInst_s741] == HasNoTokens)
    {
        call transferOwnership_Ownable__fail(contractInst_s741, this, __var_38, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[contractInst_s741] == Ownable)
    {
        call transferOwnership_Ownable__fail(contractInst_s741, this, __var_38, __var_39);
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



implementation reclaimContract_HasNoContracts__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contractAddr_s742: Ref)
{
  var contractInst_s741: Ref;
  var __var_38: int;
  var __var_39: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 22;
    assume DType[contractAddr_s742] == Ownable
       || DType[contractAddr_s742] == HasNoTokens
       || DType[contractAddr_s742] == HasNoContracts
       || DType[contractAddr_s742] == MRVToken;
    contractInst_s741 := contractAddr_s742;
    gas := gas - 73898;
    if (DType[this] == MRVToken)
    {
        call __var_39 := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == HasNoContracts)
    {
        call __var_39 := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[contractInst_s741] == MRVToken)
    {
        call transferOwnership_Ownable__success(contractInst_s741, this, __var_38, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (DType[contractInst_s741] == HasNoContracts)
    {
        call transferOwnership_Ownable__success(contractInst_s741, this, __var_38, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (DType[contractInst_s741] == HasNoTokens)
    {
        call transferOwnership_Ownable__success(contractInst_s741, this, __var_38, __var_39);
        if (revert)
        {
            return;
        }
    }
    else if (DType[contractInst_s741] == Ownable)
    {
        call transferOwnership_Ownable__success(contractInst_s741, this, __var_38, __var_39);
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



implementation MRVToken_MRVToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_MRVToken[this] := 101341696;
    __tmp__symbol_MRVToken[this] := 2089077050;
    __tmp__decimals_MRVToken[this] := 0;
    __tmp__beneficiary_MRVToken[this] := null;
    __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this] := 0;
    __tmp__wholeTokensReserved_MRVToken[this] := 5000;
    __tmp__crowdsaleStarted_MRVToken[this] := false;
    __tmp__crowdsaleEnded_MRVToken[this] := false;
    __tmp__openTimer_MRVToken[this] := 0;
    __tmp__closeTimer_MRVToken[this] := 0;
    __tmp__beneficiary_MRVToken[this] := sendProceedsTo_s813;
    assume __tmp__decimals_MRVToken[this] >= 0;
    __tmp__decimals_MRVToken[this] := 18;
    assume __tmp__wholeTokensReserved_MRVToken[this] >= 0;
    assume nonlinearMul(__tmp__wholeTokensReserved_MRVToken[this], 1000000000000000000)
       >= 0;
    if (__tmp__DType[this] == MRVToken)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, sendTokensTo_s813, nonlinearMul(__tmp__wholeTokensReserved_MRVToken[this], 1000000000000000000));
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __tmp__crowdsaleStarted_MRVToken[this] := false;
    __tmp__crowdsaleEnded_MRVToken[this] := false;
    assume __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this] >= 0;
    __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this] := 100000000;
}



implementation MRVToken_MRVToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_MRVToken[this] := 101341696;
    symbol_MRVToken[this] := 2089077050;
    decimals_MRVToken[this] := 0;
    beneficiary_MRVToken[this] := null;
    maxCrowdsaleSupplyInWholeTokens_MRVToken[this] := 0;
    wholeTokensReserved_MRVToken[this] := 5000;
    crowdsaleStarted_MRVToken[this] := false;
    crowdsaleEnded_MRVToken[this] := false;
    openTimer_MRVToken[this] := 0;
    closeTimer_MRVToken[this] := 0;
    beneficiary_MRVToken[this] := sendProceedsTo_s813;
    assume decimals_MRVToken[this] >= 0;
    decimals_MRVToken[this] := 18;
    assume wholeTokensReserved_MRVToken[this] >= 0;
    assume nonlinearMul(wholeTokensReserved_MRVToken[this], 1000000000000000000) >= 0;
    if (DType[this] == MRVToken)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, sendTokensTo_s813, nonlinearMul(wholeTokensReserved_MRVToken[this], 1000000000000000000));
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    crowdsaleStarted_MRVToken[this] := false;
    crowdsaleEnded_MRVToken[this] := false;
    assume maxCrowdsaleSupplyInWholeTokens_MRVToken[this] >= 0;
    maxCrowdsaleSupplyInWholeTokens_MRVToken[this] := 100000000;
}



implementation MRVToken_MRVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref)
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

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoTokens_HasNoTokens__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoContracts_HasNoContracts__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MRVToken_MRVToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, sendProceedsTo_s813, sendTokensTo_s813);
    if (revert)
    {
        return;
    }
}



implementation MRVToken_MRVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sendProceedsTo_s813: Ref, 
    sendTokensTo_s813: Ref)
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

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoTokens_HasNoTokens__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call HasNoContracts_HasNoContracts__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MRVToken_MRVToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, sendProceedsTo_s813, sendTokensTo_s813);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call onlyDuringCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 6;
    call createTokens_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call onlyDuringCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 6;
    call createTokens_MRVToken__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }
}



implementation openTimerElapsed_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 447;
    assume __tmp__openTimer_MRVToken[this] >= 0;
    assume __tmp__now >= 0;
    assume __tmp__openTimer_MRVToken[this] >= 0;
    __ret_0_ := __tmp__openTimer_MRVToken[this] != 0
       && __tmp__now > __tmp__openTimer_MRVToken[this];
    return;
}



implementation openTimerElapsed_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 447;
    assume openTimer_MRVToken[this] >= 0;
    assume now >= 0;
    assume openTimer_MRVToken[this] >= 0;
    __ret_0_ := openTimer_MRVToken[this] != 0 && now > openTimer_MRVToken[this];
    return;
}



implementation closeTimerElapsed_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 447;
    assume __tmp__closeTimer_MRVToken[this] >= 0;
    assume __tmp__now >= 0;
    assume __tmp__closeTimer_MRVToken[this] >= 0;
    __ret_0_ := __tmp__closeTimer_MRVToken[this] != 0
       && __tmp__now > __tmp__closeTimer_MRVToken[this];
    return;
}



implementation closeTimerElapsed_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 447;
    assume closeTimer_MRVToken[this] >= 0;
    assume now >= 0;
    assume closeTimer_MRVToken[this] >= 0;
    __ret_0_ := closeTimer_MRVToken[this] != 0 && now > closeTimer_MRVToken[this];
    return;
}



implementation checkOpenTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_40: bool;

    gas := gas - 4;
    call __var_40 := openTimerElapsed_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__var_40)
    {
        gas := gas - 20267;
        __tmp__crowdsaleStarted_MRVToken[this] := true;
        gas := gas - 5014;
        assume __tmp__openTimer_MRVToken[this] >= 0;
        __tmp__openTimer_MRVToken[this] := 0;
    }
}



implementation checkOpenTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_40: bool;

    gas := gas - 4;
    call __var_40 := openTimerElapsed_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__var_40)
    {
        gas := gas - 20267;
        crowdsaleStarted_MRVToken[this] := true;
        gas := gas - 5014;
        assume openTimer_MRVToken[this] >= 0;
        openTimer_MRVToken[this] := 0;
        assert {:EventEmitted "CrowdsaleOpen_MRVToken"} true;
    }
}



implementation checkCloseTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_41: bool;

    gas := gas - 4;
    call __var_41 := closeTimerElapsed_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__var_41)
    {
        gas := gas - 20317;
        __tmp__crowdsaleEnded_MRVToken[this] := true;
        gas := gas - 5014;
        assume __tmp__closeTimer_MRVToken[this] >= 0;
        __tmp__closeTimer_MRVToken[this] := 0;
    }
}



implementation checkCloseTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_41: bool;

    gas := gas - 4;
    call __var_41 := closeTimerElapsed_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__var_41)
    {
        gas := gas - 20317;
        crowdsaleEnded_MRVToken[this] := true;
        gas := gas - 5014;
        assume closeTimer_MRVToken[this] >= 0;
        closeTimer_MRVToken[this] := 0;
        assert {:EventEmitted "CrowdsaleClose_MRVToken"} true;
    }
}



implementation isCrowdsaleActive_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_42: bool;
  var __var_43: bool;

    gas := gas - 3;
    gas := gas - 626;
    call __var_42 := openTimerElapsed_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call __var_43 := closeTimerElapsed_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __ret_0_ := (__tmp__crowdsaleStarted_MRVToken[this] || __var_42)
       && !(__tmp__crowdsaleEnded_MRVToken[this] || __var_43);
    return;
}



implementation isCrowdsaleActive_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_42: bool;
  var __var_43: bool;

    gas := gas - 3;
    gas := gas - 626;
    call __var_42 := openTimerElapsed_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call __var_43 := closeTimerElapsed_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __ret_0_ := (crowdsaleStarted_MRVToken[this] || __var_42)
       && !(crowdsaleEnded_MRVToken[this] || __var_43);
    return;
}



implementation setMaxSupply_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newMaxInWholeTokens_s1006: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this] >= 0;
    assume newMaxInWholeTokens_s1006 >= 0;
    __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this] := newMaxInWholeTokens_s1006;
}



implementation setMaxSupply_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newMaxInWholeTokens_s1006: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume maxCrowdsaleSupplyInWholeTokens_MRVToken[this] >= 0;
    assume newMaxInWholeTokens_s1006 >= 0;
    maxCrowdsaleSupplyInWholeTokens_MRVToken[this] := newMaxInWholeTokens_s1006;
}



implementation openCrowdsale_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20267;
    __tmp__crowdsaleStarted_MRVToken[this] := true;
    gas := gas - 5014;
    assume __tmp__openTimer_MRVToken[this] >= 0;
    __tmp__openTimer_MRVToken[this] := 0;
}



implementation openCrowdsale_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20267;
    crowdsaleStarted_MRVToken[this] := true;
    gas := gas - 5014;
    assume openTimer_MRVToken[this] >= 0;
    openTimer_MRVToken[this] := 0;
    assert {:EventEmitted "CrowdsaleOpen_MRVToken"} true;
}



implementation setCrowdsaleOpenTimerFor_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1044: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20027;
    assume __tmp__openTimer_MRVToken[this] >= 0;
    assume __tmp__now >= 0;
    assume minutesFromNow_s1044 >= 0;
    assume minutesFromNow_s1044 * 1 >= 0;
    assume __tmp__now + minutesFromNow_s1044 * 1 >= 0;
    __tmp__openTimer_MRVToken[this] := __tmp__now + minutesFromNow_s1044 * 1;
}



implementation setCrowdsaleOpenTimerFor_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1044: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20027;
    assume openTimer_MRVToken[this] >= 0;
    assume now >= 0;
    assume minutesFromNow_s1044 >= 0;
    assume minutesFromNow_s1044 * 1 >= 0;
    assume now + minutesFromNow_s1044 * 1 >= 0;
    openTimer_MRVToken[this] := now + minutesFromNow_s1044 * 1;
}



implementation clearCrowdsaleOpenTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 5014;
    assume __tmp__openTimer_MRVToken[this] >= 0;
    __tmp__openTimer_MRVToken[this] := 0;
}



implementation clearCrowdsaleOpenTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeOpened_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 5014;
    assume openTimer_MRVToken[this] >= 0;
    openTimer_MRVToken[this] := 0;
}



implementation setCrowdsaleCloseTimerFor_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1074: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeClosed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20027;
    assume __tmp__closeTimer_MRVToken[this] >= 0;
    assume __tmp__now >= 0;
    assume minutesFromNow_s1074 >= 0;
    assume minutesFromNow_s1074 * 1 >= 0;
    assume __tmp__now + minutesFromNow_s1074 * 1 >= 0;
    __tmp__closeTimer_MRVToken[this] := __tmp__now + minutesFromNow_s1074 * 1;
}



implementation setCrowdsaleCloseTimerFor_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, minutesFromNow_s1074: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeClosed_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20027;
    assume closeTimer_MRVToken[this] >= 0;
    assume now >= 0;
    assume minutesFromNow_s1074 >= 0;
    assume minutesFromNow_s1074 * 1 >= 0;
    assume now + minutesFromNow_s1074 * 1 >= 0;
    closeTimer_MRVToken[this] := now + minutesFromNow_s1074 * 1;
}



implementation clearCrowdsaleCloseTimer_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeClosed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 5014;
    assume __tmp__closeTimer_MRVToken[this] >= 0;
    __tmp__closeTimer_MRVToken[this] := 0;
}



implementation clearCrowdsaleCloseTimer_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyBeforeClosed_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 5014;
    assume closeTimer_MRVToken[this] >= 0;
    closeTimer_MRVToken[this] := 0;
}



implementation createTokens_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1156: Ref)
{
  var tokens_s1155: int;
  var newTotalSupply_s1155: int;
  var __var_44: int;
  var __var_45: bool;
  var __var_46: int;

    call onlyDuringCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 8;
    assume msgvalue_MSG >= 0;
    if (msgvalue_MSG == 0)
    {
        gas := gas - 6;
        revert := true;
        return;
    }

    gas := gas - 18;
    assume tokens_s1155 >= 0;
    assume msgvalue_MSG >= 0;
    assume msgvalue_MSG * 5000 >= 0;
    tokens_s1155 := msgvalue_MSG * 5000;
    gas := gas - 56;
    assume newTotalSupply_s1155 >= 0;
    assume __var_44 >= 0;
    if (__tmp__DType[this] == MRVToken)
    {
        call __var_44 := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_44 >= 0;
    assume tokens_s1155 >= 0;
    call newTotalSupply_s1155 := add_SafeMath__fail(this, this, 0, __var_44, tokens_s1155);
    if (revert)
    {
        return;
    }

    newTotalSupply_s1155 := newTotalSupply_s1155;
    gas := gas - 220;
    assume newTotalSupply_s1155 >= 0;
    assume __tmp__wholeTokensReserved_MRVToken[this] >= 0;
    assume __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this] >= 0;
    assume __tmp__wholeTokensReserved_MRVToken[this]
         + __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this]
       >= 0;
    assume nonlinearMul(__tmp__wholeTokensReserved_MRVToken[this]
           + __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this], 
        1000000000000000000)
       >= 0;
    if (newTotalSupply_s1155
       > nonlinearMul(__tmp__wholeTokensReserved_MRVToken[this]
           + __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken[this], 
        1000000000000000000))
    {
        gas := gas - 6;
        revert := true;
        return;
    }

    gas := gas - 10;
    assume tokens_s1155 >= 0;
    if (__tmp__DType[this] == MRVToken)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s1156, tokens_s1155);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 36014;
    assume msgvalue_MSG >= 0;
    __var_46 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_46 := __var_46 - gas;
    call __var_45 := send__fail(this, __tmp__beneficiary_MRVToken[this], msgvalue_MSG);
    gas := __var_46 + gas;
    if (!__var_45)
    {
        gas := gas - 6;
        revert := true;
        return;
    }
}



implementation createTokens_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s1156: Ref)
{
  var tokens_s1155: int;
  var newTotalSupply_s1155: int;
  var __var_44: int;
  var __var_45: bool;
  var __var_46: int;

    call onlyDuringCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 8;
    assume msgvalue_MSG >= 0;
    if (msgvalue_MSG == 0)
    {
        gas := gas - 6;
        revert := true;
        return;
    }

    gas := gas - 18;
    assume tokens_s1155 >= 0;
    assume msgvalue_MSG >= 0;
    assume msgvalue_MSG * 5000 >= 0;
    tokens_s1155 := msgvalue_MSG * 5000;
    gas := gas - 56;
    assume newTotalSupply_s1155 >= 0;
    assume __var_44 >= 0;
    if (DType[this] == MRVToken)
    {
        call __var_44 := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_44 >= 0;
    assume tokens_s1155 >= 0;
    call newTotalSupply_s1155 := add_SafeMath__success(this, this, 0, __var_44, tokens_s1155);
    if (revert)
    {
        return;
    }

    newTotalSupply_s1155 := newTotalSupply_s1155;
    gas := gas - 220;
    assume newTotalSupply_s1155 >= 0;
    assume wholeTokensReserved_MRVToken[this] >= 0;
    assume maxCrowdsaleSupplyInWholeTokens_MRVToken[this] >= 0;
    assume wholeTokensReserved_MRVToken[this]
         + maxCrowdsaleSupplyInWholeTokens_MRVToken[this]
       >= 0;
    assume nonlinearMul(wholeTokensReserved_MRVToken[this]
           + maxCrowdsaleSupplyInWholeTokens_MRVToken[this], 
        1000000000000000000)
       >= 0;
    if (newTotalSupply_s1155
       > nonlinearMul(wholeTokensReserved_MRVToken[this]
           + maxCrowdsaleSupplyInWholeTokens_MRVToken[this], 
        1000000000000000000))
    {
        gas := gas - 6;
        revert := true;
        return;
    }

    gas := gas - 10;
    assume tokens_s1155 >= 0;
    if (DType[this] == MRVToken)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, recipient_s1156, tokens_s1155);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "TokenPurchase_MRVToken"} true;
    gas := gas - 36014;
    assume msgvalue_MSG >= 0;
    __var_46 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_46 := __var_46 - gas;
    call __var_45 := send__success(this, beneficiary_MRVToken[this], msgvalue_MSG);
    gas := __var_46 + gas;
    if (!__var_45)
    {
        gas := gas - 6;
        revert := true;
        return;
    }
}



implementation closeCrowdsale_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyDuringCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    __tmp__crowdsaleEnded_MRVToken[this] := true;
    gas := gas - 5014;
    assume __tmp__closeTimer_MRVToken[this] >= 0;
    __tmp__closeTimer_MRVToken[this] := 0;
}



implementation closeCrowdsale_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyDuringCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    crowdsaleEnded_MRVToken[this] := true;
    gas := gas - 5014;
    assume closeTimer_MRVToken[this] >= 0;
    closeTimer_MRVToken[this] := 0;
    assert {:EventEmitted "CrowdsaleClose_MRVToken"} true;
}



implementation setDecimals_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newDecimals_s1194: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyAfterClosed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    assume __tmp__decimals_MRVToken[this] >= 0;
    assume newDecimals_s1194 >= 0;
    __tmp__decimals_MRVToken[this] := newDecimals_s1194;
}



implementation setDecimals_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newDecimals_s1194: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyAfterClosed_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    assume decimals_MRVToken[this] >= 0;
    assume newDecimals_s1194 >= 0;
    decimals_MRVToken[this] := newDecimals_s1194;
    assert {:EventEmitted "DecimalChange_MRVToken"} true;
}



implementation reclaimEther_MRVToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_47: bool;
  var __var_48: Ref;
  var __var_49: int;
  var __var_50: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36219;
    __var_48 := this;
    assume __tmp__Balance[this] >= 0;
    __var_49 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_49 := __var_49 - gas;
    if (__tmp__DType[this] == MRVToken)
    {
        call __var_50 := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_47 := send__fail(this, __var_50, __tmp__Balance[this]);
    gas := __var_49 + gas;
}



implementation reclaimEther_MRVToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_47: bool;
  var __var_48: Ref;
  var __var_49: int;
  var __var_50: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36219;
    __var_48 := this;
    assume Balance[this] >= 0;
    __var_49 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_49 := __var_49 - gas;
    if (DType[this] == MRVToken)
    {
        call __var_50 := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_47 := send__success(this, __var_50, Balance[this]);
    gas := __var_49 + gas;
    assert __var_47;
}



implementation increaseAllowance_MRVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 6;
    revert := true;
    return;
}



implementation increaseAllowance_MRVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 6;
    revert := true;
    return;
}



implementation decreaseAllowance_MRVToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 6;
    revert := true;
    return;
}



implementation decreaseAllowance_MRVToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    __param_0_: Ref, 
    __param_1_: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 6;
    revert := true;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == MRVToken)
    {
        call FallbackMethod_MRVToken__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == HasNoContracts)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == HasNoTokens)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Ownable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
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
    if (DType[to] == MRVToken)
    {
        call FallbackMethod_MRVToken__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == HasNoContracts)
    {
        assume amount == 0;
    }
    else if (DType[to] == HasNoTokens)
    {
        assume amount == 0;
    }
    else if (DType[to] == Ownable)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
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
  var __snap___tmp___balances_ERC20: [Ref]Ref;
  var __snap___tmp___allowed_ERC20: [Ref]Ref;
  var __snap___tmp___totalSupply_ERC20: [Ref]int;
  var __snap___tmp___owner_Ownable: [Ref]Ref;
  var __snap___tmp__name_MRVToken: [Ref]int;
  var __snap___tmp__symbol_MRVToken: [Ref]int;
  var __snap___tmp__decimals_MRVToken: [Ref]int;
  var __snap___tmp__beneficiary_MRVToken: [Ref]Ref;
  var __snap___tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken: [Ref]int;
  var __snap___tmp__wholeTokensReserved_MRVToken: [Ref]int;
  var __snap___tmp__crowdsaleStarted_MRVToken: [Ref]bool;
  var __snap___tmp__crowdsaleEnded_MRVToken: [Ref]bool;
  var __snap___tmp__openTimer_MRVToken: [Ref]int;
  var __snap___tmp__closeTimer_MRVToken: [Ref]int;

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
        __snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
        __snap___tmp___allowed_ERC20 := __tmp___allowed_ERC20;
        __snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
        __snap___tmp___owner_Ownable := __tmp___owner_Ownable;
        __snap___tmp__name_MRVToken := __tmp__name_MRVToken;
        __snap___tmp__symbol_MRVToken := __tmp__symbol_MRVToken;
        __snap___tmp__decimals_MRVToken := __tmp__decimals_MRVToken;
        __snap___tmp__beneficiary_MRVToken := __tmp__beneficiary_MRVToken;
        __snap___tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __snap___tmp__wholeTokensReserved_MRVToken := __tmp__wholeTokensReserved_MRVToken;
        __snap___tmp__crowdsaleStarted_MRVToken := __tmp__crowdsaleStarted_MRVToken;
        __snap___tmp__crowdsaleEnded_MRVToken := __tmp__crowdsaleEnded_MRVToken;
        __snap___tmp__openTimer_MRVToken := __tmp__openTimer_MRVToken;
        __snap___tmp__closeTimer_MRVToken := __tmp__closeTimer_MRVToken;
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
        __tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
        __tmp___allowed_ERC20 := __snap___tmp___allowed_ERC20;
        __tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
        __tmp___owner_Ownable := __snap___tmp___owner_Ownable;
        __tmp__name_MRVToken := __snap___tmp__name_MRVToken;
        __tmp__symbol_MRVToken := __snap___tmp__symbol_MRVToken;
        __tmp__decimals_MRVToken := __snap___tmp__decimals_MRVToken;
        __tmp__beneficiary_MRVToken := __snap___tmp__beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := __snap___tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := __snap___tmp__wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := __snap___tmp__crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := __snap___tmp__crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := __snap___tmp__openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := __snap___tmp__closeTimer_MRVToken;
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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp__name_MRVToken := name_MRVToken;
        __tmp__symbol_MRVToken := symbol_MRVToken;
        __tmp__decimals_MRVToken := decimals_MRVToken;
        __tmp__beneficiary_MRVToken := beneficiary_MRVToken;
        __tmp__maxCrowdsaleSupplyInWholeTokens_MRVToken := maxCrowdsaleSupplyInWholeTokens_MRVToken;
        __tmp__wholeTokensReserved_MRVToken := wholeTokensReserved_MRVToken;
        __tmp__crowdsaleStarted_MRVToken := crowdsaleStarted_MRVToken;
        __tmp__crowdsaleEnded_MRVToken := crowdsaleEnded_MRVToken;
        __tmp__openTimer_MRVToken := openTimer_MRVToken;
        __tmp__closeTimer_MRVToken := closeTimer_MRVToken;
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
  var __var_31: bool;

    gas := gas - 654;
    if (__tmp__DType[this] == MRVToken)
    {
        call __var_31 := isOwner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == HasNoContracts)
    {
        call __var_31 := isOwner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == HasNoTokens)
    {
        call __var_31 := isOwner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Ownable)
    {
        call __var_31 := isOwner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_31)
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_31: bool;

    gas := gas - 654;
    if (DType[this] == MRVToken)
    {
        call __var_31 := isOwner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == HasNoContracts)
    {
        call __var_31 := isOwner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == HasNoTokens)
    {
        call __var_31 := isOwner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Ownable)
    {
        call __var_31 := isOwner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_31)
    {
        revert := true;
        return;
    }
}



implementation onlyBeforeClosed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 30;
    call checkCloseTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 578;
    if (__tmp__crowdsaleEnded_MRVToken[this])
    {
        gas := gas - 12;
        revert := true;
        return;
    }
}



implementation onlyBeforeClosed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 30;
    call checkCloseTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 578;
    if (crowdsaleEnded_MRVToken[this])
    {
        gas := gas - 12;
        revert := true;
        return;
    }
}



implementation onlyAfterClosed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 15;
    call checkCloseTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 289;
    if (!__tmp__crowdsaleEnded_MRVToken[this])
    {
        gas := gas - 6;
        revert := true;
        return;
    }
}



implementation onlyAfterClosed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 15;
    call checkCloseTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 289;
    if (!crowdsaleEnded_MRVToken[this])
    {
        gas := gas - 6;
        revert := true;
        return;
    }
}



implementation onlyBeforeOpened_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 60;
    call checkOpenTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 956;
    if (__tmp__crowdsaleStarted_MRVToken[this])
    {
        gas := gas - 24;
        revert := true;
        return;
    }
}



implementation onlyBeforeOpened_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 60;
    call checkOpenTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 956;
    if (crowdsaleStarted_MRVToken[this])
    {
        gas := gas - 24;
        revert := true;
        return;
    }
}



implementation onlyDuringCrowdsale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 34;
    call checkOpenTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 34;
    call checkCloseTimer_MRVToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 867;
    if (__tmp__crowdsaleEnded_MRVToken[this])
    {
        gas := gas - 18;
        revert := true;
        return;
    }

    gas := gas - 717;
    if (!__tmp__crowdsaleStarted_MRVToken[this])
    {
        gas := gas - 18;
        revert := true;
        return;
    }
}



implementation onlyDuringCrowdsale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 34;
    call checkOpenTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 34;
    call checkCloseTimer_MRVToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 867;
    if (crowdsaleEnded_MRVToken[this])
    {
        gas := gas - 18;
        revert := true;
        return;
    }

    gas := gas - 717;
    if (!crowdsaleStarted_MRVToken[this])
    {
        gas := gas - 18;
        revert := true;
        return;
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != HasNoTokens;
    assume DType[msgsender_MSG] != HasNoContracts;
    assume DType[msgsender_MSG] != MRVToken;
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
    assume DType[this] == IERC20 || DType[this] == ERC20 || DType[this] == MRVToken;
    gas := gas - 53000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != HasNoTokens;
    assume DType[msgsender_MSG] != HasNoContracts;
    assume DType[msgsender_MSG] != MRVToken;
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
  var owner_s154: Ref;
  var __ret_0_balanceOf: int;
  var owner_s170: Ref;
  var spender_s170: Ref;
  var __ret_0_allowance: int;
  var to_s189: Ref;
  var value_s189: int;
  var __ret_0_transfer: bool;
  var spender_s225: Ref;
  var value_s225: int;
  var __ret_0_approve: bool;
  var from_s273: Ref;
  var to_s273: Ref;
  var value_s273: int;
  var __ret_0_transferFrom: bool;
  var spender_s323: Ref;
  var addedValue_s323: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s373: Ref;
  var subtractedValue_s373: int;
  var __ret_0_decreaseAllowance: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc owner_s154;
    havoc __ret_0_balanceOf;
    havoc owner_s170;
    havoc spender_s170;
    havoc __ret_0_allowance;
    havoc to_s189;
    havoc value_s189;
    havoc __ret_0_transfer;
    havoc spender_s225;
    havoc value_s225;
    havoc __ret_0_approve;
    havoc from_s273;
    havoc to_s273;
    havoc value_s273;
    havoc __ret_0_transferFrom;
    havoc spender_s323;
    havoc addedValue_s323;
    havoc __ret_0_increaseAllowance;
    havoc spender_s373;
    havoc subtractedValue_s373;
    havoc __ret_0_decreaseAllowance;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != HasNoTokens;
    assume DType[msgsender_MSG] != HasNoContracts;
    assume DType[msgsender_MSG] != MRVToken;
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
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s154);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s170, spender_s170);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s189, value_s189);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s225, value_s225);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s323, addedValue_s323);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s373, subtractedValue_s373);
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
    assume DType[this] == ERC20 || DType[this] == MRVToken;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_owner: Ref;
  var __ret_0_isOwner: bool;
  var newOwner_s667: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_owner;
    havoc __ret_0_isOwner;
    havoc newOwner_s667;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != HasNoTokens;
    assume DType[msgsender_MSG] != HasNoContracts;
    assume DType[msgsender_MSG] != MRVToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOwner := isOwner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
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
       || DType[this] == HasNoTokens
       || DType[this] == HasNoContracts
       || DType[this] == MRVToken;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_HasNoTokens(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_owner: Ref;
  var __ret_0_isOwner: bool;
  var newOwner_s667: Ref;
  var __arg_0_tokenFallback: Ref;
  var __arg_1_tokenFallback: int;
  var __arg_2_tokenFallback: int;
  var tokenAddr_s718: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_owner;
    havoc __ret_0_isOwner;
    havoc newOwner_s667;
    havoc __arg_0_tokenFallback;
    havoc __arg_1_tokenFallback;
    havoc __arg_2_tokenFallback;
    havoc tokenAddr_s718;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != HasNoTokens;
    assume DType[msgsender_MSG] != HasNoContracts;
    assume DType[msgsender_MSG] != MRVToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOwner := isOwner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call tokenFallback_HasNoTokens(this, msgsender_MSG, msgvalue_MSG, __arg_0_tokenFallback, __arg_1_tokenFallback, __arg_2_tokenFallback);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reclaimToken_HasNoTokens(this, msgsender_MSG, msgvalue_MSG, tokenAddr_s718);
    }
}



implementation CorralEntry_HasNoTokens()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == HasNoTokens || DType[this] == MRVToken;
    gas := gas - 53000;
    call HasNoTokens_HasNoTokens__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_HasNoTokens(this);
    }
}



implementation CorralChoice_HasNoContracts(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_owner: Ref;
  var __ret_0_isOwner: bool;
  var newOwner_s667: Ref;
  var contractAddr_s742: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_owner;
    havoc __ret_0_isOwner;
    havoc newOwner_s667;
    havoc contractAddr_s742;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != HasNoTokens;
    assume DType[msgsender_MSG] != HasNoContracts;
    assume DType[msgsender_MSG] != MRVToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOwner := isOwner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reclaimContract_HasNoContracts(this, msgsender_MSG, msgvalue_MSG, contractAddr_s742);
    }
}



implementation CorralEntry_HasNoContracts()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == HasNoContracts || DType[this] == MRVToken;
    gas := gas - 53000;
    call HasNoContracts_HasNoContracts__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_HasNoContracts(this);
    }
}



implementation CorralChoice_MRVToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var owner_s154: Ref;
  var __ret_0_balanceOf: int;
  var owner_s170: Ref;
  var spender_s170: Ref;
  var __ret_0_allowance: int;
  var to_s189: Ref;
  var value_s189: int;
  var __ret_0_transfer: bool;
  var spender_s225: Ref;
  var value_s225: int;
  var __ret_0_approve: bool;
  var from_s273: Ref;
  var to_s273: Ref;
  var value_s273: int;
  var __ret_0_transferFrom: bool;
  var __arg_0_increaseAllowance: Ref;
  var __arg_1_increaseAllowance: int;
  var __ret_0_increaseAllowance: bool;
  var __arg_0_decreaseAllowance: Ref;
  var __arg_1_decreaseAllowance: int;
  var __ret_0_decreaseAllowance: bool;
  var __ret_0_owner: Ref;
  var __ret_0_isOwner: bool;
  var newOwner_s667: Ref;
  var __arg_0_tokenFallback: Ref;
  var __arg_1_tokenFallback: int;
  var __arg_2_tokenFallback: int;
  var tokenAddr_s718: Ref;
  var contractAddr_s742: Ref;
  var sendProceedsTo_s813: Ref;
  var sendTokensTo_s813: Ref;
  var __ret_0_openTimerElapsed: bool;
  var __ret_0_closeTimerElapsed: bool;
  var __ret_0_isCrowdsaleActive: bool;
  var newMaxInWholeTokens_s1006: int;
  var minutesFromNow_s1044: int;
  var minutesFromNow_s1074: int;
  var newDecimals_s1194: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc owner_s154;
    havoc __ret_0_balanceOf;
    havoc owner_s170;
    havoc spender_s170;
    havoc __ret_0_allowance;
    havoc to_s189;
    havoc value_s189;
    havoc __ret_0_transfer;
    havoc spender_s225;
    havoc value_s225;
    havoc __ret_0_approve;
    havoc from_s273;
    havoc to_s273;
    havoc value_s273;
    havoc __ret_0_transferFrom;
    havoc __arg_0_increaseAllowance;
    havoc __arg_1_increaseAllowance;
    havoc __ret_0_increaseAllowance;
    havoc __arg_0_decreaseAllowance;
    havoc __arg_1_decreaseAllowance;
    havoc __ret_0_decreaseAllowance;
    havoc __ret_0_owner;
    havoc __ret_0_isOwner;
    havoc newOwner_s667;
    havoc __arg_0_tokenFallback;
    havoc __arg_1_tokenFallback;
    havoc __arg_2_tokenFallback;
    havoc tokenAddr_s718;
    havoc contractAddr_s742;
    havoc sendProceedsTo_s813;
    havoc sendTokensTo_s813;
    havoc __ret_0_openTimerElapsed;
    havoc __ret_0_closeTimerElapsed;
    havoc __ret_0_isCrowdsaleActive;
    havoc newMaxInWholeTokens_s1006;
    havoc minutesFromNow_s1044;
    havoc minutesFromNow_s1074;
    havoc newDecimals_s1194;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != HasNoTokens;
    assume DType[msgsender_MSG] != HasNoContracts;
    assume DType[msgsender_MSG] != MRVToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 29)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 28)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s154);
    }
    else if (choice == 27)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s170, spender_s170);
    }
    else if (choice == 26)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s189, value_s189);
    }
    else if (choice == 25)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s225, value_s225);
    }
    else if (choice == 24)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s273, to_s273, value_s273);
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_MRVToken(this, msgsender_MSG, msgvalue_MSG, __arg_0_increaseAllowance, __arg_1_increaseAllowance);
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_MRVToken(this, msgsender_MSG, msgvalue_MSG, __arg_0_decreaseAllowance, __arg_1_decreaseAllowance);
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOwner := isOwner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s667);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call tokenFallback_HasNoTokens(this, msgsender_MSG, msgvalue_MSG, __arg_0_tokenFallback, __arg_1_tokenFallback, __arg_2_tokenFallback);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reclaimToken_HasNoTokens(this, msgsender_MSG, msgvalue_MSG, tokenAddr_s718);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reclaimContract_HasNoContracts(this, msgsender_MSG, msgvalue_MSG, contractAddr_s742);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_openTimerElapsed := openTimerElapsed_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_closeTimerElapsed := closeTimerElapsed_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call checkOpenTimer_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call checkCloseTimer_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isCrowdsaleActive := isCrowdsaleActive_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setMaxSupply_MRVToken(this, msgsender_MSG, msgvalue_MSG, newMaxInWholeTokens_s1006);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call openCrowdsale_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setCrowdsaleOpenTimerFor_MRVToken(this, msgsender_MSG, msgvalue_MSG, minutesFromNow_s1044);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call clearCrowdsaleOpenTimer_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setCrowdsaleCloseTimerFor_MRVToken(this, msgsender_MSG, msgvalue_MSG, minutesFromNow_s1074);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call clearCrowdsaleCloseTimer_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call closeCrowdsale_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setDecimals_MRVToken(this, msgsender_MSG, msgvalue_MSG, newDecimals_s1194);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reclaimEther_MRVToken(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var sendProceedsTo_s813: Ref;
  var sendTokensTo_s813: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MRVToken;
    gas := gas - 53000;
    call MRVToken_MRVToken(this, msgsender_MSG, msgvalue_MSG, sendProceedsTo_s813, sendTokensTo_s813);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MRVToken(this);
    }
}


