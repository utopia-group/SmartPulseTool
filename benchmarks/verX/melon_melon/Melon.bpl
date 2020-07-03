// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:Melon.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// balance_safety
// Doesn't work: []((!started(*, msg.sender == 1) && !finished(ERC20Burnable.burn) && !finished(ERC20Burnable.burnFrom) && !finished(ERC20.transferFrom)) ==> <>(finished(*, old(M_Ref_int__balances0[_balances_ERC20[this]][1]) <= M_Ref_int__balances0[_balances_ERC20[this]][1])))
// LTLProperty: []((finished(ERC20.totalSupply, msg.sender != 1) || finished(ERC20.balanceOf, msg.sender != 1) || finished(ERC20.allowance, msg.sender != 1) || finished(ERC20.transfer, msg.sender != 1) || finished(ERC20.approve, msg.sender != 1) || finished(ERC20.increaseAllowance, msg.sender != 1) || finished(ERC20.decreaseAllowance, msg.sender != 1) || finished(ERC20Detailed.name, msg.sender != 1) || finished(ERC20Detailed.symbol, msg.sender != 1) || finished(ERC20Detailed.decimals, msg.sender != 1) || finished(Melon.changeCouncil, msg.sender != 1) || finished(Melon.mintInitialSupply, msg.sender != 1) || finished(Melon.mintInflation, msg.sender != 1)) ==> <>(finished(*, old(M_Ref_int__balances0[_balances_ERC20[this]][1]) <= M_Ref_int__balances0[_balances_ERC20[this]][1])))

// constant_decimals
// LTLProperty: [](!finished(*, old(_decimals_ERC20Detailed[this]) != _decimals_ERC20Detailed[this]))

// constant_name
// LTLProperty: [](!finished(*, old(_name_ERC20Detailed[this]) != _name_ERC20Detailed[this]))

// constant_symbol
// LTLProperty: [](!finished(*, old(_symbol_ERC20Detailed[this]) != _symbol_ERC20Detailed[this]))

// inflation_enabled
// LTLProperty: [](!finished(Melon.mintInflation, now < 1551398400))

// last_minting_increases
// LTLProperty: [](!finished(*, old(nextMinting_Melon[this]) != nextMinting_Melon[this] && old(nextMinting_Melon[this]) > (nextMinting_Melon[this] - 31536000)))

// minting
// LTLProperty: [](!finished(*, old(nextMinting_Melon[this]) != nextMinting_Melon[this] && old(nextMinting_Melon[this]) != (nextMinting_Melon[this] - 31536000)))

// only_burn_decreases_tokens
// Doesn't work: []((!finished(ERC20Burnable.burn) && !finished(ERC20Burnable.burnFrom)) ==> <>(finished(*, old(_totalSupply_ERC20[this]) <= _totalSupply_ERC20[this])))
// LTLProperty: []((finished(ERC20.totalSupply) || finished(ERC20.balanceOf) || finished(ERC20.allowance) || finished(ERC20.transfer) || finished(ERC20.approve) || finished(ERC20.transferFrom) || finished(ERC20.increaseAllowance) || finished(ERC20.decreaseAllowance) || finished(ERC20Detailed.name) || finished(ERC20Detailed.symbol) || finished(ERC20Detailed.decimals) || finished(Melon.changeCouncil) || finished(Melon.mintInitialSupply) || finished(Melon.mintInflation)) ==> <>(finished(*, old(_totalSupply_ERC20[this]) <= _totalSupply_ERC20[this])))

// only_council_can_change_council
// LTLProperty: [](!INV {old(council_Melon[this]) != council_Melon[this] && msg.sender != old(council_Melon[this])})

// only_mint_increases_tokens
// Doesn't work: []((!finished(Melon.mintInitialSupply) && !finished(Melon.mintInflation)) ==> <>(finished(*, old(_totalSupply_ERC20[this]) >= _totalSupply_ERC20[this])))
// #LTLProperty: []((finished(ERC20.totalSupply) || finished(ERC20.balanceOf) || finished(ERC20.allowance) || finished(ERC20.transfer) || finished(ERC20.approve) || finished(ERC20.transferFrom) || finished(ERC20.increaseAllowance) || finished(ERC20.decreaseAllowance) || finished(ERC20Burnable.burn) || finished(ERC20Burnable.burnFrom) || finished(ERC20Detailed.name) || finished(ERC20Detailed.symbol) || finished(ERC20Detailed.decimals) || finished(Melon.changeCouncil)) ==> <>(finished(*, old(_totalSupply_ERC20[this]) >= _totalSupply_ERC20[this])))

// receiver_does_not_overflow
// LTLProperty: [](!finished(ERC20.transfer(to, val), old(M_Ref_int__balances0[_balances_ERC20[this]][to]) > M_Ref_int__balances0[_balances_ERC20[this]][to]))

// receiver_does_not_underflow
// LTLProperty: [](!finished(ERC20.transfer, old(M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]) < M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]))

// sender_has_enough_funds
// LTLProperty: [](!finished(ERC20.transfer(to, val), old(M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]) < val))

// sum_of_balances_equals_total_supply
// LTLProperty: [](!finished(*, sum__balances0[_balances_ERC20[this]] != _totalSupply_ERC20[this]))

// transfer
// LTLProperty: [](!finished(ERC20.transfer(to, value), to != msg.sender && (M_Ref_int__balances0[_balances_ERC20[this]][msg.sender] != (old(M_Ref_int__balances0[_balances_ERC20[this]][msg.sender]) - value) || M_Ref_int__balances0[_balances_ERC20[this]][to] != (old(M_Ref_int__balances0[_balances_ERC20[this]][to]) + value)))) 

// transferFrom
// LTLProperty: [](!finished(ERC20.transferFrom(from, to, value), from != to && (M_Ref_int__balances0[_balances_ERC20[this]][from] != (old(M_Ref_int__balances0[_balances_ERC20[this]][from]) - value) || M_Ref_int__balances0[_balances_ERC20[this]][to] != (old(M_Ref_int__balances0[_balances_ERC20[this]][to]) + value) || old(M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from]][msg.sender]) < value)))

type Ref = int;

type ContractName = int;

var null: Ref;

var IERC20: ContractName;

var SafeMath: ContractName;

var ERC20: ContractName;

