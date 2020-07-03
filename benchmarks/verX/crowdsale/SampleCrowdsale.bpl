// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:SampleCrowdsale.bpl /pretty:1 /noVerify /noinfer /noTypecheck __SolToBoogieTest_out.bpl

// LTLProperty: [](finished(*, false))

// spec1 
// LTLProperty: [](!finished(*, _weiRaised_Crowdsale[crowdsale_Deployer[this]] > _cap_CappedCrowdsale[crowdsale_Deployer[this]]))

// spec2 
// LTLProperty: [](!finished(*, old(_state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]]) == 1 && _state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]] != 1))

// spec3 
// LTLProperty: [](!finished(*, old(_state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]]) == 2 && _state_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]] != 2))

// spec4 
// LTLProperty: [](!finished(RefundEscrow.deposit, _state_RefundEscrow[this] != 0))

// spec5 
// LTLProperty: [](!finished(*, _wallet_Crowdsale[crowdsale_Deployer[this]] != _beneficiary_RefundEscrow[_escrow_RefundableCrowdsale[crowdsale_Deployer[this]]] || _wallet_Crowdsale[crowdsale_Deployer[this]] != 0x5555555555555555555555555555555555555555))

// spec6
// LTLProperty: [](!finished(Crowdsale.buyTokens, Balance[_escrow_RefundableCrowdsale[this]] >= (old(Balance[_escrow_RefundableCrowdsale[this]]) + msg.value)))

// spec7
// LTLProperty: [](!finished(RefundEscrow.deposit, msg.sender != _primary_Secondary[this]) && !finished(ConditionalEscrow.withdraw, msg.sender != _primary_Secondary[this]) && !finished(RefundEscrow.close, msg.sender != _primary_Secondary[this]) && !finished(RefundEscrow.enableRefunds, msg.sender != _primary_Secondary[this]))

// spec8
// LTLProperty: [](!finished(*, _token_Crowdsale[crowdsale_Deployer[this]] != token_Deployer[this]))

// spec9
// #LTLProperty: [](!finished(*, _escrow_RefundableCrowdsale[crowdsale_Deployer[this]] != escrow_Deployer[this]))

type Ref = int;

type ContractName = int;

var null: Ref;

var SafeMath: ContractName;

var IERC20: ContractName;

var SafeERC20: ContractName;

var ReentrancyGuard: ContractName;

var Crowdsale: ContractName;

var TimedCrowdsale: ContractName;

var FinalizableCrowdsale: ContractName;

var Secondary: ContractName;

var Escrow: ContractName;

var ConditionalEscrow: ContractName;

var RefundEscrow: ContractName;

var RefundableCrowdsale: ContractName;

var ERC20: ContractName;

var Roles: ContractName;

var Roles.Role: ContractName;

var MinterRole: ContractName;

var ERC20Mintable: ContractName;

var MintedCrowdsale: ContractName;

var CappedCrowdsale: ContractName;

var ERC20Detailed: ContractName;

var ERC20TokenMetadata: ContractName;

var ERC20WithMetadata: ContractName;

var SampleCrowdsaleToken: ContractName;

var SampleCrowdsale: ContractName;

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

var M_Ref_int__deposits0: [Ref][Ref]int;

var sum__deposits0: [Ref]int;

var M_Ref_int__balances1: [Ref][Ref]int;

var sum__balances1: [Ref]int;

var M_Ref_int__allowed2: [Ref][Ref]int;

var M_Ref_Ref__allowed2: [Ref][Ref]Ref;

var sum__allowed2: [Ref]int;

var M_Ref_bool: [Ref][Ref]bool;

var sum: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
  modifies bearer_Roles.Role;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s59: Ref, value_s59: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s68: Ref, 
    value_s68: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s79: Ref, 
    to_s79: Ref, 
    value_s79: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s91: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s100: Ref, 
    spender_s100: Ref)
   returns (__ret_0_: int);



procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance;



implementation SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call SafeERC20_SafeERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} safeTransfer_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s138: Ref, 
    to_s138: Ref, 
    value_s138: int);
  modifies gas, revert, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s159: Ref, 
    from_s159: Ref, 
    to_s159: Ref, 
    value_s159: int);
  modifies revert, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s195: Ref, 
    spender_s195: Ref, 
    value_s195: int);
  modifies revert, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s226: Ref, 
    spender_s226: Ref, 
    value_s226: int);
  modifies revert, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s257: Ref, 
    spender_s257: Ref, 
    value_s257: int);
  modifies revert, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



var {:access "this._guardCounter=_guardCounter_ReentrancyGuard[this]"} _guardCounter_ReentrancyGuard: [Ref]int;

procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _guardCounter_ReentrancyGuard;



procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _guardCounter_ReentrancyGuard;



implementation ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this._token=_token_Crowdsale[this]"} _token_Crowdsale: [Ref]Ref;

var {:access "this._wallet=_wallet_Crowdsale[this]"} _wallet_Crowdsale: [Ref]Ref;

var {:access "this._rate=_rate_Crowdsale[this]"} _rate_Crowdsale: [Ref]int;

var {:access "this._weiRaised=_weiRaised_Crowdsale[this]"} _weiRaised_Crowdsale: [Ref]int;

procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref);
  modifies Balance, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale;



procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, _token_Crowdsale;



implementation Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s356, wallet_s356, token_s356);
        assume revert || gas < 0;
    }
    else
    {
        call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s356, wallet_s356, token_s356);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, revert, sum__deposits0, M_Ref_int__deposits0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} wallet_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation wallet_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := wallet_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := wallet_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} rate_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation rate_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := rate_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := rate_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} weiRaised_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation weiRaised_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s454: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s454: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s476: Ref, 
    weiAmount_s476: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s484: Ref, 
    weiAmount_s484: int);



procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s500: Ref, 
    tokenAmount_s500: int);
  modifies gas, revert, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s513: Ref, 
    tokenAmount_s513: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s521: Ref, 
    weiAmount_s521: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s531: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



var {:access "this._openingTime=_openingTime_TimedCrowdsale[this]"} _openingTime_TimedCrowdsale: [Ref]int;

var {:access "this._closingTime=_closingTime_TimedCrowdsale[this]"} _closingTime_TimedCrowdsale: [Ref]int;

procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int);
  modifies Balance, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _guardCounter_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale;



implementation TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s590, closingTime_s590);
        assume revert || gas < 0;
    }
    else
    {
        call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s590, closingTime_s590);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := openingTime_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := openingTime_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} closingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation closingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := closingTime_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := closingTime_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isOpen_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation isOpen_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s650: Ref, 
    weiAmount_s650: int);
  modifies gas, revert;



var {:access "this._finalized=_finalized_FinalizableCrowdsale[this]"} _finalized_FinalizableCrowdsale: [Ref]bool;

procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _finalized_FinalizableCrowdsale;



procedure {:constructor} {:public} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _guardCounter_ReentrancyGuard, _finalized_FinalizableCrowdsale;



implementation FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} finalized_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation finalized_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := finalized_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := finalized_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, _finalized_FinalizableCrowdsale, _state_RefundEscrow, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



implementation finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call finalize_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call finalize_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



var {:access "this._primary=_primary_Secondary[this]"} _primary_Secondary: [Ref]Ref;

procedure {:inline 1} Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary;



procedure {:constructor} {:public} {:inline 1} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _primary_Secondary;



implementation Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} primary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation primary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := primary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := primary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s767: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, _primary_Secondary;



implementation transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s767: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call transferPrimary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s767);
        assume revert || gas < 0;
    }
    else
    {
        call transferPrimary_Secondary__success(this, msgsender_MSG, msgvalue_MSG, recipient_s767);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, Alloc;



procedure {:inline 1} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, Alloc;



implementation Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this._deposits[i0]=M_Ref_int__deposits0[_deposits_Escrow[this]][i0]"} {:sum "sum(this._deposits)=sum__deposits0[_deposits_Escrow[this]]"} _deposits_Escrow: [Ref]Ref;

procedure {:public} {:inline 1} depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s801: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s801: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := depositsOf_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s801);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := depositsOf_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s801);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s830: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, sum__deposits0, M_Ref_int__deposits0;



implementation deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s830: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call deposit_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s830);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s830);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s861: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, sum__deposits0, M_Ref_int__deposits0, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



implementation withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s861: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s861);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s861);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, Alloc;



implementation ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call ConditionalEscrow_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawalAllowed_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s871: Ref)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s889: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, sum__deposits0, M_Ref_int__deposits0, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



implementation withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s889: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call withdraw_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s889);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s889);
        assume !revert && gas >= 0;
    }
}



var {:access "this._state=_state_RefundEscrow[this]"} _state_RefundEscrow: [Ref]int;

var {:access "this._beneficiary=_beneficiary_RefundEscrow[this]"} _beneficiary_RefundEscrow: [Ref]Ref;

procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref);
  modifies Balance, _beneficiary_RefundEscrow, revert, _state_RefundEscrow;



procedure {:constructor} {:public} {:inline 1} RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, Alloc, _beneficiary_RefundEscrow, _state_RefundEscrow;



implementation RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call RefundEscrow_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s927);
        assume revert || gas < 0;
    }
    else
    {
        call RefundEscrow_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s927);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := state_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := state_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} beneficiary_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation beneficiary_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := beneficiary_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := beneficiary_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s962: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, sum__deposits0, M_Ref_int__deposits0;



implementation deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s962: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call deposit_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s962);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s962);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, _state_RefundEscrow;



implementation close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call close_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call close_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} enableRefunds_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, _state_RefundEscrow;



implementation enableRefunds_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call enableRefunds_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call enableRefunds_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} beneficiaryWithdraw_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



implementation beneficiaryWithdraw_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call beneficiaryWithdraw_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call beneficiaryWithdraw_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawalAllowed_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation withdrawalAllowed_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, __param_0_);
        assume !revert && gas >= 0;
    }
}



var {:access "this._goal=_goal_RefundableCrowdsale[this]"} _goal_RefundableCrowdsale: [Ref]int;

var {:access "this._escrow=_escrow_RefundableCrowdsale[this]"} _escrow_RefundableCrowdsale: [Ref]Ref;

procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int);
  modifies Balance, _goal_RefundableCrowdsale, revert, _escrow_RefundableCrowdsale, Alloc, gas, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow;



procedure {:constructor} {:public} {:inline 1} RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, _guardCounter_ReentrancyGuard, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, Alloc, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow;



implementation RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call RefundableCrowdsale_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, goal_s1071);
        assume revert || gas < 0;
    }
    else
    {
        call RefundableCrowdsale_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, goal_s1071);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := goal_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := goal_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1102: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, sum__deposits0, M_Ref_int__deposits0, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



implementation claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1102: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call claimRefund_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s1102);
        assume revert || gas < 0;
    }
    else
    {
        call claimRefund_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, refundee_s1102);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _finalization_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} _forwardFunds_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, Balance, revert, sum__deposits0, M_Ref_int__deposits0;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, Alloc;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this._balances[i0]=M_Ref_int__balances1[_balances_ERC20[this]][i0]"} {:sum "sum(this._balances)=sum__balances1[_balances_ERC20[this]]"} _balances_ERC20: [Ref]Ref;

var {:access "this._allowed[i0][i1]=M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][i0]][i1]"} {:sum "sum(this._allowed)=sum__allowed2[_allowed_ERC20[this]]"} _allowed_ERC20: [Ref]Ref;

var {:access "this._totalSupply=_totalSupply_ERC20[this]"} _totalSupply_ERC20: [Ref]int;

procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := totalSupply_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s1196: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s1196: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := balanceOf_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s1196);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := balanceOf_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s1196);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s1212: Ref, 
    spender_s1212: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



implementation allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s1212: Ref, 
    spender_s1212: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := allowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, owner_s1212, spender_s1212);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, owner_s1212, spender_s1212);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1231: Ref, 
    value_s1231: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, sum__balances1, M_Ref_int__balances1;



implementation transfer_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1231: Ref, 
    value_s1231: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s1231, value_s1231);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s1231, value_s1231);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1267: Ref, 
    value_s1267: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



implementation approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1267: Ref, 
    value_s1267: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := approve_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s1267, value_s1267);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s1267, value_s1267);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1316: Ref, 
    to_s1316: Ref, 
    value_s1316: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc, sum__balances1, M_Ref_int__balances1;



implementation transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1316: Ref, 
    to_s1316: Ref, 
    value_s1316: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := transferFrom_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1365: Ref, 
    addedValue_s1365: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



implementation increaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1365: Ref, 
    addedValue_s1365: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := increaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s1365, addedValue_s1365);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s1365, addedValue_s1365);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1414: Ref, 
    subtractedValue_s1414: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



implementation decreaseAllowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1414: Ref, 
    subtractedValue_s1414: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := decreaseAllowance_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, spender_s1414, subtractedValue_s1414);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseAllowance_ERC20__success(this, msgsender_MSG, msgvalue_MSG, spender_s1414, subtractedValue_s1414);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1460: Ref, 
    to_s1460: Ref, 
    value_s1460: int);
  modifies gas, revert, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1502: Ref, 
    value_s1502: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1544: Ref, 
    value_s1544: int);
  modifies revert, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1, gas;



procedure {:inline 1} _burnFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1586: Ref, 
    value_s1586: int);
  modifies M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc, gas, revert, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance;



implementation Roles_Roles(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call Roles_Roles__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var bearer_Roles.Role: [Ref]Ref;

procedure {:inline 1} add_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1624: Ref, 
    account_s1624: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1655: Ref, 
    account_s1655: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1678: Ref, 
    account_s1678: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



var {:access "this._minters=_minters_MinterRole[this]"} _minters_MinterRole: [Ref]Ref;

procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _minters_MinterRole, Alloc, gas, revert, M_Ref_bool;



procedure {:constructor} {:public} {:inline 1} MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, _minters_MinterRole, Alloc, M_Ref_bool;



implementation MinterRole_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1725: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation isMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1725: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1725);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1725);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1737: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, M_Ref_bool;



implementation addMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1737: Ref)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1737);
        assume revert || gas < 0;
    }
    else
    {
        call addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1737);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, M_Ref_bool;



implementation renounceMinter_MinterRole(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call renounceMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call renounceMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1762: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1778: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, Alloc, _minters_MinterRole, M_Ref_bool;



implementation ERC20Mintable_ERC20Mintable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call ERC20Mintable_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} mint_ERC20Mintable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1802: Ref, 
    value_s1802: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



implementation mint_ERC20Mintable(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1802: Ref, 
    value_s1802: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := mint_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := mint_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} MintedCrowdsale_MintedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} MintedCrowdsale_MintedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _guardCounter_ReentrancyGuard;



implementation MintedCrowdsale_MintedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call MintedCrowdsale_MintedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MintedCrowdsale_MintedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _deliverTokens_MintedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1826: Ref, 
    tokenAmount_s1826: int);
  modifies gas, revert, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



var {:access "this._cap=_cap_CappedCrowdsale[this]"} _cap_CappedCrowdsale: [Ref]int;

procedure {:inline 1} CappedCrowdsale_CappedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int);
  modifies Balance, _cap_CappedCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} CappedCrowdsale_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _guardCounter_ReentrancyGuard, _cap_CappedCrowdsale;



implementation CappedCrowdsale_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call CappedCrowdsale_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, cap_s1850);
        assume revert || gas < 0;
    }
    else
    {
        call CappedCrowdsale_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, cap_s1850);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} cap_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation cap_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := cap_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := cap_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} capReached_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



implementation capReached_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := capReached_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := capReached_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_CappedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1894: Ref, 
    weiAmount_s1894: int);
  modifies gas, revert;



var {:access "this._name=_name_ERC20Detailed[this]"} _name_ERC20Detailed: [Ref]int;

var {:access "this._symbol=_symbol_ERC20Detailed[this]"} _symbol_ERC20Detailed: [Ref]int;

var {:access "this._decimals=_decimals_ERC20Detailed[this]"} _decimals_ERC20Detailed: [Ref]int;

procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:public} {:inline 1} ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



implementation ERC20Detailed_ERC20Detailed(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, name_s1925, symbol_s1925, decimals_s1925);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, name_s1925, symbol_s1925, decimals_s1925);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} name_ERC20Detailed(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := decimals_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decimals_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ERC20TokenMetadata_ERC20TokenMetadata_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20TokenMetadata_ERC20TokenMetadata(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance;



implementation ERC20TokenMetadata_ERC20TokenMetadata(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call ERC20TokenMetadata_ERC20TokenMetadata__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20TokenMetadata_ERC20TokenMetadata__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} tokenURI_ERC20TokenMetadata(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



var {:access "this._tokenURI=_tokenURI_ERC20WithMetadata[this]"} _tokenURI_ERC20WithMetadata: [Ref]int;

procedure {:inline 1} ERC20WithMetadata_ERC20WithMetadata_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int);
  modifies Balance, _tokenURI_ERC20WithMetadata;



procedure {:constructor} {:public} {:inline 1} ERC20WithMetadata_ERC20WithMetadata(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _tokenURI_ERC20WithMetadata;



implementation ERC20WithMetadata_ERC20WithMetadata(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call ERC20WithMetadata_ERC20WithMetadata__fail(this, msgsender_MSG, msgvalue_MSG, tokenURI_s1972);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20WithMetadata_ERC20WithMetadata__success(this, msgsender_MSG, msgvalue_MSG, tokenURI_s1972);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} tokenURI_ERC20WithMetadata(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



implementation tokenURI_ERC20WithMetadata(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call __ret_0_ := tokenURI_ERC20WithMetadata__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := tokenURI_ERC20WithMetadata__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} SampleCrowdsaleToken_SampleCrowdsaleToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:constructor} {:public} {:inline 1} SampleCrowdsaleToken_SampleCrowdsaleToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, Alloc, _minters_MinterRole, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, M_Ref_bool;



implementation SampleCrowdsaleToken_SampleCrowdsaleToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call SampleCrowdsaleToken_SampleCrowdsaleToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SampleCrowdsaleToken_SampleCrowdsaleToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} SampleCrowdsale_SampleCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int);
  modifies Balance, revert;



procedure {:constructor} {:public} {:inline 1} SampleCrowdsale_SampleCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, _token_Crowdsale, _cap_CappedCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, Alloc, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow;



implementation SampleCrowdsale_SampleCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int)
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
        call SampleCrowdsale_SampleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s2040, closingTime_s2040, rate_s2040, wallet_s2040, cap_s2040, token_s2040, goal_s2040);
        assume revert || gas < 0;
    }
    else
    {
        call SampleCrowdsale_SampleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s2040, closingTime_s2040, rate_s2040, wallet_s2040, cap_s2040, token_s2040, goal_s2040);
        assume !revert && gas >= 0;
    }
}



var {:access "this.token=token_Deployer[this]"} token_Deployer: [Ref]Ref;

var {:access "this.crowdsale=crowdsale_Deployer[this]"} crowdsale_Deployer: [Ref]Ref;

var {:access "this.escrow=escrow_Deployer[this]"} escrow_Deployer: [Ref]Ref;

procedure {:inline 1} Deployer_Deployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, token_Deployer, crowdsale_Deployer, escrow_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, _minters_MinterRole, gas, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale, _cap_CappedCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow, M_Ref_bool;



procedure {:constructor} {:public} {:inline 1} Deployer_Deployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, gas, Balance, token_Deployer, crowdsale_Deployer, escrow_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, _minters_MinterRole, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, _token_Crowdsale, _cap_CappedCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow, M_Ref_bool;



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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
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
  modifies Balance, gas, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, revert, sum__deposits0, M_Ref_int__deposits0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, revert, gas, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__out_mod_localCounter_s285: int);
  modifies gas, _guardCounter_ReentrancyGuard;



