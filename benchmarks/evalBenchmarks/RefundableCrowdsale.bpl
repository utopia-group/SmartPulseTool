// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:RefundableCrowdsale.bpl /pretty:1 /noVerify /noinfer __SolToBoogieTest_out.bpl

// Spec L1
// LTLVariables: user:Ref
// LTLFairness: <>(finished(Crowdsale.buyTokens, (user == msg.sender))) && <>(finished(RefundableCrowdsale.claimRefund(ref), (ref == user)))
// LTLProperty: []((finished(FinalizableCrowdsale.finalize)) ==> <>(finished(send(from, to, amt), (to == user && amt == fsum(Crowdsale.buyTokens, 2, (msg.sender == user))))))

// Spec L2
// #LTLVariables: ben:Ref
// #LTLFairness: <>(finished(Crowdsale.buyTokens)) && <>(finished(FinalizableCrowdsale.finalize, (ben == Crowdsale.wallet())))
// #LTLProperty: []((INV {TimedCrowdsale.hasClosed() == true && RefundableCrowdsale.goalReached() == true && FinalizableCrowdsale.finalized() == false}) ==> <>(finished(send(from, to, amt), (to == ben && amt == fsum(Crowdsale.buyTokens, 2)))))

// Spec S1
// Spec S2
// LTLVariables: user:Ref
// LTLProperty: [](success(RefundableCrowdsale.claimRefund(refundee)) {refundee == user} ==> [](!success(RefundableCrowdsale.claimRefund(refundee)) {refundee == user}))
// Spec S3
// Spec S4
// Spec S5

type Ref = int;

type ContractName = int;

var null: Ref;

var Context: ContractName;

var SafeMath: ContractName;

var Secondary: ContractName;

var Escrow: ContractName;

var ConditionalEscrow: ContractName;

var RefundEscrow: ContractName;

var IERC20: ContractName;

var SafeERC20: ContractName;

var ReentrancyGuard: ContractName;

var Crowdsale: ContractName;

var TimedCrowdsale: ContractName;

var FinalizableCrowdsale: ContractName;

var RefundableCrowdsale: ContractName;

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

var M_Ref_int: [Ref][Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var sum: [Ref]int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance;



implementation Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int)
   returns (__ret_0_: int);
  modifies revert;



var _primary_Secondary: [Ref]Ref;

procedure {:inline 1} Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, gas;



procedure {:constructor} {:public} {:inline 1} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, _primary_Secondary;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call __ret_0_ := primary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := primary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s157: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, _primary_Secondary;



implementation transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s157: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call transferPrimary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s157);
        assume revert || gas < 0;
    }
    else
    {
        call transferPrimary_Secondary__success(this, msgsender_MSG, msgvalue_MSG, recipient_s157);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _deposits_Escrow, M_Ref_int, sum, Alloc;



procedure {:inline 1} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, Alloc;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var _deposits_Escrow: [Ref]Ref;

procedure {:public} {:inline 1} depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s191: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



implementation depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s191: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call __ret_0_ := depositsOf_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s191);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := depositsOf_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s191);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s201: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, sum, M_Ref_int;



implementation deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s201: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call deposit_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s201);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s201);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref);
  modifies gas, sum, M_Ref_int, revert;



procedure {:public} {:inline 1} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s240: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, sum, M_Ref_int, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



implementation withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s240: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s240);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s240);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s271: Ref);
  modifies gas, sum, M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, Alloc;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call ConditionalEscrow_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawalAllowed_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s281: Ref)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s298: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, sum, M_Ref_int, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



implementation withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s298: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call withdraw_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s298);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s298);
        assume !revert && gas >= 0;
    }
}



var _state_RefundEscrow: [Ref]int;

var _beneficiary_RefundEscrow: [Ref]Ref;

procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref);
  modifies Balance, _beneficiary_RefundEscrow, revert, _state_RefundEscrow;



procedure {:constructor} {:public} {:inline 1} RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, Alloc, _beneficiary_RefundEscrow, _state_RefundEscrow;



implementation RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call RefundEscrow_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s337);
        assume revert || gas < 0;
    }
    else
    {
        call RefundEscrow_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s337);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call __ret_0_ := beneficiary_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := beneficiary_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s371: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, sum, M_Ref_int;



implementation deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s371: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call deposit_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s371);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s371);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, _state_RefundEscrow;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, _state_RefundEscrow;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call __ret_0_ := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, __param_0_);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s462: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s471: Ref, 
    amount_s471: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s480: Ref, 
    spender_s480: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s489: Ref, 
    amount_s489: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s500: Ref, 
    recipient_s500: Ref, 
    amount_s500: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
    token_s538: Ref, 
    to_s538: Ref, 
    value_s538: int);
  modifies gas, revert;



procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s559: Ref, 
    from_s559: Ref, 
    to_s559: Ref, 
    value_s559: int);
  modifies revert;



procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s596: Ref, 
    spender_s596: Ref, 
    value_s596: int);
  modifies revert;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s627: Ref, 
    spender_s627: Ref, 
    value_s627: int);
  modifies revert, gas;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s658: Ref, 
    spender_s658: Ref, 
    value_s658: int);
  modifies revert;



var _notEntered_ReentrancyGuard: [Ref]bool;

procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard;



procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _notEntered_ReentrancyGuard;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var _token_Crowdsale: [Ref]Ref;

var _wallet_Crowdsale: [Ref]Ref;

var _rate_Crowdsale: [Ref]int;

var _weiRaised_Crowdsale: [Ref]int;

procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref);
  modifies Balance, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale;



procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, _token_Crowdsale;



implementation Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s761, wallet_s761, token_s761);
        assume revert || gas < 0;
    }
    else
    {
        call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s761, wallet_s761, token_s761);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s859: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s859: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s872: Ref, 
    weiAmount_s872: int);
  modifies gas, revert;



procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s898: Ref, 
    weiAmount_s898: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s906: Ref, 
    weiAmount_s906: int);



procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s922: Ref, 
    tokenAmount_s922: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s935: Ref, 
    tokenAmount_s935: int);
  modifies gas, revert;



procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s943: Ref, 
    weiAmount_s943: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s953: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



var _openingTime_TimedCrowdsale: [Ref]int;

var _closingTime_TimedCrowdsale: [Ref]int;

procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int);
  modifies Balance, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale;



implementation TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s1021, closingTime_s1021);
        assume revert || gas < 0;
    }
    else
    {
        call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s1021, closingTime_s1021);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
    beneficiary_s1079: Ref, 
    weiAmount_s1079: int);
  modifies revert, gas;



procedure {:inline 1} _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1108: int);
  modifies revert, _closingTime_TimedCrowdsale;



var _finalized_FinalizableCrowdsale: [Ref]bool;

procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _finalized_FinalizableCrowdsale;



procedure {:constructor} {:public} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _notEntered_ReentrancyGuard, _finalized_FinalizableCrowdsale;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, _finalized_FinalizableCrowdsale, gas, _state_RefundEscrow, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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



procedure {:inline 1} _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



var _goal_RefundableCrowdsale: [Ref]int;

var _escrow_RefundableCrowdsale: [Ref]Ref;

procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int);
  modifies Balance, _goal_RefundableCrowdsale, revert, _escrow_RefundableCrowdsale, Alloc, gas, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, _beneficiary_RefundEscrow, _state_RefundEscrow;



