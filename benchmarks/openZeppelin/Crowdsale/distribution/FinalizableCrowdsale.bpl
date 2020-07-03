// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /pretty:1 /print:FinalizableCrowdsale.bpl /noVerify __SolToBoogieTest_out.bpl
//LTLProperty: []((success(FinalizableCrowdsale.finalize) {}) ==> X([](!success(FinalizableCrowdsale.finalize) {})))

// Spec 1
// #LTLFairness: <>(success(FinalizableCrowdsale.finalize) {})
// #LTLProperty: <>([](!success(Crowdsale.buyTokens) {})) 

// Spec 2
// LTLFairness: [](<>(call(Crowdsale.buyTokens) {}))
// LTLProperty: [](<>(success(Crowdsale.buyTokens) {}))

// LIVE SPEC 1
// #LTLFairness: <>(success(FinalizableCrowdsale.finalize) {})
// #LTLProperty: <>([](!(success(Crowdsale.buyTokens) {})))

type Ref = int;

type ContractName = int;

var null: Ref;

var Context: ContractName;

var Crowdsale: ContractName;

var FinalizableCrowdsale: ContractName;

var IERC20: ContractName;

var ReentrancyGuard: ContractName;

var SafeERC20: ContractName;

var SafeMath: ContractName;

var TimedCrowdsale: ContractName;

function ConstantToRef(x: int) : Ref;

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

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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



var _token_Crowdsale: [Ref]Ref;

var _wallet_Crowdsale: [Ref]Ref;

var _rate_Crowdsale: [Ref]int;

var _weiRaised_Crowdsale: [Ref]int;

procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref);
  modifies _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale;



procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, _token_Crowdsale, _notEntered_ReentrancyGuard;



implementation Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s428, wallet_s428, token_s428);
        assume revert || gas < 0;
    }
    else
    {
        call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s428, wallet_s428, token_s428);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, gas;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, gas;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, gas;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, gas;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s526: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, gas, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s526: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s539: Ref, 
    weiAmount_s539: int);
  modifies gas, revert;



procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s565: Ref, 
    weiAmount_s565: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s573: Ref, 
    weiAmount_s573: int);



procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s589: Ref, 
    tokenAmount_s589: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s602: Ref, 
    tokenAmount_s602: int);
  modifies gas, revert;



procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s610: Ref, 
    weiAmount_s610: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s623: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



var _finalized_FinalizableCrowdsale: [Ref]bool;

procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _finalized_FinalizableCrowdsale;



procedure {:constructor} {:public} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, _finalized_FinalizableCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s665: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s674: Ref, 
    amount_s674: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s683: Ref, 
    spender_s683: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s692: Ref, 
    amount_s692: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s703: Ref, 
    recipient_s703: Ref, 
    amount_s703: int)
   returns (__ret_0_: bool);



var _notEntered_ReentrancyGuard: [Ref]bool;

procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _notEntered_ReentrancyGuard;



procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, _notEntered_ReentrancyGuard;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
    token_s775: Ref, 
    to_s775: Ref, 
    value_s775: int);
  modifies gas, revert;



procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s796: Ref, 
    from_s796: Ref, 
    to_s796: Ref, 
    value_s796: int);
  modifies revert;



procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s833: Ref, 
    spender_s833: Ref, 
    value_s833: int);
  modifies revert;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s864: Ref, 
    spender_s864: Ref, 
    value_s864: int);
  modifies revert, gas;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s895: Ref, 
    spender_s895: Ref, 
    value_s895: int);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s118: int, b_s118: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s152: int, b_s152: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s177: int, b_s177: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s198: int, b_s198: int)
   returns (__ret_0_: int);
  modifies revert;



var _openingTime_TimedCrowdsale: [Ref]int;

var _closingTime_TimedCrowdsale: [Ref]int;

procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int);
  modifies _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale;



implementation TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s259, closingTime_s259);
        assume revert || gas < 0;
    }
    else
    {
        call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s259, closingTime_s259);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
    beneficiary_s317: Ref, 
    weiAmount_s317: int);
  modifies revert, gas;



procedure {:inline 1} _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s346: int);
  modifies revert, _closingTime_TimedCrowdsale;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert, gas, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;






procedure nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _notEntered_ReentrancyGuard;