var ERC20Burnable: ContractName;

var ERC20Detailed: ContractName;

var Melon: ContractName;

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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, Balance;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, Balance;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, sum__balances0, M_Ref_int__balances0;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
    from_s274: Ref, 
    to_s274: Ref, 
    value_s274: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, sum__balances0, M_Ref_int__balances0;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s274: Ref, 
    to_s274: Ref, 
    value_s274: int)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s323: Ref, 
    addedValue_s323: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
    spender_s372: Ref, 
    subtractedValue_s372: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s372: Ref, 
    subtractedValue_s372: int)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s372, subtractedValue_s372);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s372, subtractedValue_s372);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s418: Ref, 
    to_s418: Ref, 
    value_s418: int);
  modifies gas, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    value_s460: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s502: Ref, 
    value_s502: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s544: Ref, 
    value_s544: int);
  modifies gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Burnable_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



implementation ERC20Burnable_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call ERC20Burnable_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s559: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



implementation burn_ERC20Burnable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s559: int)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call burn_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG, value_s559);
        assume revert || gas < 0;
    }
    else
    {
        call burn_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG, value_s559);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burnFrom_ERC20Burnable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s572: Ref, 
    value_s572: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



implementation burnFrom_ERC20Burnable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s572: Ref, 
    value_s572: int)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call burnFrom_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
        assume revert || gas < 0;
    }
    else
    {
        call burnFrom_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
        assume !revert && gas >= 0;
    }
}



var {:access "this._name=_name_ERC20Detailed[this]"} _name_ERC20Detailed: [Ref]int;

var {:access "this._symbol=_symbol_ERC20Detailed[this]"} _symbol_ERC20Detailed: [Ref]int;

var {:access "this._decimals=_decimals_ERC20Detailed[this]"} _decimals_ERC20Detailed: [Ref]int;

procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:public} {:inline 1} ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



implementation ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, name_s603, symbol_s603, decimals_s603);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, name_s603, symbol_s603, decimals_s603);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas;



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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas;



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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas;



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
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call __ret_0_ := decimals_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decimals_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.BASE_UNITS=BASE_UNITS_Melon[this]"} BASE_UNITS_Melon: [Ref]int;

var {:access "this.INFLATION_ENABLE_DATE=INFLATION_ENABLE_DATE_Melon[this]"} INFLATION_ENABLE_DATE_Melon: [Ref]int;

var {:access "this.INITIAL_TOTAL_SUPPLY=INITIAL_TOTAL_SUPPLY_Melon[this]"} INITIAL_TOTAL_SUPPLY_Melon: [Ref]int;

var {:access "this.YEARLY_MINTABLE_AMOUNT=YEARLY_MINTABLE_AMOUNT_Melon[this]"} YEARLY_MINTABLE_AMOUNT_Melon: [Ref]int;

var {:access "this.MINTING_INTERVAL=MINTING_INTERVAL_Melon[this]"} MINTING_INTERVAL_Melon: [Ref]int;

var {:access "this.council=council_Melon[this]"} council_Melon: [Ref]Ref;

var {:access "this.deployer=deployer_Melon[this]"} deployer_Melon: [Ref]Ref;

var {:access "this.initialSupplyMinted=initialSupplyMinted_Melon[this]"} initialSupplyMinted_Melon: [Ref]bool;

var {:access "this.nextMinting=nextMinting_Melon[this]"} nextMinting_Melon: [Ref]int;

procedure {:inline 1} Melon_Melon_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref);
  modifies Balance, BASE_UNITS_Melon, INFLATION_ENABLE_DATE_Melon, INITIAL_TOTAL_SUPPLY_Melon, YEARLY_MINTABLE_AMOUNT_Melon, MINTING_INTERVAL_Melon, council_Melon, deployer_Melon, initialSupplyMinted_Melon, nextMinting_Melon;