procedure {:constructor} {:public} {:inline 1} RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, Balance, _notEntered_ReentrancyGuard, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, Alloc, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, _beneficiary_RefundEscrow, _state_RefundEscrow;



implementation RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call RefundableCrowdsale_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, goal_s1208);
        assume revert || gas < 0;
    }
    else
    {
        call RefundableCrowdsale_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, goal_s1208);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call __ret_0_ := goal_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := goal_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1241: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas, sum, M_Ref_int, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



implementation claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1241: Ref)
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
        call claimRefund_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s1241);
        assume revert || gas < 0;
    }
    else
    {
        call claimRefund_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, refundee_s1241);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, gas;



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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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
  modifies gas, revert, _state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



procedure {:inline 1} _forwardFunds_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, Balance, revert, sum, M_Ref_int;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, revert, gas, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



procedure {:inline 1} onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _notEntered_ReentrancyGuard;



procedure {:inline 1} onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure {:inline 1} nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, _notEntered_ReentrancyGuard;



procedure CorralChoice_Context(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Context();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, Balance;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_Secondary(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, _primary_Secondary;



procedure CorralEntry_Secondary();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, _primary_Secondary, Balance;



procedure CorralChoice_Escrow(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, _primary_Secondary, Balance, sum, M_Ref_int, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralEntry_Escrow();
  modifies gas, Alloc, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralChoice_ConditionalEscrow(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, _primary_Secondary, Balance, sum, M_Ref_int, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralEntry_ConditionalEscrow();
  modifies gas, Alloc, Balance, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralChoice_RefundEscrow(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, _primary_Secondary, Balance, _state_RefundEscrow, sum, M_Ref_int, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralEntry_RefundEscrow();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, _primary_Secondary, Balance, _state_RefundEscrow, _deposits_Escrow, M_Ref_int, sum, _beneficiary_RefundEscrow, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



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
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, Balance, _notEntered_ReentrancyGuard;



procedure CorralChoice_Crowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



procedure CorralEntry_Crowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _token_Crowdsale, sum, M_Ref_int;



procedure CorralChoice_TimedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



procedure CorralEntry_TimedCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, sum, M_Ref_int;



procedure CorralChoice_FinalizableCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int, _state_RefundEscrow;



procedure CorralEntry_FinalizableCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int, _state_RefundEscrow;



procedure CorralChoice_RefundableCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int, _state_RefundEscrow;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, now, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard, _goal_RefundableCrowdsale, _escrow_RefundableCrowdsale, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, _beneficiary_RefundEscrow, _state_RefundEscrow;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int: [Ref][Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__sum: [Ref]int;

var __tmp__now: int;

var __tmp___primary_Secondary: [Ref]Ref;

var __tmp___deposits_Escrow: [Ref]Ref;

var __tmp___state_RefundEscrow: [Ref]int;

var __tmp___beneficiary_RefundEscrow: [Ref]Ref;

var __tmp___notEntered_ReentrancyGuard: [Ref]bool;

var __tmp___token_Crowdsale: [Ref]Ref;

var __tmp___wallet_Crowdsale: [Ref]Ref;

var __tmp___rate_Crowdsale: [Ref]int;

var __tmp___weiRaised_Crowdsale: [Ref]int;

var __tmp___openingTime_TimedCrowdsale: [Ref]int;

var __tmp___closingTime_TimedCrowdsale: [Ref]int;

var __tmp___finalized_FinalizableCrowdsale: [Ref]bool;

var __tmp___goal_RefundableCrowdsale: [Ref]int;

var __tmp___escrow_RefundableCrowdsale: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary, gas;



procedure {:constructor} {:inline 1} Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, gas;



procedure {:constructor} {:inline 1} Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary, gas;



procedure {:inline 1} primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s157: Ref);
  modifies gas, revert, _primary_Secondary;



procedure {:inline 1} transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s157: Ref);
  modifies gas, revert, __tmp___primary_Secondary;



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__Alloc;



procedure {:inline 1} Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, gas, _deposits_Escrow, M_Ref_int, sum, Alloc;



procedure {:inline 1} Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary, gas, __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__Alloc;



procedure {:inline 1} depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s191: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s191: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s201: Ref);
  modifies Balance, gas, sum, M_Ref_int, revert;



procedure {:inline 1} deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s201: Ref);
  modifies __tmp__Balance, gas, __tmp__sum, __tmp__M_Ref_int, revert;



procedure {:inline 1} deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref);
  modifies gas, __tmp__sum, __tmp__M_Ref_int, revert;



procedure {:inline 1} withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s240: Ref);
  modifies gas, sum, M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:inline 1} withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s240: Ref);
  modifies gas, __tmp__sum, __tmp__M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s271: Ref);
  modifies gas, __tmp__sum, __tmp__M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, gas, _deposits_Escrow, M_Ref_int, sum, Alloc;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___primary_Secondary, gas, __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__Alloc;



procedure {:inline 1} withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s298: Ref);
  modifies gas, revert, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:inline 1} withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s298: Ref);
  modifies gas, revert, __tmp__sum, __tmp__M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref);
  modifies __tmp__Balance, __tmp___beneficiary_RefundEscrow, revert, __tmp___state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref);
  modifies Balance, _primary_Secondary, gas, _deposits_Escrow, M_Ref_int, sum, Alloc, _beneficiary_RefundEscrow, revert, _state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref);
  modifies __tmp__Balance, __tmp___primary_Secondary, gas, __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp__Alloc, __tmp___beneficiary_RefundEscrow, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} state_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} state_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} beneficiary_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} beneficiary_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s371: Ref);
  modifies Balance, gas, revert, sum, M_Ref_int;



procedure {:inline 1} deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s371: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__sum, __tmp__M_Ref_int;



procedure {:inline 1} close_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _state_RefundEscrow;



procedure {:inline 1} close_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} enableRefunds_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _state_RefundEscrow;



procedure {:inline 1} enableRefunds_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} withdrawalAllowed_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} withdrawalAllowed_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool);
  modifies gas;



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
    token_s538: Ref, 
    to_s538: Ref, 
    value_s538: int);
  modifies gas, revert;



procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s559: Ref, 
    from_s559: Ref, 
    to_s559: Ref, 
    value_s559: int);
  modifies revert;



procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s596: Ref, 
    spender_s596: Ref, 
    value_s596: int);
  modifies revert;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s627: Ref, 
    spender_s627: Ref, 
    value_s627: int);
  modifies revert, gas;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s658: Ref, 
    spender_s658: Ref, 
    value_s658: int);
  modifies revert;



procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard;



procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref);
  modifies __tmp__Balance, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref);
  modifies Balance, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale;



procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__sum, __tmp__M_Ref_int, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



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



procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s859: Ref);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s859: Ref);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__sum, __tmp__M_Ref_int, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s872: Ref, 
    weiAmount_s872: int);
  modifies gas, revert;



procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s898: Ref, 
    weiAmount_s898: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s906: Ref, 
    weiAmount_s906: int);



procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s922: Ref, 
    tokenAmount_s922: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s935: Ref, 
    tokenAmount_s935: int);
  modifies gas, revert;



procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s943: Ref, 
    weiAmount_s943: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s953: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int);
  modifies __tmp__Balance, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int);
  modifies Balance, _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