procedure onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, _notEntered_ReentrancyGuard;



procedure CorralChoice_Context(this: Ref);
  modifies gas, now;






procedure CorralChoice_FinalizableCrowdsale(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard;



procedure main();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, now, Balance, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp___token_Crowdsale: [Ref]Ref;

var __tmp___wallet_Crowdsale: [Ref]Ref;

var __tmp___rate_Crowdsale: [Ref]int;

var __tmp___weiRaised_Crowdsale: [Ref]int;

var __tmp___finalized_FinalizableCrowdsale: [Ref]bool;

var __tmp___notEntered_ReentrancyGuard: [Ref]bool;

var __tmp___openingTime_TimedCrowdsale: [Ref]int;

var __tmp___closingTime_TimedCrowdsale: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref);
  modifies __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref);
  modifies _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref);
  modifies __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale, __tmp___notEntered_ReentrancyGuard;



procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



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



procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s526: Ref);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s526: Ref);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s539: Ref, 
    weiAmount_s539: int);
  modifies gas, revert;



procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s565: Ref, 
    weiAmount_s565: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s573: Ref, 
    weiAmount_s573: int);



procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s589: Ref, 
    tokenAmount_s589: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s602: Ref, 
    tokenAmount_s602: int);
  modifies gas, revert;



procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s610: Ref, 
    weiAmount_s610: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s623: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___finalized_FinalizableCrowdsale;



procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _finalized_FinalizableCrowdsale, _notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard;



procedure {:inline 1} finalized_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} finalized_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



procedure {:inline 1} finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, _finalized_FinalizableCrowdsale;



procedure {:inline 1} finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp___finalized_FinalizableCrowdsale;



procedure {:inline 1} _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} IERC20_IERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___notEntered_ReentrancyGuard;



procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s775: Ref, 
    to_s775: Ref, 
    value_s775: int);
  modifies gas, revert;



procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s796: Ref, 
    from_s796: Ref, 
    to_s796: Ref, 
    value_s796: int);
  modifies revert;



procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s833: Ref, 
    spender_s833: Ref, 
    value_s833: int);
  modifies revert;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s864: Ref, 
    spender_s864: Ref, 
    value_s864: int);
  modifies revert, gas;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s895: Ref, 
    spender_s895: Ref, 
    value_s895: int);
  modifies revert;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s118: int, b_s118: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s152: int, b_s152: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s177: int, b_s177: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} mod_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s198: int, b_s198: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int);
  modifies __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int);
  modifies _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int);
  modifies __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



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
    beneficiary_s317: Ref, 
    weiAmount_s317: int);
  modifies revert, gas;



procedure {:inline 1} _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s346: int);
  modifies revert, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___finalized_FinalizableCrowdsale, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert, gas;



procedure nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___notEntered_ReentrancyGuard;



procedure onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert;



procedure nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
}



implementation Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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
    gas := gas - 3;
    gas := gas - 7;
    __ret_0_ := msgsender_MSG;
    return;
}



implementation _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 7;
    __ret_0_ := msgsender_MSG;
    return;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

    assume msgsender_MSG != null;
    __tmp___wallet_Crowdsale[this] := null;
    __tmp___rate_Crowdsale[this] := 0;
    __tmp___weiRaised_Crowdsale[this] := 0;
    assume rate_s428 >= 0;
    if (!(rate_s428 > 0))
    {
        revert := true;
        return;
    }

    __var_1 := null;
    if (!(wallet_s428 != null))
    {
        revert := true;
        return;
    }

    __var_2 := token_s428;
    __var_3 := null;
    if (!(token_s428 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___rate_Crowdsale[this] >= 0;
    assume rate_s428 >= 0;
    __tmp___rate_Crowdsale[this] := rate_s428;
    __tmp___wallet_Crowdsale[this] := wallet_s428;
    __tmp___token_Crowdsale[this] := token_s428;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

    assume msgsender_MSG != null;
    _wallet_Crowdsale[this] := null;
    _rate_Crowdsale[this] := 0;
    _weiRaised_Crowdsale[this] := 0;
    assume rate_s428 >= 0;
    if (!(rate_s428 > 0))
    {
        revert := true;
        return;
    }

    __var_1 := null;
    if (!(wallet_s428 != null))
    {
        revert := true;
        return;
    }

    __var_2 := token_s428;
    __var_3 := null;
    if (!(token_s428 != null))
    {
        revert := true;
        return;
    }

    assume _rate_Crowdsale[this] >= 0;
    assume rate_s428 >= 0;
    _rate_Crowdsale[this] := rate_s428;
    _wallet_Crowdsale[this] := wallet_s428;
    _token_Crowdsale[this] := token_s428;
}



implementation Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

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

    call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s428, wallet_s428, token_s428);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s428: int, 
    wallet_s428: Ref, 
    token_s428: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

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

    call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s428, wallet_s428, token_s428);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_4: Ref;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call __var_4 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_4);
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
  var __var_4: Ref;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    if (DType[this] == FinalizableCrowdsale)
    {
        call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call __var_4 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_4);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_4);
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



implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s526: Ref)
{
  var weiAmount_s525: int;
  var tokens_s525: int;
  var __var_5: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call nonReentrant_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s525 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s525 := msgvalue_MSG;
    gas := gas - 10;
    assume weiAmount_s525 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
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
    assume tokens_s525 >= 0;
    assume weiAmount_s525 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call tokens_s525 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call tokens_s525 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call tokens_s525 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s525 := tokens_s525;
    gas := gas - 20247;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s525 >= 0;
    call __var_5 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s525);
    if (revert)
    {
        return;
    }

    __tmp___weiRaised_Crowdsale[this] := __var_5;
    assume __var_5 >= 0;
    gas := gas - 10;
    assume tokens_s525 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, tokens_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, tokens_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, tokens_s525);
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
    assume weiAmount_s525 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
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
    if (__tmp__DType[this] == FinalizableCrowdsale)
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
    assume weiAmount_s525 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
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



implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s526: Ref)
{
  var weiAmount_s525: int;
  var tokens_s525: int;
  var __var_5: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call nonReentrant_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s525 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s525 := msgvalue_MSG;
    gas := gas - 10;
    assume weiAmount_s525 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
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
    assume tokens_s525 >= 0;
    assume weiAmount_s525 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call tokens_s525 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call tokens_s525 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call tokens_s525 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s525 := tokens_s525;
    gas := gas - 20247;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s525 >= 0;
    call __var_5 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s525);
    if (revert)
    {
        return;
    }

    _weiRaised_Crowdsale[this] := __var_5;
    assume __var_5 >= 0;
    gas := gas - 10;
    assume tokens_s525 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, tokens_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, tokens_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, tokens_s525);
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
    assume weiAmount_s525 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
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
    if (DType[this] == FinalizableCrowdsale)
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
    assume weiAmount_s525 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526, weiAmount_s525);
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
    beneficiary_s539: Ref, 
    weiAmount_s539: int)
{
    gas := gas - 10;
    assume weiAmount_s539 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s539, weiAmount_s539);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s539, weiAmount_s539);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s539, weiAmount_s539);
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
    beneficiary_s539: Ref, 
    weiAmount_s539: int)
{
    gas := gas - 10;
    assume weiAmount_s539 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s539, weiAmount_s539);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s539, weiAmount_s539);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s539, weiAmount_s539);
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
    beneficiary_s565: Ref, 
    weiAmount_s565: int)
{
  var __var_6: Ref;

    gas := gas - 683;
    __var_6 := null;
    if (!(beneficiary_s565 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 664;
    assume weiAmount_s565 >= 0;
    if (!(weiAmount_s565 != 0))
    {
        revert := true;
        return;
    }
}



implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s565: Ref, 
    weiAmount_s565: int)
{
  var __var_6: Ref;

    gas := gas - 683;
    __var_6 := null;
    if (!(beneficiary_s565 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 664;
    assume weiAmount_s565 >= 0;
    if (!(weiAmount_s565 != 0))
    {
        revert := true;
        return;
    }
}



implementation _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s573: Ref, 
    weiAmount_s573: int)
{
}



implementation _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s573: Ref, 
    weiAmount_s573: int)
{
}



implementation _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s589: Ref, 
    tokenAmount_s589: int)
{
    gas := gas - 299;
    assume tokenAmount_s589 >= 0;
    call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s589, tokenAmount_s589);
    if (revert)
    {
        return;
    }
}