procedure {:inline 1} onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, localCounter_s285: int);
  modifies gas, revert;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_IERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_IERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ReentrancyGuard(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ReentrancyGuard();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _guardCounter_ReentrancyGuard;



procedure CorralChoice_Crowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_Crowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _token_Crowdsale, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_TimedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_TimedCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_FinalizableCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _state_RefundEscrow, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_FinalizableCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _state_RefundEscrow, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_Secondary(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _primary_Secondary;



procedure CorralEntry_Secondary();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, _primary_Secondary, Balance;



procedure CorralChoice_Escrow(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _primary_Secondary, Balance, sum__deposits0, M_Ref_int__deposits0, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_Escrow();
  modifies gas, Alloc, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_ConditionalEscrow(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _primary_Secondary, Balance, sum__deposits0, M_Ref_int__deposits0, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_ConditionalEscrow();
  modifies gas, Alloc, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_RefundEscrow(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _primary_Secondary, Balance, _state_RefundEscrow, sum__deposits0, M_Ref_int__deposits0, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_RefundEscrow();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, _primary_Secondary, Balance, _state_RefundEscrow, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_RefundableCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _primary_Secondary, Balance, _state_RefundEscrow, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, sum__deposits0, M_Ref_int__deposits0, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_RefundableCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, _primary_Secondary, Balance, _state_RefundEscrow, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _guardCounter_ReentrancyGuard, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, sum__allowed2;



procedure CorralChoice_Roles(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Roles();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_MinterRole(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, M_Ref_bool;



procedure CorralEntry_MinterRole();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _minters_MinterRole, M_Ref_bool;



procedure CorralChoice_ERC20Mintable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, sum__balances1, M_Ref_int__balances1, _totalSupply_ERC20, M_Ref_bool;



procedure CorralEntry_ERC20Mintable();
  modifies gas, Alloc, Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, _minters_MinterRole, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, sum__allowed2, M_Ref_bool;



procedure CorralChoice_MintedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_MintedCrowdsale();
  modifies gas, Alloc, Balance, _guardCounter_ReentrancyGuard, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _weiRaised_Crowdsale, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_CappedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_CappedCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _cap_CappedCrowdsale, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_ERC20Detailed(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure CorralEntry_ERC20Detailed();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure CorralChoice_ERC20TokenMetadata(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20TokenMetadata();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20WithMetadata(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure CorralEntry_ERC20WithMetadata();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _tokenURI_ERC20WithMetadata;



procedure CorralChoice_SampleCrowdsaleToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, sum__balances1, M_Ref_int__balances1, _totalSupply_ERC20, M_Ref_bool;



procedure CorralEntry_SampleCrowdsaleToken();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, _totalSupply_ERC20, _minters_MinterRole, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, M_Ref_bool;



procedure CorralChoice_SampleCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _state_RefundEscrow, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralEntry_SampleCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _token_Crowdsale, _cap_CappedCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure CorralChoice_Deployer(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _primary_Secondary, Balance, _state_RefundEscrow, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, sum__deposits0, M_Ref_int__deposits0, _guardCounter_ReentrancyGuard, sum__balances1, M_Ref_int__balances1, _totalSupply_ERC20, M_Ref_bool;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, now, _primary_Secondary, Balance, _state_RefundEscrow, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, token_Deployer, crowdsale_Deployer, escrow_Deployer, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, _totalSupply_ERC20, _minters_MinterRole, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _token_Crowdsale, _cap_CappedCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, M_Ref_bool;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int__deposits0: [Ref][Ref]int;

var __tmp__sum__deposits0: [Ref]int;

var __tmp__M_Ref_int__balances1: [Ref][Ref]int;

var __tmp__sum__balances1: [Ref]int;

var __tmp__M_Ref_int__allowed2: [Ref][Ref]int;

var __tmp__M_Ref_Ref__allowed2: [Ref][Ref]Ref;

var __tmp__sum__allowed2: [Ref]int;

var __tmp__M_Ref_bool: [Ref][Ref]bool;

var __tmp__sum: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp___guardCounter_ReentrancyGuard: [Ref]int;

var __tmp___token_Crowdsale: [Ref]Ref;

var __tmp___wallet_Crowdsale: [Ref]Ref;

var __tmp___rate_Crowdsale: [Ref]int;

var __tmp___weiRaised_Crowdsale: [Ref]int;

var __tmp___openingTime_TimedCrowdsale: [Ref]int;

var __tmp___closingTime_TimedCrowdsale: [Ref]int;

var __tmp___finalized_FinalizableCrowdsale: [Ref]bool;

var __tmp___primary_Secondary: [Ref]Ref;

var __tmp___deposits_Escrow: [Ref]Ref;

var __tmp___state_RefundEscrow: [Ref]int;

var __tmp___beneficiary_RefundEscrow: [Ref]Ref;

var __tmp___goal_RefundableCrowdsale: [Ref]int;

var __tmp___escrow_RefundableCrowdsale: [Ref]Ref;

var __tmp___balances_ERC20: [Ref]Ref;

var __tmp___allowed_ERC20: [Ref]Ref;

var __tmp___totalSupply_ERC20: [Ref]int;

var __tmp__bearer_Roles.Role: [Ref]Ref;

var __tmp___minters_MinterRole: [Ref]Ref;

var __tmp___cap_CappedCrowdsale: [Ref]int;

var __tmp___name_ERC20Detailed: [Ref]int;

var __tmp___symbol_ERC20Detailed: [Ref]int;

var __tmp___decimals_ERC20Detailed: [Ref]int;

var __tmp___tokenURI_ERC20WithMetadata: [Ref]int;

var __tmp__token_Deployer: [Ref]Ref;

var __tmp__crowdsale_Deployer: [Ref]Ref;

var __tmp__escrow_Deployer: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref);
  modifies __tmp__bearer_Roles.Role;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s138: Ref, 
    to_s138: Ref, 
    value_s138: int);
  modifies gas, revert, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s159: Ref, 
    from_s159: Ref, 
    to_s159: Ref, 
    value_s159: int);
  modifies revert, gas, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s195: Ref, 
    spender_s195: Ref, 
    value_s195: int);
  modifies revert, gas, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s226: Ref, 
    spender_s226: Ref, 
    value_s226: int);
  modifies revert, gas, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s257: Ref, 
    spender_s257: Ref, 
    value_s257: int);
  modifies revert, gas, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc;



procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _guardCounter_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard;



procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref);
  modifies __tmp__Balance, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref);
  modifies Balance, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale;



procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, __tmp___guardCounter_ReentrancyGuard, revert, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s454: Ref);
  modifies Balance, gas, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, revert, sum__deposits0, M_Ref_int__deposits0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s454: Ref);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, __tmp___guardCounter_ReentrancyGuard, revert, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s476: Ref, 
    weiAmount_s476: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s484: Ref, 
    weiAmount_s484: int);



procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s500: Ref, 
    tokenAmount_s500: int);
  modifies gas, revert, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s513: Ref, 
    tokenAmount_s513: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s521: Ref, 
    weiAmount_s521: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s531: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int);
  modifies __tmp__Balance, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int);
  modifies Balance, _guardCounter_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



procedure {:inline 1} openingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} openingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} closingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} closingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} isOpen_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} isOpen_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s650: Ref, 
    weiAmount_s650: int);
  modifies gas, revert;



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___finalized_FinalizableCrowdsale;



procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _guardCounter_ReentrancyGuard, _finalized_FinalizableCrowdsale;



procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard, __tmp___finalized_FinalizableCrowdsale;



procedure {:inline 1} finalized_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} finalized_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _finalized_FinalizableCrowdsale, _state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___finalized_FinalizableCrowdsale, __tmp___state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary;



procedure {:constructor} {:inline 1} Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary;



procedure {:constructor} {:inline 1} Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary;



procedure {:inline 1} primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s767: Ref);
  modifies gas, revert, _primary_Secondary;



procedure {:inline 1} transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s767: Ref);
  modifies gas, revert, __tmp___primary_Secondary;



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__Alloc;



procedure {:inline 1} Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, Alloc;



procedure {:inline 1} Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__Alloc;



procedure {:inline 1} depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s801: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s801: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s830: Ref);
  modifies Balance, gas, sum__deposits0, M_Ref_int__deposits0, revert;



procedure {:inline 1} deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s830: Ref);
  modifies __tmp__Balance, gas, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0, revert;



procedure {:inline 1} withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s861: Ref);
  modifies gas, sum__deposits0, M_Ref_int__deposits0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s861: Ref);
  modifies gas, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, Alloc;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__Alloc;



procedure {:inline 1} withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s889: Ref);
  modifies gas, revert, sum__deposits0, M_Ref_int__deposits0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s889: Ref);
  modifies gas, revert, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref);
  modifies __tmp__Balance, __tmp___beneficiary_RefundEscrow, revert, __tmp___state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref);
  modifies Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, Alloc, _beneficiary_RefundEscrow, revert, _state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref);
  modifies __tmp__Balance, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__Alloc, __tmp___beneficiary_RefundEscrow, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} state_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} state_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} beneficiary_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} beneficiary_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s962: Ref);
  modifies Balance, gas, revert, sum__deposits0, M_Ref_int__deposits0;



procedure {:inline 1} deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s962: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0;



procedure {:inline 1} close_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _state_RefundEscrow;



procedure {:inline 1} close_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} enableRefunds_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _state_RefundEscrow;



procedure {:inline 1} enableRefunds_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, sum__deposits0, M_Ref_int__deposits0, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} withdrawalAllowed_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} withdrawalAllowed_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int);
  modifies __tmp__Balance, __tmp___goal_RefundableCrowdsale, revert, __tmp___escrow_RefundableCrowdsale, __tmp__Alloc, gas, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp___beneficiary_RefundEscrow, __tmp___state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int);
  modifies Balance, _guardCounter_ReentrancyGuard, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, revert, _escrow_RefundableCrowdsale, Alloc, gas, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, revert, __tmp___escrow_RefundableCrowdsale, __tmp__Alloc, gas, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp___beneficiary_RefundEscrow, __tmp___state_RefundEscrow;



procedure {:inline 1} goal_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} goal_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} claimRefund_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1102: Ref);
  modifies gas, revert, sum__deposits0, M_Ref_int__deposits0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, Balance, _weiRaised_Crowdsale, _guardCounter_ReentrancyGuard, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} claimRefund_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1102: Ref);
  modifies gas, revert, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} goalReached_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} goalReached_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} _finalization_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} _forwardFunds_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__Balance, revert, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, Alloc;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp___totalSupply_ERC20, __tmp__Alloc;



procedure {:inline 1} totalSupply_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} totalSupply_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s1196: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s1196: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s1212: Ref, 
    spender_s1212: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



procedure {:inline 1} allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s1212: Ref, 
    spender_s1212: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc;



procedure {:inline 1} transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1231: Ref, 
    value_s1231: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1231: Ref, 
    value_s1231: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1267: Ref, 
    value_s1267: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



procedure {:inline 1} approve_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1267: Ref, 
    value_s1267: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc;



procedure {:inline 1} transferFrom_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1316: Ref, 
    to_s1316: Ref, 
    value_s1316: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc, revert, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1316: Ref, 
    to_s1316: Ref, 
    value_s1316: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc, revert, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1365: Ref, 
    addedValue_s1365: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



procedure {:inline 1} increaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1365: Ref, 
    addedValue_s1365: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc;



procedure {:inline 1} decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1414: Ref, 
    subtractedValue_s1414: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref__allowed2, M_Ref_int__allowed2, sum__allowed2, Alloc;



procedure {:inline 1} decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1414: Ref, 
    subtractedValue_s1414: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc;



procedure {:inline 1} _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1460: Ref, 
    to_s1460: Ref, 
    value_s1460: int);
  modifies gas, revert, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1502: Ref, 
    value_s1502: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1544: Ref, 
    value_s1544: int);
  modifies revert, __tmp___totalSupply_ERC20, __tmp__sum__balances1, __tmp__M_Ref_int__balances1, gas;



procedure {:inline 1} _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1586: Ref, 
    value_s1586: int);
  modifies __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp__sum__allowed2, __tmp__Alloc, gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} add_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1624: Ref, 
    account_s1624: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1655: Ref, 
    account_s1655: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1678: Ref, 
    account_s1678: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___minters_MinterRole, __tmp__Alloc, gas, revert, __tmp__M_Ref_bool;



procedure {:constructor} {:inline 1} MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _minters_MinterRole, Alloc, gas, revert, M_Ref_bool;



procedure {:constructor} {:inline 1} MinterRole_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___minters_MinterRole, __tmp__Alloc, gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1725: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1725: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert;



procedure {:inline 1} addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1737: Ref);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1737: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, M_Ref_bool;



procedure {:inline 1} renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1762: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1778: Ref);
  modifies gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, Alloc, _minters_MinterRole, gas, revert, M_Ref_bool;



procedure {:inline 1} ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp___totalSupply_ERC20, __tmp__Alloc, __tmp___minters_MinterRole, gas, revert, __tmp__M_Ref_bool;



procedure {:inline 1} mint_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1802: Ref, 
    value_s1802: int)
   returns (__ret_0_: bool);
  modifies gas, revert, _totalSupply_ERC20, sum__balances1, M_Ref_int__balances1;



procedure {:inline 1} mint_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1802: Ref, 
    value_s1802: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} MintedCrowdsale_MintedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} MintedCrowdsale_MintedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _guardCounter_ReentrancyGuard;



procedure {:inline 1} MintedCrowdsale_MintedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard;



procedure {:inline 1} _deliverTokens_MintedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1826: Ref, 
    tokenAmount_s1826: int);
  modifies gas, revert, __tmp___totalSupply_ERC20, __tmp__sum__balances1, __tmp__M_Ref_int__balances1;



procedure {:inline 1} CappedCrowdsale_CappedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int);
  modifies __tmp__Balance, __tmp___cap_CappedCrowdsale, revert;



procedure {:constructor} {:inline 1} CappedCrowdsale_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int);
  modifies Balance, _guardCounter_ReentrancyGuard, _cap_CappedCrowdsale, revert;



procedure {:constructor} {:inline 1} CappedCrowdsale_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard, __tmp___cap_CappedCrowdsale, revert;



procedure {:inline 1} cap_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} cap_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} capReached_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} capReached_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} _preValidatePurchase_CappedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1894: Ref, 
    weiAmount_s1894: int);
  modifies gas, revert;



procedure {:inline 1} ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int);
  modifies __tmp__Balance, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int);
  modifies Balance, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed;



procedure {:constructor} {:inline 1} ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int);
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



procedure {:inline 1} ERC20TokenMetadata_ERC20TokenMetadata_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20TokenMetadata_ERC20TokenMetadata__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20TokenMetadata_ERC20TokenMetadata__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20WithMetadata_ERC20WithMetadata_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int);
  modifies __tmp__Balance, __tmp___tokenURI_ERC20WithMetadata;



procedure {:constructor} {:inline 1} ERC20WithMetadata_ERC20WithMetadata__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int);
  modifies Balance, _tokenURI_ERC20WithMetadata;



procedure {:constructor} {:inline 1} ERC20WithMetadata_ERC20WithMetadata__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int);
  modifies __tmp__Balance, __tmp___tokenURI_ERC20WithMetadata;



procedure {:inline 1} tokenURI_ERC20WithMetadata__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} tokenURI_ERC20WithMetadata__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} SampleCrowdsaleToken_SampleCrowdsaleToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:constructor} {:inline 1} SampleCrowdsaleToken_SampleCrowdsaleToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, Alloc, _minters_MinterRole, gas, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, revert, M_Ref_bool;



procedure {:constructor} {:inline 1} SampleCrowdsaleToken_SampleCrowdsaleToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___balances_ERC20, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp___totalSupply_ERC20, __tmp__Alloc, __tmp___minters_MinterRole, gas, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, revert, __tmp__M_Ref_bool;



procedure {:inline 1} SampleCrowdsale_SampleCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int);
  modifies __tmp__Balance, revert;



procedure {:constructor} {:inline 1} SampleCrowdsale_SampleCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int);
  modifies Balance, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale, _cap_CappedCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, Alloc, gas, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow;



procedure {:constructor} {:inline 1} SampleCrowdsale_SampleCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int);
  modifies __tmp__Balance, __tmp___guardCounter_ReentrancyGuard, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale, __tmp___cap_CappedCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp__Alloc, gas, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp___beneficiary_RefundEscrow, __tmp___state_RefundEscrow;



procedure {:inline 1} Deployer_Deployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, __tmp__Alloc, __tmp___balances_ERC20, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, gas, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___guardCounter_ReentrancyGuard, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale, __tmp___cap_CappedCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp___beneficiary_RefundEscrow, __tmp___state_RefundEscrow, __tmp__M_Ref_bool;



procedure {:constructor} {:inline 1} Deployer_Deployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, token_Deployer, crowdsale_Deployer, escrow_Deployer, Alloc, _balances_ERC20, M_Ref_int__balances1, sum__balances1, _allowed_ERC20, M_Ref_Ref__allowed2, M_Ref_int__allowed2, _totalSupply_ERC20, _minters_MinterRole, gas, _name_ERC20Detailed, _symbol_ERC20Detailed, _decimals_ERC20Detailed, _guardCounter_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale, _cap_CappedCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, _primary_Secondary, _deposits_Escrow, M_Ref_int__deposits0, sum__deposits0, _beneficiary_RefundEscrow, _state_RefundEscrow, M_Ref_bool;



procedure {:constructor} {:inline 1} Deployer_Deployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, __tmp__Alloc, __tmp___balances_ERC20, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp___allowed_ERC20, __tmp__M_Ref_Ref__allowed2, __tmp__M_Ref_int__allowed2, __tmp___totalSupply_ERC20, __tmp___minters_MinterRole, gas, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___guardCounter_ReentrancyGuard, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale, __tmp___cap_CappedCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp___beneficiary_RefundEscrow, __tmp___state_RefundEscrow, __tmp__M_Ref_bool;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, __tmp___guardCounter_ReentrancyGuard, revert, __tmp__sum__deposits0, __tmp__M_Ref_int__deposits0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int__deposits0, __tmp__sum__deposits0, __tmp__M_Ref_int__balances1, __tmp__sum__balances1, __tmp__M_Ref_int__allowed2, __tmp__M_Ref_Ref__allowed2, __tmp__sum__allowed2, __tmp__M_Ref_bool, __tmp__sum, __tmp__Length, __tmp__now, __tmp___guardCounter_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, __tmp___balances_ERC20, __tmp___allowed_ERC20, __tmp___totalSupply_ERC20, __tmp__bearer_Roles.Role, __tmp___minters_MinterRole, __tmp___cap_CappedCrowdsale, __tmp___name_ERC20Detailed, __tmp___symbol_ERC20Detailed, __tmp___decimals_ERC20Detailed, __tmp___tokenURI_ERC20WithMetadata, __tmp__token_Deployer, __tmp__crowdsale_Deployer, __tmp__escrow_Deployer, revert, gas;



procedure {:inline 1} nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__out_mod_localCounter_s285: int);
  modifies gas, __tmp___guardCounter_ReentrancyGuard;



procedure {:inline 1} onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, localCounter_s285: int);
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



implementation Roles.Role_ctor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
    __tmp__bearer_Roles.Role[this] := bearer;
}



implementation Roles.Role_ctor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, bearer: Ref)
{
    bearer_Roles.Role[this] := bearer;
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



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int)
   returns (__ret_0_: int)
{
  var c_s24: int;

    gas := gas - 9;
    gas := gas - 96;
    assume b_s25 >= 0;
    assume a_s25 >= 0;
    if (!(b_s25 <= a_s25))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s24 >= 0;
    assume a_s25 >= 0;
    assume b_s25 >= 0;
    assume a_s25 - b_s25 >= 0;
    c_s24 := a_s25 - b_s25;
    gas := gas - 30;
    assume c_s24 >= 0;
    __ret_0_ := c_s24;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s25: int, b_s25: int)
   returns (__ret_0_: int)
{
  var c_s24: int;

    gas := gas - 9;
    gas := gas - 96;
    assume b_s25 >= 0;
    assume a_s25 >= 0;
    if (!(b_s25 <= a_s25))
    {
        revert := true;
        return;
    }

    gas := gas - 51;
    assume c_s24 >= 0;
    assume a_s25 >= 0;
    assume b_s25 >= 0;
    assume a_s25 - b_s25 >= 0;
    c_s24 := a_s25 - b_s25;
    gas := gas - 30;
    assume c_s24 >= 0;
    __ret_0_ := c_s24;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int)
{
  var c_s48: int;

    gas := gas - 21;
    gas := gas - 119;
    assume c_s48 >= 0;
    assume a_s49 >= 0;
    assume b_s49 >= 0;
    assume a_s49 + b_s49 >= 0;
    c_s48 := a_s49 + b_s49;
    gas := gas - 224;
    assume c_s48 >= 0;
    assume a_s49 >= 0;
    if (!(c_s48 >= a_s49))
    {
        revert := true;
        return;
    }

    gas := gas - 70;
    assume c_s48 >= 0;
    __ret_0_ := c_s48;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int)
{
  var c_s48: int;

    gas := gas - 21;
    gas := gas - 119;
    assume c_s48 >= 0;
    assume a_s49 >= 0;
    assume b_s49 >= 0;
    assume a_s49 + b_s49 >= 0;
    c_s48 := a_s49 + b_s49;
    gas := gas - 224;
    assume c_s48 >= 0;
    assume a_s49 >= 0;
    if (!(c_s48 >= a_s49))
    {
        revert := true;
        return;
    }

    gas := gas - 70;
    assume c_s48 >= 0;
    __ret_0_ := c_s48;
    return;
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



implementation SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeERC20_SafeERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeERC20_SafeERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation safeTransfer_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s138: Ref, 
    to_s138: Ref, 
    value_s138: int)
{
  var __var_1: bool;
  var __var_2: int;

    gas := gas - 37240;
    assume value_s138 >= 0;
    if (__tmp__DType[token_s138] == SampleCrowdsaleToken)
    {
        call __var_1 := transfer_ERC20__fail(token_s138, this, __var_2, to_s138, value_s138);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s138] == ERC20WithMetadata)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
    }
    else if (__tmp__DType[token_s138] == ERC20TokenMetadata)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
    }
    else if (__tmp__DType[token_s138] == ERC20Detailed)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
    }
    else if (__tmp__DType[token_s138] == ERC20Mintable)
    {
        call __var_1 := transfer_ERC20__fail(token_s138, this, __var_2, to_s138, value_s138);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s138] == ERC20)
    {
        call __var_1 := transfer_ERC20__fail(token_s138, this, __var_2, to_s138, value_s138);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s138] == IERC20)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
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
}