procedure {:inline 1} openingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} openingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} closingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} closingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} isOpen_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} isOpen_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1079: Ref, 
    weiAmount_s1079: int);
  modifies revert, gas;



procedure {:inline 1} _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1108: int);
  modifies revert, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___finalized_FinalizableCrowdsale;



procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard, _finalized_FinalizableCrowdsale;



procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard, __tmp___finalized_FinalizableCrowdsale;



procedure {:inline 1} finalized_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} finalized_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, _finalized_FinalizableCrowdsale, gas, _state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, sum, M_Ref_int;



procedure {:inline 1} finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp___finalized_FinalizableCrowdsale, gas, __tmp___state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int);
  modifies __tmp__Balance, __tmp___goal_RefundableCrowdsale, revert, __tmp___escrow_RefundableCrowdsale, __tmp__Alloc, gas, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp___beneficiary_RefundEscrow, __tmp___state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int);
  modifies Balance, _notEntered_ReentrancyGuard, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, revert, _escrow_RefundableCrowdsale, Alloc, gas, _primary_Secondary, _deposits_Escrow, M_Ref_int, sum, _beneficiary_RefundEscrow, _state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, revert, __tmp___escrow_RefundableCrowdsale, __tmp__Alloc, gas, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__sum, __tmp___beneficiary_RefundEscrow, __tmp___state_RefundEscrow;



procedure {:inline 1} goal_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} goal_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:inline 1} claimRefund_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1241: Ref);
  modifies revert, gas, sum, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:inline 1} claimRefund_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1241: Ref);
  modifies revert, gas, __tmp__sum, __tmp__M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} goalReached_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} goalReached_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} _finalization_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} _forwardFunds_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__Balance, revert, __tmp__sum, __tmp__M_Ref_int;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__sum, __tmp__M_Ref_int, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp___primary_Secondary, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___goal_RefundableCrowdsale, __tmp___escrow_RefundableCrowdsale, revert, gas;



procedure {:inline 1} onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___notEntered_ReentrancyGuard;



procedure {:inline 1} onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure {:inline 1} nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp___notEntered_ReentrancyGuard;



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



implementation Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 9;
    gas := gas - 21;
    __ret_0_ := msgsender_MSG;
    return;
}



implementation _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 9;
    gas := gas - 21;
    __ret_0_ := msgsender_MSG;
    return;
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int)
   returns (__ret_0_: int)
{
  var c_s39: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s39 >= 0;
    assume a_s40 >= 0;
    assume b_s40 >= 0;
    assume a_s40 + b_s40 >= 0;
    c_s39 := a_s40 + b_s40;
    gas := gas - 1992;
    assume c_s39 >= 0;
    assume a_s40 >= 0;
    if (!(c_s39 >= a_s40))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume c_s39 >= 0;
    __ret_0_ := c_s39;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int)
   returns (__ret_0_: int)
{
  var c_s39: int;

    gas := gas - 9;
    gas := gas - 51;
    assume c_s39 >= 0;
    assume a_s40 >= 0;
    assume b_s40 >= 0;
    assume a_s40 + b_s40 >= 0;
    c_s39 := a_s40 + b_s40;
    gas := gas - 1992;
    assume c_s39 >= 0;
    assume a_s40 >= 0;
    if (!(c_s39 >= a_s40))
    {
        revert := true;
        return;
    }

    gas := gas - 30;
    assume c_s39 >= 0;
    __ret_0_ := c_s39;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int)
   returns (__ret_0_: int)
{
  var c_s64: int;

    assume b_s65 >= 0;
    assume a_s65 >= 0;
    if (!(b_s65 <= a_s65))
    {
        revert := true;
        return;
    }

    assume c_s64 >= 0;
    assume a_s65 >= 0;
    assume b_s65 >= 0;
    assume a_s65 - b_s65 >= 0;
    c_s64 := a_s65 - b_s65;
    assume c_s64 >= 0;
    __ret_0_ := c_s64;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int)
   returns (__ret_0_: int)
{
  var c_s64: int;

    assume b_s65 >= 0;
    assume a_s65 >= 0;
    if (!(b_s65 <= a_s65))
    {
        revert := true;
        return;
    }

    assume c_s64 >= 0;
    assume a_s65 >= 0;
    assume b_s65 >= 0;
    assume a_s65 - b_s65 >= 0;
    c_s64 := a_s65 - b_s65;
    assume c_s64 >= 0;
    __ret_0_ := c_s64;
    return;
}



implementation Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s111: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___primary_Secondary[this] := null;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call msgSender_s111 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call msgSender_s111 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call msgSender_s111 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Secondary)
    {
        call msgSender_s111 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s111 := msgSender_s111;
    __tmp___primary_Secondary[this] := msgSender_s111;
}



implementation Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s111: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _primary_Secondary[this] := null;
    if (DType[this] == RefundEscrow)
    {
        call msgSender_s111 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call msgSender_s111 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call msgSender_s111 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Secondary)
    {
        call msgSender_s111 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s111 := msgSender_s111;
    _primary_Secondary[this] := msgSender_s111;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s111: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Secondary_Secondary_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s111: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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



implementation transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s157: Ref)
{
  var __var_2: Ref;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 1366;
    __var_2 := null;
    if (!(recipient_s157 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    __tmp___primary_Secondary[this] := recipient_s157;
}



implementation transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s157: Ref)
{
  var __var_2: Ref;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 1366;
    __var_2 := null;
    if (!(recipient_s157 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    _primary_Secondary[this] := recipient_s157;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_3 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___deposits_Escrow[this] := __var_3;
    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]] := zeroRefIntArr();
    __tmp__sum[__tmp___deposits_Escrow[this]] := 0;
}



implementation Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_3 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _deposits_Escrow[this] := __var_3;
    M_Ref_int[_deposits_Escrow[this]] := zeroRefIntArr();
    sum[_deposits_Escrow[this]] := 0;
}



implementation Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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



implementation depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s191: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s191] >= 0;
    __ret_0_ := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s191];
    return;
}



implementation depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s191: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s191] >= 0;
    __ret_0_ := M_Ref_int[_deposits_Escrow[this]][payee_s191];
    return;
}



implementation deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s201: Ref)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s201);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s201);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s201);
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



implementation deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s201: Ref)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s201);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s201);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s201);
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



implementation deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref)
{
  var amount_s229: int;
  var __var_4: int;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s229 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s229 := msgvalue_MSG;
    gas := gas - 40878;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s230] >= 0;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s230] >= 0;
    assume amount_s229 >= 0;
    call __var_4 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s230], amount_s229);
    if (revert)
    {
        return;
    }

    __tmp__sum[__tmp___deposits_Escrow[this]] := __tmp__sum[__tmp___deposits_Escrow[this]]
       - __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s230];
    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s230] := __var_4;
    __tmp__sum[__tmp___deposits_Escrow[this]] := __tmp__sum[__tmp___deposits_Escrow[this]]
       + __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s230];
    assume __var_4 >= 0;
}



implementation deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref)
{
  var amount_s229: int;
  var __var_4: int;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s229 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s229 := msgvalue_MSG;
    gas := gas - 40878;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s230] >= 0;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s230] >= 0;
    assume amount_s229 >= 0;
    call __var_4 := add_SafeMath__success(this, this, 0, M_Ref_int[_deposits_Escrow[this]][payee_s230], amount_s229);
    if (revert)
    {
        return;
    }

    sum[_deposits_Escrow[this]] := sum[_deposits_Escrow[this]] - M_Ref_int[_deposits_Escrow[this]][payee_s230];
    M_Ref_int[_deposits_Escrow[this]][payee_s230] := __var_4;
    sum[_deposits_Escrow[this]] := sum[_deposits_Escrow[this]] + M_Ref_int[_deposits_Escrow[this]][payee_s230];
    assume __var_4 >= 0;
    assert {:EventEmitted "Deposited_Escrow"} true;
}