implementation _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s589: Ref, 
    tokenAmount_s589: int)
{
    gas := gas - 299;
    assume tokenAmount_s589 >= 0;
    call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s589, tokenAmount_s589);
    if (revert)
    {
        return;
    }
}



implementation _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s602: Ref, 
    tokenAmount_s602: int)
{
    gas := gas - 10;
    assume tokenAmount_s602 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s602, tokenAmount_s602);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s602, tokenAmount_s602);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s602, tokenAmount_s602);
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
    beneficiary_s602: Ref, 
    tokenAmount_s602: int)
{
    gas := gas - 10;
    assume tokenAmount_s602 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s602, tokenAmount_s602);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s602, tokenAmount_s602);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s602, tokenAmount_s602);
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
    beneficiary_s610: Ref, 
    weiAmount_s610: int)
{
}



implementation _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s610: Ref, 
    weiAmount_s610: int)
{
}



implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s623: int)
   returns (__ret_0_: int)
{
  var __var_7: int;

    gas := gas - 3;
    gas := gas - 241;
    assume __var_7 >= 0;
    assume weiAmount_s623 >= 0;
    assume __tmp___rate_Crowdsale[this] >= 0;
    call __var_7 := mul_SafeMath__fail(this, this, 0, weiAmount_s623, __tmp___rate_Crowdsale[this]);
    if (revert)
    {
        return;
    }

    assume __var_7 >= 0;
    __ret_0_ := __var_7;
    return;
}



implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s623: int)
   returns (__ret_0_: int)
{
  var __var_7: int;

    gas := gas - 3;
    gas := gas - 241;
    assume __var_7 >= 0;
    assume weiAmount_s623 >= 0;
    assume _rate_Crowdsale[this] >= 0;
    call __var_7 := mul_SafeMath__success(this, this, 0, weiAmount_s623, _rate_Crowdsale[this]);
    if (revert)
    {
        return;
    }

    assume __var_7 >= 0;
    __ret_0_ := __var_7;
    return;
}



implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_8: int;
  var __var_9: bool;

    gas := gas - 36028;
    __var_8 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_8 := __var_8 - gas;
    assume msgvalue_MSG >= 0;
    call __var_9 := send__fail(this, __tmp___wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_9)
    {
        revert := true;
        return;
    }

    gas := __var_8 + gas;
}



implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_8: int;
  var __var_9: bool;

    gas := gas - 36028;
    __var_8 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_8 := __var_8 - gas;
    assume msgvalue_MSG >= 0;
    call __var_9 := send__success(this, _wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_9)
    {
        revert := true;
        return;
    }

    gas := __var_8 + gas;
}



implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp___finalized_FinalizableCrowdsale[this] := false;
    __tmp___finalized_FinalizableCrowdsale[this] := false;
}



implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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
  var __var_10: bool;

    if (!!__tmp___finalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_10 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_10)
    {
        revert := true;
        return;
    }

    __tmp___finalized_FinalizableCrowdsale[this] := true;
    call _finalization_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_10: bool;

    if (!!_finalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    if (DType[this] == FinalizableCrowdsale)
    {
        call __var_10 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_10)
    {
        revert := true;
        return;
    }

    _finalized_FinalizableCrowdsale[this] := true;
    call _finalization_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "CrowdsaleFinalized_FinalizableCrowdsale"} true;
}



implementation _finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation _finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation _finalization_FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation _finalization_FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation IERC20_IERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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



implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp___notEntered_ReentrancyGuard[this] := false;
    __tmp___notEntered_ReentrancyGuard[this] := true;
}



implementation ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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



implementation SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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
    token_s775: Ref, 
    to_s775: Ref, 
    value_s775: int)
{
  var __var_11: bool;
  var __var_12: int;

    gas := gas - 37240;
    assume value_s775 >= 0;
    call __var_11 := transfer_IERC20(token_s775, this, __var_12, to_s775, value_s775);
    if (!__var_11)
    {
        revert := true;
        return;
    }
}