procedure {:constructor} {:public} {:inline 1} Melon_Melon(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, BASE_UNITS_Melon, INFLATION_ENABLE_DATE_Melon, INITIAL_TOTAL_SUPPLY_Melon, YEARLY_MINTABLE_AMOUNT_Melon, MINTING_INTERVAL_Melon, council_Melon, deployer_Melon, initialSupplyMinted_Melon, nextMinting_Melon;



implementation Melon_Melon(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call Melon_Melon__fail(this, msgsender_MSG, msgvalue_MSG, _name_s735, _symbol_s735, _decimals_s735, _council_s735);
        assume revert || gas < 0;
    }
    else
    {
        call Melon_Melon__success(this, msgsender_MSG, msgvalue_MSG, _name_s735, _symbol_s735, _decimals_s735, _council_s735);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} changeCouncil_Melon(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newCouncil_s747: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, council_Melon;



implementation changeCouncil_Melon(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newCouncil_s747: Ref)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call changeCouncil_Melon__fail(this, msgsender_MSG, msgvalue_MSG, _newCouncil_s747);
        assume revert || gas < 0;
    }
    else
    {
        call changeCouncil_Melon__success(this, msgsender_MSG, msgvalue_MSG, _newCouncil_s747);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} mintInitialSupply_Melon(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _initialReceiver_s770: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, initialSupplyMinted_Melon, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



implementation mintInitialSupply_Melon(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _initialReceiver_s770: Ref)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call mintInitialSupply_Melon__fail(this, msgsender_MSG, msgvalue_MSG, _initialReceiver_s770);
        assume revert || gas < 0;
    }
    else
    {
        call mintInitialSupply_Melon__success(this, msgsender_MSG, msgvalue_MSG, _initialReceiver_s770);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} mintInflation_Melon(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, gas, nextMinting_Melon, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



implementation mintInflation_Melon(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
        call mintInflation_Melon__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call mintInflation_Melon__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, revert, Balance;



procedure {:inline 1} onlyDeployer_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyCouncil_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} anIntervalHasPassed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} inflationEnabled_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_IERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_IERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, sum__allowed1;



procedure CorralChoice_ERC20Burnable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, sum__balances0, M_Ref_int__balances0, _totalSupply_ERC20;



procedure CorralEntry_ERC20Burnable();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, sum__allowed1;



procedure CorralChoice_ERC20Detailed(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon;



procedure CorralEntry_ERC20Detailed();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, now, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure CorralChoice_Melon(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, council_Melon, initialSupplyMinted_Melon, nextMinting_Melon, sum__balances0, M_Ref_int__balances0, _totalSupply_ERC20;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, now, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, council_Melon, initialSupplyMinted_Melon, nextMinting_Melon, Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, _totalSupply_ERC20, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, BASE_UNITS_Melon, INFLATION_ENABLE_DATE_Melon, INITIAL_TOTAL_SUPPLY_Melon, YEARLY_MINTABLE_AMOUNT_Melon, MINTING_INTERVAL_Melon, deployer_Melon;



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

var __tmp___name_ERC20Detailed: [Ref]int;

var __tmp___symbol_ERC20Detailed: [Ref]int;

var __tmp___decimals_ERC20Detailed: [Ref]int;

var __tmp__BASE_UNITS_Melon: [Ref]int;

var __tmp__INFLATION_ENABLE_DATE_Melon: [Ref]int;

var __tmp__INITIAL_TOTAL_SUPPLY_Melon: [Ref]int;

var __tmp__YEARLY_MINTABLE_AMOUNT_Melon: [Ref]int;

var __tmp__MINTING_INTERVAL_Melon: [Ref]int;

var __tmp__council_Melon: [Ref]Ref;

var __tmp__deployer_Melon: [Ref]Ref;

var __tmp__initialSupplyMinted_Melon: [Ref]bool;

var __tmp__nextMinting_Melon: [Ref]int;

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
    from_s274: Ref, 
    to_s274: Ref, 
    value_s274: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, revert, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s274: Ref, 
    to_s274: Ref, 
    value_s274: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



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
    spender_s372: Ref, 
    subtractedValue_s372: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s372: Ref, 
    subtractedValue_s372: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s418: Ref, 
    to_s418: Ref, 
    value_s418: int);
  modifies gas, revert, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    value_s460: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s502: Ref, 
    value_s502: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s544: Ref, 
    value_s544: int);
  modifies gas, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20Burnable_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20Burnable_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} burn_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s559: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} burn_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s559: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} burnFrom_ERC20Burnable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s572: Ref, 
    value_s572: int);
  modifies gas, M_Ref_Ref__allowed1, M_Ref_int__allowed1, sum__allowed1, Alloc, revert, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} burnFrom_ERC20Burnable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s572: Ref, 
    value_s572: int);
  modifies gas, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp__sum__allowed1, __tmp__Alloc, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int);
  modifies __tmp__Balance, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int);
  modifies __tmp__Balance, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:inline 1} name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} Melon_Melon_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref);
  modifies __tmp__Balance, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon;



procedure {:constructor} {:inline 1} Melon_Melon__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref);
  modifies Balance, _balances_ERC20, M_Ref_int__balances0, sum__balances0, _allowed_ERC20, M_Ref_Ref__allowed1, M_Ref_int__allowed1, _totalSupply_ERC20, Alloc, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, BASE_UNITS_Melon, INFLATION_ENABLE_DATE_Melon, INITIAL_TOTAL_SUPPLY_Melon, YEARLY_MINTABLE_AMOUNT_Melon, MINTING_INTERVAL_Melon, council_Melon, deployer_Melon, initialSupplyMinted_Melon, nextMinting_Melon;



procedure {:constructor} {:inline 1} Melon_Melon__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed1, __tmp__M_Ref_int__allowed1, __tmp___totalSupply_ERC20, __tmp__Alloc, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon;



procedure {:inline 1} changeCouncil_Melon__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newCouncil_s747: Ref);
  modifies gas, council_Melon, revert;



procedure {:inline 1} changeCouncil_Melon__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newCouncil_s747: Ref);
  modifies gas, __tmp__council_Melon, revert;



procedure {:inline 1} mintInitialSupply_Melon__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _initialReceiver_s770: Ref);
  modifies gas, revert, initialSupplyMinted_Melon, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} mintInitialSupply_Melon__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _initialReceiver_s770: Ref);
  modifies gas, revert, __tmp__initialSupplyMinted_Melon, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} mintInflation_Melon__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, nextMinting_Melon, _totalSupply_ERC20, sum__balances0, M_Ref_int__balances0;



procedure {:inline 1} mintInflation_Melon__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__nextMinting_Melon, __tmp___totalSupply_ERC20, __tmp__sum__balances0, __tmp__M_Ref_int__balances0;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances0, __tmp__sum__balances0, __tmp__M_Ref_int__allowed1, __tmp__M_Ref_Ref__allowed1, __tmp__sum__allowed1, __tmp__Length, __tmp__now, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp__BASE_UNITS_Melon, __tmp__INFLATION_ENABLE_DATE_Melon, __tmp__INITIAL_TOTAL_SUPPLY_Melon, __tmp__YEARLY_MINTABLE_AMOUNT_Melon, __tmp__MINTING_INTERVAL_Melon, __tmp__council_Melon, __tmp__deployer_Melon, __tmp__initialSupplyMinted_Melon, __tmp__nextMinting_Melon, revert;