implementation withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s240: Ref)
{
    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s240);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s240);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s240);
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



implementation withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s240: Ref)
{
    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s240);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s240);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s240);
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



implementation withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s271: Ref)
{
  var payment_s270: int;
  var __var_5: int;
  var __var_6: bool;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 614;
    assume payment_s270 >= 0;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s271] >= 0;
    payment_s270 := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s271];
    gas := gas - 10208;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s271] >= 0;
    __tmp__sum[__tmp___deposits_Escrow[this]] := __tmp__sum[__tmp___deposits_Escrow[this]]
       - __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s271];
    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s271] := 0;
    __tmp__sum[__tmp___deposits_Escrow[this]] := __tmp__sum[__tmp___deposits_Escrow[this]]
       + __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s271];
    gas := gas - 71574;
    __var_5 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_5 := __var_5 - gas;
    assume payment_s270 >= 0;
    call __var_6 := send__fail(this, payee_s271, payment_s270);
    if (!__var_6)
    {
        revert := true;
        return;
    }

    gas := __var_5 + gas;
}



implementation withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s271: Ref)
{
  var payment_s270: int;
  var __var_5: int;
  var __var_6: bool;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 614;
    assume payment_s270 >= 0;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s271] >= 0;
    payment_s270 := M_Ref_int[_deposits_Escrow[this]][payee_s271];
    gas := gas - 10208;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s271] >= 0;
    sum[_deposits_Escrow[this]] := sum[_deposits_Escrow[this]] - M_Ref_int[_deposits_Escrow[this]][payee_s271];
    M_Ref_int[_deposits_Escrow[this]][payee_s271] := 0;
    sum[_deposits_Escrow[this]] := sum[_deposits_Escrow[this]] + M_Ref_int[_deposits_Escrow[this]][payee_s271];
    gas := gas - 71574;
    __var_5 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_5 := __var_5 - gas;
    assume payment_s270 >= 0;
    call __var_6 := send__success(this, payee_s271, payment_s270);
    if (!__var_6)
    {
        revert := true;
        return;
    }

    gas := __var_5 + gas;
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
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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



implementation withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s298: Ref)
{
  var __var_7: bool;

    gas := gas - 666;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call __var_7 := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s298);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call __var_7 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s298);
    }
    else
    {
        assume false;
    }

    if (!__var_7)
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s298);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s298);
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



implementation withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s298: Ref)
{
  var __var_7: bool;

    gas := gas - 666;
    if (DType[this] == RefundEscrow)
    {
        call __var_7 := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s298);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call __var_7 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s298);
    }
    else
    {
        assume false;
    }

    if (!__var_7)
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s298);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s298);
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



implementation RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref)
{
  var __var_8: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___beneficiary_RefundEscrow[this] := null;
    __var_8 := null;
    if (!(beneficiary_s337 != null))
    {
        revert := true;
        return;
    }

    __tmp___beneficiary_RefundEscrow[this] := beneficiary_s337;
    __tmp___state_RefundEscrow[this] := 0;
}



implementation RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref)
{
  var __var_8: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _beneficiary_RefundEscrow[this] := null;
    __var_8 := null;
    if (!(beneficiary_s337 != null))
    {
        revert := true;
        return;
    }

    _beneficiary_RefundEscrow[this] := beneficiary_s337;
    _state_RefundEscrow[this] := 0;
}



implementation RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref)
{
  var __var_8: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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

    call RefundEscrow_RefundEscrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s337);
    if (revert)
    {
        return;
    }
}



implementation RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s337: Ref)
{
  var __var_8: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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

    call RefundEscrow_RefundEscrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s337);
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