implementation safeTransfer_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s775: Ref, 
    to_s775: Ref, 
    value_s775: int)
{
  var __var_11: bool;
  var __var_12: int;

    gas := gas - 37240;
    assume value_s775 >= 0;
    call __var_11 := transfer_IERC20(token_s775, this, __var_12, to_s775, value_s775);
    if (!__var_11)
    {
        revert := true;
        return;
    }
}



implementation safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s796: Ref, 
    from_s796: Ref, 
    to_s796: Ref, 
    value_s796: int)
{
  var __var_13: bool;
  var __var_14: int;

    assume value_s796 >= 0;
    call __var_13 := transferFrom_IERC20(token_s796, this, __var_14, from_s796, to_s796, value_s796);
    if (!__var_13)
    {
        revert := true;
        return;
    }
}



implementation safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s796: Ref, 
    from_s796: Ref, 
    to_s796: Ref, 
    value_s796: int)
{
  var __var_13: bool;
  var __var_14: int;

    assume value_s796 >= 0;
    call __var_13 := transferFrom_IERC20(token_s796, this, __var_14, from_s796, to_s796, value_s796);
    if (!__var_13)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s833: Ref, 
    spender_s833: Ref, 
    value_s833: int)
{
  var __var_15: int;
  var __var_16: int;
  var __var_17: Ref;
  var __var_18: bool;
  var __var_19: int;

    assume value_s833 >= 0;
    assume __var_15 >= 0;
    __var_17 := this;
    call __var_15 := allowance_IERC20(token_s833, this, __var_16, this, spender_s833);
    assume __var_15 >= 0;
    if (!(value_s833 == 0 || __var_15 == 0))
    {
        revert := true;
        return;
    }

    assume value_s833 >= 0;
    call __var_18 := approve_IERC20(token_s833, this, __var_19, spender_s833, value_s833);
    if (!__var_18)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s833: Ref, 
    spender_s833: Ref, 
    value_s833: int)
{
  var __var_15: int;
  var __var_16: int;
  var __var_17: Ref;
  var __var_18: bool;
  var __var_19: int;

    assume value_s833 >= 0;
    assume __var_15 >= 0;
    __var_17 := this;
    call __var_15 := allowance_IERC20(token_s833, this, __var_16, this, spender_s833);
    assume __var_15 >= 0;
    if (!(value_s833 == 0 || __var_15 == 0))
    {
        revert := true;
        return;
    }

    assume value_s833 >= 0;
    call __var_18 := approve_IERC20(token_s833, this, __var_19, spender_s833, value_s833);
    if (!__var_18)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s864: Ref, 
    spender_s864: Ref, 
    value_s864: int)
{
  var newAllowance_s863: int;
  var __var_20: int;
  var __var_21: int;
  var __var_22: Ref;
  var __var_23: bool;
  var __var_24: int;

    assume newAllowance_s863 >= 0;
    assume __var_20 >= 0;
    __var_22 := this;
    call __var_20 := allowance_IERC20(token_s864, this, __var_21, this, spender_s864);
    assume __var_20 >= 0;
    assume value_s864 >= 0;
    call newAllowance_s863 := add_SafeMath__fail(this, this, 0, __var_20, value_s864);
    if (revert)
    {
        return;
    }

    newAllowance_s863 := newAllowance_s863;
    assume newAllowance_s863 >= 0;
    call __var_23 := approve_IERC20(token_s864, this, __var_24, spender_s864, newAllowance_s863);
    if (!__var_23)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s864: Ref, 
    spender_s864: Ref, 
    value_s864: int)
{
  var newAllowance_s863: int;
  var __var_20: int;
  var __var_21: int;
  var __var_22: Ref;
  var __var_23: bool;
  var __var_24: int;

    assume newAllowance_s863 >= 0;
    assume __var_20 >= 0;
    __var_22 := this;
    call __var_20 := allowance_IERC20(token_s864, this, __var_21, this, spender_s864);
    assume __var_20 >= 0;
    assume value_s864 >= 0;
    call newAllowance_s863 := add_SafeMath__success(this, this, 0, __var_20, value_s864);
    if (revert)
    {
        return;
    }

    newAllowance_s863 := newAllowance_s863;
    assume newAllowance_s863 >= 0;
    call __var_23 := approve_IERC20(token_s864, this, __var_24, spender_s864, newAllowance_s863);
    if (!__var_23)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s895: Ref, 
    spender_s895: Ref, 
    value_s895: int)
{
  var newAllowance_s894: int;
  var __var_25: int;
  var __var_26: int;
  var __var_27: Ref;
  var __var_28: bool;
  var __var_29: int;

    assume newAllowance_s894 >= 0;
    assume __var_25 >= 0;
    __var_27 := this;
    call __var_25 := allowance_IERC20(token_s895, this, __var_26, this, spender_s895);
    assume __var_25 >= 0;
    assume value_s895 >= 0;
    call newAllowance_s894 := sub_SafeMath__fail(this, this, 0, __var_25, value_s895);
    if (revert)
    {
        return;
    }

    newAllowance_s894 := newAllowance_s894;
    assume newAllowance_s894 >= 0;
    call __var_28 := approve_IERC20(token_s895, this, __var_29, spender_s895, newAllowance_s894);
    if (!__var_28)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s895: Ref, 
    spender_s895: Ref, 
    value_s895: int)
{
  var newAllowance_s894: int;
  var __var_25: int;
  var __var_26: int;
  var __var_27: Ref;
  var __var_28: bool;
  var __var_29: int;

    assume newAllowance_s894 >= 0;
    assume __var_25 >= 0;
    __var_27 := this;
    call __var_25 := allowance_IERC20(token_s895, this, __var_26, this, spender_s895);
    assume __var_25 >= 0;
    assume value_s895 >= 0;
    call newAllowance_s894 := sub_SafeMath__success(this, this, 0, __var_25, value_s895);
    if (revert)
    {
        return;
    }

    newAllowance_s894 := newAllowance_s894;
    assume newAllowance_s894 >= 0;
    call __var_28 := approve_IERC20(token_s895, this, __var_29, spender_s895, newAllowance_s894);
    if (!__var_28)
    {
        revert := true;
        return;
    }
}



implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int)
{
  var c_s92: int;

    gas := gas - 3;
    gas := gas - 17;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    assume b_s93 >= 0;
    assume a_s93 + b_s93 >= 0;
    c_s92 := a_s93 + b_s93;
    gas := gas - 664;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    if (!(c_s92 >= a_s93))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume c_s92 >= 0;
    __ret_0_ := c_s92;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int)
{
  var c_s92: int;

    gas := gas - 3;
    gas := gas - 17;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    assume b_s93 >= 0;
    assume a_s93 + b_s93 >= 0;
    c_s92 := a_s93 + b_s93;
    gas := gas - 664;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    if (!(c_s92 >= a_s93))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume c_s92 >= 0;
    __ret_0_ := c_s92;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s118: int, b_s118: int)
   returns (__ret_0_: int)
{
  var c_s117: int;

    assume b_s118 >= 0;
    assume a_s118 >= 0;
    if (!(b_s118 <= a_s118))
    {
        revert := true;
        return;
    }

    assume c_s117 >= 0;
    assume a_s118 >= 0;
    assume b_s118 >= 0;
    assume a_s118 - b_s118 >= 0;
    c_s117 := a_s118 - b_s118;
    assume c_s117 >= 0;
    __ret_0_ := c_s117;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s118: int, b_s118: int)
   returns (__ret_0_: int)
{
  var c_s117: int;

    assume b_s118 >= 0;
    assume a_s118 >= 0;
    if (!(b_s118 <= a_s118))
    {
        revert := true;
        return;
    }

    assume c_s117 >= 0;
    assume a_s118 >= 0;
    assume b_s118 >= 0;
    assume a_s118 - b_s118 >= 0;
    c_s117 := a_s118 - b_s118;
    assume c_s117 >= 0;
    __ret_0_ := c_s117;
    return;
}






implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int)
{
    assume msgsender_MSG != null;
    __tmp___openingTime_TimedCrowdsale[this] := 0;
    __tmp___closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s259 >= 0;
    assume __tmp__now >= 0;
    if (!(openingTime_s259 >= __tmp__now))
    {
        revert := true;
        return;
    }

    assume closingTime_s259 >= 0;
    assume openingTime_s259 >= 0;
    if (!(closingTime_s259 > openingTime_s259))
    {
        revert := true;
        return;
    }