implementation safeTransfer_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s138: Ref, 
    to_s138: Ref, 
    value_s138: int)
{
  var __var_1: bool;
  var __var_2: int;

    gas := gas - 37240;
    assume value_s138 >= 0;
    if (DType[token_s138] == SampleCrowdsaleToken)
    {
        call __var_1 := transfer_ERC20__success(token_s138, this, __var_2, to_s138, value_s138);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s138] == ERC20WithMetadata)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
    }
    else if (DType[token_s138] == ERC20TokenMetadata)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
    }
    else if (DType[token_s138] == ERC20Detailed)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
    }
    else if (DType[token_s138] == ERC20Mintable)
    {
        call __var_1 := transfer_ERC20__success(token_s138, this, __var_2, to_s138, value_s138);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s138] == ERC20)
    {
        call __var_1 := transfer_ERC20__success(token_s138, this, __var_2, to_s138, value_s138);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s138] == IERC20)
    {
        call __var_1 := transfer_IERC20(token_s138, this, __var_2, to_s138, value_s138);
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
}



implementation safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s159: Ref, 
    from_s159: Ref, 
    to_s159: Ref, 
    value_s159: int)
{
  var __var_3: bool;
  var __var_4: int;

    assume value_s159 >= 0;
    if (__tmp__DType[token_s159] == SampleCrowdsaleToken)
    {
        call __var_3 := transferFrom_ERC20__fail(token_s159, this, __var_4, from_s159, to_s159, value_s159);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s159] == ERC20WithMetadata)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else if (__tmp__DType[token_s159] == ERC20TokenMetadata)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else if (__tmp__DType[token_s159] == ERC20Detailed)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else if (__tmp__DType[token_s159] == ERC20Mintable)
    {
        call __var_3 := transferFrom_ERC20__fail(token_s159, this, __var_4, from_s159, to_s159, value_s159);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s159] == ERC20)
    {
        call __var_3 := transferFrom_ERC20__fail(token_s159, this, __var_4, from_s159, to_s159, value_s159);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s159] == IERC20)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else
    {
        assume false;
    }

    if (!__var_3)
    {
        revert := true;
        return;
    }
}



implementation safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s159: Ref, 
    from_s159: Ref, 
    to_s159: Ref, 
    value_s159: int)
{
  var __var_3: bool;
  var __var_4: int;

    assume value_s159 >= 0;
    if (DType[token_s159] == SampleCrowdsaleToken)
    {
        call __var_3 := transferFrom_ERC20__success(token_s159, this, __var_4, from_s159, to_s159, value_s159);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s159] == ERC20WithMetadata)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else if (DType[token_s159] == ERC20TokenMetadata)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else if (DType[token_s159] == ERC20Detailed)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else if (DType[token_s159] == ERC20Mintable)
    {
        call __var_3 := transferFrom_ERC20__success(token_s159, this, __var_4, from_s159, to_s159, value_s159);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s159] == ERC20)
    {
        call __var_3 := transferFrom_ERC20__success(token_s159, this, __var_4, from_s159, to_s159, value_s159);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s159] == IERC20)
    {
        call __var_3 := transferFrom_IERC20(token_s159, this, __var_4, from_s159, to_s159, value_s159);
    }
    else
    {
        assume false;
    }

    if (!__var_3)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s195: Ref, 
    spender_s195: Ref, 
    value_s195: int)
{
  var __var_5: int;
  var __var_6: int;
  var __var_7: Ref;
  var __var_8: bool;
  var __var_9: int;

    assume value_s195 >= 0;
    assume __var_5 >= 0;
    __var_7 := this;
    if (__tmp__DType[token_s195] == SampleCrowdsaleToken)
    {
        call __var_5 := allowance_ERC20__fail(token_s195, this, __var_6, this, spender_s195);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s195] == ERC20WithMetadata)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else if (__tmp__DType[token_s195] == ERC20TokenMetadata)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else if (__tmp__DType[token_s195] == ERC20Detailed)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else if (__tmp__DType[token_s195] == ERC20Mintable)
    {
        call __var_5 := allowance_ERC20__fail(token_s195, this, __var_6, this, spender_s195);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s195] == ERC20)
    {
        call __var_5 := allowance_ERC20__fail(token_s195, this, __var_6, this, spender_s195);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s195] == IERC20)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else
    {
        assume false;
    }

    assume __var_5 >= 0;
    if (!(value_s195 == 0 || __var_5 == 0))
    {
        revert := true;
        return;
    }

    assume value_s195 >= 0;
    if (__tmp__DType[token_s195] == SampleCrowdsaleToken)
    {
        call __var_8 := approve_ERC20__fail(token_s195, this, __var_9, spender_s195, value_s195);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s195] == ERC20WithMetadata)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else if (__tmp__DType[token_s195] == ERC20TokenMetadata)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else if (__tmp__DType[token_s195] == ERC20Detailed)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else if (__tmp__DType[token_s195] == ERC20Mintable)
    {
        call __var_8 := approve_ERC20__fail(token_s195, this, __var_9, spender_s195, value_s195);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s195] == ERC20)
    {
        call __var_8 := approve_ERC20__fail(token_s195, this, __var_9, spender_s195, value_s195);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s195] == IERC20)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else
    {
        assume false;
    }

    if (!__var_8)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s195: Ref, 
    spender_s195: Ref, 
    value_s195: int)
{
  var __var_5: int;
  var __var_6: int;
  var __var_7: Ref;
  var __var_8: bool;
  var __var_9: int;

    assume value_s195 >= 0;
    assume __var_5 >= 0;
    __var_7 := this;
    if (DType[token_s195] == SampleCrowdsaleToken)
    {
        call __var_5 := allowance_ERC20__success(token_s195, this, __var_6, this, spender_s195);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s195] == ERC20WithMetadata)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else if (DType[token_s195] == ERC20TokenMetadata)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else if (DType[token_s195] == ERC20Detailed)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else if (DType[token_s195] == ERC20Mintable)
    {
        call __var_5 := allowance_ERC20__success(token_s195, this, __var_6, this, spender_s195);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s195] == ERC20)
    {
        call __var_5 := allowance_ERC20__success(token_s195, this, __var_6, this, spender_s195);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s195] == IERC20)
    {
        call __var_5 := allowance_IERC20(token_s195, this, __var_6, this, spender_s195);
    }
    else
    {
        assume false;
    }

    assume __var_5 >= 0;
    if (!(value_s195 == 0 || __var_5 == 0))
    {
        revert := true;
        return;
    }

    assume value_s195 >= 0;
    if (DType[token_s195] == SampleCrowdsaleToken)
    {
        call __var_8 := approve_ERC20__success(token_s195, this, __var_9, spender_s195, value_s195);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s195] == ERC20WithMetadata)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else if (DType[token_s195] == ERC20TokenMetadata)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else if (DType[token_s195] == ERC20Detailed)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else if (DType[token_s195] == ERC20Mintable)
    {
        call __var_8 := approve_ERC20__success(token_s195, this, __var_9, spender_s195, value_s195);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s195] == ERC20)
    {
        call __var_8 := approve_ERC20__success(token_s195, this, __var_9, spender_s195, value_s195);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s195] == IERC20)
    {
        call __var_8 := approve_IERC20(token_s195, this, __var_9, spender_s195, value_s195);
    }
    else
    {
        assume false;
    }

    if (!__var_8)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s226: Ref, 
    spender_s226: Ref, 
    value_s226: int)
{
  var newAllowance_s225: int;
  var __var_10: int;
  var __var_11: int;
  var __var_12: Ref;
  var __var_13: bool;
  var __var_14: int;

    assume newAllowance_s225 >= 0;
    assume __var_10 >= 0;
    __var_12 := this;
    if (__tmp__DType[token_s226] == SampleCrowdsaleToken)
    {
        call __var_10 := allowance_ERC20__fail(token_s226, this, __var_11, this, spender_s226);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s226] == ERC20WithMetadata)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else if (__tmp__DType[token_s226] == ERC20TokenMetadata)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else if (__tmp__DType[token_s226] == ERC20Detailed)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else if (__tmp__DType[token_s226] == ERC20Mintable)
    {
        call __var_10 := allowance_ERC20__fail(token_s226, this, __var_11, this, spender_s226);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s226] == ERC20)
    {
        call __var_10 := allowance_ERC20__fail(token_s226, this, __var_11, this, spender_s226);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s226] == IERC20)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else
    {
        assume false;
    }

    assume __var_10 >= 0;
    assume value_s226 >= 0;
    call newAllowance_s225 := add_SafeMath__fail(this, this, 0, __var_10, value_s226);
    if (revert)
    {
        return;
    }

    newAllowance_s225 := newAllowance_s225;
    assume newAllowance_s225 >= 0;
    if (__tmp__DType[token_s226] == SampleCrowdsaleToken)
    {
        call __var_13 := approve_ERC20__fail(token_s226, this, __var_14, spender_s226, newAllowance_s225);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s226] == ERC20WithMetadata)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else if (__tmp__DType[token_s226] == ERC20TokenMetadata)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else if (__tmp__DType[token_s226] == ERC20Detailed)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else if (__tmp__DType[token_s226] == ERC20Mintable)
    {
        call __var_13 := approve_ERC20__fail(token_s226, this, __var_14, spender_s226, newAllowance_s225);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s226] == ERC20)
    {
        call __var_13 := approve_ERC20__fail(token_s226, this, __var_14, spender_s226, newAllowance_s225);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s226] == IERC20)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else
    {
        assume false;
    }

    if (!__var_13)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s226: Ref, 
    spender_s226: Ref, 
    value_s226: int)
{
  var newAllowance_s225: int;
  var __var_10: int;
  var __var_11: int;
  var __var_12: Ref;
  var __var_13: bool;
  var __var_14: int;

    assume newAllowance_s225 >= 0;
    assume __var_10 >= 0;
    __var_12 := this;
    if (DType[token_s226] == SampleCrowdsaleToken)
    {
        call __var_10 := allowance_ERC20__success(token_s226, this, __var_11, this, spender_s226);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s226] == ERC20WithMetadata)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else if (DType[token_s226] == ERC20TokenMetadata)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else if (DType[token_s226] == ERC20Detailed)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else if (DType[token_s226] == ERC20Mintable)
    {
        call __var_10 := allowance_ERC20__success(token_s226, this, __var_11, this, spender_s226);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s226] == ERC20)
    {
        call __var_10 := allowance_ERC20__success(token_s226, this, __var_11, this, spender_s226);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s226] == IERC20)
    {
        call __var_10 := allowance_IERC20(token_s226, this, __var_11, this, spender_s226);
    }
    else
    {
        assume false;
    }

    assume __var_10 >= 0;
    assume value_s226 >= 0;
    call newAllowance_s225 := add_SafeMath__success(this, this, 0, __var_10, value_s226);
    if (revert)
    {
        return;
    }

    newAllowance_s225 := newAllowance_s225;
    assume newAllowance_s225 >= 0;
    if (DType[token_s226] == SampleCrowdsaleToken)
    {
        call __var_13 := approve_ERC20__success(token_s226, this, __var_14, spender_s226, newAllowance_s225);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s226] == ERC20WithMetadata)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else if (DType[token_s226] == ERC20TokenMetadata)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else if (DType[token_s226] == ERC20Detailed)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else if (DType[token_s226] == ERC20Mintable)
    {
        call __var_13 := approve_ERC20__success(token_s226, this, __var_14, spender_s226, newAllowance_s225);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s226] == ERC20)
    {
        call __var_13 := approve_ERC20__success(token_s226, this, __var_14, spender_s226, newAllowance_s225);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s226] == IERC20)
    {
        call __var_13 := approve_IERC20(token_s226, this, __var_14, spender_s226, newAllowance_s225);
    }
    else
    {
        assume false;
    }

    if (!__var_13)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s257: Ref, 
    spender_s257: Ref, 
    value_s257: int)
{
  var newAllowance_s256: int;
  var __var_15: int;
  var __var_16: int;
  var __var_17: Ref;
  var __var_18: bool;
  var __var_19: int;

    assume newAllowance_s256 >= 0;
    assume __var_15 >= 0;
    __var_17 := this;
    if (__tmp__DType[token_s257] == SampleCrowdsaleToken)
    {
        call __var_15 := allowance_ERC20__fail(token_s257, this, __var_16, this, spender_s257);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s257] == ERC20WithMetadata)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else if (__tmp__DType[token_s257] == ERC20TokenMetadata)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else if (__tmp__DType[token_s257] == ERC20Detailed)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else if (__tmp__DType[token_s257] == ERC20Mintable)
    {
        call __var_15 := allowance_ERC20__fail(token_s257, this, __var_16, this, spender_s257);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s257] == ERC20)
    {
        call __var_15 := allowance_ERC20__fail(token_s257, this, __var_16, this, spender_s257);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s257] == IERC20)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else
    {
        assume false;
    }

    assume __var_15 >= 0;
    assume value_s257 >= 0;
    call newAllowance_s256 := sub_SafeMath__fail(this, this, 0, __var_15, value_s257);
    if (revert)
    {
        return;
    }

    newAllowance_s256 := newAllowance_s256;
    assume newAllowance_s256 >= 0;
    if (__tmp__DType[token_s257] == SampleCrowdsaleToken)
    {
        call __var_18 := approve_ERC20__fail(token_s257, this, __var_19, spender_s257, newAllowance_s256);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s257] == ERC20WithMetadata)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else if (__tmp__DType[token_s257] == ERC20TokenMetadata)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else if (__tmp__DType[token_s257] == ERC20Detailed)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else if (__tmp__DType[token_s257] == ERC20Mintable)
    {
        call __var_18 := approve_ERC20__fail(token_s257, this, __var_19, spender_s257, newAllowance_s256);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s257] == ERC20)
    {
        call __var_18 := approve_ERC20__fail(token_s257, this, __var_19, spender_s257, newAllowance_s256);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[token_s257] == IERC20)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else
    {
        assume false;
    }

    if (!__var_18)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s257: Ref, 
    spender_s257: Ref, 
    value_s257: int)
{
  var newAllowance_s256: int;
  var __var_15: int;
  var __var_16: int;
  var __var_17: Ref;
  var __var_18: bool;
  var __var_19: int;

    assume newAllowance_s256 >= 0;
    assume __var_15 >= 0;
    __var_17 := this;
    if (DType[token_s257] == SampleCrowdsaleToken)
    {
        call __var_15 := allowance_ERC20__success(token_s257, this, __var_16, this, spender_s257);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s257] == ERC20WithMetadata)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else if (DType[token_s257] == ERC20TokenMetadata)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else if (DType[token_s257] == ERC20Detailed)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else if (DType[token_s257] == ERC20Mintable)
    {
        call __var_15 := allowance_ERC20__success(token_s257, this, __var_16, this, spender_s257);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s257] == ERC20)
    {
        call __var_15 := allowance_ERC20__success(token_s257, this, __var_16, this, spender_s257);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s257] == IERC20)
    {
        call __var_15 := allowance_IERC20(token_s257, this, __var_16, this, spender_s257);
    }
    else
    {
        assume false;
    }

    assume __var_15 >= 0;
    assume value_s257 >= 0;
    call newAllowance_s256 := sub_SafeMath__success(this, this, 0, __var_15, value_s257);
    if (revert)
    {
        return;
    }

    newAllowance_s256 := newAllowance_s256;
    assume newAllowance_s256 >= 0;
    if (DType[token_s257] == SampleCrowdsaleToken)
    {
        call __var_18 := approve_ERC20__success(token_s257, this, __var_19, spender_s257, newAllowance_s256);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s257] == ERC20WithMetadata)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else if (DType[token_s257] == ERC20TokenMetadata)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else if (DType[token_s257] == ERC20Detailed)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else if (DType[token_s257] == ERC20Mintable)
    {
        call __var_18 := approve_ERC20__success(token_s257, this, __var_19, spender_s257, newAllowance_s256);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s257] == ERC20)
    {
        call __var_18 := approve_ERC20__success(token_s257, this, __var_19, spender_s257, newAllowance_s256);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_s257] == IERC20)
    {
        call __var_18 := approve_IERC20(token_s257, this, __var_19, spender_s257, newAllowance_s256);
    }
    else
    {
        assume false;
    }

    if (!__var_18)
    {
        revert := true;
        return;
    }
}



implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___guardCounter_ReentrancyGuard[this] := 0;
    assume __tmp___guardCounter_ReentrancyGuard[this] >= 0;
    __tmp___guardCounter_ReentrancyGuard[this] := 1;
}



implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _guardCounter_ReentrancyGuard[this] := 0;
    assume _guardCounter_ReentrancyGuard[this] >= 0;
    _guardCounter_ReentrancyGuard[this] := 1;
}



implementation ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___wallet_Crowdsale[this] := null;
    __tmp___rate_Crowdsale[this] := 0;
    __tmp___weiRaised_Crowdsale[this] := 0;
    assume rate_s356 >= 0;
    if (!(rate_s356 > 0))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(wallet_s356 != null))
    {
        revert := true;
        return;
    }

    __var_21 := token_s356;
    __var_22 := null;
    if (!(token_s356 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___rate_Crowdsale[this] >= 0;
    __tmp___rate_Crowdsale[this] := 1;
    __tmp___wallet_Crowdsale[this] := wallet_s356;
    __tmp___token_Crowdsale[this] := token_s356;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _wallet_Crowdsale[this] := null;
    _rate_Crowdsale[this] := 0;
    _weiRaised_Crowdsale[this] := 0;
    assume rate_s356 >= 0;
    if (!(rate_s356 > 0))
    {
        revert := true;
        return;
    }

    __var_20 := null;
    if (!(wallet_s356 != null))
    {
        revert := true;
        return;
    }

    __var_21 := token_s356;
    __var_22 := null;
    if (!(token_s356 != null))
    {
        revert := true;
        return;
    }

    assume _rate_Crowdsale[this] >= 0;
    _rate_Crowdsale[this] := 1;
    _wallet_Crowdsale[this] := wallet_s356;
    _token_Crowdsale[this] := token_s356;
}



implementation Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: Ref;

    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s356, wallet_s356, token_s356);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s356: int, 
    wallet_s356: Ref, 
    token_s356: Ref)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: Ref;

    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s356, wallet_s356, token_s356);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 12;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 12;
    if (DType[this] == SampleCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation token_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 488;
    __ret_0_ := __tmp___token_Crowdsale[this];
    return;
}



implementation token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 488;
    __ret_0_ := _token_Crowdsale[this];
    return;
}



implementation wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 488;
    __ret_0_ := __tmp___wallet_Crowdsale[this];
    return;
}



implementation wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 488;
    __ret_0_ := _wallet_Crowdsale[this];
    return;
}



implementation rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 416;
    assume __tmp___rate_Crowdsale[this] >= 0;
    __ret_0_ := __tmp___rate_Crowdsale[this];
    return;
}



implementation rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 416;
    assume _rate_Crowdsale[this] >= 0;
    __ret_0_ := _rate_Crowdsale[this];
    return;
}