implementation deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s371: Ref)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 956;
    if (!(__tmp___state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s371);
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



implementation deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s371: Ref)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 956;
    if (!(_state_RefundEscrow[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s371);
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

    gas := gas - 956;
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

    gas := gas - 956;
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

    gas := gas - 956;
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

    gas := gas - 956;
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
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: bool;

    gas := gas - 956;
    if (!(__tmp___state_RefundEscrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 36484;
    __var_9 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_9 := __var_9 - gas;
    __var_10 := this;
    assume __tmp__Balance[this] >= 0;
    call __var_11 := send__fail(this, __tmp___beneficiary_RefundEscrow[this], __tmp__Balance[this]);
    if (!__var_11)
    {
        revert := true;
        return;
    }

    gas := __var_9 + gas;
}



implementation beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: bool;

    gas := gas - 956;
    if (!(_state_RefundEscrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 36484;
    __var_9 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_9 := __var_9 - gas;
    __var_10 := this;
    assume Balance[this] >= 0;
    call __var_11 := send__success(this, _beneficiary_RefundEscrow[this], Balance[this]);
    if (!__var_11)
    {
        revert := true;
        return;
    }

    gas := __var_9 + gas;
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
    token_s538: Ref, 
    to_s538: Ref, 
    value_s538: int)
{
  var __var_12: bool;
  var __var_13: int;

    gas := gas - 37240;
    assume value_s538 >= 0;
    call __var_12 := transfer_IERC20(token_s538, this, __var_13, to_s538, value_s538);
    if (!__var_12)
    {
        revert := true;
        return;
    }
}



implementation safeTransfer_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s538: Ref, 
    to_s538: Ref, 
    value_s538: int)
{
  var __var_12: bool;
  var __var_13: int;

    gas := gas - 37240;
    assume value_s538 >= 0;
    call __var_12 := transfer_IERC20(token_s538, this, __var_13, to_s538, value_s538);
    if (!__var_12)
    {
        revert := true;
        return;
    }
}



implementation safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s559: Ref, 
    from_s559: Ref, 
    to_s559: Ref, 
    value_s559: int)
{
  var __var_14: bool;
  var __var_15: int;

    assume value_s559 >= 0;
    call __var_14 := transferFrom_IERC20(token_s559, this, __var_15, from_s559, to_s559, value_s559);
    if (!__var_14)
    {
        revert := true;
        return;
    }
}



implementation safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s559: Ref, 
    from_s559: Ref, 
    to_s559: Ref, 
    value_s559: int)
{
  var __var_14: bool;
  var __var_15: int;

    assume value_s559 >= 0;
    call __var_14 := transferFrom_IERC20(token_s559, this, __var_15, from_s559, to_s559, value_s559);
    if (!__var_14)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s596: Ref, 
    spender_s596: Ref, 
    value_s596: int)
{
  var __var_16: int;
  var __var_17: int;
  var __var_18: Ref;
  var __var_19: bool;
  var __var_20: int;

    assume value_s596 >= 0;
    assume __var_16 >= 0;
    __var_18 := this;
    call __var_16 := allowance_IERC20(token_s596, this, __var_17, this, spender_s596);
    assume __var_16 >= 0;
    if (!(value_s596 == 0 || __var_16 == 0))
    {
        revert := true;
        return;
    }

    assume value_s596 >= 0;
    call __var_19 := approve_IERC20(token_s596, this, __var_20, spender_s596, value_s596);
    if (!__var_19)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s596: Ref, 
    spender_s596: Ref, 
    value_s596: int)
{
  var __var_16: int;
  var __var_17: int;
  var __var_18: Ref;
  var __var_19: bool;
  var __var_20: int;

    assume value_s596 >= 0;
    assume __var_16 >= 0;
    __var_18 := this;
    call __var_16 := allowance_IERC20(token_s596, this, __var_17, this, spender_s596);
    assume __var_16 >= 0;
    if (!(value_s596 == 0 || __var_16 == 0))
    {
        revert := true;
        return;
    }

    assume value_s596 >= 0;
    call __var_19 := approve_IERC20(token_s596, this, __var_20, spender_s596, value_s596);
    if (!__var_19)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s627: Ref, 
    spender_s627: Ref, 
    value_s627: int)
{
  var newAllowance_s626: int;
  var __var_21: int;
  var __var_22: int;
  var __var_23: Ref;
  var __var_24: bool;
  var __var_25: int;

    assume newAllowance_s626 >= 0;
    assume __var_21 >= 0;
    __var_23 := this;
    call __var_21 := allowance_IERC20(token_s627, this, __var_22, this, spender_s627);
    assume __var_21 >= 0;
    assume value_s627 >= 0;
    call newAllowance_s626 := add_SafeMath__fail(this, this, 0, __var_21, value_s627);
    if (revert)
    {
        return;
    }

    newAllowance_s626 := newAllowance_s626;
    assume newAllowance_s626 >= 0;
    call __var_24 := approve_IERC20(token_s627, this, __var_25, spender_s627, newAllowance_s626);
    if (!__var_24)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s627: Ref, 
    spender_s627: Ref, 
    value_s627: int)
{
  var newAllowance_s626: int;
  var __var_21: int;
  var __var_22: int;
  var __var_23: Ref;
  var __var_24: bool;
  var __var_25: int;

    assume newAllowance_s626 >= 0;
    assume __var_21 >= 0;
    __var_23 := this;
    call __var_21 := allowance_IERC20(token_s627, this, __var_22, this, spender_s627);
    assume __var_21 >= 0;
    assume value_s627 >= 0;
    call newAllowance_s626 := add_SafeMath__success(this, this, 0, __var_21, value_s627);
    if (revert)
    {
        return;
    }

    newAllowance_s626 := newAllowance_s626;
    assume newAllowance_s626 >= 0;
    call __var_24 := approve_IERC20(token_s627, this, __var_25, spender_s627, newAllowance_s626);
    if (!__var_24)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s658: Ref, 
    spender_s658: Ref, 
    value_s658: int)
{
  var newAllowance_s657: int;
  var __var_26: int;
  var __var_27: int;
  var __var_28: Ref;
  var __var_29: bool;
  var __var_30: int;

    assume newAllowance_s657 >= 0;
    assume __var_26 >= 0;
    __var_28 := this;
    call __var_26 := allowance_IERC20(token_s658, this, __var_27, this, spender_s658);
    assume __var_26 >= 0;
    assume value_s658 >= 0;
    call newAllowance_s657 := sub_SafeMath__fail(this, this, 0, __var_26, value_s658);
    if (revert)
    {
        return;
    }

    newAllowance_s657 := newAllowance_s657;
    assume newAllowance_s657 >= 0;
    call __var_29 := approve_IERC20(token_s658, this, __var_30, spender_s658, newAllowance_s657);
    if (!__var_29)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s658: Ref, 
    spender_s658: Ref, 
    value_s658: int)
{
  var newAllowance_s657: int;
  var __var_26: int;
  var __var_27: int;
  var __var_28: Ref;
  var __var_29: bool;
  var __var_30: int;

    assume newAllowance_s657 >= 0;
    assume __var_26 >= 0;
    __var_28 := this;
    call __var_26 := allowance_IERC20(token_s658, this, __var_27, this, spender_s658);
    assume __var_26 >= 0;
    assume value_s658 >= 0;
    call newAllowance_s657 := sub_SafeMath__success(this, this, 0, __var_26, value_s658);
    if (revert)
    {
        return;
    }

    newAllowance_s657 := newAllowance_s657;
    assume newAllowance_s657 >= 0;
    call __var_29 := approve_IERC20(token_s658, this, __var_30, spender_s658, newAllowance_s657);
    if (!__var_29)
    {
        revert := true;
        return;
    }
}



implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___notEntered_ReentrancyGuard[this] := false;
    __tmp___notEntered_ReentrancyGuard[this] := true;
}



implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _notEntered_ReentrancyGuard[this] := false;
    _notEntered_ReentrancyGuard[this] := true;
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
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___wallet_Crowdsale[this] := null;
    __tmp___rate_Crowdsale[this] := 0;
    __tmp___weiRaised_Crowdsale[this] := 0;
    assume rate_s761 >= 0;
    if (!(rate_s761 > 0))
    {
        revert := true;
        return;
    }

    __var_31 := null;
    if (!(wallet_s761 != null))
    {
        revert := true;
        return;
    }

    __var_32 := token_s761;
    __var_33 := null;
    if (!(token_s761 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___rate_Crowdsale[this] >= 0;
    __tmp___rate_Crowdsale[this] := 1;
    __tmp___wallet_Crowdsale[this] := wallet_s761;
    __tmp___token_Crowdsale[this] := token_s761;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _wallet_Crowdsale[this] := null;
    _rate_Crowdsale[this] := 0;
    _weiRaised_Crowdsale[this] := 0;
    assume rate_s761 >= 0;
    if (!(rate_s761 > 0))
    {
        revert := true;
        return;
    }

    __var_31 := null;
    if (!(wallet_s761 != null))
    {
        revert := true;
        return;
    }

    __var_32 := token_s761;
    __var_33 := null;
    if (!(token_s761 != null))
    {
        revert := true;
        return;
    }

    assume _rate_Crowdsale[this] >= 0;
    _rate_Crowdsale[this] := 1;
    _wallet_Crowdsale[this] := wallet_s761;
    _token_Crowdsale[this] := token_s761;
}



implementation Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s761, wallet_s761, token_s761);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s761: int, 
    wallet_s761: Ref, 
    token_s761: Ref)
{
  var __var_31: Ref;
  var __var_32: Ref;
  var __var_33: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s761, wallet_s761, token_s761);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_34: Ref;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call __var_34 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_34);
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
  var __var_34: Ref;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    if (DType[this] == RefundableCrowdsale)
    {
        call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call __var_34 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == RefundableCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_34);
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
    gas := gas - 3;
    gas := gas - 294;
    __ret_0_ := __tmp___token_Crowdsale[this];
    return;
}



implementation token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 294;
    __ret_0_ := _token_Crowdsale[this];
    return;
}



implementation wallet_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := __tmp___wallet_Crowdsale[this];
    return;
}



implementation wallet_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := _wallet_Crowdsale[this];
    return;
}



implementation rate_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume __tmp___rate_Crowdsale[this] >= 0;
    __ret_0_ := __tmp___rate_Crowdsale[this];
    return;
}



implementation rate_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume _rate_Crowdsale[this] >= 0;
    __ret_0_ := _rate_Crowdsale[this];
    return;
}



implementation weiRaised_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    __ret_0_ := __tmp___weiRaised_Crowdsale[this];
    return;
}