    assume __tmp___openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s259 >= 0;
    __tmp___openingTime_TimedCrowdsale[this] := openingTime_s259;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s259 >= 0;
    __tmp___closingTime_TimedCrowdsale[this] := closingTime_s259;
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int)
{
    assume msgsender_MSG != null;
    _openingTime_TimedCrowdsale[this] := 0;
    _closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s259 >= 0;
    assume now >= 0;
    if (!(openingTime_s259 >= now))
    {
        revert := true;
        return;
    }

    assume closingTime_s259 >= 0;
    assume openingTime_s259 >= 0;
    if (!(closingTime_s259 > openingTime_s259))
    {
        revert := true;
        return;
    }

    assume _openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s259 >= 0;
    _openingTime_TimedCrowdsale[this] := openingTime_s259;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s259 >= 0;
    _closingTime_TimedCrowdsale[this] := closingTime_s259;
}



implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int)
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

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s259, closingTime_s259);
    if (revert)
    {
        return;
    }
}



implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s259: int, 
    closingTime_s259: int)
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

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s259, closingTime_s259);
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
    beneficiary_s317: Ref, 
    weiAmount_s317: int)
{
    call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume weiAmount_s317 >= 0;
    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s317, weiAmount_s317);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s317, weiAmount_s317);
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
    beneficiary_s317: Ref, 
    weiAmount_s317: int)
{
    call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume weiAmount_s317 >= 0;
    if (DType[this] == FinalizableCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s317, weiAmount_s317);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s317, weiAmount_s317);
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



implementation _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s346: int)
{
  var __var_31: bool;

    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_31 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_31 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_31)
    {
        revert := true;
        return;
    }

    assume newClosingTime_s346 >= 0;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    if (!(newClosingTime_s346 > __tmp___closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }

    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    assume newClosingTime_s346 >= 0;
    __tmp___closingTime_TimedCrowdsale[this] := newClosingTime_s346;
}



implementation _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s346: int)
{
  var __var_31: bool;

    if (DType[this] == FinalizableCrowdsale)
    {
        call __var_31 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_31 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_31)
    {
        revert := true;
        return;
    }

    assume newClosingTime_s346 >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    if (!(newClosingTime_s346 > _closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "TimedCrowdsaleExtended_TimedCrowdsale"} true;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    assume newClosingTime_s346 >= 0;
    _closingTime_TimedCrowdsale[this] := newClosingTime_s346;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ReentrancyGuard)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == FinalizableCrowdsale)
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
    if (DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == ReentrancyGuard)
    {
        assume amount == 0;
    }
    else if (DType[to] == IERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == FinalizableCrowdsale)
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
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp___token_Crowdsale: [Ref]Ref;
  var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
  var __snap___tmp___rate_Crowdsale: [Ref]int;
  var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
  var __snap___tmp___finalized_FinalizableCrowdsale: [Ref]bool;
  var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
  var __snap___tmp___openingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp___closingTime_TimedCrowdsale: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
        __snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
        __snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
        __snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
        __snap___tmp___finalized_FinalizableCrowdsale := __tmp___finalized_FinalizableCrowdsale;
        __snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
        __snap___tmp___openingTime_TimedCrowdsale := __tmp___openingTime_TimedCrowdsale;
        __snap___tmp___closingTime_TimedCrowdsale := __tmp___closingTime_TimedCrowdsale;
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
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
        __tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
        __tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := __snap___tmp___finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := __snap___tmp___openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := __snap___tmp___closingTime_TimedCrowdsale;
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___finalized_FinalizableCrowdsale := _finalized_FinalizableCrowdsale;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
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
  var __var_30: bool;

    if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_30 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_30 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_30)
    {
        revert := true;
        return;
    }
}



implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_30: bool;

    if (DType[this] == FinalizableCrowdsale)
    {
        call __var_30 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_30 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_30)
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


implementation CorralChoice_FinalizableCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s428: int;
  var wallet_s428: Ref;
  var token_s428: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s526: Ref;
  var openingTime_s259: int;
  var closingTime_s259: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s428;
    havoc wallet_s428;
    havoc token_s428;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s526;
    havoc openingTime_s259;
    havoc closingTime_s259;
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
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s526);
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



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == FinalizableCrowdsale;
    gas := gas - 53000;
    call FinalizableCrowdsale_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_FinalizableCrowdsale(this);
    }
}