procedure {:inline 1} onlyDeployer_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyCouncil_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} anIntervalHasPassed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} inflationEnabled_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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

    gas := gas - 9;
    gas := gas - 96;
    assume b_s92 >= 0;
    assume a_s92 >= 0;
    if (!(b_s92 <= a_s92))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s91 >= 0;
    assume a_s92 >= 0;
    assume b_s92 >= 0;
    assume a_s92 - b_s92 >= 0;
    c_s91 := a_s92 - b_s92;
    gas := gas - 30;
    assume c_s91 >= 0;
    __ret_0_ := c_s91;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s92: int, b_s92: int)
   returns (__ret_0_: int)
{
  var c_s91: int;

    gas := gas - 9;
    gas := gas - 96;
    assume b_s92 >= 0;
    assume a_s92 >= 0;
    if (!(b_s92 <= a_s92))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s91 >= 0;
    assume a_s92 >= 0;
    assume b_s92 >= 0;
    assume a_s92 - b_s92 >= 0;
    c_s91 := a_s92 - b_s92;
    gas := gas - 30;
    assume c_s91 >= 0;
    __ret_0_ := c_s91;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s116: int, b_s116: int)
   returns (__ret_0_: int)
{
  var c_s115: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    assume b_s116 >= 0;
    assume a_s116 + b_s116 >= 0;
    c_s115 := a_s116 + b_s116;
    gas := gas - 96;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    if (!(c_s115 >= a_s116))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume c_s115 >= 0;
    __ret_0_ := c_s115;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s116: int, b_s116: int)
   returns (__ret_0_: int)
{
  var c_s115: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    assume b_s116 >= 0;
    assume a_s116 + b_s116 >= 0;
    c_s115 := a_s116 + b_s116;
    gas := gas - 96;
    assume c_s115 >= 0;
    assume a_s116 >= 0;
    if (!(c_s115 >= a_s116))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
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



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][owner_s154] >= 0;
    __ret_0_ := __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][owner_s154];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s154: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
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

    gas := gas - 9;
    gas := gas - 1182;
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

    gas := gas - 9;
    gas := gas - 1182;
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
    gas := gas - 9;
    gas := gas - 36;
    assume value_s189 >= 0;
    if (__tmp__DType[this] == Melon)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s189, value_s189);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Burnable)
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

    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transfer_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s189: Ref, value_s189: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 36;
    assume value_s189 >= 0;
    if (DType[this] == Melon)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s189, value_s189);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Burnable)
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

    gas := gas - 24;
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

    gas := gas - 9;
    gas := gas - 132;
    __var_4 := null;
    if (!(spender_s225 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60597;
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
    gas := gas - 24;
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

    gas := gas - 9;
    gas := gas - 132;
    __var_4 := null;
    if (!(spender_s225 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60597;
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
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s274: Ref, 
    to_s274: Ref, 
    value_s274: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: int;
  var __var_8: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274] == null)
    {
        call __var_6 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274] := __var_6;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274] == null)
    {
        call __var_8 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274] := __var_8;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]][msgsender_MSG]
       >= 0;
    assume value_s274 >= 0;
    call __var_7 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]][msgsender_MSG], value_s274);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]][msgsender_MSG];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]][msgsender_MSG] := __var_7;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][from_s274]][msgsender_MSG];
    assume __var_7 >= 0;
    gas := gas - 72;
    assume value_s274 >= 0;
    if (__tmp__DType[this] == Melon)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Burnable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
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
    from_s274: Ref, 
    to_s274: Ref, 
    value_s274: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: int;
  var __var_8: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274] == null)
    {
        call __var_6 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274] := __var_6;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274] == null)
    {
        call __var_8 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274] := __var_8;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]][msgsender_MSG]
       >= 0;
    assume value_s274 >= 0;
    call __var_7 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]][msgsender_MSG], value_s274);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]][msgsender_MSG];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]][msgsender_MSG] := __var_7;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][from_s274]][msgsender_MSG];
    assume __var_7 >= 0;
    gas := gas - 72;
    assume value_s274 >= 0;
    if (DType[this] == Melon)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Burnable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
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
    spender_s323: Ref, 
    addedValue_s323: int)
   returns (__ret_0_: bool)
{
  var __var_9: Ref;
  var __var_10: Ref;
  var __var_11: int;
  var __var_12: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_9 := null;
    if (!(spender_s323 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_10 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_10;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
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

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
    assume addedValue_s323 >= 0;
    call __var_11 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323], addedValue_s323);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323] := __var_11;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    assume __var_11 >= 0;
    gas := gas - 24;
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
  var __var_9: Ref;
  var __var_10: Ref;
  var __var_11: int;
  var __var_12: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_9 := null;
    if (!(spender_s323 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_10 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_10;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
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

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323]
       >= 0;
    assume addedValue_s323 >= 0;
    call __var_11 := add_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323], addedValue_s323);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323] := __var_11;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s323];
    assume __var_11 >= 0;
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s372: Ref, 
    subtractedValue_s372: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;
  var __var_14: Ref;
  var __var_15: int;
  var __var_16: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_13 := null;
    if (!(spender_s372 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_14 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_14;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s372]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_16 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_16;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s372]
       >= 0;
    assume subtractedValue_s372 >= 0;
    call __var_15 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s372], subtractedValue_s372);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s372];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s372] := __var_15;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s372];
    assume __var_15 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s372: Ref, 
    subtractedValue_s372: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;
  var __var_14: Ref;
  var __var_15: int;
  var __var_16: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_13 := null;
    if (!(spender_s372 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_14 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_14;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s372]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_16 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG] := __var_16;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s372]
       >= 0;
    assume subtractedValue_s372 >= 0;
    call __var_15 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s372], subtractedValue_s372);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s372];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s372] := __var_15;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][msgsender_MSG]][spender_s372];
    assume __var_15 >= 0;
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s418: Ref, 
    to_s418: Ref, 
    value_s418: int)
{
  var __var_17: Ref;
  var __var_18: int;
  var __var_19: int;

    gas := gas - 132;
    __var_17 := null;
    if (!(to_s418 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s418] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s418] >= 0;
    assume value_s418 >= 0;
    call __var_18 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s418], value_s418);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s418];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s418] := __var_18;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][from_s418];
    assume __var_18 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s418] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s418] >= 0;
    assume value_s418 >= 0;
    call __var_19 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s418], value_s418);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s418];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s418] := __var_19;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][to_s418];
    assume __var_19 >= 0;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s418: Ref, 
    to_s418: Ref, 
    value_s418: int)
{
  var __var_17: Ref;
  var __var_18: int;
  var __var_19: int;

    gas := gas - 132;
    __var_17 := null;
    if (!(to_s418 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int__balances0[_balances_ERC20[this]][from_s418] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][from_s418] >= 0;
    assume value_s418 >= 0;
    call __var_18 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][from_s418], value_s418);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][from_s418];
    M_Ref_int__balances0[_balances_ERC20[this]][from_s418] := __var_18;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][from_s418];
    assume __var_18 >= 0;
    gas := gas - 61299;
    assume M_Ref_int__balances0[_balances_ERC20[this]][to_s418] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][to_s418] >= 0;
    assume value_s418 >= 0;
    call __var_19 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][to_s418], value_s418);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][to_s418];
    M_Ref_int__balances0[_balances_ERC20[this]][to_s418] := __var_19;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][to_s418];
    assume __var_19 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    value_s460: int)
{
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    gas := gas - 44;
    __var_20 := null;
    if (!(account_s460 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20247;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s460 >= 0;
    call __var_21 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s460);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_21;
    assume __var_21 >= 0;
    gas := gas - 20439;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s460] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s460] >= 0;
    assume value_s460 >= 0;
    call __var_22 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s460], value_s460);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s460];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s460] := __var_22;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s460];
    assume __var_22 >= 0;
}