implementation weiRaised_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 208;
    assume _weiRaised_Crowdsale[this] >= 0;
    __ret_0_ := _weiRaised_Crowdsale[this];
    return;
}



implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s859: Ref)
{
  var weiAmount_s858: int;
  var tokens_s858: int;
  var __var_35: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call nonReentrant_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s858 := msgvalue_MSG;
    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 15;
    assume tokens_s858 >= 0;
    assume weiAmount_s858 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s858 := tokens_s858;
    gas := gas - 20247;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s858 >= 0;
    call __var_35 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s858);
    if (revert)
    {
        return;
    }

    __tmp___weiRaised_Crowdsale[this] := __var_35;
    assume __var_35 >= 0;
    gas := gas - 10;
    assume tokens_s858 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 4;
    if (__tmp__DType[this] == RefundableCrowdsale)
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

    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call nonReentrant_post__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s859: Ref)
{
  var weiAmount_s858: int;
  var tokens_s858: int;
  var __var_35: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call nonReentrant_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s858 := msgvalue_MSG;
    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 15;
    assume tokens_s858 >= 0;
    assume weiAmount_s858 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call tokens_s858 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s858 := tokens_s858;
    gas := gas - 20247;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s858 >= 0;
    call __var_35 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s858);
    if (revert)
    {
        return;
    }

    _weiRaised_Crowdsale[this] := __var_35;
    assume __var_35 >= 0;
    gas := gas - 10;
    assume tokens_s858 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, tokens_s858);
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
    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 4;
    if (DType[this] == RefundableCrowdsale)
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

    gas := gas - 10;
    assume weiAmount_s858 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859, weiAmount_s858);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call nonReentrant_post__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s872: Ref, 
    weiAmount_s872: int)
{
    gas := gas - 10;
    assume weiAmount_s872 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
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



implementation _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s872: Ref, 
    weiAmount_s872: int)
{
    gas := gas - 10;
    assume weiAmount_s872 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s872, weiAmount_s872);
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



implementation _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s898: Ref, 
    weiAmount_s898: int)
{
  var __var_36: Ref;

    gas := gas - 683;
    __var_36 := null;
    if (!(beneficiary_s898 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 664;
    assume weiAmount_s898 >= 0;
    if (!(weiAmount_s898 != 0))
    {
        revert := true;
        return;
    }
}



implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s898: Ref, 
    weiAmount_s898: int)
{
  var __var_36: Ref;

    gas := gas - 683;
    __var_36 := null;
    if (!(beneficiary_s898 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 664;
    assume weiAmount_s898 >= 0;
    if (!(weiAmount_s898 != 0))
    {
        revert := true;
        return;
    }
}



implementation _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s906: Ref, 
    weiAmount_s906: int)
{
}



implementation _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s906: Ref, 
    weiAmount_s906: int)
{
}



implementation _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s922: Ref, 
    tokenAmount_s922: int)
{
    gas := gas - 299;
    assume tokenAmount_s922 >= 0;
    call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s922, tokenAmount_s922);
    if (revert)
    {
        return;
    }
}



implementation _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s922: Ref, 
    tokenAmount_s922: int)
{
    gas := gas - 299;
    assume tokenAmount_s922 >= 0;
    call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s922, tokenAmount_s922);
    if (revert)
    {
        return;
    }
}



implementation _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s935: Ref, 
    tokenAmount_s935: int)
{
    gas := gas - 10;
    assume tokenAmount_s935 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
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
    beneficiary_s935: Ref, 
    tokenAmount_s935: int)
{
    gas := gas - 10;
    assume tokenAmount_s935 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s935, tokenAmount_s935);
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
    beneficiary_s943: Ref, 
    weiAmount_s943: int)
{
}



implementation _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s943: Ref, 
    weiAmount_s943: int)
{
}



implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s953: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 8;
    assume weiAmount_s953 >= 0;
    __ret_0_ := weiAmount_s953;
    return;
}



implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s953: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 8;
    assume weiAmount_s953 >= 0;
    __ret_0_ := weiAmount_s953;
    return;
}



implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_37: int;
  var __var_38: bool;

    gas := gas - 36028;
    __var_37 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_37 := __var_37 - gas;
    assume msgvalue_MSG >= 0;
    call __var_38 := send__fail(this, __tmp___wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_38)
    {
        revert := true;
        return;
    }

    gas := __var_37 + gas;
}



implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_37: int;
  var __var_38: bool;

    gas := gas - 36028;
    __var_37 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_37 := __var_37 - gas;
    assume msgvalue_MSG >= 0;
    call __var_38 := send__success(this, _wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_38)
    {
        revert := true;
        return;
    }

    gas := __var_37 + gas;
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___openingTime_TimedCrowdsale[this] := 0;
    __tmp___closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s1021 >= 0;
    assume __tmp__now >= 0;
    if (!(openingTime_s1021 >= __tmp__now))
    {
        revert := true;
        return;
    }

    assume closingTime_s1021 >= 0;
    assume openingTime_s1021 >= 0;
    if (!(closingTime_s1021 > openingTime_s1021))
    {
        revert := true;
        return;
    }

    assume __tmp___openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s1021 >= 0;
    __tmp___openingTime_TimedCrowdsale[this] := openingTime_s1021;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s1021 >= 0;
    __tmp___closingTime_TimedCrowdsale[this] := closingTime_s1021;
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _openingTime_TimedCrowdsale[this] := 0;
    _closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s1021 >= 0;
    assume now >= 0;
    if (!(openingTime_s1021 >= now))
    {
        revert := true;
        return;
    }

    assume closingTime_s1021 >= 0;
    assume openingTime_s1021 >= 0;
    if (!(closingTime_s1021 > openingTime_s1021))
    {
        revert := true;
        return;
    }

    assume _openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s1021 >= 0;
    _openingTime_TimedCrowdsale[this] := openingTime_s1021;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s1021 >= 0;
    _closingTime_TimedCrowdsale[this] := closingTime_s1021;
}



implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int)
{
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s1021, closingTime_s1021);
    if (revert)
    {
        return;
    }
}



implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s1021: int, 
    closingTime_s1021: int)
{
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s1021, closingTime_s1021);
    if (revert)
    {
        return;
    }
}



implementation openingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume __tmp___openingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp___openingTime_TimedCrowdsale[this];
    return;
}



implementation openingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume _openingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := _openingTime_TimedCrowdsale[this];
    return;
}



implementation closingTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp___closingTime_TimedCrowdsale[this];
    return;
}



implementation closingTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := _closingTime_TimedCrowdsale[this];
    return;
}



implementation isOpen_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
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
    assume __tmp__now >= 0;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp__now > __tmp___closingTime_TimedCrowdsale[this];
    return;
}



implementation hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    assume now >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := now > _closingTime_TimedCrowdsale[this];
    return;
}



implementation _preValidatePurchase_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s1079: Ref, 
    weiAmount_s1079: int)
{
    call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume weiAmount_s1079 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1079, weiAmount_s1079);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1079, weiAmount_s1079);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1079, weiAmount_s1079);
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
    beneficiary_s1079: Ref, 
    weiAmount_s1079: int)
{
    call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume weiAmount_s1079 >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1079, weiAmount_s1079);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1079, weiAmount_s1079);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1079, weiAmount_s1079);
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