implementation weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 416;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    __ret_0_ := __tmp___weiRaised_Crowdsale[this];
    return;
}



implementation weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 416;
    assume _weiRaised_Crowdsale[this] >= 0;
    __ret_0_ := _weiRaised_Crowdsale[this];
    return;
}



implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s454: Ref)
{
  var __mod_out_localCounter_s285: int;
  var weiAmount_s453: int;
  var tokens_s453: int;
  var __var_23: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call __mod_out_localCounter_s285 := nonReentrant_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s453 := msgvalue_MSG;
    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call _preValidatePurchase_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 30;
    assume tokens_s453 >= 0;
    assume weiAmount_s453 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s453 := tokens_s453;
    gas := gas - 40494;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s453 >= 0;
    call __var_23 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s453);
    if (revert)
    {
        return;
    }

    __tmp___weiRaised_Crowdsale[this] := __var_23;
    assume __var_23 >= 0;
    gas := gas - 20;
    assume tokens_s453 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 8;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _forwardFunds_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _forwardFunds_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call nonReentrant_post__fail(this, msgsender_MSG, msgvalue_MSG, __mod_out_localCounter_s285);
    if (revert)
    {
        return;
    }
}



implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s454: Ref)
{
  var __mod_out_localCounter_s285: int;
  var weiAmount_s453: int;
  var tokens_s453: int;
  var __var_23: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call __mod_out_localCounter_s285 := nonReentrant_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s453 := msgvalue_MSG;
    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call _preValidatePurchase_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 30;
    assume tokens_s453 >= 0;
    assume weiAmount_s453 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call tokens_s453 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s453 := tokens_s453;
    gas := gas - 40494;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s453 >= 0;
    call __var_23 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s453);
    if (revert)
    {
        return;
    }

    _weiRaised_Crowdsale[this] := __var_23;
    assume __var_23 >= 0;
    gas := gas - 20;
    assume tokens_s453 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, tokens_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "TokensPurchased_Crowdsale"} true;
    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 8;
    if (DType[this] == SampleCrowdsale)
    {
        call _forwardFunds_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _forwardFunds_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 20;
    assume weiAmount_s453 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454, weiAmount_s453);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call nonReentrant_post__success(this, msgsender_MSG, msgvalue_MSG, __mod_out_localCounter_s285);
    if (revert)
    {
        return;
    }
}



implementation _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s476: Ref, 
    weiAmount_s476: int)
{
  var __var_24: Ref;

    gas := gas - 88;
    __var_24 := null;
    if (!(beneficiary_s476 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 64;
    assume weiAmount_s476 >= 0;
    if (!(weiAmount_s476 != 0))
    {
        revert := true;
        return;
    }
}



implementation _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s476: Ref, 
    weiAmount_s476: int)
{
  var __var_24: Ref;

    gas := gas - 88;
    __var_24 := null;
    if (!(beneficiary_s476 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 64;
    assume weiAmount_s476 >= 0;
    if (!(weiAmount_s476 != 0))
    {
        revert := true;
        return;
    }
}



implementation _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s484: Ref, 
    weiAmount_s484: int)
{
}



implementation _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s484: Ref, 
    weiAmount_s484: int)
{
}



implementation _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s500: Ref, 
    tokenAmount_s500: int)
{
    gas := gas - 249;
    assume tokenAmount_s500 >= 0;
    call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s500, tokenAmount_s500);
    if (revert)
    {
        return;
    }
}



implementation _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s500: Ref, 
    tokenAmount_s500: int)
{
    gas := gas - 249;
    assume tokenAmount_s500 >= 0;
    call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s500, tokenAmount_s500);
    if (revert)
    {
        return;
    }
}



implementation _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s513: Ref, 
    tokenAmount_s513: int)
{
    gas := gas - 20;
    assume tokenAmount_s513 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _deliverTokens_MintedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call _deliverTokens_MintedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
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



implementation _processPurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s513: Ref, 
    tokenAmount_s513: int)
{
    gas := gas - 20;
    assume tokenAmount_s513 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call _deliverTokens_MintedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call _deliverTokens_MintedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s513, tokenAmount_s513);
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



implementation _updatePurchasingState_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s521: Ref, 
    weiAmount_s521: int)
{
}



implementation _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s521: Ref, 
    weiAmount_s521: int)
{
}



implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s531: int)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 16;
    assume weiAmount_s531 >= 0;
    __ret_0_ := weiAmount_s531;
    return;
}



implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s531: int)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 16;
    assume weiAmount_s531 >= 0;
    __ret_0_ := weiAmount_s531;
    return;
}



implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_25: int;
  var __var_26: bool;

    gas := gas - 36028;
    __var_25 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_25 := __var_25 - gas;
    assume msgvalue_MSG >= 0;
    call __var_26 := send__fail(this, __tmp___wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_26)
    {
        revert := true;
        return;
    }

    gas := __var_25 + gas;
}



implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_25: int;
  var __var_26: bool;

    gas := gas - 36028;
    __var_25 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_25 := __var_25 - gas;
    assume msgvalue_MSG >= 0;
    call __var_26 := send__success(this, _wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_26)
    {
        revert := true;
        return;
    }

    gas := __var_25 + gas;
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___openingTime_TimedCrowdsale[this] := 0;
    __tmp___closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s590 >= 0;
    assume __tmp__now >= 0;
    if (!(openingTime_s590 >= __tmp__now))
    {
        revert := true;
        return;
    }

    assume closingTime_s590 >= 0;
    assume openingTime_s590 >= 0;
    if (!(closingTime_s590 > openingTime_s590))
    {
        revert := true;
        return;
    }

    assume __tmp___openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s590 >= 0;
    __tmp___openingTime_TimedCrowdsale[this] := openingTime_s590;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s590 >= 0;
    __tmp___closingTime_TimedCrowdsale[this] := closingTime_s590;
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _openingTime_TimedCrowdsale[this] := 0;
    _closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s590 >= 0;
    assume now >= 0;
    if (!(openingTime_s590 >= now))
    {
        revert := true;
        return;
    }

    assume closingTime_s590 >= 0;
    assume openingTime_s590 >= 0;
    if (!(closingTime_s590 > openingTime_s590))
    {
        revert := true;
        return;
    }

    assume _openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s590 >= 0;
    _openingTime_TimedCrowdsale[this] := openingTime_s590;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s590 >= 0;
    _closingTime_TimedCrowdsale[this] := closingTime_s590;
}



implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int)
{
    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s590, closingTime_s590);
    if (revert)
    {
        return;
    }
}



implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s590: int, 
    closingTime_s590: int)
{
    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s590, closingTime_s590);
    if (revert)
    {
        return;
    }
}



implementation openingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume __tmp___openingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp___openingTime_TimedCrowdsale[this];
    return;
}



implementation openingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume _openingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := _openingTime_TimedCrowdsale[this];
    return;
}



implementation closingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp___closingTime_TimedCrowdsale[this];
    return;
}



implementation closingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := _closingTime_TimedCrowdsale[this];
    return;
}



implementation isOpen_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 449;
    assume __tmp__now >= 0;
    assume __tmp___openingTime_TimedCrowdsale[this] >= 0;
    assume __tmp__now >= 0;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp__now >= __tmp___openingTime_TimedCrowdsale[this]
       && __tmp__now <= __tmp___closingTime_TimedCrowdsale[this];
    return;
}



implementation isOpen_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 449;
    assume now >= 0;
    assume _openingTime_TimedCrowdsale[this] >= 0;
    assume now >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := now >= _openingTime_TimedCrowdsale[this]
       && now <= _closingTime_TimedCrowdsale[this];
    return;
}



implementation hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 213;
    assume __tmp__now >= 0;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp__now > __tmp___closingTime_TimedCrowdsale[this];
    return;
}



implementation hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 213;
    assume now >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := now > _closingTime_TimedCrowdsale[this];
    return;
}



implementation _preValidatePurchase_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s650: Ref, 
    weiAmount_s650: int)
{
  var __var_28: int;

    call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s650 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _preValidatePurchase_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
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



implementation _preValidatePurchase_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s650: Ref, 
    weiAmount_s650: int)
{
  var __var_28: int;

    call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s650 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call _preValidatePurchase_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s650, weiAmount_s650);
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



implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___finalized_FinalizableCrowdsale[this] := false;
    __tmp___finalized_FinalizableCrowdsale[this] := false;
}



implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _finalized_FinalizableCrowdsale[this] := false;
    _finalized_FinalizableCrowdsale[this] := false;
}



implementation FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation finalized_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := __tmp___finalized_FinalizableCrowdsale[this];
    return;
}



implementation finalized_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := _finalized_FinalizableCrowdsale[this];
    return;
}



implementation finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_29: bool;

    gas := gas - 262;
    if (!!__tmp___finalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 35;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_29 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_29 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_29 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_29)
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp___finalized_FinalizableCrowdsale[this] := true;
    gas := gas - 4;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _finalization_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _finalization_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_29: bool;

    gas := gas - 262;
    if (!!_finalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 35;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_29 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call __var_29 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_29 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_29)
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    _finalized_FinalizableCrowdsale[this] := true;
    gas := gas - 4;
    if (DType[this] == SampleCrowdsale)
    {
        call _finalization_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _finalization_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "CrowdsaleFinalized_FinalizableCrowdsale"} true;
}



implementation _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation _finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___primary_Secondary[this] := null;
    __tmp___primary_Secondary[this] := msgsender_MSG;
}



implementation Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _primary_Secondary[this] := null;
    _primary_Secondary[this] := msgsender_MSG;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Secondary_Secondary_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Secondary_Secondary_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 488;
    __ret_0_ := __tmp___primary_Secondary[this];
    return;
}



implementation primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 488;
    __ret_0_ := _primary_Secondary[this];
    return;
}



implementation transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s767: Ref)
{
  var __var_30: Ref;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 88;
    __var_30 := null;
    if (!(recipient_s767 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    __tmp___primary_Secondary[this] := recipient_s767;
}



implementation transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s767: Ref)
{
  var __var_30: Ref;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 88;
    __var_30 := null;
    if (!(recipient_s767 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    _primary_Secondary[this] := recipient_s767;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_31: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_31 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___deposits_Escrow[this] := __var_31;
    __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]] := zeroRefIntArr();
    __tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := 0;
}



implementation Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_31: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_31 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _deposits_Escrow[this] := __var_31;
    M_Ref_int__deposits0[_deposits_Escrow[this]] := zeroRefIntArr();
    sum__deposits0[_deposits_Escrow[this]] := 0;
}



implementation Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s801: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s801] >= 0;
    __ret_0_ := __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s801];
    return;
}



implementation depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s801: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s801] >= 0;
    __ret_0_ := M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s801];
    return;
}



implementation deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s830: Ref)
{
  var amount_s829: int;
  var __var_32: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s829 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s829 := msgvalue_MSG;
    gas := gas - 40878;
    assume __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s830] >= 0;
    assume __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s830] >= 0;
    assume amount_s829 >= 0;
    call __var_32 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s830], amount_s829);
    if (revert)
    {
        return;
    }

    __tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := __tmp__sum__deposits0[__tmp___deposits_Escrow[this]]
       - __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s830];
    __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s830] := __var_32;
    __tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := __tmp__sum__deposits0[__tmp___deposits_Escrow[this]]
       + __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s830];
    assume __var_32 >= 0;
}



implementation deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s830: Ref)
{
  var amount_s829: int;
  var __var_32: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s829 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s829 := msgvalue_MSG;
    gas := gas - 40878;
    assume M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s830] >= 0;
    assume M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s830] >= 0;
    assume amount_s829 >= 0;
    call __var_32 := add_SafeMath__success(this, this, 0, M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s830], amount_s829);
    if (revert)
    {
        return;
    }

    sum__deposits0[_deposits_Escrow[this]] := sum__deposits0[_deposits_Escrow[this]]
       - M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s830];
    M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s830] := __var_32;
    sum__deposits0[_deposits_Escrow[this]] := sum__deposits0[_deposits_Escrow[this]]
       + M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s830];
    assume __var_32 >= 0;
    assert {:EventEmitted "Deposited_Escrow"} true;
}



implementation withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s861: Ref)
{
  var payment_s860: int;
  var __var_33: int;
  var __var_34: bool;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 614;
    assume payment_s860 >= 0;
    assume __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s861] >= 0;
    payment_s860 := __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s861];
    gas := gas - 10208;
    assume __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s861] >= 0;
    __tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := __tmp__sum__deposits0[__tmp___deposits_Escrow[this]]
       - __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s861];
    __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s861] := 0;
    __tmp__sum__deposits0[__tmp___deposits_Escrow[this]] := __tmp__sum__deposits0[__tmp___deposits_Escrow[this]]
       + __tmp__M_Ref_int__deposits0[__tmp___deposits_Escrow[this]][payee_s861];
    gas := gas - 71574;
    __var_33 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_33 := __var_33 - gas;
    assume payment_s860 >= 0;
    call __var_34 := send__fail(this, payee_s861, payment_s860);
    if (!__var_34)
    {
        revert := true;
        return;
    }

    gas := __var_33 + gas;
}



implementation withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s861: Ref)
{
  var payment_s860: int;
  var __var_33: int;
  var __var_34: bool;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 614;
    assume payment_s860 >= 0;
    assume M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s861] >= 0;
    payment_s860 := M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s861];
    gas := gas - 10208;
    assume M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s861] >= 0;
    sum__deposits0[_deposits_Escrow[this]] := sum__deposits0[_deposits_Escrow[this]]
       - M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s861];
    M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s861] := 0;
    sum__deposits0[_deposits_Escrow[this]] := sum__deposits0[_deposits_Escrow[this]]
       + M_Ref_int__deposits0[_deposits_Escrow[this]][payee_s861];
    gas := gas - 71574;
    __var_33 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_33 := __var_33 - gas;
    assume payment_s860 >= 0;
    call __var_34 := send__success(this, payee_s861, payment_s860);
    if (!__var_34)
    {
        revert := true;
        return;
    }

    gas := __var_33 + gas;
    assert {:EventEmitted "Withdrawn_Escrow"} true;
}



implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ConditionalEscrow_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ConditionalEscrow_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s889: Ref)
{
  var __var_35: bool;
  var __var_36: int;

    gas := gas - 27;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call __var_35 := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s889);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call __var_35 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s889);
    }
    else
    {
        assume false;
    }

    if (!__var_35)
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s889);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s889);
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



implementation withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s889: Ref)
{
  var __var_35: bool;
  var __var_36: int;

    gas := gas - 27;
    if (DType[this] == RefundEscrow)
    {
        call __var_35 := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s889);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call __var_35 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s889);
    }
    else
    {
        assume false;
    }

    if (!__var_35)
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s889);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s889);
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



implementation RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref)
{
  var __var_37: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___beneficiary_RefundEscrow[this] := null;
    __var_37 := null;
    if (!(beneficiary_s927 != null))
    {
        revert := true;
        return;
    }

    __tmp___beneficiary_RefundEscrow[this] := beneficiary_s927;
    __tmp___state_RefundEscrow[this] := 0;
}



implementation RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref)
{
  var __var_37: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _beneficiary_RefundEscrow[this] := null;
    __var_37 := null;
    if (!(beneficiary_s927 != null))
    {
        revert := true;
        return;
    }

    _beneficiary_RefundEscrow[this] := beneficiary_s927;
    _state_RefundEscrow[this] := 0;
}



implementation RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref)
{
  var __var_37: Ref;

    call Secondary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ConditionalEscrow_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call RefundEscrow_RefundEscrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s927);
    if (revert)
    {
        return;
    }
}



implementation RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s927: Ref)
{
  var __var_37: Ref;

    call Secondary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call RefundEscrow_RefundEscrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s927);
    if (revert)
    {
        return;
    }
}



implementation state_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := __tmp___state_RefundEscrow[this];
    return;
}



implementation state_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := _state_RefundEscrow[this];
    return;
}



implementation beneficiary_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 294;
    __ret_0_ := __tmp___beneficiary_RefundEscrow[this];
    return;
}



implementation beneficiary_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 294;
    __ret_0_ := _beneficiary_RefundEscrow[this];
    return;
}



implementation deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s962: Ref)
{
  var __var_38: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 317;
    if (!(__tmp___state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call deposit_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s962);
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



implementation deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s962: Ref)
{
  var __var_38: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 317;
    if (!(_state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call deposit_Escrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s962);
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



implementation close_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 317;
    if (!(__tmp___state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20287;
    __tmp___state_RefundEscrow[this] := 2;
}



implementation close_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 317;
    if (!(_state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20287;
    _state_RefundEscrow[this] := 2;
    assert {:EventEmitted "RefundsClosed_RefundEscrow"} true;
}



implementation enableRefunds_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 317;
    if (!(__tmp___state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20287;
    __tmp___state_RefundEscrow[this] := 1;
}



implementation enableRefunds_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 317;
    if (!(_state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20287;
    _state_RefundEscrow[this] := 1;
    assert {:EventEmitted "RefundsEnabled_RefundEscrow"} true;
}



implementation beneficiaryWithdraw_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: int;
  var __var_40: Ref;
  var __var_41: bool;

    gas := gas - 317;
    if (!(__tmp___state_RefundEscrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 36484;
    __var_39 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_39 := __var_39 - gas;
    __var_40 := this;
    assume __tmp__Balance[this] >= 0;
    call __var_41 := send__fail(this, __tmp___beneficiary_RefundEscrow[this], __tmp__Balance[this]);
    if (!__var_41)
    {
        revert := true;
        return;
    }

    gas := __var_39 + gas;
}



implementation beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: int;
  var __var_40: Ref;
  var __var_41: bool;

    gas := gas - 317;
    if (!(_state_RefundEscrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 36484;
    __var_39 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_39 := __var_39 - gas;
    __var_40 := this;
    assume Balance[this] >= 0;
    call __var_41 := send__success(this, _beneficiary_RefundEscrow[this], Balance[this]);
    if (!__var_41)
    {
        revert := true;
        return;
    }

    gas := __var_39 + gas;
}



implementation withdrawalAllowed_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 302;
    __ret_0_ := __tmp___state_RefundEscrow[this] == 1;
    return;
}



implementation withdrawalAllowed_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 302;
    __ret_0_ := _state_RefundEscrow[this] == 1;
    return;
}



implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___goal_RefundableCrowdsale[this] := 0;
    assume goal_s1071 >= 0;
    if (!(goal_s1071 > 0))
    {
        revert := true;
        return;
    }

    call __var_43 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_44 := wallet_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_44 := wallet_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __tmp__DType[__var_43] == RefundEscrow;
    call RefundEscrow_RefundEscrow__fail(__var_43, this, 0, __var_44);
    if (revert)
    {
        return;
    }

    __var_42 := __var_43;
    __tmp___escrow_RefundableCrowdsale[this] := __var_42;
    assume __tmp___goal_RefundableCrowdsale[this] >= 0;
    assume goal_s1071 >= 0;
    __tmp___goal_RefundableCrowdsale[this] := goal_s1071;
}



implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _goal_RefundableCrowdsale[this] := 0;
    assume goal_s1071 >= 0;
    if (!(goal_s1071 > 0))
    {
        revert := true;
        return;
    }

    call __var_43 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    if (DType[this] == SampleCrowdsale)
    {
        call __var_44 := wallet_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call __var_44 := wallet_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume DType[__var_43] == RefundEscrow;
    call RefundEscrow_RefundEscrow__success(__var_43, this, 0, __var_44);
    if (revert)
    {
        return;
    }

    __var_42 := __var_43;
    _escrow_RefundableCrowdsale[this] := __var_42;
    assume _goal_RefundableCrowdsale[this] >= 0;
    assume goal_s1071 >= 0;
    _goal_RefundableCrowdsale[this] := goal_s1071;
}



implementation RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, goal_s1071);
    if (revert)
    {
        return;
    }
}



implementation RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1071: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, goal_s1071);
    if (revert)
    {
        return;
    }
}



implementation goal_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume __tmp___goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := __tmp___goal_RefundableCrowdsale[this];
    return;
}



implementation goal_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume _goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := _goal_RefundableCrowdsale[this];
    return;
}



implementation claimRefund_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1102: Ref)
{
  var __var_45: bool;
  var __var_46: bool;
  var __var_47: int;

    gas := gas - 35;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_45 := finalized_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_45 := finalized_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_45)
    {
        revert := true;
        return;
    }

    gas := gas - 38;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_46 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_46 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_46)
    {
        revert := true;
        return;
    }

    gas := gas - 37173;
    if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call withdraw_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1102);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call withdraw_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1102);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call withdraw_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1102);
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