implementation _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s460: Ref, 
    value_s460: int)
{
  var __var_20: Ref;
  var __var_21: int;
  var __var_22: int;

    gas := gas - 44;
    __var_20 := null;
    if (!(account_s460 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20247;
    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s460 >= 0;
    call __var_21 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s460);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_21;
    assume __var_21 >= 0;
    gas := gas - 20439;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s460] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s460] >= 0;
    assume value_s460 >= 0;
    call __var_22 := add_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s460], value_s460);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s460];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s460] := __var_22;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s460];
    assume __var_22 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s502: Ref, 
    value_s502: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    gas := gas - 88;
    __var_23 := null;
    if (!(account_s502 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40494;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s502 >= 0;
    call __var_24 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s502);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_24;
    assume __var_24 >= 0;
    gas := gas - 40878;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s502] >= 0;
    assume __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s502] >= 0;
    assume value_s502 >= 0;
    call __var_25 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s502], value_s502);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s502];
    __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s502] := __var_25;
    __tmp__sum__balances0[__tmp___balances_ERC20[this]] := __tmp__sum__balances0[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances0[__tmp___balances_ERC20[this]][account_s502];
    assume __var_25 >= 0;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s502: Ref, 
    value_s502: int)
{
  var __var_23: Ref;
  var __var_24: int;
  var __var_25: int;

    gas := gas - 88;
    __var_23 := null;
    if (!(account_s502 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40494;
    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s502 >= 0;
    call __var_24 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s502);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_24;
    assume __var_24 >= 0;
    gas := gas - 40878;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s502] >= 0;
    assume M_Ref_int__balances0[_balances_ERC20[this]][account_s502] >= 0;
    assume value_s502 >= 0;
    call __var_25 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances0[_balances_ERC20[this]][account_s502], value_s502);
    if (revert)
    {
        return;
    }

    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       - M_Ref_int__balances0[_balances_ERC20[this]][account_s502];
    M_Ref_int__balances0[_balances_ERC20[this]][account_s502] := __var_25;
    sum__balances0[_balances_ERC20[this]] := sum__balances0[_balances_ERC20[this]]
       + M_Ref_int__balances0[_balances_ERC20[this]][account_s502];
    assume __var_25 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s544: Ref, 
    value_s544: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: Ref;

    gas := gas - 41234;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544] == null)
    {
        call __var_26 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544] := __var_26;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544] == null)
    {
        call __var_28 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544] := __var_28;
        __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]] := zeroRefIntArr();
        __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]] := 0;
    }

    assume __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]][msgsender_MSG]
       >= 0;
    assume value_s544 >= 0;
    call __var_27 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]][msgsender_MSG], value_s544);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]]
       - __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]][msgsender_MSG];
    __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]][msgsender_MSG] := __var_27;
    __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]] := __tmp__sum__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]]
       + __tmp__M_Ref_int__allowed1[__tmp__M_Ref_Ref__allowed1[__tmp___allowed_ERC20[this]][account_s544]][msgsender_MSG];
    assume __var_27 >= 0;
    gas := gas - 42;
    assume value_s544 >= 0;
    if (__tmp__DType[this] == Melon)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s544, value_s544);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s544, value_s544);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s544, value_s544);
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
    account_s544: Ref, 
    value_s544: int)
{
  var __var_26: Ref;
  var __var_27: int;
  var __var_28: Ref;

    gas := gas - 41234;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544] == null)
    {
        call __var_26 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544] := __var_26;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544] == null)
    {
        call __var_28 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544] := __var_28;
        M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]] := zeroRefIntArr();
        sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]] := 0;
    }

    assume M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]][msgsender_MSG]
       >= 0;
    assume value_s544 >= 0;
    call __var_27 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]][msgsender_MSG], value_s544);
    if (revert)
    {
        return;
    }

    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]]
       - M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]][msgsender_MSG];
    M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]][msgsender_MSG] := __var_27;
    sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]] := sum__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]]
       + M_Ref_int__allowed1[M_Ref_Ref__allowed1[_allowed_ERC20[this]][account_s544]][msgsender_MSG];
    assume __var_27 >= 0;
    gas := gas - 42;
    assume value_s544 >= 0;
    if (DType[this] == Melon)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s544, value_s544);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s544, value_s544);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s544, value_s544);
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



implementation ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ERC20Burnable_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call ERC20Burnable_ERC20Burnable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20Burnable_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call ERC20Burnable_ERC20Burnable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation burn_ERC20Burnable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s559: int)
{
    gas := gas - 18;
    assume value_s559 >= 0;
    if (__tmp__DType[this] == Melon)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s559);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s559);
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



implementation burn_ERC20Burnable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, value_s559: int)
{
    gas := gas - 18;
    assume value_s559 >= 0;
    if (DType[this] == Melon)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s559);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Burnable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, value_s559);
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



implementation burnFrom_ERC20Burnable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s572: Ref, 
    value_s572: int)
{
    gas := gas - 20;
    assume value_s572 >= 0;
    if (__tmp__DType[this] == Melon)
    {
        call _burnFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Burnable)
    {
        call _burnFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
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



implementation burnFrom_ERC20Burnable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s572: Ref, 
    value_s572: int)
{
    gas := gas - 20;
    assume value_s572 >= 0;
    if (DType[this] == Melon)
    {
        call _burnFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Burnable)
    {
        call _burnFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
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



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___name_ERC20Detailed[this] := 712939789;
    __tmp___symbol_ERC20Detailed[this] := 712939789;
    __tmp___decimals_ERC20Detailed[this] := 0;
    __tmp___name_ERC20Detailed[this] := name_s603;
    __tmp___symbol_ERC20Detailed[this] := symbol_s603;
    assume __tmp___decimals_ERC20Detailed[this] >= 0;
    assume decimals_s603 >= 0;
    __tmp___decimals_ERC20Detailed[this] := decimals_s603;
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _name_ERC20Detailed[this] := 712939789;
    _symbol_ERC20Detailed[this] := 712939789;
    _decimals_ERC20Detailed[this] := 0;
    _name_ERC20Detailed[this] := name_s603;
    _symbol_ERC20Detailed[this] := symbol_s603;
    assume _decimals_ERC20Detailed[this] >= 0;
    assume decimals_s603 >= 0;
    _decimals_ERC20Detailed[this] := decimals_s603;
}



implementation ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, name_s603, symbol_s603, decimals_s603);
    if (revert)
    {
        return;
    }
}