implementation _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1108: int)
{
  var __var_40: bool;

    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_40 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_40 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_40 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_40)
    {
        revert := true;
        return;
    }

    assume newClosingTime_s1108 >= 0;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    if (!(newClosingTime_s1108 > __tmp___closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }

    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    assume newClosingTime_s1108 >= 0;
    __tmp___closingTime_TimedCrowdsale[this] := newClosingTime_s1108;
}



implementation _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1108: int)
{
  var __var_40: bool;

    if (DType[this] == RefundableCrowdsale)
    {
        call __var_40 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_40 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_40 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_40)
    {
        revert := true;
        return;
    }

    assume newClosingTime_s1108 >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    if (!(newClosingTime_s1108 > _closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "TimedCrowdsaleExtended_TimedCrowdsale"} true;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    assume newClosingTime_s1108 >= 0;
    _closingTime_TimedCrowdsale[this] := newClosingTime_s1108;
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
    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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
    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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
    __ret_0_ := __tmp___finalized_FinalizableCrowdsale[this];
    return;
}



implementation finalized_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    __ret_0_ := _finalized_FinalizableCrowdsale[this];
    return;
}



implementation finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_41: bool;

    if (!!__tmp___finalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_41 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_41 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_41)
    {
        revert := true;
        return;
    }

    __tmp___finalized_FinalizableCrowdsale[this] := true;
    if (__tmp__DType[this] == RefundableCrowdsale)
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
  var __var_41: bool;

    if (!!_finalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    if (DType[this] == RefundableCrowdsale)
    {
        call __var_41 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_41 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_41)
    {
        revert := true;
        return;
    }

    _finalized_FinalizableCrowdsale[this] := true;
    if (DType[this] == RefundableCrowdsale)
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
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation _finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    if (DType[this] == RefundableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___goal_RefundableCrowdsale[this] := 0;
    assume goal_s1208 >= 0;
    if (!(goal_s1208 > 0))
    {
        revert := true;
        return;
    }

    call __var_43 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == RefundableCrowdsale)
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
    assume goal_s1208 >= 0;
    __tmp___goal_RefundableCrowdsale[this] := goal_s1208;
}



implementation RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _goal_RefundableCrowdsale[this] := 0;
    assume goal_s1208 >= 0;
    if (!(goal_s1208 > 0))
    {
        revert := true;
        return;
    }

    call __var_43 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    if (DType[this] == RefundableCrowdsale)
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
    assume goal_s1208 >= 0;
    _goal_RefundableCrowdsale[this] := goal_s1208;
}



implementation RefundableCrowdsale_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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

    call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, goal_s1208);
    if (revert)
    {
        return;
    }
}



implementation RefundableCrowdsale_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1208: int)
{
  var __var_42: Ref;
  var __var_43: Ref;
  var __var_44: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

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

    call RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, goal_s1208);
    if (revert)
    {
        return;
    }
}



implementation goal_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume __tmp___goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := __tmp___goal_RefundableCrowdsale[this];
    return;
}



implementation goal_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    assume _goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := _goal_RefundableCrowdsale[this];
    return;
}



implementation claimRefund_RefundableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1241: Ref)
{
  var __var_45: bool;
  var __var_46: bool;
  var __var_47: int;

    if (__tmp__DType[this] == RefundableCrowdsale)
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

    call __var_46 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!!__var_46)
    {
        revert := true;
        return;
    }

    if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call withdraw_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call withdraw_ConditionalEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call withdraw_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1241);
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