implementation claimRefund_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1102: Ref)
{
  var __var_45: bool;
  var __var_46: bool;
  var __var_47: int;

    gas := gas - 35;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_45 := finalized_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call __var_45 := finalized_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_45)
    {
        revert := true;
        return;
    }

    gas := gas - 38;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_46 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call __var_46 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_46)
    {
        revert := true;
        return;
    }

    gas := gas - 37173;
    if (DType[_escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call withdraw_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1102);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call withdraw_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1102);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call withdraw_Escrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1102);
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



implementation goalReached_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_48: int;

    gas := gas - 3;
    gas := gas - 229;
    assume __var_48 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_48 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_48 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_48 >= 0;
    assume __tmp___goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := __var_48 >= __tmp___goal_RefundableCrowdsale[this];
    return;
}



implementation goalReached_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_48: int;

    gas := gas - 3;
    gas := gas - 229;
    assume __var_48 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_48 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call __var_48 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_48 >= 0;
    assume _goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := __var_48 >= _goal_RefundableCrowdsale[this];
    return;
}



implementation _finalization_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_49: bool;
  var __var_50: int;
  var __var_51: int;
  var __var_52: int;
  var __var_53: int;

    gas := gas - 15;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_49 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_49 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__var_49)
    {
        gas := gas - 37034;
        call close_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_50);
        if (revert)
        {
            return;
        }

        gas := gas - 37034;
        call beneficiaryWithdraw_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_51);
        if (revert)
        {
            return;
        }
    }
    else
    {
        gas := gas - 37034;
        call enableRefunds_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_52);
        if (revert)
        {
            return;
        }
    }

    gas := gas - 4;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _finalization_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation _finalization_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_49: bool;
  var __var_50: int;
  var __var_51: int;
  var __var_52: int;
  var __var_53: int;

    gas := gas - 15;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_49 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call __var_49 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__var_49)
    {
        gas := gas - 37034;
        call close_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_50);
        if (revert)
        {
            return;
        }

        gas := gas - 37034;
        call beneficiaryWithdraw_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_51);
        if (revert)
        {
            return;
        }
    }
    else
    {
        gas := gas - 37034;
        call enableRefunds_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_52);
        if (revert)
        {
            return;
        }
    }

    gas := gas - 4;
    if (DType[this] == SampleCrowdsale)
    {
        call _finalization_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation _forwardFunds_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 37176;
    assume msgvalue_MSG >= 0;
    if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call deposit_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call deposit_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call deposit_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, msgsender_MSG);
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



implementation _forwardFunds_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 37176;
    assume msgvalue_MSG >= 0;
    if (DType[_escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call deposit_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call deposit_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call deposit_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, msgsender_MSG);
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



implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_54: Ref;
  var __var_55: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_54 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___balances_ERC20[this] := __var_54;
    __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]] := zeroRefIntArr();
    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := 0;
    call __var_55 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___allowed_ERC20[this] := __var_55;
    __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]] := zeroRefRefArr();
    __tmp__M_Ref_int__allowed2[null] := zeroRefIntArr();
    __tmp___totalSupply_ERC20[this] := 0;
}



implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_54: Ref;
  var __var_55: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_54 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _balances_ERC20[this] := __var_54;
    M_Ref_int__balances1[_balances_ERC20[this]] := zeroRefIntArr();
    sum__balances1[_balances_ERC20[this]] := 0;
    call __var_55 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _allowed_ERC20[this] := __var_55;
    M_Ref_Ref__allowed2[_allowed_ERC20[this]] := zeroRefRefArr();
    M_Ref_int__allowed2[null] := zeroRefIntArr();
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



implementation balanceOf_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s1196: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][owner_s1196] >= 0;
    __ret_0_ := __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][owner_s1196];
    return;
}



implementation balanceOf_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s1196: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 912;
    assume M_Ref_int__balances1[_balances_ERC20[this]][owner_s1196] >= 0;
    __ret_0_ := M_Ref_int__balances1[_balances_ERC20[this]][owner_s1196];
    return;
}



implementation allowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s1212: Ref, 
    spender_s1212: Ref)
   returns (__ret_0_: int)
{
  var __var_56: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][owner_s1212] == null)
    {
        call __var_56 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][owner_s1212] := __var_56;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][owner_s1212]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][owner_s1212]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][owner_s1212]][spender_s1212]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][owner_s1212]][spender_s1212];
    return;
}



implementation allowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s1212: Ref, 
    spender_s1212: Ref)
   returns (__ret_0_: int)
{
  var __var_56: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][owner_s1212] == null)
    {
        call __var_56 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][owner_s1212] := __var_56;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][owner_s1212]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][owner_s1212]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][owner_s1212]][spender_s1212]
       >= 0;
    __ret_0_ := M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][owner_s1212]][spender_s1212];
    return;
}



implementation transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1231: Ref, 
    value_s1231: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 36;
    assume value_s1231 >= 0;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s1231, value_s1231);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s1231, value_s1231);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s1231, value_s1231);
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



implementation transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1231: Ref, 
    value_s1231: int)
   returns (__ret_0_: bool)
{
    gas := gas - 9;
    gas := gas - 36;
    assume value_s1231 >= 0;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s1231, value_s1231);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s1231, value_s1231);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, to_s1231, value_s1231);
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
    spender_s1267: Ref, 
    value_s1267: int)
   returns (__ret_0_: bool)
{
  var __var_57: Ref;
  var __var_58: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_57 := null;
    if (!(spender_s1267 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60597;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_58 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_58;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1267]
       >= 0;
    assume value_s1267 >= 0;
    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1267];
    __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1267] := value_s1267;
    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1267];
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1267: Ref, 
    value_s1267: int)
   returns (__ret_0_: bool)
{
  var __var_57: Ref;
  var __var_58: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_57 := null;
    if (!(spender_s1267 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 60597;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_58 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] := __var_58;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1267]
       >= 0;
    assume value_s1267 >= 0;
    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1267];
    M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1267] := value_s1267;
    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1267];
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1316: Ref, 
    to_s1316: Ref, 
    value_s1316: int)
   returns (__ret_0_: bool)
{
  var __var_59: Ref;
  var __var_60: int;
  var __var_61: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316] == null)
    {
        call __var_59 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316] := __var_59;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316] == null)
    {
        call __var_61 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316] := __var_61;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]][msgsender_MSG]
       >= 0;
    assume value_s1316 >= 0;
    call __var_60 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]][msgsender_MSG], value_s1316);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]]
       - __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]][msgsender_MSG];
    __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]][msgsender_MSG] := __var_60;
    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]]
       + __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][from_s1316]][msgsender_MSG];
    assume __var_60 >= 0;
    gas := gas - 72;
    assume value_s1316 >= 0;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _transfer_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
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
    from_s1316: Ref, 
    to_s1316: Ref, 
    value_s1316: int)
   returns (__ret_0_: bool)
{
  var __var_59: Ref;
  var __var_60: int;
  var __var_61: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316] == null)
    {
        call __var_59 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316] := __var_59;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316] == null)
    {
        call __var_61 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316] := __var_61;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]][msgsender_MSG]
       >= 0;
    assume value_s1316 >= 0;
    call __var_60 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]][msgsender_MSG], value_s1316);
    if (revert)
    {
        return;
    }

    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]]
       - M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]][msgsender_MSG];
    M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]][msgsender_MSG] := __var_60;
    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]]
       + M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][from_s1316]][msgsender_MSG];
    assume __var_60 >= 0;
    gas := gas - 72;
    assume value_s1316 >= 0;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _transfer_ERC20__success(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
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
    spender_s1365: Ref, 
    addedValue_s1365: int)
   returns (__ret_0_: bool)
{
  var __var_62: Ref;
  var __var_63: Ref;
  var __var_64: int;
  var __var_65: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_62 := null;
    if (!(spender_s1365 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_63 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_63;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1365]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_65 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_65;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1365]
       >= 0;
    assume addedValue_s1365 >= 0;
    call __var_64 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1365], addedValue_s1365);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1365];
    __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1365] := __var_64;
    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1365];
    assume __var_64 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1365: Ref, 
    addedValue_s1365: int)
   returns (__ret_0_: bool)
{
  var __var_62: Ref;
  var __var_63: Ref;
  var __var_64: int;
  var __var_65: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_62 := null;
    if (!(spender_s1365 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_63 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] := __var_63;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1365]
       >= 0;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_65 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] := __var_65;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1365]
       >= 0;
    assume addedValue_s1365 >= 0;
    call __var_64 := add_SafeMath__success(this, this, 0, M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1365], addedValue_s1365);
    if (revert)
    {
        return;
    }

    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1365];
    M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1365] := __var_64;
    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1365];
    assume __var_64 >= 0;
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1414: Ref, 
    subtractedValue_s1414: int)
   returns (__ret_0_: bool)
{
  var __var_66: Ref;
  var __var_67: Ref;
  var __var_68: int;
  var __var_69: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_66 := null;
    if (!(spender_s1414 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_67 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_67;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1414]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_69 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG] := __var_69;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1414]
       >= 0;
    assume subtractedValue_s1414 >= 0;
    call __var_68 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1414], subtractedValue_s1414);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       - __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1414];
    __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1414] := __var_68;
    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]]
       + __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][msgsender_MSG]][spender_s1414];
    assume __var_68 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseAllowance_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s1414: Ref, 
    subtractedValue_s1414: int)
   returns (__ret_0_: bool)
{
  var __var_66: Ref;
  var __var_67: Ref;
  var __var_68: int;
  var __var_69: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_66 := null;
    if (!(spender_s1414 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61851;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_67 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] := __var_67;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1414]
       >= 0;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] == null)
    {
        call __var_69 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG] := __var_69;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1414]
       >= 0;
    assume subtractedValue_s1414 >= 0;
    call __var_68 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1414], subtractedValue_s1414);
    if (revert)
    {
        return;
    }

    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]]
       - M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1414];
    M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1414] := __var_68;
    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]]
       + M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][msgsender_MSG]][spender_s1414];
    assume __var_68 >= 0;
    assert {:EventEmitted "Approval_ERC20"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation _transfer_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1460: Ref, 
    to_s1460: Ref, 
    value_s1460: int)
{
  var __var_70: Ref;
  var __var_71: int;
  var __var_72: int;

    gas := gas - 132;
    __var_70 := null;
    if (!(to_s1460 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][from_s1460] >= 0;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][from_s1460] >= 0;
    assume value_s1460 >= 0;
    call __var_71 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][from_s1460], value_s1460);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][from_s1460];
    __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][from_s1460] := __var_71;
    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][from_s1460];
    assume __var_71 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][to_s1460] >= 0;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][to_s1460] >= 0;
    assume value_s1460 >= 0;
    call __var_72 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][to_s1460], value_s1460);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][to_s1460];
    __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][to_s1460] := __var_72;
    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][to_s1460];
    assume __var_72 >= 0;
}



implementation _transfer_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1460: Ref, 
    to_s1460: Ref, 
    value_s1460: int)
{
  var __var_70: Ref;
  var __var_71: int;
  var __var_72: int;

    gas := gas - 132;
    __var_70 := null;
    if (!(to_s1460 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int__balances1[_balances_ERC20[this]][from_s1460] >= 0;
    assume M_Ref_int__balances1[_balances_ERC20[this]][from_s1460] >= 0;
    assume value_s1460 >= 0;
    call __var_71 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances1[_balances_ERC20[this]][from_s1460], value_s1460);
    if (revert)
    {
        return;
    }

    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       - M_Ref_int__balances1[_balances_ERC20[this]][from_s1460];
    M_Ref_int__balances1[_balances_ERC20[this]][from_s1460] := __var_71;
    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       + M_Ref_int__balances1[_balances_ERC20[this]][from_s1460];
    assume __var_71 >= 0;
    gas := gas - 61299;
    assume M_Ref_int__balances1[_balances_ERC20[this]][to_s1460] >= 0;
    assume M_Ref_int__balances1[_balances_ERC20[this]][to_s1460] >= 0;
    assume value_s1460 >= 0;
    call __var_72 := add_SafeMath__success(this, this, 0, M_Ref_int__balances1[_balances_ERC20[this]][to_s1460], value_s1460);
    if (revert)
    {
        return;
    }

    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       - M_Ref_int__balances1[_balances_ERC20[this]][to_s1460];
    M_Ref_int__balances1[_balances_ERC20[this]][to_s1460] := __var_72;
    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       + M_Ref_int__balances1[_balances_ERC20[this]][to_s1460];
    assume __var_72 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _mint_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1502: Ref, 
    value_s1502: int)
{
  var __var_73: Ref;
  var __var_74: int;
  var __var_75: int;

    gas := gas - 88;
    __var_73 := null;
    if (!(account_s1502 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40494;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s1502 >= 0;
    call __var_74 := add_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s1502);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_74;
    assume __var_74 >= 0;
    gas := gas - 40878;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1502] >= 0;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1502] >= 0;
    assume value_s1502 >= 0;
    call __var_75 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1502], value_s1502);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1502];
    __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1502] := __var_75;
    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1502];
    assume __var_75 >= 0;
}



implementation _mint_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1502: Ref, 
    value_s1502: int)
{
  var __var_73: Ref;
  var __var_74: int;
  var __var_75: int;

    gas := gas - 88;
    __var_73 := null;
    if (!(account_s1502 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40494;
    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s1502 >= 0;
    call __var_74 := add_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s1502);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_74;
    assume __var_74 >= 0;
    gas := gas - 40878;
    assume M_Ref_int__balances1[_balances_ERC20[this]][account_s1502] >= 0;
    assume M_Ref_int__balances1[_balances_ERC20[this]][account_s1502] >= 0;
    assume value_s1502 >= 0;
    call __var_75 := add_SafeMath__success(this, this, 0, M_Ref_int__balances1[_balances_ERC20[this]][account_s1502], value_s1502);
    if (revert)
    {
        return;
    }

    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       - M_Ref_int__balances1[_balances_ERC20[this]][account_s1502];
    M_Ref_int__balances1[_balances_ERC20[this]][account_s1502] := __var_75;
    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       + M_Ref_int__balances1[_balances_ERC20[this]][account_s1502];
    assume __var_75 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burn_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1544: Ref, 
    value_s1544: int)
{
  var __var_76: Ref;
  var __var_77: int;
  var __var_78: int;

    __var_76 := null;
    if (!(account_s1544 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume __tmp___totalSupply_ERC20[this] >= 0;
    assume value_s1544 >= 0;
    call __var_77 := sub_SafeMath__fail(this, this, 0, __tmp___totalSupply_ERC20[this], value_s1544);
    if (revert)
    {
        return;
    }

    __tmp___totalSupply_ERC20[this] := __var_77;
    assume __var_77 >= 0;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1544] >= 0;
    assume __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1544] >= 0;
    assume value_s1544 >= 0;
    call __var_78 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1544], value_s1544);
    if (revert)
    {
        return;
    }

    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       - __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1544];
    __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1544] := __var_78;
    __tmp__sum__balances1[__tmp___balances_ERC20[this]] := __tmp__sum__balances1[__tmp___balances_ERC20[this]]
       + __tmp__M_Ref_int__balances1[__tmp___balances_ERC20[this]][account_s1544];
    assume __var_78 >= 0;
}



implementation _burn_ERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1544: Ref, 
    value_s1544: int)
{
  var __var_76: Ref;
  var __var_77: int;
  var __var_78: int;

    __var_76 := null;
    if (!(account_s1544 != null))
    {
        revert := true;
        return;
    }

    assume _totalSupply_ERC20[this] >= 0;
    assume _totalSupply_ERC20[this] >= 0;
    assume value_s1544 >= 0;
    call __var_77 := sub_SafeMath__success(this, this, 0, _totalSupply_ERC20[this], value_s1544);
    if (revert)
    {
        return;
    }

    _totalSupply_ERC20[this] := __var_77;
    assume __var_77 >= 0;
    assume M_Ref_int__balances1[_balances_ERC20[this]][account_s1544] >= 0;
    assume M_Ref_int__balances1[_balances_ERC20[this]][account_s1544] >= 0;
    assume value_s1544 >= 0;
    call __var_78 := sub_SafeMath__success(this, this, 0, M_Ref_int__balances1[_balances_ERC20[this]][account_s1544], value_s1544);
    if (revert)
    {
        return;
    }

    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       - M_Ref_int__balances1[_balances_ERC20[this]][account_s1544];
    M_Ref_int__balances1[_balances_ERC20[this]][account_s1544] := __var_78;
    sum__balances1[_balances_ERC20[this]] := sum__balances1[_balances_ERC20[this]]
       + M_Ref_int__balances1[_balances_ERC20[this]][account_s1544];
    assume __var_78 >= 0;
    assert {:EventEmitted "Transfer_ERC20"} true;
}



implementation _burnFrom_ERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    account_s1586: Ref, 
    value_s1586: int)
{
  var __var_79: Ref;
  var __var_80: int;
  var __var_81: Ref;

    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586] == null)
    {
        call __var_79 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586] := __var_79;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586] == null)
    {
        call __var_81 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586] := __var_81;
        __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]] := zeroRefIntArr();
        __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]] := 0;
    }

    assume __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]][msgsender_MSG]
       >= 0;
    assume value_s1586 >= 0;
    call __var_80 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]][msgsender_MSG], value_s1586);
    if (revert)
    {
        return;
    }

    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]]
       - __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]][msgsender_MSG];
    __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]][msgsender_MSG] := __var_80;
    __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]] := __tmp__sum__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]]
       + __tmp__M_Ref_int__allowed2[__tmp__M_Ref_Ref__allowed2[__tmp___allowed_ERC20[this]][account_s1586]][msgsender_MSG];
    assume __var_80 >= 0;
    assume value_s1586 >= 0;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s1586, value_s1586);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s1586, value_s1586);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20)
    {
        call _burn_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, account_s1586, value_s1586);
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
    account_s1586: Ref, 
    value_s1586: int)
{
  var __var_79: Ref;
  var __var_80: int;
  var __var_81: Ref;

    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586] == null)
    {
        call __var_79 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586] := __var_79;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586] == null)
    {
        call __var_81 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586] := __var_81;
        M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]] := zeroRefIntArr();
        sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]] := 0;
    }

    assume M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]][msgsender_MSG]
       >= 0;
    assume value_s1586 >= 0;
    call __var_80 := sub_SafeMath__success(this, this, 0, M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]][msgsender_MSG], value_s1586);
    if (revert)
    {
        return;
    }

    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]]
       - M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]][msgsender_MSG];
    M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]][msgsender_MSG] := __var_80;
    sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]] := sum__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]]
       + M_Ref_int__allowed2[M_Ref_Ref__allowed2[_allowed_ERC20[this]][account_s1586]][msgsender_MSG];
    assume __var_80 >= 0;
    assume value_s1586 >= 0;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s1586, value_s1586);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s1586, value_s1586);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20)
    {
        call _burn_ERC20__success(this, msgsender_MSG, msgvalue_MSG, account_s1586, value_s1586);
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



implementation Roles_Roles_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Roles_Roles_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation Roles_Roles__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Roles_Roles_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Roles_Roles__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Roles_Roles_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation add_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1624: Ref, 
    account_s1624: Ref)
{
  var __var_82: Ref;
  var __var_83: bool;

    gas := gas - 88;
    __var_82 := null;
    if (!(account_s1624 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 66;
    call __var_83 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s1624, account_s1624);
    if (revert)
    {
        return;
    }

    if (!!__var_83)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s1624]][account_s1624] := true;
}



implementation add_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1624: Ref, 
    account_s1624: Ref)
{
  var __var_82: Ref;
  var __var_83: bool;

    gas := gas - 88;
    __var_82 := null;
    if (!(account_s1624 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 66;
    call __var_83 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s1624, account_s1624);
    if (revert)
    {
        return;
    }

    if (!!__var_83)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    M_Ref_bool[bearer_Roles.Role[role_s1624]][account_s1624] := true;
}



implementation remove_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1655: Ref, 
    account_s1655: Ref)
{
  var __var_84: Ref;
  var __var_85: bool;

    gas := gas - 88;
    __var_84 := null;
    if (!(account_s1655 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 82;
    call __var_85 := has_Roles__fail(this, msgsender_MSG, msgvalue_MSG, role_s1655, account_s1655);
    if (revert)
    {
        return;
    }

    if (!__var_85)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s1655]][account_s1655] := false;
}