implementation ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s603: int, 
    symbol_s603: int, 
    decimals_s603: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, name_s603, symbol_s603, decimals_s603);
    if (revert)
    {
        return;
    }
}



implementation name_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := __tmp___name_ERC20Detailed[this];
    return;
}



implementation name_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := _name_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := __tmp___symbol_ERC20Detailed[this];
    return;
}



implementation symbol_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 1523;
    __ret_0_ := _symbol_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 244;
    assume __tmp___decimals_ERC20Detailed[this] >= 0;
    __ret_0_ := __tmp___decimals_ERC20Detailed[this];
    return;
}



implementation decimals_ERC20Detailed__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 244;
    assume _decimals_ERC20Detailed[this] >= 0;
    __ret_0_ := _decimals_ERC20Detailed[this];
    return;
}



implementation Melon_Melon_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__BASE_UNITS_Melon[this] := 1000000000000000000;
    __tmp__INFLATION_ENABLE_DATE_Melon[this] := 1551398400;
    __tmp__INITIAL_TOTAL_SUPPLY_Melon[this] := 9326130000000000000;
    __tmp__YEARLY_MINTABLE_AMOUNT_Melon[this] := 3006000000000000000;
    __tmp__MINTING_INTERVAL_Melon[this] := 31536000;
    __tmp__council_Melon[this] := null;
    __tmp__deployer_Melon[this] := null;
    __tmp__initialSupplyMinted_Melon[this] := false;
    assume __tmp__INFLATION_ENABLE_DATE_Melon[this] >= 0;
    __tmp__nextMinting_Melon[this] := __tmp__INFLATION_ENABLE_DATE_Melon[this];
    __tmp__deployer_Melon[this] := msgsender_MSG;
    __tmp__council_Melon[this] := _council_s735;
}



implementation Melon_Melon_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    BASE_UNITS_Melon[this] := 1000000000000000000;
    INFLATION_ENABLE_DATE_Melon[this] := 1551398400;
    INITIAL_TOTAL_SUPPLY_Melon[this] := 9326130000000000000;
    YEARLY_MINTABLE_AMOUNT_Melon[this] := 3006000000000000000;
    MINTING_INTERVAL_Melon[this] := 31536000;
    council_Melon[this] := null;
    deployer_Melon[this] := null;
    initialSupplyMinted_Melon[this] := false;
    assume INFLATION_ENABLE_DATE_Melon[this] >= 0;
    nextMinting_Melon[this] := INFLATION_ENABLE_DATE_Melon[this];
    deployer_Melon[this] := msgsender_MSG;
    council_Melon[this] := _council_s735;
}



implementation Melon_Melon__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref)
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

    call ERC20Burnable_ERC20Burnable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume _decimals_s735 >= 0;
    call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, _name_s735, _symbol_s735, _decimals_s735);
    if (revert)
    {
        return;
    }

    call Melon_Melon_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _name_s735, _symbol_s735, _decimals_s735, _council_s735);
    if (revert)
    {
        return;
    }
}



implementation Melon_Melon__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s735: int, 
    _symbol_s735: int, 
    _decimals_s735: int, 
    _council_s735: Ref)
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

    call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume _decimals_s735 >= 0;
    call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, _name_s735, _symbol_s735, _decimals_s735);
    if (revert)
    {
        return;
    }

    call Melon_Melon_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _name_s735, _symbol_s735, _decimals_s735, _council_s735);
    if (revert)
    {
        return;
    }
}



implementation changeCouncil_Melon__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newCouncil_s747: Ref)
{
    call onlyCouncil_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    __tmp__council_Melon[this] := _newCouncil_s747;
}



implementation changeCouncil_Melon__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newCouncil_s747: Ref)
{
    call onlyCouncil_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    council_Melon[this] := _newCouncil_s747;
}