implementation claimRefund_RefundableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1241: Ref)
{
  var __var_45: bool;
  var __var_46: bool;
  var __var_47: int;

    if (DType[this] == RefundableCrowdsale)
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

    call __var_46 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!!__var_46)
    {
        revert := true;
        return;
    }

    if (DType[_escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call withdraw_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call withdraw_ConditionalEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call withdraw_Escrow__success(_escrow_RefundableCrowdsale[this], this, __var_47, refundee_s1241);
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

    assume __var_48 >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
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

    assume __var_48 >= 0;
    if (DType[this] == RefundableCrowdsale)
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

    call __var_49 := goalReached_RefundableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__var_49)
    {
        call close_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_50);
        if (revert)
        {
            return;
        }

        call beneficiaryWithdraw_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_51);
        if (revert)
        {
            return;
        }
    }
    else
    {
        call enableRefunds_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, __var_52);
        if (revert)
        {
            return;
        }
    }

    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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

    call __var_49 := goalReached_RefundableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (__var_49)
    {
        call close_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_50);
        if (revert)
        {
            return;
        }

        call beneficiaryWithdraw_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_51);
        if (revert)
        {
            return;
        }
    }
    else
    {
        call enableRefunds_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, __var_52);
        if (revert)
        {
            return;
        }
    }

    if (DType[this] == RefundableCrowdsale)
    {
        call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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
  var __var_53: Ref;

    assume msgvalue_MSG >= 0;
    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_53 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call deposit_RefundEscrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call deposit_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp___escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call deposit_Escrow__fail(__tmp___escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
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
  var __var_53: Ref;

    assume msgvalue_MSG >= 0;
    if (DType[this] == RefundableCrowdsale)
    {
        call __var_53 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[_escrow_RefundableCrowdsale[this]] == RefundEscrow)
    {
        call deposit_RefundEscrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == ConditionalEscrow)
    {
        call deposit_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_escrow_RefundableCrowdsale[this]] == Escrow)
    {
        call deposit_Escrow__success(_escrow_RefundableCrowdsale[this], this, msgvalue_MSG, __var_53);
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
    if (__tmp__DType[to] == RefundableCrowdsale)
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
    else if (__tmp__DType[to] == Context)
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
    if (DType[to] == RefundableCrowdsale)
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
    else if (DType[to] == Context)
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
  var __snap___tmp__M_Ref_int: [Ref][Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp___primary_Secondary: [Ref]Ref;
  var __snap___tmp___deposits_Escrow: [Ref]Ref;
  var __snap___tmp___state_RefundEscrow: [Ref]int;
  var __snap___tmp___beneficiary_RefundEscrow: [Ref]Ref;
  var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
  var __snap___tmp___token_Crowdsale: [Ref]Ref;
  var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
  var __snap___tmp___rate_Crowdsale: [Ref]int;
  var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
  var __snap___tmp___openingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp___closingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp___finalized_FinalizableCrowdsale: [Ref]bool;
  var __snap___tmp___goal_RefundableCrowdsale: [Ref]int;
  var __snap___tmp___escrow_RefundableCrowdsale: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__now := __tmp__now;
        __snap___tmp___primary_Secondary := __tmp___primary_Secondary;
        __snap___tmp___deposits_Escrow := __tmp___deposits_Escrow;
        __snap___tmp___state_RefundEscrow := __tmp___state_RefundEscrow;
        __snap___tmp___beneficiary_RefundEscrow := __tmp___beneficiary_RefundEscrow;
        __snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
        __snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
        __snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
        __snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
        __snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
        __snap___tmp___openingTime_TimedCrowdsale := __tmp___openingTime_TimedCrowdsale;
        __snap___tmp___closingTime_TimedCrowdsale := __tmp___closingTime_TimedCrowdsale;
        __snap___tmp___finalized_FinalizableCrowdsale := __tmp___finalized_FinalizableCrowdsale;
        __snap___tmp___goal_RefundableCrowdsale := __tmp___goal_RefundableCrowdsale;
        __snap___tmp___escrow_RefundableCrowdsale := __tmp___escrow_RefundableCrowdsale;
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
        __tmp__M_Ref_int := __snap___tmp__M_Ref_int;
        __tmp__Length := __snap___tmp__Length;
        __tmp__sum := __snap___tmp__sum;
        __tmp__now := __snap___tmp__now;
        __tmp___primary_Secondary := __snap___tmp___primary_Secondary;
        __tmp___deposits_Escrow := __snap___tmp___deposits_Escrow;
        __tmp___state_RefundEscrow := __snap___tmp___state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := __snap___tmp___beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
        __tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
        __tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := __snap___tmp___openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := __snap___tmp___closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := __snap___tmp___finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := __snap___tmp___goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := __snap___tmp___escrow_RefundableCrowdsale;
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
        __tmp__M_Ref_int := M_Ref_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___primary_Secondary := _primary_Secondary;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___goal_RefundableCrowdsale := _goal_RefundableCrowdsale;
        __tmp___escrow_RefundableCrowdsale := _escrow_RefundableCrowdsale;
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



implementation onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    gas := gas - 7402;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Secondary)
    {
        call __var_1 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!(__var_1 == __tmp___primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    gas := gas - 7402;
    if (DType[this] == RefundEscrow)
    {
        call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Secondary)
    {
        call __var_1 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!(__var_1 == _primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}



implementation nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 891;
    if (!__tmp___notEntered_ReentrancyGuard[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp___notEntered_ReentrancyGuard[this] := false;
}



implementation nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 891;
    if (!_notEntered_ReentrancyGuard[this])
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    _notEntered_ReentrancyGuard[this] := false;
}



implementation onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: bool;

    if (__tmp__DType[this] == RefundableCrowdsale)
    {
        call __var_39 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_39 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_39 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_39)
    {
        revert := true;
        return;
    }
}



implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_39: bool;

    if (DType[this] == RefundableCrowdsale)
    {
        call __var_39 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_39 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_39 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_39)
    {
        revert := true;
        return;
    }
}



implementation nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 20267;
    __tmp___notEntered_ReentrancyGuard[this] := true;
}



implementation nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 20267;
    _notEntered_ReentrancyGuard[this] := true;
}



implementation CorralChoice_Context(this: Ref)
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
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_Context()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Context
       || DType[this] == Secondary
       || DType[this] == Escrow
       || DType[this] == ConditionalEscrow
       || DType[this] == RefundEscrow
       || DType[this] == Crowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == FinalizableCrowdsale
       || DType[this] == RefundableCrowdsale;
    gas := gas - 53000;
    call Context_Context(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Context(this);
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
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
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



implementation CorralChoice_Secondary(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s157: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s157;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s157);
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
  var recipient_s157: Ref;
  var payee_s191: Ref;
  var __ret_0_depositsOf: int;
  var payee_s201: Ref;
  var payee_s240: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s157;
    havoc payee_s191;
    havoc __ret_0_depositsOf;
    havoc payee_s201;
    havoc payee_s240;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s157);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s191);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s201);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call withdraw_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s240);
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
  var recipient_s157: Ref;
  var payee_s191: Ref;
  var __ret_0_depositsOf: int;
  var payee_s201: Ref;
  var payee_s298: Ref;
  var payee_s281: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s157;
    havoc payee_s191;
    havoc __ret_0_depositsOf;
    havoc payee_s201;
    havoc payee_s298;
    havoc payee_s281;
    havoc __ret_0_withdrawalAllowed;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s157);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s191);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s201);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s298);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_withdrawalAllowed := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s281);
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
  var recipient_s157: Ref;
  var payee_s191: Ref;
  var __ret_0_depositsOf: int;
  var refundee_s371: Ref;
  var payee_s298: Ref;
  var __arg_0_withdrawalAllowed: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var beneficiary_s337: Ref;
  var __ret_0_state: int;
  var __ret_0_beneficiary: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s157;
    havoc payee_s191;
    havoc __ret_0_depositsOf;
    havoc refundee_s371;
    havoc payee_s298;
    havoc __arg_0_withdrawalAllowed;
    havoc __ret_0_withdrawalAllowed;
    havoc beneficiary_s337;
    havoc __ret_0_state;
    havoc __ret_0_beneficiary;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 11)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s157);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s191);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call deposit_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, refundee_s371);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s298);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_withdrawalAllowed := withdrawalAllowed_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, __arg_0_withdrawalAllowed);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_state := state_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_beneficiary := beneficiary_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call close_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call enableRefunds_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call beneficiaryWithdraw_RefundEscrow(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_RefundEscrow()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var beneficiary_s337: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == RefundEscrow;
    gas := gas - 53000;
    call RefundEscrow_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, beneficiary_s337);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_RefundEscrow(this);
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
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
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
    assume DType[this] == IERC20;
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
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
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
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
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
       || DType[this] == RefundableCrowdsale;
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
  var rate_s761: int;
  var wallet_s761: Ref;
  var token_s761: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s859: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s761;
    havoc wallet_s761;
    havoc token_s761;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s859;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859);
    }
}



implementation CorralEntry_Crowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var rate_s761: int;
  var wallet_s761: Ref;
  var token_s761: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Crowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == FinalizableCrowdsale
       || DType[this] == RefundableCrowdsale;
    gas := gas - 53000;
    call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s761, wallet_s761, token_s761);
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
  var rate_s761: int;
  var wallet_s761: Ref;
  var token_s761: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s859: Ref;
  var openingTime_s1021: int;
  var closingTime_s1021: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s761;
    havoc wallet_s761;
    havoc token_s761;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s859;
    havoc openingTime_s1021;
    havoc closingTime_s1021;
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
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_TimedCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var openingTime_s1021: int;
  var closingTime_s1021: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == TimedCrowdsale
       || DType[this] == FinalizableCrowdsale
       || DType[this] == RefundableCrowdsale;
    gas := gas - 53000;
    call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s1021, closingTime_s1021);
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
  var rate_s761: int;
  var wallet_s761: Ref;
  var token_s761: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s859: Ref;
  var openingTime_s1021: int;
  var closingTime_s1021: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s761;
    havoc wallet_s761;
    havoc token_s761;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s859;
    havoc openingTime_s1021;
    havoc closingTime_s1021;
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
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 11)
    {
        gas := gas - 21000;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
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
    assume DType[this] == FinalizableCrowdsale || DType[this] == RefundableCrowdsale;
    gas := gas - 53000;
    call FinalizableCrowdsale_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_FinalizableCrowdsale(this);
    }
}



implementation CorralChoice_RefundableCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s761: int;
  var wallet_s761: Ref;
  var token_s761: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s859: Ref;
  var openingTime_s1021: int;
  var closingTime_s1021: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var goal_s1208: int;
  var __ret_0_goal: int;
  var refundee_s1241: Ref;
  var __ret_0_goalReached: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s761;
    havoc wallet_s761;
    havoc token_s761;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s859;
    havoc openingTime_s1021;
    havoc closingTime_s1021;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc __ret_0_finalized;
    havoc goal_s1208;
    havoc __ret_0_goal;
    havoc refundee_s1241;
    havoc __ret_0_goalReached;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 14)
    {
        gas := gas - 21000;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s859);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_goal := goal_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call claimRefund_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, refundee_s1241);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_goalReached := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var goal_s1208: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == RefundableCrowdsale;
    gas := gas - 53000;
    call RefundableCrowdsale_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, goal_s1208);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_RefundableCrowdsale(this);
    }
}