implementation remove_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1655: Ref, 
    account_s1655: Ref)
{
  var __var_84: Ref;
  var __var_85: bool;

    gas := gas - 88;
    __var_84 := null;
    if (!(account_s1655 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 82;
    call __var_85 := has_Roles__success(this, msgsender_MSG, msgvalue_MSG, role_s1655, account_s1655);
    if (revert)
    {
        return;
    }

    if (!__var_85)
    {
        revert := true;
        return;
    }

    gas := gas - 40738;
    M_Ref_bool[bearer_Roles.Role[role_s1655]][account_s1655] := false;
}



implementation has_Roles__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1678: Ref, 
    account_s1678: Ref)
   returns (__ret_0_: bool)
{
  var __var_86: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_86 := null;
    if (!(account_s1678 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 692;
    __ret_0_ := __tmp__M_Ref_bool[__tmp__bearer_Roles.Role[role_s1678]][account_s1678];
    return;
}



implementation has_Roles__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    role_s1678: Ref, 
    account_s1678: Ref)
   returns (__ret_0_: bool)
{
  var __var_86: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_86 := null;
    if (!(account_s1678 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 692;
    __ret_0_ := M_Ref_bool[bearer_Roles.Role[role_s1678]][account_s1678];
    return;
}



implementation MinterRole_MinterRole_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_87: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_87 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___minters_MinterRole[this] := __var_87;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation MinterRole_MinterRole_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_87: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_87 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _minters_MinterRole[this] := __var_87;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation MinterRole_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_87: Ref;

    call MinterRole_MinterRole_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MinterRole_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_87: Ref;

    call MinterRole_MinterRole_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation isMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1725: Ref)
   returns (__ret_0_: bool)
{
  var __var_89: bool;

    gas := gas - 6;
    gas := gas - 82;
    call __var_89 := has_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s1725);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_89;
    return;
}



implementation isMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1725: Ref)
   returns (__ret_0_: bool)
{
  var __var_89: bool;

    gas := gas - 6;
    gas := gas - 82;
    call __var_89 := has_Roles__success(this, this, 0, _minters_MinterRole[this], account_s1725);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_89;
    return;
}



implementation addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1737: Ref)
{
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 14;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1737);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1737);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, account_s1737);
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



implementation addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1737: Ref)
{
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 14;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1737);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1737);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _addMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, account_s1737);
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



implementation renounceMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 12;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation renounceMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 12;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call _removeMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation _addMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1762: Ref)
{
    gas := gas - 72;
    call add_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s1762);
    if (revert)
    {
        return;
    }
}



implementation _addMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1762: Ref)
{
    gas := gas - 72;
    call add_Roles__success(this, this, 0, _minters_MinterRole[this], account_s1762);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "MinterAdded_MinterRole"} true;
}



implementation _removeMinter_MinterRole__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1778: Ref)
{
    gas := gas - 72;
    call remove_Roles__fail(this, this, 0, __tmp___minters_MinterRole[this], account_s1778);
    if (revert)
    {
        return;
    }
}



implementation _removeMinter_MinterRole__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s1778: Ref)
{
    gas := gas - 72;
    call remove_Roles__success(this, this, 0, _minters_MinterRole[this], account_s1778);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "MinterRemoved_MinterRole"} true;
}



implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ERC20Mintable_ERC20Mintable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Mintable_ERC20Mintable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20Mintable_ERC20Mintable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Mintable_ERC20Mintable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation mint_ERC20Mintable__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1802: Ref, 
    value_s1802: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyMinter_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume value_s1802 >= 0;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__fail(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
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



implementation mint_ERC20Mintable__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    to_s1802: Ref, 
    value_s1802: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyMinter_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume value_s1802 >= 0;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call _mint_ERC20__success(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
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



implementation MintedCrowdsale_MintedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation MintedCrowdsale_MintedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation MintedCrowdsale_MintedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MintedCrowdsale_MintedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MintedCrowdsale_MintedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MintedCrowdsale_MintedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation _deliverTokens_MintedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1826: Ref, 
    tokenAmount_s1826: int)
{
  var __var_90: bool;
  var __var_91: Ref;
  var __var_92: Ref;
  var __var_93: Ref;
  var __var_94: int;

    gas := gas - 37252;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_93 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MintedCrowdsale)
    {
        call __var_93 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __var_92 := __var_93;
    assume __tmp__DType[__var_93] == ERC20Mintable
       || __tmp__DType[__var_93] == SampleCrowdsaleToken;
    __var_91 := __var_93;
    assume tokenAmount_s1826 >= 0;
    if (__tmp__DType[__var_91] == SampleCrowdsaleToken)
    {
        call __var_90 := mint_ERC20Mintable__fail(__var_91, this, __var_94, beneficiary_s1826, tokenAmount_s1826);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_91] == ERC20Mintable)
    {
        call __var_90 := mint_ERC20Mintable__fail(__var_91, this, __var_94, beneficiary_s1826, tokenAmount_s1826);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_90)
    {
        revert := true;
        return;
    }
}



implementation _deliverTokens_MintedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1826: Ref, 
    tokenAmount_s1826: int)
{
  var __var_90: bool;
  var __var_91: Ref;
  var __var_92: Ref;
  var __var_93: Ref;
  var __var_94: int;

    gas := gas - 37252;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_93 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MintedCrowdsale)
    {
        call __var_93 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __var_92 := __var_93;
    assume DType[__var_93] == ERC20Mintable || DType[__var_93] == SampleCrowdsaleToken;
    __var_91 := __var_93;
    assume tokenAmount_s1826 >= 0;
    if (DType[__var_91] == SampleCrowdsaleToken)
    {
        call __var_90 := mint_ERC20Mintable__success(__var_91, this, __var_94, beneficiary_s1826, tokenAmount_s1826);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_91] == ERC20Mintable)
    {
        call __var_90 := mint_ERC20Mintable__success(__var_91, this, __var_94, beneficiary_s1826, tokenAmount_s1826);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_90)
    {
        revert := true;
        return;
    }
}



implementation CappedCrowdsale_CappedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___cap_CappedCrowdsale[this] := 0;
    assume cap_s1850 >= 0;
    if (!(cap_s1850 > 0))
    {
        revert := true;
        return;
    }

    assume __tmp___cap_CappedCrowdsale[this] >= 0;
    assume cap_s1850 >= 0;
    __tmp___cap_CappedCrowdsale[this] := cap_s1850;
}



implementation CappedCrowdsale_CappedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _cap_CappedCrowdsale[this] := 0;
    assume cap_s1850 >= 0;
    if (!(cap_s1850 > 0))
    {
        revert := true;
        return;
    }

    assume _cap_CappedCrowdsale[this] >= 0;
    assume cap_s1850 >= 0;
    _cap_CappedCrowdsale[this] := cap_s1850;
}



implementation CappedCrowdsale_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int)
{
    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call CappedCrowdsale_CappedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, cap_s1850);
    if (revert)
    {
        return;
    }
}



implementation CappedCrowdsale_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, cap_s1850: int)
{
    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call CappedCrowdsale_CappedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, cap_s1850);
    if (revert)
    {
        return;
    }
}



implementation cap_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume __tmp___cap_CappedCrowdsale[this] >= 0;
    __ret_0_ := __tmp___cap_CappedCrowdsale[this];
    return;
}



implementation cap_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume _cap_CappedCrowdsale[this] >= 0;
    __ret_0_ := _cap_CappedCrowdsale[this];
    return;
}



implementation capReached_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_95: int;

    gas := gas - 3;
    gas := gas - 229;
    assume __var_95 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_95 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call __var_95 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_95 >= 0;
    assume __tmp___cap_CappedCrowdsale[this] >= 0;
    __ret_0_ := __var_95 >= __tmp___cap_CappedCrowdsale[this];
    return;
}



implementation capReached_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_95: int;

    gas := gas - 3;
    gas := gas - 229;
    assume __var_95 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_95 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call __var_95 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_95 >= 0;
    assume _cap_CappedCrowdsale[this] >= 0;
    __ret_0_ := __var_95 >= _cap_CappedCrowdsale[this];
    return;
}



implementation _preValidatePurchase_CappedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1894: Ref, 
    weiAmount_s1894: int)
{
  var __var_96: int;
  var __var_97: int;
  var __var_98: int;

    gas := gas - 10;
    assume weiAmount_s1894 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1894, weiAmount_s1894);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1894, weiAmount_s1894);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 277;
    assume __var_97 >= 0;
    assume __var_98 >= 0;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_98 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call __var_98 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_98 >= 0;
    assume weiAmount_s1894 >= 0;
    call __var_97 := add_SafeMath__fail(this, this, 0, __var_98, weiAmount_s1894);
    if (revert)
    {
        return;
    }

    assume __var_97 >= 0;
    assume __tmp___cap_CappedCrowdsale[this] >= 0;
    if (!(__var_97 <= __tmp___cap_CappedCrowdsale[this]))
    {
        revert := true;
        return;
    }
}



implementation _preValidatePurchase_CappedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1894: Ref, 
    weiAmount_s1894: int)
{
  var __var_96: int;
  var __var_97: int;
  var __var_98: int;

    gas := gas - 10;
    assume weiAmount_s1894 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1894, weiAmount_s1894);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1894, weiAmount_s1894);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 277;
    assume __var_97 >= 0;
    assume __var_98 >= 0;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_98 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call __var_98 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_98 >= 0;
    assume weiAmount_s1894 >= 0;
    call __var_97 := add_SafeMath__success(this, this, 0, __var_98, weiAmount_s1894);
    if (revert)
    {
        return;
    }

    assume __var_97 >= 0;
    assume _cap_CappedCrowdsale[this] >= 0;
    if (!(__var_97 <= _cap_CappedCrowdsale[this]))
    {
        revert := true;
        return;
    }
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___name_ERC20Detailed[this] := -528660932;
    __tmp___symbol_ERC20Detailed[this] := -528660932;
    __tmp___decimals_ERC20Detailed[this] := 0;
    __tmp___name_ERC20Detailed[this] := name_s1925;
    __tmp___symbol_ERC20Detailed[this] := symbol_s1925;
    assume __tmp___decimals_ERC20Detailed[this] >= 0;
    assume decimals_s1925 >= 0;
    __tmp___decimals_ERC20Detailed[this] := decimals_s1925;
}



implementation ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _name_ERC20Detailed[this] := -528660932;
    _symbol_ERC20Detailed[this] := -528660932;
    _decimals_ERC20Detailed[this] := 0;
    _name_ERC20Detailed[this] := name_s1925;
    _symbol_ERC20Detailed[this] := symbol_s1925;
    assume _decimals_ERC20Detailed[this] >= 0;
    assume decimals_s1925 >= 0;
    _decimals_ERC20Detailed[this] := decimals_s1925;
}



implementation ERC20Detailed_ERC20Detailed__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, name_s1925, symbol_s1925, decimals_s1925);
    if (revert)
    {
        return;
    }
}



implementation ERC20Detailed_ERC20Detailed__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    name_s1925: int, 
    symbol_s1925: int, 
    decimals_s1925: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, name_s1925, symbol_s1925, decimals_s1925);
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



implementation ERC20TokenMetadata_ERC20TokenMetadata_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20TokenMetadata_ERC20TokenMetadata_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ERC20TokenMetadata_ERC20TokenMetadata__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20TokenMetadata_ERC20TokenMetadata_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20TokenMetadata_ERC20TokenMetadata__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20TokenMetadata_ERC20TokenMetadata_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20WithMetadata_ERC20WithMetadata_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___tokenURI_ERC20WithMetadata[this] := -528660932;
    __tmp___tokenURI_ERC20WithMetadata[this] := tokenURI_s1972;
}



implementation ERC20WithMetadata_ERC20WithMetadata_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _tokenURI_ERC20WithMetadata[this] := -528660932;
    _tokenURI_ERC20WithMetadata[this] := tokenURI_s1972;
}



implementation ERC20WithMetadata_ERC20WithMetadata__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int)
{
    call IERC20_IERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20TokenMetadata_ERC20TokenMetadata__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20WithMetadata_ERC20WithMetadata_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, tokenURI_s1972);
    if (revert)
    {
        return;
    }
}



implementation ERC20WithMetadata_ERC20WithMetadata__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenURI_s1972: int)
{
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20TokenMetadata_ERC20TokenMetadata__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20WithMetadata_ERC20WithMetadata_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, tokenURI_s1972);
    if (revert)
    {
        return;
    }
}



implementation tokenURI_ERC20WithMetadata__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __tmp___tokenURI_ERC20WithMetadata[this];
    return;
}



implementation tokenURI_ERC20WithMetadata__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := _tokenURI_ERC20WithMetadata[this];
    return;
}



implementation SampleCrowdsaleToken_SampleCrowdsaleToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation SampleCrowdsaleToken_SampleCrowdsaleToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation SampleCrowdsaleToken_SampleCrowdsaleToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MinterRole_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Mintable_ERC20Mintable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed__fail(this, msgsender_MSG, msgvalue_MSG, 919691988, -1091353982, 18);
    if (revert)
    {
        return;
    }

    call SampleCrowdsaleToken_SampleCrowdsaleToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SampleCrowdsaleToken_SampleCrowdsaleToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call MinterRole_MinterRole__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20Detailed_ERC20Detailed__success(this, msgsender_MSG, msgvalue_MSG, 919691988, -1091353982, 18);
    if (revert)
    {
        return;
    }

    call SampleCrowdsaleToken_SampleCrowdsaleToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SampleCrowdsale_SampleCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    assume goal_s2040 >= 0;
    assume cap_s2040 >= 0;
    if (!(goal_s2040 <= cap_s2040))
    {
        revert := true;
        return;
    }
}



implementation SampleCrowdsale_SampleCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    assume goal_s2040 >= 0;
    assume cap_s2040 >= 0;
    if (!(goal_s2040 <= cap_s2040))
    {
        revert := true;
        return;
    }
}



implementation SampleCrowdsale_SampleCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int)
{
    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume rate_s2040 >= 0;
    call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s2040, wallet_s2040, token_s2040);
    if (revert)
    {
        return;
    }

    assume cap_s2040 >= 0;
    call CappedCrowdsale_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, cap_s2040);
    if (revert)
    {
        return;
    }

    assume openingTime_s2040 >= 0;
    assume closingTime_s2040 >= 0;
    call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s2040, closingTime_s2040);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume goal_s2040 >= 0;
    call RefundableCrowdsale_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, goal_s2040);
    if (revert)
    {
        return;
    }

    call MintedCrowdsale_MintedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call SampleCrowdsale_SampleCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s2040, closingTime_s2040, rate_s2040, wallet_s2040, cap_s2040, token_s2040, goal_s2040);
    if (revert)
    {
        return;
    }
}



implementation SampleCrowdsale_SampleCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s2040: int, 
    closingTime_s2040: int, 
    rate_s2040: int, 
    wallet_s2040: Ref, 
    cap_s2040: int, 
    token_s2040: Ref, 
    goal_s2040: int)
{
    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume rate_s2040 >= 0;
    call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s2040, wallet_s2040, token_s2040);
    if (revert)
    {
        return;
    }

    assume cap_s2040 >= 0;
    call CappedCrowdsale_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, cap_s2040);
    if (revert)
    {
        return;
    }

    assume openingTime_s2040 >= 0;
    assume closingTime_s2040 >= 0;
    call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s2040, closingTime_s2040);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume goal_s2040 >= 0;
    call RefundableCrowdsale_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, goal_s2040);
    if (revert)
    {
        return;
    }

    call MintedCrowdsale_MintedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call SampleCrowdsale_SampleCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s2040, closingTime_s2040, rate_s2040, wallet_s2040, cap_s2040, token_s2040, goal_s2040);
    if (revert)
    {
        return;
    }
}