implementation mintInitialSupply_Melon__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _initialReceiver_s770: Ref)
{
    call onlyDeployer_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 944;
    if (!!__tmp__initialSupplyMinted_Melon[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20317;
    __tmp__initialSupplyMinted_Melon[this] := true;
    gas := gas - 7;
    assume __tmp__INITIAL_TOTAL_SUPPLY_Melon[this] >= 0;
    if (__tmp__DType[this] == Melon)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, _initialReceiver_s770, __tmp__INITIAL_TOTAL_SUPPLY_Melon[this]);
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



implementation mintInitialSupply_Melon__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _initialReceiver_s770: Ref)
{
    call onlyDeployer_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 944;
    if (!!initialSupplyMinted_Melon[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20317;
    initialSupplyMinted_Melon[this] := true;
    gas := gas - 7;
    assume INITIAL_TOTAL_SUPPLY_Melon[this] >= 0;
    if (DType[this] == Melon)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, _initialReceiver_s770, INITIAL_TOTAL_SUPPLY_Melon[this]);
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



implementation mintInflation_Melon__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_30: int;
  var __var_31: int;

    call anIntervalHasPassed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call inflationEnabled_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 941;
    if (!__tmp__initialSupplyMinted_Melon[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20244;
    assume __tmp__nextMinting_Melon[this] >= 0;
    assume __var_31 >= 0;
    assume __tmp__nextMinting_Melon[this] >= 0;
    __var_31 := __tmp__nextMinting_Melon[this];
    assume __tmp__nextMinting_Melon[this] >= 0;
    assume __tmp__MINTING_INTERVAL_Melon[this] >= 0;
    call __var_30 := add_SafeMath__fail(this, this, 0, __tmp__nextMinting_Melon[this], __tmp__MINTING_INTERVAL_Melon[this]);
    if (revert)
    {
        return;
    }

    __tmp__nextMinting_Melon[this] := __var_30;
    assume __var_30 >= 0;
    gas := gas - 304;
    assume __tmp__YEARLY_MINTABLE_AMOUNT_Melon[this] >= 0;
    if (__tmp__DType[this] == Melon)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__council_Melon[this], __tmp__YEARLY_MINTABLE_AMOUNT_Melon[this]);
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



implementation mintInflation_Melon__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_30: int;
  var __var_31: int;

    call anIntervalHasPassed_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call inflationEnabled_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 941;
    if (!initialSupplyMinted_Melon[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20244;
    assume nextMinting_Melon[this] >= 0;
    assume __var_31 >= 0;
    assume nextMinting_Melon[this] >= 0;
    __var_31 := nextMinting_Melon[this];
    assume nextMinting_Melon[this] >= 0;
    assume MINTING_INTERVAL_Melon[this] >= 0;
    call __var_30 := add_SafeMath__success(this, this, 0, nextMinting_Melon[this], MINTING_INTERVAL_Melon[this]);
    if (revert)
    {
        return;
    }

    nextMinting_Melon[this] := __var_30;
    assume __var_30 >= 0;
    gas := gas - 304;
    assume YEARLY_MINTABLE_AMOUNT_Melon[this] >= 0;
    if (DType[this] == Melon)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, council_Melon[this], YEARLY_MINTABLE_AMOUNT_Melon[this]);
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



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == Melon)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Burnable)
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
    if (DType[to] == Melon)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Burnable)
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
  var __snap___tmp___name_ERC20Detailed: [Ref]int;
  var __snap___tmp___symbol_ERC20Detailed: [Ref]int;
  var __snap___tmp___decimals_ERC20Detailed: [Ref]int;
  var __snap___tmp__BASE_UNITS_Melon: [Ref]int;
  var __snap___tmp__INFLATION_ENABLE_DATE_Melon: [Ref]int;
  var __snap___tmp__INITIAL_TOTAL_SUPPLY_Melon: [Ref]int;
  var __snap___tmp__YEARLY_MINTABLE_AMOUNT_Melon: [Ref]int;
  var __snap___tmp__MINTING_INTERVAL_Melon: [Ref]int;
  var __snap___tmp__council_Melon: [Ref]Ref;
  var __snap___tmp__deployer_Melon: [Ref]Ref;
  var __snap___tmp__initialSupplyMinted_Melon: [Ref]bool;
  var __snap___tmp__nextMinting_Melon: [Ref]int;

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
        __snap___tmp___name_ERC20Detailed := __tmp___name_ERC20Detailed;
        __snap___tmp___symbol_ERC20Detailed := __tmp___symbol_ERC20Detailed;
        __snap___tmp___decimals_ERC20Detailed := __tmp___decimals_ERC20Detailed;
        __snap___tmp__BASE_UNITS_Melon := __tmp__BASE_UNITS_Melon;
        __snap___tmp__INFLATION_ENABLE_DATE_Melon := __tmp__INFLATION_ENABLE_DATE_Melon;
        __snap___tmp__INITIAL_TOTAL_SUPPLY_Melon := __tmp__INITIAL_TOTAL_SUPPLY_Melon;
        __snap___tmp__YEARLY_MINTABLE_AMOUNT_Melon := __tmp__YEARLY_MINTABLE_AMOUNT_Melon;
        __snap___tmp__MINTING_INTERVAL_Melon := __tmp__MINTING_INTERVAL_Melon;
        __snap___tmp__council_Melon := __tmp__council_Melon;
        __snap___tmp__deployer_Melon := __tmp__deployer_Melon;
        __snap___tmp__initialSupplyMinted_Melon := __tmp__initialSupplyMinted_Melon;
        __snap___tmp__nextMinting_Melon := __tmp__nextMinting_Melon;
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
        __tmp___name_ERC20Detailed := __snap___tmp___name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := __snap___tmp___symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := __snap___tmp___decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := __snap___tmp__BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := __snap___tmp__INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := __snap___tmp__INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := __snap___tmp__YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := __snap___tmp__MINTING_INTERVAL_Melon;
        __tmp__council_Melon := __snap___tmp__council_Melon;
        __tmp__deployer_Melon := __snap___tmp__deployer_Melon;
        __tmp__initialSupplyMinted_Melon := __snap___tmp__initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := __snap___tmp__nextMinting_Melon;
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
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp__BASE_UNITS_Melon := BASE_UNITS_Melon;
        __tmp__INFLATION_ENABLE_DATE_Melon := INFLATION_ENABLE_DATE_Melon;
        __tmp__INITIAL_TOTAL_SUPPLY_Melon := INITIAL_TOTAL_SUPPLY_Melon;
        __tmp__YEARLY_MINTABLE_AMOUNT_Melon := YEARLY_MINTABLE_AMOUNT_Melon;
        __tmp__MINTING_INTERVAL_Melon := MINTING_INTERVAL_Melon;
        __tmp__council_Melon := council_Melon;
        __tmp__deployer_Melon := deployer_Melon;
        __tmp__initialSupplyMinted_Melon := initialSupplyMinted_Melon;
        __tmp__nextMinting_Melon := nextMinting_Melon;
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



implementation onlyDeployer_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 908;
    if (!(msgsender_MSG == __tmp__deployer_Melon[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyDeployer_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 908;
    if (!(msgsender_MSG == deployer_Melon[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyCouncil_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 958;
    if (!(msgsender_MSG == __tmp__council_Melon[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyCouncil_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 958;
    if (!(msgsender_MSG == council_Melon[this]))
    {
        revert := true;
        return;
    }
}



implementation anIntervalHasPassed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_29: int;

    gas := gas - 870;
    assume __tmp__now >= 0;
    assume __var_29 >= 0;
    assume __tmp__nextMinting_Melon[this] >= 0;
    __var_29 := __tmp__nextMinting_Melon[this];
    assume __tmp__nextMinting_Melon[this] >= 0;
    if (!(__tmp__now >= __tmp__nextMinting_Melon[this]))
    {
        revert := true;
        return;
    }
}



implementation anIntervalHasPassed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_29: int;

    gas := gas - 870;
    assume now >= 0;
    assume __var_29 >= 0;
    assume nextMinting_Melon[this] >= 0;
    __var_29 := nextMinting_Melon[this];
    assume nextMinting_Melon[this] >= 0;
    if (!(now >= nextMinting_Melon[this]))
    {
        revert := true;
        return;
    }
}



implementation inflationEnabled_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 660;
    assume __tmp__now >= 0;
    assume __tmp__INFLATION_ENABLE_DATE_Melon[this] >= 0;
    if (!(__tmp__now >= __tmp__INFLATION_ENABLE_DATE_Melon[this]))
    {
        revert := true;
        return;
    }
}



implementation inflationEnabled_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 660;
    assume now >= 0;
    assume INFLATION_ENABLE_DATE_Melon[this] >= 0;
    if (!(now >= INFLATION_ENABLE_DATE_Melon[this]))
    {
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
    assume DType[msgsender_MSG] != ERC20Burnable;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Melon;
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
       || DType[this] == ERC20Burnable
       || DType[this] == ERC20Detailed
       || DType[this] == Melon;
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
    assume DType[msgsender_MSG] != ERC20Burnable;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Melon;
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
  var from_s274: Ref;
  var to_s274: Ref;
  var value_s274: int;
  var __ret_0_transferFrom: bool;
  var spender_s323: Ref;
  var addedValue_s323: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s372: Ref;
  var subtractedValue_s372: int;
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
    havoc from_s274;
    havoc to_s274;
    havoc value_s274;
    havoc __ret_0_transferFrom;
    havoc spender_s323;
    havoc addedValue_s323;
    havoc __ret_0_increaseAllowance;
    havoc spender_s372;
    havoc subtractedValue_s372;
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
    assume DType[msgsender_MSG] != ERC20Burnable;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Melon;
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
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
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
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s372, subtractedValue_s372);
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
    assume DType[this] == ERC20 || DType[this] == ERC20Burnable || DType[this] == Melon;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_ERC20Burnable(this: Ref)
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
  var from_s274: Ref;
  var to_s274: Ref;
  var value_s274: int;
  var __ret_0_transferFrom: bool;
  var spender_s323: Ref;
  var addedValue_s323: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s372: Ref;
  var subtractedValue_s372: int;
  var __ret_0_decreaseAllowance: bool;
  var value_s559: int;
  var from_s572: Ref;
  var value_s572: int;
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
    havoc from_s274;
    havoc to_s274;
    havoc value_s274;
    havoc __ret_0_transferFrom;
    havoc spender_s323;
    havoc addedValue_s323;
    havoc __ret_0_increaseAllowance;
    havoc spender_s372;
    havoc subtractedValue_s372;
    havoc __ret_0_decreaseAllowance;
    havoc value_s559;
    havoc from_s572;
    havoc value_s572;
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
    assume DType[msgsender_MSG] != ERC20Burnable;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Melon;
    Alloc[msgsender_MSG] := true;
    if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s154);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s170, spender_s170);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s189, value_s189);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s225, value_s225);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s323, addedValue_s323);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s372, subtractedValue_s372);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, value_s559);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burnFrom_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
    }
}