implementation Deployer_Deployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var cap_s2099: int;
  var goal_s2099: int;
  var wallet_s2099: Ref;
  var __var_99: Ref;
  var __var_100: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: int;
  var __var_105: int;
  var __var_106: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    assume cap_s2099 >= 0;
    cap_s2099 := 5000000;
    assume goal_s2099 >= 0;
    goal_s2099 := 3000000;
    wallet_s2099 := ConstantToRef(487167212443634306067894944238761006551977514325);
    call __var_100 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_100] == SampleCrowdsaleToken;
    call SampleCrowdsaleToken_SampleCrowdsaleToken__fail(__var_100, this, 0);
    if (revert)
    {
        return;
    }

    __var_99 := __var_100;
    __tmp__token_Deployer[this] := __var_99;
    call __var_102 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume cap_s2099 >= 0;
    assume goal_s2099 >= 0;
    assume __tmp__DType[__var_102] == SampleCrowdsale;
    call SampleCrowdsale_SampleCrowdsale__fail(__var_102, this, 0, 123123, 123123 + 1, 1, wallet_s2099, cap_s2099, __tmp__token_Deployer[this], goal_s2099);
    if (revert)
    {
        return;
    }

    __var_101 := __var_102;
    __tmp__crowdsale_Deployer[this] := __var_101;
    assume __tmp__DType[__tmp__crowdsale_Deployer[this]] == SampleCrowdsale;
    __var_103 := __tmp___escrow_RefundableCrowdsale[__tmp__crowdsale_Deployer[this]];
    __tmp__escrow_Deployer[this] := __var_103;
    __var_106 := __tmp__crowdsale_Deployer[this];
    if (__tmp__DType[__tmp__token_Deployer[this]] == SampleCrowdsaleToken)
    {
        call addMinter_MinterRole__fail(__tmp__token_Deployer[this], this, __var_105, __tmp__crowdsale_Deployer[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Deployer[this]] == ERC20Mintable)
    {
        call addMinter_MinterRole__fail(__tmp__token_Deployer[this], this, __var_105, __tmp__crowdsale_Deployer[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Deployer[this]] == MinterRole)
    {
        call addMinter_MinterRole__fail(__tmp__token_Deployer[this], this, __var_105, __tmp__crowdsale_Deployer[this]);
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



implementation Deployer_Deployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var cap_s2099: int;
  var goal_s2099: int;
  var wallet_s2099: Ref;
  var __var_99: Ref;
  var __var_100: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: int;
  var __var_105: int;
  var __var_106: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    assume cap_s2099 >= 0;
    cap_s2099 := 5000000;
    assume goal_s2099 >= 0;
    goal_s2099 := 3000000;
    wallet_s2099 := ConstantToRef(487167212443634306067894944238761006551977514325);
    call __var_100 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_100] == SampleCrowdsaleToken;
    call SampleCrowdsaleToken_SampleCrowdsaleToken__success(__var_100, this, 0);
    if (revert)
    {
        return;
    }

    __var_99 := __var_100;
    token_Deployer[this] := __var_99;
    call __var_102 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume cap_s2099 >= 0;
    assume goal_s2099 >= 0;
    assume DType[__var_102] == SampleCrowdsale;
    call SampleCrowdsale_SampleCrowdsale__success(__var_102, this, 0, 123123, 123123 + 1, 1, wallet_s2099, cap_s2099, token_Deployer[this], goal_s2099);
    if (revert)
    {
        return;
    }

    __var_101 := __var_102;
    crowdsale_Deployer[this] := __var_101;
    assume DType[crowdsale_Deployer[this]] == SampleCrowdsale;
    __var_103 := _escrow_RefundableCrowdsale[crowdsale_Deployer[this]];
    escrow_Deployer[this] := __var_103;
    __var_106 := crowdsale_Deployer[this];
    if (DType[token_Deployer[this]] == SampleCrowdsaleToken)
    {
        call addMinter_MinterRole__success(token_Deployer[this], this, __var_105, crowdsale_Deployer[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Deployer[this]] == ERC20Mintable)
    {
        call addMinter_MinterRole__success(token_Deployer[this], this, __var_105, crowdsale_Deployer[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Deployer[this]] == MinterRole)
    {
        call addMinter_MinterRole__success(token_Deployer[this], this, __var_105, crowdsale_Deployer[this]);
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



implementation Deployer_Deployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var cap_s2099: int;
  var goal_s2099: int;
  var wallet_s2099: Ref;
  var __var_99: Ref;
  var __var_100: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: int;
  var __var_105: int;
  var __var_106: Ref;

    call Deployer_Deployer_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Deployer_Deployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var cap_s2099: int;
  var goal_s2099: int;
  var wallet_s2099: Ref;
  var __var_99: Ref;
  var __var_100: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: int;
  var __var_105: int;
  var __var_106: Ref;

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
    else if (__tmp__DType[to] == SampleCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == SampleCrowdsaleToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20WithMetadata)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20TokenMetadata)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == CappedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MintedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Mintable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MinterRole)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == RefundableCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == RefundEscrow)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ConditionalEscrow)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Escrow)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Secondary)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == FinalizableCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Crowdsale)
    {
        call FallbackMethod_Crowdsale__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == ReentrancyGuard)
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
    else if (DType[to] == SampleCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == SampleCrowdsaleToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20WithMetadata)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20TokenMetadata)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Detailed)
    {
        assume amount == 0;
    }
    else if (DType[to] == CappedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == MintedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Mintable)
    {
        assume amount == 0;
    }
    else if (DType[to] == MinterRole)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == RefundableCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == RefundEscrow)
    {
        assume amount == 0;
    }
    else if (DType[to] == ConditionalEscrow)
    {
        assume amount == 0;
    }
    else if (DType[to] == Escrow)
    {
        assume amount == 0;
    }
    else if (DType[to] == Secondary)
    {
        assume amount == 0;
    }
    else if (DType[to] == FinalizableCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == Crowdsale)
    {
        call FallbackMethod_Crowdsale__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == ReentrancyGuard)
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
  var __snap___tmp__M_Ref_int__deposits0: [Ref][Ref]int;
  var __snap___tmp__sum__deposits0: [Ref]int;
  var __snap___tmp__M_Ref_int__balances1: [Ref][Ref]int;
  var __snap___tmp__sum__balances1: [Ref]int;
  var __snap___tmp__M_Ref_int__allowed2: [Ref][Ref]int;
  var __snap___tmp__M_Ref_Ref__allowed2: [Ref][Ref]Ref;
  var __snap___tmp__sum__allowed2: [Ref]int;
  var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp___guardCounter_ReentrancyGuard: [Ref]int;
  var __snap___tmp___token_Crowdsale: [Ref]Ref;
  var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
  var __snap___tmp___rate_Crowdsale: [Ref]int;
  var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
  var __snap___tmp___openingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp___closingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp___finalized_FinalizableCrowdsale: [Ref]bool;
  var __snap___tmp___primary_Secondary: [Ref]Ref;
  var __snap___tmp___deposits_Escrow: [Ref]Ref;
  var __snap___tmp___state_RefundEscrow: [Ref]int;
  var __snap___tmp___beneficiary_RefundEscrow: [Ref]Ref;
  var __snap___tmp___goal_RefundableCrowdsale: [Ref]int;
  var __snap___tmp___escrow_RefundableCrowdsale: [Ref]Ref;
  var __snap___tmp___balances_ERC20: [Ref]Ref;
  var __snap___tmp___allowed_ERC20: [Ref]Ref;
  var __snap___tmp___totalSupply_ERC20: [Ref]int;
  var __snap___tmp__bearer_Roles.Role: [Ref]Ref;
  var __snap___tmp___minters_MinterRole: [Ref]Ref;
  var __snap___tmp___cap_CappedCrowdsale: [Ref]int;
  var __snap___tmp___name_ERC20Detailed: [Ref]int;
  var __snap___tmp___symbol_ERC20Detailed: [Ref]int;
  var __snap___tmp___decimals_ERC20Detailed: [Ref]int;
  var __snap___tmp___tokenURI_ERC20WithMetadata: [Ref]int;
  var __snap___tmp__token_Deployer: [Ref]Ref;
  var __snap___tmp__crowdsale_Deployer: [Ref]Ref;
  var __snap___tmp__escrow_Deployer: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int__deposits0 := __tmp__M_Ref_int__deposits0;
        __snap___tmp__sum__deposits0 := __tmp__sum__deposits0;
        __snap___tmp__M_Ref_int__balances1 := __tmp__M_Ref_int__balances1;
        __snap___tmp__sum__balances1 := __tmp__sum__balances1;
        __snap___tmp__M_Ref_int__allowed2 := __tmp__M_Ref_int__allowed2;
        __snap___tmp__M_Ref_Ref__allowed2 := __tmp__M_Ref_Ref__allowed2;
        __snap___tmp__sum__allowed2 := __tmp__sum__allowed2;
        __snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp___guardCounter_ReentrancyGuard := __tmp___guardCounter_ReentrancyGuard;
        __snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
        __snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
        __snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
        __snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
        __snap___tmp___openingTime_TimedCrowdsale := __tmp___openingTime_TimedCrowdsale;
        __snap___tmp___closingTime_TimedCrowdsale := __tmp___closingTime_TimedCrowdsale;
        __snap___tmp___finalized_FinalizableCrowdsale := __tmp___finalized_FinalizableCrowdsale;
        __snap___tmp___primary_Secondary := __tmp___primary_Secondary;
        __snap___tmp___deposits_Escrow := __tmp___deposits_Escrow;
        __snap___tmp___state_RefundEscrow := __tmp___state_RefundEscrow;
        __snap___tmp___beneficiary_RefundEscrow := __tmp___beneficiary_RefundEscrow;
        __snap___tmp___goal_RefundableCrowdsale := __tmp___goal_RefundableCrowdsale;
        __snap___tmp___escrow_RefundableCrowdsale := __tmp___escrow_RefundableCrowdsale;
        __snap___tmp___balances_ERC20 := __tmp___balances_ERC20;
        __snap___tmp___allowed_ERC20 := __tmp___allowed_ERC20;
        __snap___tmp___totalSupply_ERC20 := __tmp___totalSupply_ERC20;
        __snap___tmp__bearer_Roles.Role := __tmp__bearer_Roles.Role;
        __snap___tmp___minters_MinterRole := __tmp___minters_MinterRole;
        __snap___tmp___cap_CappedCrowdsale := __tmp___cap_CappedCrowdsale;
        __snap___tmp___name_ERC20Detailed := __tmp___name_ERC20Detailed;
        __snap___tmp___symbol_ERC20Detailed := __tmp___symbol_ERC20Detailed;
        __snap___tmp___decimals_ERC20Detailed := __tmp___decimals_ERC20Detailed;
        __snap___tmp___tokenURI_ERC20WithMetadata := __tmp___tokenURI_ERC20WithMetadata;
        __snap___tmp__token_Deployer := __tmp__token_Deployer;
        __snap___tmp__crowdsale_Deployer := __tmp__crowdsale_Deployer;
        __snap___tmp__escrow_Deployer := __tmp__escrow_Deployer;
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
        __tmp__M_Ref_int__deposits0 := __snap___tmp__M_Ref_int__deposits0;
        __tmp__sum__deposits0 := __snap___tmp__sum__deposits0;
        __tmp__M_Ref_int__balances1 := __snap___tmp__M_Ref_int__balances1;
        __tmp__sum__balances1 := __snap___tmp__sum__balances1;
        __tmp__M_Ref_int__allowed2 := __snap___tmp__M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := __snap___tmp__M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := __snap___tmp__sum__allowed2;
        __tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
        __tmp__sum := __snap___tmp__sum;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp___guardCounter_ReentrancyGuard := __snap___tmp___guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
        __tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
        __tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := __snap___tmp___openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := __snap___tmp___closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := __snap___tmp___finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := __snap___tmp___primary_Secondary;
        __tmp___deposits_Escrow := __snap___tmp___deposits_Escrow;
        __tmp___state_RefundEscrow := __snap___tmp___state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := __snap___tmp___beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := __snap___tmp___goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := __snap___tmp___escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := __snap___tmp___balances_ERC20;
        __tmp___allowed_ERC20 := __snap___tmp___allowed_ERC20;
        __tmp___totalSupply_ERC20 := __snap___tmp___totalSupply_ERC20;
        __tmp__bearer_Roles.Role := __snap___tmp__bearer_Roles.Role;
        __tmp___minters_MinterRole := __snap___tmp___minters_MinterRole;
        __tmp___cap_CappedCrowdsale := __snap___tmp___cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := __snap___tmp___name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := __snap___tmp___symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := __snap___tmp___decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := __snap___tmp___tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := __snap___tmp__token_Deployer;
        __tmp__crowdsale_Deployer := __snap___tmp__crowdsale_Deployer;
        __tmp__escrow_Deployer := __snap___tmp__escrow_Deployer;
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
        __tmp__M_Ref_int__deposits0 := M_Ref_int__deposits0;
        __tmp__sum__deposits0 := sum__deposits0;
        __tmp__M_Ref_int__balances1 := M_Ref_int__balances1;
        __tmp__sum__balances1 := sum__balances1;
        __tmp__M_Ref_int__allowed2 := M_Ref_int__allowed2;
        __tmp__M_Ref_Ref__allowed2 := M_Ref_Ref__allowed2;
        __tmp__sum__allowed2 := sum__allowed2;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___guardCounter_ReentrancyGuard := _guardCounter_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        __tmp___balances_ERC20 := _balances_ERC20;
        __tmp___allowed_ERC20 := _allowed_ERC20;
        __tmp___totalSupply_ERC20 := _totalSupply_ERC20;
        __tmp__bearer_Roles.Role := bearer_Roles.Role;
        __tmp___minters_MinterRole := _minters_MinterRole;
        __tmp___cap_CappedCrowdsale := _cap_CappedCrowdsale;
        __tmp___name_ERC20Detailed := _name_ERC20Detailed;
        __tmp___symbol_ERC20Detailed := _symbol_ERC20Detailed;
        __tmp___decimals_ERC20Detailed := _decimals_ERC20Detailed;
        __tmp___tokenURI_ERC20WithMetadata := _tokenURI_ERC20WithMetadata;
        __tmp__token_Deployer := token_Deployer;
        __tmp__crowdsale_Deployer := crowdsale_Deployer;
        __tmp__escrow_Deployer := escrow_Deployer;
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



implementation nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__out_mod_localCounter_s285: int)
{
  var localCounter_s285: int;

    gas := gas - 40466;
    assume __tmp___guardCounter_ReentrancyGuard[this] >= 0;
    __tmp___guardCounter_ReentrancyGuard[this] := __tmp___guardCounter_ReentrancyGuard[this] + 1;
    gas := gas - 422;
    assume localCounter_s285 >= 0;
    assume __tmp___guardCounter_ReentrancyGuard[this] >= 0;
    localCounter_s285 := __tmp___guardCounter_ReentrancyGuard[this];
    __out_mod_localCounter_s285 := localCounter_s285;
}



implementation nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__out_mod_localCounter_s285: int)
{
  var localCounter_s285: int;

    gas := gas - 40466;
    assume _guardCounter_ReentrancyGuard[this] >= 0;
    _guardCounter_ReentrancyGuard[this] := _guardCounter_ReentrancyGuard[this] + 1;
    gas := gas - 422;
    assume localCounter_s285 >= 0;
    assume _guardCounter_ReentrancyGuard[this] >= 0;
    localCounter_s285 := _guardCounter_ReentrancyGuard[this];
    __out_mod_localCounter_s285 := localCounter_s285;
}



implementation onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: bool;

    gas := gas - 35;
    if (__tmp__DType[this] == SampleCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_27)
    {
        revert := true;
        return;
    }
}



implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: bool;

    gas := gas - 35;
    if (DType[this] == SampleCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == RefundableCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_27 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_27)
    {
        revert := true;
        return;
    }
}



implementation onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2208;
    if (!(msgsender_MSG == __tmp___primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2208;
    if (!(msgsender_MSG == _primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyMinter_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_88: bool;

    gas := gas - 126;
    if (__tmp__DType[this] == SampleCrowdsaleToken)
    {
        call __var_88 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ERC20Mintable)
    {
        call __var_88 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MinterRole)
    {
        call __var_88 := isMinter_MinterRole__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_88)
    {
        revert := true;
        return;
    }
}



implementation onlyMinter_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_88: bool;

    gas := gas - 126;
    if (DType[this] == SampleCrowdsaleToken)
    {
        call __var_88 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ERC20Mintable)
    {
        call __var_88 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MinterRole)
    {
        call __var_88 := isMinter_MinterRole__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_88)
    {
        revert := true;
        return;
    }
}



implementation nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, localCounter_s285: int)
{
    gas := gas - 458;
    assume localCounter_s285 >= 0;
    assume __tmp___guardCounter_ReentrancyGuard[this] >= 0;
    if (!(localCounter_s285 == __tmp___guardCounter_ReentrancyGuard[this]))
    {
        revert := true;
        return;
    }
}



implementation nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, localCounter_s285: int)
{
    gas := gas - 458;
    assume localCounter_s285 >= 0;
    assume _guardCounter_ReentrancyGuard[this] >= 0;
    if (!(localCounter_s285 == _guardCounter_ReentrancyGuard[this]))
    {
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
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
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
       || DType[this] == ERC20Mintable
       || DType[this] == ERC20Detailed
       || DType[this] == ERC20TokenMetadata
       || DType[this] == ERC20WithMetadata
       || DType[this] == SampleCrowdsaleToken;
    gas := gas - 53000;
    call IERC20_IERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_IERC20(this);
    }
}



implementation CorralChoice_SafeERC20(this: Ref)
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_SafeERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == SafeERC20;
    gas := gas - 53000;
    call SafeERC20_SafeERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SafeERC20(this);
    }
}



implementation CorralChoice_ReentrancyGuard(this: Ref)
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_ReentrancyGuard()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ReentrancyGuard
       || DType[this] == Crowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == FinalizableCrowdsale
       || DType[this] == RefundableCrowdsale
       || DType[this] == MintedCrowdsale
       || DType[this] == CappedCrowdsale
       || DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ReentrancyGuard(this);
    }
}



implementation CorralChoice_Crowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
}



implementation CorralEntry_Crowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Crowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == FinalizableCrowdsale
       || DType[this] == RefundableCrowdsale
       || DType[this] == MintedCrowdsale
       || DType[this] == CappedCrowdsale
       || DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s356, wallet_s356, token_s356);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Crowdsale(this);
    }
}



implementation CorralChoice_TimedCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var openingTime_s590: int;
  var closingTime_s590: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc openingTime_s590;
    havoc closingTime_s590;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_TimedCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var openingTime_s590: int;
  var closingTime_s590: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == TimedCrowdsale
       || DType[this] == FinalizableCrowdsale
       || DType[this] == RefundableCrowdsale
       || DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s590, closingTime_s590);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_TimedCrowdsale(this);
    }
}



implementation CorralChoice_FinalizableCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var openingTime_s590: int;
  var closingTime_s590: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc openingTime_s590;
    havoc closingTime_s590;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc __ret_0_finalized;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_FinalizableCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == FinalizableCrowdsale
       || DType[this] == RefundableCrowdsale
       || DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call FinalizableCrowdsale_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_FinalizableCrowdsale(this);
    }
}



implementation CorralChoice_Secondary(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s767: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s767;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s767);
    }
}



implementation CorralEntry_Secondary()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Secondary
       || DType[this] == Escrow
       || DType[this] == ConditionalEscrow
       || DType[this] == RefundEscrow;
    gas := gas - 53000;
    call Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Secondary(this);
    }
}



implementation CorralChoice_Escrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s767: Ref;
  var payee_s801: Ref;
  var __ret_0_depositsOf: int;
  var payee_s830: Ref;
  var payee_s861: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s767;
    havoc payee_s801;
    havoc __ret_0_depositsOf;
    havoc payee_s830;
    havoc payee_s861;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s767);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s801);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s830);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s861);
    }
}



implementation CorralEntry_Escrow()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Escrow
       || DType[this] == ConditionalEscrow
       || DType[this] == RefundEscrow;
    gas := gas - 53000;
    call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Escrow(this);
    }
}



implementation CorralChoice_ConditionalEscrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s767: Ref;
  var payee_s801: Ref;
  var __ret_0_depositsOf: int;
  var payee_s830: Ref;
  var payee_s889: Ref;
  var payee_s871: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s767;
    havoc payee_s801;
    havoc __ret_0_depositsOf;
    havoc payee_s830;
    havoc payee_s889;
    havoc payee_s871;
    havoc __ret_0_withdrawalAllowed;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s767);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s801);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s830);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s889);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_withdrawalAllowed := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s871);
    }
}



implementation CorralEntry_ConditionalEscrow()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ConditionalEscrow || DType[this] == RefundEscrow;
    gas := gas - 53000;
    call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ConditionalEscrow(this);
    }
}



implementation CorralChoice_RefundEscrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s767: Ref;
  var payee_s801: Ref;
  var __ret_0_depositsOf: int;
  var refundee_s962: Ref;
  var payee_s889: Ref;
  var __arg_0_withdrawalAllowed: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var beneficiary_s927: Ref;
  var __ret_0_state: int;
  var __ret_0_beneficiary: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s767;
    havoc payee_s801;
    havoc __ret_0_depositsOf;
    havoc refundee_s962;
    havoc payee_s889;
    havoc __arg_0_withdrawalAllowed;
    havoc __ret_0_withdrawalAllowed;
    havoc beneficiary_s927;
    havoc __ret_0_state;
    havoc __ret_0_beneficiary;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s767);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s801);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call deposit_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, refundee_s962);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s889);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_withdrawalAllowed := withdrawalAllowed_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, __arg_0_withdrawalAllowed);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_state := state_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_beneficiary := beneficiary_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call close_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call enableRefunds_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call beneficiaryWithdraw_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_RefundEscrow()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var beneficiary_s927: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == RefundEscrow;
    gas := gas - 53000;
    call RefundEscrow_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, beneficiary_s927);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_RefundEscrow(this);
    }
}



implementation CorralChoice_RefundableCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var openingTime_s590: int;
  var closingTime_s590: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var goal_s1071: int;
  var __ret_0_goal: int;
  var refundee_s1102: Ref;
  var __ret_0_goalReached: bool;
  var __ret_0_primary: Ref;
  var recipient_s767: Ref;
  var payee_s801: Ref;
  var __ret_0_depositsOf: int;
  var refundee_s962: Ref;
  var payee_s889: Ref;
  var __arg_0_withdrawalAllowed: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var beneficiary_s927: Ref;
  var __ret_0_state: int;
  var __ret_0_beneficiary: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc openingTime_s590;
    havoc closingTime_s590;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc __ret_0_finalized;
    havoc goal_s1071;
    havoc __ret_0_goal;
    havoc refundee_s1102;
    havoc __ret_0_goalReached;
    havoc __ret_0_primary;
    havoc recipient_s767;
    havoc payee_s801;
    havoc __ret_0_depositsOf;
    havoc refundee_s962;
    havoc payee_s889;
    havoc __arg_0_withdrawalAllowed;
    havoc __ret_0_withdrawalAllowed;
    havoc beneficiary_s927;
    havoc __ret_0_state;
    havoc __ret_0_beneficiary;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 25)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_primary := primary_Secondary(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 24)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferPrimary_Secondary(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG, recipient_s767);
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_depositsOf := depositsOf_Escrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG, payee_s801);
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        call deposit_RefundEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG, refundee_s962);
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_ConditionalEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG, payee_s889);
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_withdrawalAllowed := withdrawalAllowed_RefundEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG, __arg_0_withdrawalAllowed);
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_state := state_RefundEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_beneficiary := beneficiary_RefundEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call close_RefundEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call enableRefunds_RefundEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call beneficiaryWithdraw_RefundEscrow(_escrow_RefundableCrowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_goal := goal_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call claimRefund_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, refundee_s1102);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_goalReached := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_RefundableCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var goal_s1071: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == RefundableCrowdsale || DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call RefundableCrowdsale_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, goal_s1071);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_RefundableCrowdsale(this);
    }
}



implementation CorralChoice_ERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s1231: Ref;
  var value_s1231: int;
  var __ret_0_transfer: bool;
  var spender_s1267: Ref;
  var value_s1267: int;
  var __ret_0_approve: bool;
  var from_s1316: Ref;
  var to_s1316: Ref;
  var value_s1316: int;
  var __ret_0_transferFrom: bool;
  var __ret_0_totalSupply: int;
  var owner_s1196: Ref;
  var __ret_0_balanceOf: int;
  var owner_s1212: Ref;
  var spender_s1212: Ref;
  var __ret_0_allowance: int;
  var spender_s1365: Ref;
  var addedValue_s1365: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s1414: Ref;
  var subtractedValue_s1414: int;
  var __ret_0_decreaseAllowance: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s1231;
    havoc value_s1231;
    havoc __ret_0_transfer;
    havoc spender_s1267;
    havoc value_s1267;
    havoc __ret_0_approve;
    havoc from_s1316;
    havoc to_s1316;
    havoc value_s1316;
    havoc __ret_0_transferFrom;
    havoc __ret_0_totalSupply;
    havoc owner_s1196;
    havoc __ret_0_balanceOf;
    havoc owner_s1212;
    havoc spender_s1212;
    havoc __ret_0_allowance;
    havoc spender_s1365;
    havoc addedValue_s1365;
    havoc __ret_0_increaseAllowance;
    havoc spender_s1414;
    havoc subtractedValue_s1414;
    havoc __ret_0_decreaseAllowance;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s1231, value_s1231);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1267, value_s1267);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s1196);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s1212, spender_s1212);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1365, addedValue_s1365);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1414, subtractedValue_s1414);
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
       || DType[this] == ERC20Mintable
       || DType[this] == SampleCrowdsaleToken;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_Roles(this: Ref)
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_Roles()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Roles;
    gas := gas - 53000;
    call Roles_Roles__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Roles(this);
    }
}



implementation CorralChoice_MinterRole(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var account_s1725: Ref;
  var __ret_0_isMinter: bool;
  var account_s1737: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc account_s1725;
    havoc __ret_0_isMinter;
    havoc account_s1737;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1725);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1737);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_MinterRole()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MinterRole
       || DType[this] == ERC20Mintable
       || DType[this] == SampleCrowdsaleToken;
    gas := gas - 53000;
    call MinterRole_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MinterRole(this);
    }
}



implementation CorralChoice_ERC20Mintable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s1231: Ref;
  var value_s1231: int;
  var __ret_0_transfer: bool;
  var spender_s1267: Ref;
  var value_s1267: int;
  var __ret_0_approve: bool;
  var from_s1316: Ref;
  var to_s1316: Ref;
  var value_s1316: int;
  var __ret_0_transferFrom: bool;
  var __ret_0_totalSupply: int;
  var owner_s1196: Ref;
  var __ret_0_balanceOf: int;
  var owner_s1212: Ref;
  var spender_s1212: Ref;
  var __ret_0_allowance: int;
  var spender_s1365: Ref;
  var addedValue_s1365: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s1414: Ref;
  var subtractedValue_s1414: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s1725: Ref;
  var __ret_0_isMinter: bool;
  var account_s1737: Ref;
  var to_s1802: Ref;
  var value_s1802: int;
  var __ret_0_mint: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s1231;
    havoc value_s1231;
    havoc __ret_0_transfer;
    havoc spender_s1267;
    havoc value_s1267;
    havoc __ret_0_approve;
    havoc from_s1316;
    havoc to_s1316;
    havoc value_s1316;
    havoc __ret_0_transferFrom;
    havoc __ret_0_totalSupply;
    havoc owner_s1196;
    havoc __ret_0_balanceOf;
    havoc owner_s1212;
    havoc spender_s1212;
    havoc __ret_0_allowance;
    havoc spender_s1365;
    havoc addedValue_s1365;
    havoc __ret_0_increaseAllowance;
    havoc spender_s1414;
    havoc subtractedValue_s1414;
    havoc __ret_0_decreaseAllowance;
    havoc account_s1725;
    havoc __ret_0_isMinter;
    havoc account_s1737;
    havoc to_s1802;
    havoc value_s1802;
    havoc __ret_0_mint;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s1231, value_s1231);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1267, value_s1267);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s1196);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s1212, spender_s1212);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1365, addedValue_s1365);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1414, subtractedValue_s1414);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1725);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1737);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
    }
}



implementation CorralEntry_ERC20Mintable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Mintable || DType[this] == SampleCrowdsaleToken;
    gas := gas - 53000;
    call ERC20Mintable_ERC20Mintable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Mintable(this);
    }
}



implementation CorralChoice_MintedCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
}



implementation CorralEntry_MintedCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MintedCrowdsale || DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call MintedCrowdsale_MintedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MintedCrowdsale(this);
    }
}



implementation CorralChoice_CappedCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var cap_s1850: int;
  var __ret_0_cap: int;
  var __ret_0_capReached: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc cap_s1850;
    havoc __ret_0_cap;
    havoc __ret_0_capReached;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_cap := cap_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_capReached := capReached_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_CappedCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var cap_s1850: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == CappedCrowdsale || DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call CappedCrowdsale_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG, cap_s1850);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_CappedCrowdsale(this);
    }
}



implementation CorralChoice_ERC20Detailed(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s59: Ref;
  var value_s59: int;
  var __ret_0_transfer: bool;
  var spender_s68: Ref;
  var value_s68: int;
  var __ret_0_approve: bool;
  var from_s79: Ref;
  var to_s79: Ref;
  var value_s79: int;
  var __ret_0_transferFrom: bool;
  var __ret_0_totalSupply: int;
  var who_s91: Ref;
  var __ret_0_balanceOf: int;
  var owner_s100: Ref;
  var spender_s100: Ref;
  var __ret_0_allowance: int;
  var name_s1925: int;
  var symbol_s1925: int;
  var decimals_s1925: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s59;
    havoc value_s59;
    havoc __ret_0_transfer;
    havoc spender_s68;
    havoc value_s68;
    havoc __ret_0_approve;
    havoc from_s79;
    havoc to_s79;
    havoc value_s79;
    havoc __ret_0_transferFrom;
    havoc __ret_0_totalSupply;
    havoc who_s91;
    havoc __ret_0_balanceOf;
    havoc owner_s100;
    havoc spender_s100;
    havoc __ret_0_allowance;
    havoc name_s1925;
    havoc symbol_s1925;
    havoc decimals_s1925;
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, to_s59, value_s59);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s68, value_s68);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, from_s79, to_s79, value_s79);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, who_s91);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s100, spender_s100);
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
  var name_s1925: int;
  var symbol_s1925: int;
  var decimals_s1925: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Detailed || DType[this] == SampleCrowdsaleToken;
    gas := gas - 53000;
    call ERC20Detailed_ERC20Detailed(this, msgsender_MSG, msgvalue_MSG, name_s1925, symbol_s1925, decimals_s1925);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Detailed(this);
    }
}



implementation CorralChoice_ERC20TokenMetadata(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s59: Ref;
  var value_s59: int;
  var __ret_0_transfer: bool;
  var spender_s68: Ref;
  var value_s68: int;
  var __ret_0_approve: bool;
  var from_s79: Ref;
  var to_s79: Ref;
  var value_s79: int;
  var __ret_0_transferFrom: bool;
  var __ret_0_totalSupply: int;
  var who_s91: Ref;
  var __ret_0_balanceOf: int;
  var owner_s100: Ref;
  var spender_s100: Ref;
  var __ret_0_allowance: int;
  var __ret_0_tokenURI: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s59;
    havoc value_s59;
    havoc __ret_0_transfer;
    havoc spender_s68;
    havoc value_s68;
    havoc __ret_0_approve;
    havoc from_s79;
    havoc to_s79;
    havoc value_s79;
    havoc __ret_0_transferFrom;
    havoc __ret_0_totalSupply;
    havoc who_s91;
    havoc __ret_0_balanceOf;
    havoc owner_s100;
    havoc spender_s100;
    havoc __ret_0_allowance;
    havoc __ret_0_tokenURI;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, to_s59, value_s59);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s68, value_s68);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, from_s79, to_s79, value_s79);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, who_s91);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s100, spender_s100);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_tokenURI := tokenURI_ERC20TokenMetadata(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_ERC20TokenMetadata()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20TokenMetadata || DType[this] == ERC20WithMetadata;
    gas := gas - 53000;
    call ERC20TokenMetadata_ERC20TokenMetadata__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20TokenMetadata(this);
    }
}



implementation CorralChoice_ERC20WithMetadata(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s59: Ref;
  var value_s59: int;
  var __ret_0_transfer: bool;
  var spender_s68: Ref;
  var value_s68: int;
  var __ret_0_approve: bool;
  var from_s79: Ref;
  var to_s79: Ref;
  var value_s79: int;
  var __ret_0_transferFrom: bool;
  var __ret_0_totalSupply: int;
  var who_s91: Ref;
  var __ret_0_balanceOf: int;
  var owner_s100: Ref;
  var spender_s100: Ref;
  var __ret_0_allowance: int;
  var __ret_0_tokenURI: int;
  var tokenURI_s1972: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s59;
    havoc value_s59;
    havoc __ret_0_transfer;
    havoc spender_s68;
    havoc value_s68;
    havoc __ret_0_approve;
    havoc from_s79;
    havoc to_s79;
    havoc value_s79;
    havoc __ret_0_transferFrom;
    havoc __ret_0_totalSupply;
    havoc who_s91;
    havoc __ret_0_balanceOf;
    havoc owner_s100;
    havoc spender_s100;
    havoc __ret_0_allowance;
    havoc __ret_0_tokenURI;
    havoc tokenURI_s1972;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, to_s59, value_s59);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s68, value_s68);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, from_s79, to_s79, value_s79);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, who_s91);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s100, spender_s100);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_tokenURI := tokenURI_ERC20WithMetadata(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_ERC20WithMetadata()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var tokenURI_s1972: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20WithMetadata;
    gas := gas - 53000;
    call ERC20WithMetadata_ERC20WithMetadata(this, msgsender_MSG, msgvalue_MSG, tokenURI_s1972);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20WithMetadata(this);
    }
}



implementation CorralChoice_SampleCrowdsaleToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s1231: Ref;
  var value_s1231: int;
  var __ret_0_transfer: bool;
  var spender_s1267: Ref;
  var value_s1267: int;
  var __ret_0_approve: bool;
  var from_s1316: Ref;
  var to_s1316: Ref;
  var value_s1316: int;
  var __ret_0_transferFrom: bool;
  var __ret_0_totalSupply: int;
  var owner_s1196: Ref;
  var __ret_0_balanceOf: int;
  var owner_s1212: Ref;
  var spender_s1212: Ref;
  var __ret_0_allowance: int;
  var spender_s1365: Ref;
  var addedValue_s1365: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s1414: Ref;
  var subtractedValue_s1414: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s1725: Ref;
  var __ret_0_isMinter: bool;
  var account_s1737: Ref;
  var to_s1802: Ref;
  var value_s1802: int;
  var __ret_0_mint: bool;
  var name_s1925: int;
  var symbol_s1925: int;
  var decimals_s1925: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s1231;
    havoc value_s1231;
    havoc __ret_0_transfer;
    havoc spender_s1267;
    havoc value_s1267;
    havoc __ret_0_approve;
    havoc from_s1316;
    havoc to_s1316;
    havoc value_s1316;
    havoc __ret_0_transferFrom;
    havoc __ret_0_totalSupply;
    havoc owner_s1196;
    havoc __ret_0_balanceOf;
    havoc owner_s1212;
    havoc spender_s1212;
    havoc __ret_0_allowance;
    havoc spender_s1365;
    havoc addedValue_s1365;
    havoc __ret_0_increaseAllowance;
    havoc spender_s1414;
    havoc subtractedValue_s1414;
    havoc __ret_0_decreaseAllowance;
    havoc account_s1725;
    havoc __ret_0_isMinter;
    havoc account_s1737;
    havoc to_s1802;
    havoc value_s1802;
    havoc __ret_0_mint;
    havoc name_s1925;
    havoc symbol_s1925;
    havoc decimals_s1925;
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, to_s1231, value_s1231);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1267, value_s1267);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s1196);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s1212, spender_s1212);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1365, addedValue_s1365);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s1414, subtractedValue_s1414);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isMinter := isMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1725);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG, account_s1737);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceMinter_MinterRole(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_mint := mint_ERC20Mintable(this, msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
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



implementation CorralEntry_SampleCrowdsaleToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == SampleCrowdsaleToken;
    gas := gas - 53000;
    call SampleCrowdsaleToken_SampleCrowdsaleToken(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SampleCrowdsaleToken(this);
    }
}



implementation CorralChoice_SampleCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var openingTime_s590: int;
  var closingTime_s590: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var goal_s1071: int;
  var __ret_0_goal: int;
  var refundee_s1102: Ref;
  var __ret_0_goalReached: bool;
  var cap_s1850: int;
  var __ret_0_cap: int;
  var __ret_0_capReached: bool;
  var openingTime_s2040: int;
  var closingTime_s2040: int;
  var rate_s2040: int;
  var wallet_s2040: Ref;
  var cap_s2040: int;
  var token_s2040: Ref;
  var goal_s2040: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc openingTime_s590;
    havoc closingTime_s590;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc __ret_0_finalized;
    havoc goal_s1071;
    havoc __ret_0_goal;
    havoc refundee_s1102;
    havoc __ret_0_goalReached;
    havoc cap_s1850;
    havoc __ret_0_cap;
    havoc __ret_0_capReached;
    havoc openingTime_s2040;
    havoc closingTime_s2040;
    havoc rate_s2040;
    havoc wallet_s2040;
    havoc cap_s2040;
    havoc token_s2040;
    havoc goal_s2040;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_goal := goal_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call claimRefund_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, refundee_s1102);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_goalReached := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_cap := cap_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_capReached := capReached_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_SampleCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var openingTime_s2040: int;
  var closingTime_s2040: int;
  var rate_s2040: int;
  var wallet_s2040: Ref;
  var cap_s2040: int;
  var token_s2040: Ref;
  var goal_s2040: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == SampleCrowdsale;
    gas := gas - 53000;
    call SampleCrowdsale_SampleCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s2040, closingTime_s2040, rate_s2040, wallet_s2040, cap_s2040, token_s2040, goal_s2040);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SampleCrowdsale(this);
    }
}



implementation CorralChoice_Deployer(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s1231: Ref;
  var value_s1231: int;
  var __ret_0_transfer: bool;
  var spender_s1267: Ref;
  var value_s1267: int;
  var __ret_0_approve: bool;
  var from_s1316: Ref;
  var to_s1316: Ref;
  var value_s1316: int;
  var __ret_0_transferFrom: bool;
  var __ret_0_totalSupply: int;
  var owner_s1196: Ref;
  var __ret_0_balanceOf: int;
  var owner_s1212: Ref;
  var spender_s1212: Ref;
  var __ret_0_allowance: int;
  var spender_s1365: Ref;
  var addedValue_s1365: int;
  var __ret_0_increaseAllowance: bool;
  var spender_s1414: Ref;
  var subtractedValue_s1414: int;
  var __ret_0_decreaseAllowance: bool;
  var account_s1725: Ref;
  var __ret_0_isMinter: bool;
  var account_s1737: Ref;
  var to_s1802: Ref;
  var value_s1802: int;
  var __ret_0_mint: bool;
  var name_s1925: int;
  var symbol_s1925: int;
  var decimals_s1925: int;
  var __ret_0_name: int;
  var __ret_0_symbol: int;
  var __ret_0_decimals: int;
  var rate_s356: int;
  var wallet_s356: Ref;
  var token_s356: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s454: Ref;
  var openingTime_s590: int;
  var closingTime_s590: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var goal_s1071: int;
  var __ret_0_goal: int;
  var refundee_s1102: Ref;
  var __ret_0_goalReached: bool;
  var cap_s1850: int;
  var __ret_0_cap: int;
  var __ret_0_capReached: bool;
  var openingTime_s2040: int;
  var closingTime_s2040: int;
  var rate_s2040: int;
  var wallet_s2040: Ref;
  var cap_s2040: int;
  var token_s2040: Ref;
  var goal_s2040: int;
  var __ret_0_primary: Ref;
  var recipient_s767: Ref;
  var payee_s801: Ref;
  var __ret_0_depositsOf: int;
  var refundee_s962: Ref;
  var payee_s889: Ref;
  var __arg_0_withdrawalAllowed: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var beneficiary_s927: Ref;
  var __ret_0_state: int;
  var __ret_0_beneficiary: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s1231;
    havoc value_s1231;
    havoc __ret_0_transfer;
    havoc spender_s1267;
    havoc value_s1267;
    havoc __ret_0_approve;
    havoc from_s1316;
    havoc to_s1316;
    havoc value_s1316;
    havoc __ret_0_transferFrom;
    havoc __ret_0_totalSupply;
    havoc owner_s1196;
    havoc __ret_0_balanceOf;
    havoc owner_s1212;
    havoc spender_s1212;
    havoc __ret_0_allowance;
    havoc spender_s1365;
    havoc addedValue_s1365;
    havoc __ret_0_increaseAllowance;
    havoc spender_s1414;
    havoc subtractedValue_s1414;
    havoc __ret_0_decreaseAllowance;
    havoc account_s1725;
    havoc __ret_0_isMinter;
    havoc account_s1737;
    havoc to_s1802;
    havoc value_s1802;
    havoc __ret_0_mint;
    havoc name_s1925;
    havoc symbol_s1925;
    havoc decimals_s1925;
    havoc __ret_0_name;
    havoc __ret_0_symbol;
    havoc __ret_0_decimals;
    havoc rate_s356;
    havoc wallet_s356;
    havoc token_s356;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s454;
    havoc openingTime_s590;
    havoc closingTime_s590;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc __ret_0_finalized;
    havoc goal_s1071;
    havoc __ret_0_goal;
    havoc refundee_s1102;
    havoc __ret_0_goalReached;
    havoc cap_s1850;
    havoc __ret_0_cap;
    havoc __ret_0_capReached;
    havoc openingTime_s2040;
    havoc closingTime_s2040;
    havoc rate_s2040;
    havoc wallet_s2040;
    havoc cap_s2040;
    havoc token_s2040;
    havoc goal_s2040;
    havoc __ret_0_primary;
    havoc recipient_s767;
    havoc payee_s801;
    havoc __ret_0_depositsOf;
    havoc refundee_s962;
    havoc payee_s889;
    havoc __arg_0_withdrawalAllowed;
    havoc __ret_0_withdrawalAllowed;
    havoc beneficiary_s927;
    havoc __ret_0_state;
    havoc __ret_0_beneficiary;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != Roles;
    assume DType[msgsender_MSG] != MinterRole;
    assume DType[msgsender_MSG] != ERC20Mintable;
    assume DType[msgsender_MSG] != MintedCrowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != ERC20Detailed;
    assume DType[msgsender_MSG] != ERC20TokenMetadata;
    assume DType[msgsender_MSG] != ERC20WithMetadata;
    assume DType[msgsender_MSG] != SampleCrowdsaleToken;
    assume DType[msgsender_MSG] != SampleCrowdsale;
    assume DType[msgsender_MSG] != Deployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 42)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_primary := primary_Secondary(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 41)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferPrimary_Secondary(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG, recipient_s767);
    }
    else if (choice == 40)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_depositsOf := depositsOf_Escrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG, payee_s801);
    }
    else if (choice == 39)
    {
        gas := gas - 21000;
        call deposit_RefundEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG, refundee_s962);
    }
    else if (choice == 38)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_ConditionalEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG, payee_s889);
    }
    else if (choice == 37)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_withdrawalAllowed := withdrawalAllowed_RefundEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG, __arg_0_withdrawalAllowed);
    }
    else if (choice == 36)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_state := state_RefundEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 35)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_beneficiary := beneficiary_RefundEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 34)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call close_RefundEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 33)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call enableRefunds_RefundEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 32)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call beneficiaryWithdraw_RefundEscrow(escrow_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 31)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_token := token_Crowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 30)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_wallet := wallet_Crowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 29)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rate := rate_Crowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 28)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_weiRaised := weiRaised_Crowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 27)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG, beneficiary_s454);
    }
    else if (choice == 26)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 25)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 24)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_finalized := finalized_FinalizableCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call finalize_FinalizableCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_goal := goal_RefundableCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call claimRefund_RefundableCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG, refundee_s1102);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_goalReached := goalReached_RefundableCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_cap := cap_CappedCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_capReached := capReached_CappedCrowdsale(crowdsale_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG, to_s1231, value_s1231);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s1267, value_s1267);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG, from_s1316, to_s1316, value_s1316);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG, owner_s1196);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG, owner_s1212, spender_s1212);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseAllowance := increaseAllowance_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s1365, addedValue_s1365);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseAllowance := decreaseAllowance_ERC20(token_Deployer[this], msgsender_MSG, msgvalue_MSG, spender_s1414, subtractedValue_s1414);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isMinter := isMinter_MinterRole(token_Deployer[this], msgsender_MSG, msgvalue_MSG, account_s1725);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addMinter_MinterRole(token_Deployer[this], msgsender_MSG, msgvalue_MSG, account_s1737);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call renounceMinter_MinterRole(token_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_mint := mint_ERC20Mintable(token_Deployer[this], msgsender_MSG, msgvalue_MSG, to_s1802, value_s1802);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_name := name_ERC20Detailed(token_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_symbol := symbol_ERC20Detailed(token_Deployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decimals := decimals_ERC20Detailed(token_Deployer[this], msgsender_MSG, msgvalue_MSG);
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