implementation CorralEntry_ERC20Burnable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Burnable || DType[this] == Melon;
    gas := gas - 53000;
    call ERC20Burnable_ERC20Burnable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Burnable(this);
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
  var name_s603: int;
  var symbol_s603: int;
  var decimals_s603: int;
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
    havoc name_s603;
    havoc symbol_s603;
    havoc decimals_s603;
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != ERC20Burnable;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Melon;
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
  var name_s603: int;
  var symbol_s603: int;
  var decimals_s603: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Detailed || DType[this] == Melon;
    gas := gas - 53000;
    call ERC20Detailed_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG, name_s603, symbol_s603, decimals_s603);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Detailed(this);
    }
}



implementation CorralChoice_Melon(this: Ref)
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
  var from_s274: Ref;
  var to_s274: Ref;
  var value_s274: int;
  var __ret_0_transferFrom: bool;
  var spender_s323: Ref;
  var addedValue_s323: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s372: Ref;
  var subtractedValue_s372: int;
  var __ret_0_decreaseAllowance: bool;
  var value_s559: int;
  var from_s572: Ref;
  var value_s572: int;
  var name_s603: int;
  var symbol_s603: int;
  var decimals_s603: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;
  var _name_s735: int;
  var _symbol_s735: int;
  var _decimals_s735: int;
  var _council_s735: Ref;
  var _newCouncil_s747: Ref;
  var _initialReceiver_s770: Ref;
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
    havoc from_s274;
    havoc to_s274;
    havoc value_s274;
    havoc __ret_0_transferFrom;
    havoc spender_s323;
    havoc addedValue_s323;
    havoc __ret_0_increaseAllowance;
    havoc spender_s372;
    havoc subtractedValue_s372;
    havoc __ret_0_decreaseAllowance;
    havoc value_s559;
    havoc from_s572;
    havoc value_s572;
    havoc name_s603;
    havoc symbol_s603;
    havoc decimals_s603;
    havoc __ret_0_name;
    havoc __ret_0_symbol;
    havoc __ret_0_decimals;
    havoc _name_s735;
    havoc _symbol_s735;
    havoc _decimals_s735;
    havoc _council_s735;
    havoc _newCouncil_s747;
    havoc _initialReceiver_s770;
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
    assume DType[msgsender_MSG] != ERC20Burnable;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != Melon;
    Alloc[msgsender_MSG] := true;
    if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s154);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s170, spender_s170);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s189, value_s189);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s225, value_s225);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s274, to_s274, value_s274);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s323, addedValue_s323);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s372, subtractedValue_s372);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, value_s559);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burnFrom_ERC20Burnable(this, msgsender_MSG, msgvalue_MSG, from_s572, value_s572);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_name := name_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_symbol := symbol_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decimals := decimals_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call changeCouncil_Melon(this, msgsender_MSG, msgvalue_MSG, _newCouncil_s747);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call mintInitialSupply_Melon(this, msgsender_MSG, msgvalue_MSG, _initialReceiver_s770);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call mintInflation_Melon(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _name_s735: int;
  var _symbol_s735: int;
  var _decimals_s735: int;
  var _council_s735: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Melon;
    gas := gas - 53000;
    call Melon_Melon(this, msgsender_MSG, msgvalue_MSG, _name_s735, _symbol_s735, _decimals_s735, _council_s735);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Melon(this);
    }
}


