// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:SmartexCrowdsale.bpl /pretty:1 /noVerify /noinfer __SolToBoogieTest_out.bpl

type Ref = int;

type ContractName = int;

var null: Ref;

var Context: ContractName;

var Ownable: ContractName;

var IERC20: ContractName;

var SafeMath: ContractName;

var SafeERC20: ContractName;

var ReentrancyGuard: ContractName;

var Crowdsale: ContractName;

var Math: ContractName;

var AllowanceCrowdsale: ContractName;

var TimedCrowdsale: ContractName;

var SmartexCrowdsale: ContractName;

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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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



var _owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _owner_Ownable, gas;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas, Balance, _owner_Ownable;



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
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas, _owner_Ownable;



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
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call renounceOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call renounceOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s105: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas, _owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s105: Ref)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s129: Ref);
  modifies gas, revert, _owner_Ownable;



procedure {:inline 1} IERC20_IERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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



procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s142: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    recipient_s151: Ref, 
    amount_s151: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} allowance_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s160: Ref, 
    spender_s160: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} approve_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s169: Ref, 
    amount_s169: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    sender_s180: Ref, 
    recipient_s180: Ref, 
    amount_s180: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s222: int, b_s222: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s247: int, b_s247: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
    token_s269: Ref, 
    to_s269: Ref, 
    value_s269: int);
  modifies gas, revert;



procedure {:inline 1} safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s290: Ref, 
    from_s290: Ref, 
    to_s290: Ref, 
    value_s290: int);
  modifies gas, revert;



procedure {:inline 1} safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s327: Ref, 
    spender_s327: Ref, 
    value_s327: int);
  modifies revert;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s358: Ref, 
    spender_s358: Ref, 
    value_s358: int);
  modifies revert, gas;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s389: Ref, 
    spender_s389: Ref, 
    value_s389: int);
  modifies revert, gas;



var _notEntered_ReentrancyGuard: [Ref]bool;

procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard;



procedure {:constructor} {:public} {:inline 1} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _notEntered_ReentrancyGuard;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref);
  modifies Balance, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale;



procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, _token_Crowdsale;



implementation Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s492, wallet_s492, token_s492);
        assume revert || gas < 0;
    }
    else
    {
        call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s492, wallet_s492, token_s492);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:public} {:inline 1} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call __ret_0_ := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s590: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s590: Ref)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s603: Ref, 
    weiAmount_s603: int);
  modifies gas, revert;



procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s629: Ref, 
    weiAmount_s629: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s637: Ref, 
    weiAmount_s637: int);



procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s653: Ref, 
    tokenAmount_s653: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s666: Ref, 
    tokenAmount_s666: int);
  modifies gas, revert;



procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s674: Ref, 
    weiAmount_s674: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s686: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:inline 1} Math_Math_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Math_Math(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance;



implementation Math_Math(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call Math_Math__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Math_Math__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} max_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s715: int, b_s715: int)
   returns (__ret_0_: int);



procedure {:inline 1} min_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s732: int, b_s732: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} average_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s764: int, b_s764: int)
   returns (__ret_0_: int);



var _tokenWallet_AllowanceCrowdsale: [Ref]Ref;

procedure {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref);
  modifies Balance, _tokenWallet_AllowanceCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _notEntered_ReentrancyGuard, _tokenWallet_AllowanceCrowdsale;



implementation AllowanceCrowdsale_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call AllowanceCrowdsale_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, tokenWallet_s791);
        assume revert || gas < 0;
    }
    else
    {
        call AllowanceCrowdsale_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, tokenWallet_s791);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} tokenWallet_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



implementation tokenWallet_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call __ret_0_ := tokenWallet_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := tokenWallet_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} remainingTokens_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



implementation remainingTokens_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call __ret_0_ := remainingTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := remainingTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _deliverTokens_AllowanceCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s840: Ref, 
    tokenAmount_s840: int);
  modifies gas, revert;



var _openingTime_TimedCrowdsale: [Ref]int;

var _closingTime_TimedCrowdsale: [Ref]int;

procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int);
  modifies Balance, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale;



implementation TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s897, closingTime_s897);
        assume revert || gas < 0;
    }
    else
    {
        call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s897, closingTime_s897);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
    beneficiary_s955: Ref, 
    weiAmount_s955: int);
  modifies gas, revert;



procedure {:inline 1} _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s965: int);
  modifies gas, revert, _closingTime_TimedCrowdsale;



procedure {:inline 1} _extendTime_TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s994: int);
  modifies gas, revert, _closingTime_TimedCrowdsale;



var _secondWallet_SmartexCrowdsale: [Ref]Ref;

var _firstEdge_SmartexCrowdsale: [Ref]int;

var _secondEdge_SmartexCrowdsale: [Ref]int;

procedure {:inline 1} SmartexCrowdsale_SmartexCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref);
  modifies Balance, _secondWallet_SmartexCrowdsale, _firstEdge_SmartexCrowdsale, _secondEdge_SmartexCrowdsale;



procedure {:constructor} {:public} {:inline 1} SmartexCrowdsale_SmartexCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas, Balance, _owner_Ownable, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, _token_Crowdsale, _tokenWallet_AllowanceCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _secondWallet_SmartexCrowdsale, _firstEdge_SmartexCrowdsale, _secondEdge_SmartexCrowdsale;



implementation SmartexCrowdsale_SmartexCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call SmartexCrowdsale_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, wallet_s1043, secondWallet_s1043, token_s1043);
        assume revert || gas < 0;
    }
    else
    {
        call SmartexCrowdsale_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, wallet_s1043, secondWallet_s1043, token_s1043);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} secondWallet_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



implementation secondWallet_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call __ret_0_ := secondWallet_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := secondWallet_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} extendTime_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1063: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas, _closingTime_TimedCrowdsale;



implementation extendTime_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1063: int)
{
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call extendTime_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s1063);
        assume revert || gas < 0;
    }
    else
    {
        call extendTime_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s1063);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getWeiAmount_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1075: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



implementation getWeiAmount_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1075: int)
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
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call __ret_0_ := getWeiAmount_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, tokens_s1075);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getWeiAmount_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, tokens_s1075);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getTokenAmount_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1087: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, gas;



implementation getTokenAmount_SmartexCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1087: int)
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
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
        call __ret_0_ := getTokenAmount_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s1087);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getTokenAmount_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s1087);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _getWeiAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1103: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _getTokenAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1117: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:inline 1} _splitPayment_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int);
  modifies gas, revert;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, revert, gas, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _notEntered_ReentrancyGuard;



procedure {:inline 1} onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, _notEntered_ReentrancyGuard;



procedure CorralChoice_Context(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Context();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, now, Balance;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, _owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, now, _owner_Ownable, Balance;



procedure CorralChoice_IERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_IERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ReentrancyGuard(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ReentrancyGuard();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, now, Balance, _notEntered_ReentrancyGuard;



procedure CorralChoice_Crowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralEntry_Crowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, now, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _token_Crowdsale;



procedure CorralChoice_Math(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_Math();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_AllowanceCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralEntry_AllowanceCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, now, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, _tokenWallet_AllowanceCrowdsale;



procedure CorralChoice_TimedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard;



procedure CorralEntry_TimedCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, now, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale;



procedure CorralChoice_SmartexCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, _owner_Ownable, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, _closingTime_TimedCrowdsale;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, now, _owner_Ownable, Balance, _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _token_Crowdsale, _tokenWallet_AllowanceCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _secondWallet_SmartexCrowdsale, _firstEdge_SmartexCrowdsale, _secondEdge_SmartexCrowdsale;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__sum: [Ref]int;

var __tmp__now: int;

var __tmp___owner_Ownable: [Ref]Ref;

var __tmp___notEntered_ReentrancyGuard: [Ref]bool;

var __tmp___token_Crowdsale: [Ref]Ref;

var __tmp___wallet_Crowdsale: [Ref]Ref;

var __tmp___rate_Crowdsale: [Ref]int;

var __tmp___weiRaised_Crowdsale: [Ref]int;

var __tmp___tokenWallet_AllowanceCrowdsale: [Ref]Ref;

var __tmp___openingTime_TimedCrowdsale: [Ref]int;

var __tmp___closingTime_TimedCrowdsale: [Ref]int;

var __tmp___secondWallet_SmartexCrowdsale: [Ref]Ref;

var __tmp___firstEdge_SmartexCrowdsale: [Ref]int;

var __tmp___secondEdge_SmartexCrowdsale: [Ref]int;

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



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___owner_Ownable, gas;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _owner_Ownable, gas;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___owner_Ownable, gas;



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



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s105: Ref);
  modifies gas, revert, _owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s105: Ref);
  modifies gas, revert, __tmp___owner_Ownable;



procedure {:inline 1} _transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s129: Ref);
  modifies gas, revert, __tmp___owner_Ownable;



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



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s222: int, b_s222: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s247: int, b_s247: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} SafeERC20_SafeERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeERC20_SafeERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeERC20_SafeERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} safeTransfer_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s269: Ref, 
    to_s269: Ref, 
    value_s269: int);
  modifies gas, revert;



procedure {:inline 1} safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s290: Ref, 
    from_s290: Ref, 
    to_s290: Ref, 
    value_s290: int);
  modifies gas, revert;



procedure {:inline 1} safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s327: Ref, 
    spender_s327: Ref, 
    value_s327: int);
  modifies revert;



procedure {:inline 1} safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s358: Ref, 
    spender_s358: Ref, 
    value_s358: int);
  modifies revert, gas;



procedure {:inline 1} safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s389: Ref, 
    spender_s389: Ref, 
    value_s389: int);
  modifies revert, gas;



procedure {:inline 1} ReentrancyGuard_ReentrancyGuard_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard;



procedure {:constructor} {:inline 1} ReentrancyGuard_ReentrancyGuard__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard;



procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref);
  modifies __tmp__Balance, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref);
  modifies Balance, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale;



procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



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



procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s590: Ref);
  modifies Balance, gas, _weiRaised_Crowdsale, revert, _notEntered_ReentrancyGuard, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s590: Ref);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s603: Ref, 
    weiAmount_s603: int);
  modifies gas, revert;



procedure {:inline 1} _preValidatePurchase_Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s629: Ref, 
    weiAmount_s629: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s637: Ref, 
    weiAmount_s637: int);



procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s653: Ref, 
    tokenAmount_s653: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s666: Ref, 
    tokenAmount_s666: int);
  modifies gas, revert;



procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s674: Ref, 
    weiAmount_s674: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s686: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:inline 1} Math_Math_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} Math_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} Math_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} max_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s715: int, b_s715: int)
   returns (__ret_0_: int);



procedure {:inline 1} min_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s732: int, b_s732: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} average_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s764: int, b_s764: int)
   returns (__ret_0_: int);



procedure {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref);
  modifies __tmp__Balance, __tmp___tokenWallet_AllowanceCrowdsale, revert;



procedure {:constructor} {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref);
  modifies Balance, _notEntered_ReentrancyGuard, _tokenWallet_AllowanceCrowdsale, revert;



procedure {:constructor} {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard, __tmp___tokenWallet_AllowanceCrowdsale, revert;



procedure {:inline 1} tokenWallet_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} tokenWallet_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} remainingTokens_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} remainingTokens_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _deliverTokens_AllowanceCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s840: Ref, 
    tokenAmount_s840: int);
  modifies gas, revert;



procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int);
  modifies __tmp__Balance, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int);
  modifies Balance, _notEntered_ReentrancyGuard, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int);
  modifies __tmp__Balance, __tmp___notEntered_ReentrancyGuard, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, revert;



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
    beneficiary_s955: Ref, 
    weiAmount_s955: int);
  modifies gas, revert;



procedure {:inline 1} _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s965: int);
  modifies gas, revert, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} _extendTime_TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s994: int);
  modifies gas, revert, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} SmartexCrowdsale_SmartexCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref);
  modifies __tmp__Balance, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:constructor} {:inline 1} SmartexCrowdsale_SmartexCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref);
  modifies Balance, _owner_Ownable, gas, _notEntered_ReentrancyGuard, _wallet_Crowdsale, _rate_Crowdsale, _weiRaised_Crowdsale, revert, _token_Crowdsale, _tokenWallet_AllowanceCrowdsale, _openingTime_TimedCrowdsale, _closingTime_TimedCrowdsale, _secondWallet_SmartexCrowdsale, _firstEdge_SmartexCrowdsale, _secondEdge_SmartexCrowdsale;



procedure {:constructor} {:inline 1} SmartexCrowdsale_SmartexCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref);
  modifies __tmp__Balance, __tmp___owner_Ownable, gas, __tmp___notEntered_ReentrancyGuard, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, revert, __tmp___token_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:inline 1} secondWallet_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} secondWallet_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} extendTime_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1063: int);
  modifies gas, revert, _closingTime_TimedCrowdsale;



procedure {:inline 1} extendTime_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1063: int);
  modifies gas, revert, __tmp___closingTime_TimedCrowdsale;



procedure {:inline 1} getWeiAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1075: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getWeiAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1075: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getTokenAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1087: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getTokenAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1087: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _getWeiAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1103: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _getTokenAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1117: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:inline 1} _splitPayment_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int);
  modifies gas, revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp___weiRaised_Crowdsale, revert, __tmp___notEntered_ReentrancyGuard, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__sum, __tmp__now, __tmp___owner_Ownable, __tmp___notEntered_ReentrancyGuard, __tmp___token_Crowdsale, __tmp___wallet_Crowdsale, __tmp___rate_Crowdsale, __tmp___weiRaised_Crowdsale, __tmp___tokenWallet_AllowanceCrowdsale, __tmp___openingTime_TimedCrowdsale, __tmp___closingTime_TimedCrowdsale, __tmp___secondWallet_SmartexCrowdsale, __tmp___firstEdge_SmartexCrowdsale, __tmp___secondEdge_SmartexCrowdsale, revert, gas;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___notEntered_ReentrancyGuard;



procedure {:inline 1} onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



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
    gas := gas - 6;
    gas := gas - 14;
    __ret_0_ := msgsender_MSG;
    return;
}



implementation _msgSender_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 14;
    __ret_0_ := msgsender_MSG;
    return;
}



implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s44: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___owner_Ownable[this] := null;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call msgSender_s44 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Ownable)
    {
        call msgSender_s44 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s44 := msgSender_s44;
    __tmp___owner_Ownable[this] := msgSender_s44;
}



implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s44: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _owner_Ownable[this] := null;
    if (DType[this] == SmartexCrowdsale)
    {
        call msgSender_s44 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Ownable)
    {
        call msgSender_s44 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s44 := msgSender_s44;
    _owner_Ownable[this] := msgSender_s44;
    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
}



implementation Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s44: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s44: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation owner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := __tmp___owner_Ownable[this];
    return;
}



implementation owner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := _owner_Ownable[this];
    return;
}



implementation isOwner_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_2: Ref;

    gas := gas - 3;
    gas := gas - 274;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_2 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Ownable)
    {
        call __var_2 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_2 == __tmp___owner_Ownable[this];
    return;
}



implementation isOwner_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_2: Ref;

    gas := gas - 3;
    gas := gas - 274;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_2 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Ownable)
    {
        call __var_2 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_2 == _owner_Ownable[this];
    return;
}



implementation renounceOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20267;
    __var_3 := null;
    __tmp___owner_Ownable[this] := __var_3;
}



implementation renounceOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 20267;
    __var_3 := null;
    _owner_Ownable[this] := __var_3;
}



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s105: Ref)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Ownable)
    {
        call _transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
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



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s105: Ref)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    if (DType[this] == SmartexCrowdsale)
    {
        call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Ownable)
    {
        call _transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
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



implementation _transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s129: Ref)
{
  var __var_4: Ref;

    gas := gas - 683;
    __var_4 := null;
    if (!(newOwner_s129 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp___owner_Ownable[this] := newOwner_s129;
}



implementation _transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s129: Ref)
{
  var __var_4: Ref;

    gas := gas - 683;
    __var_4 := null;
    if (!(newOwner_s129 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 20267;
    _owner_Ownable[this] := newOwner_s129;
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s222: int, b_s222: int)
   returns (__ret_0_: int)
{
  var c_s221: int;

    gas := gas - 6;
    gas := gas - 34;
    assume c_s221 >= 0;
    assume a_s222 >= 0;
    assume b_s222 >= 0;
    assume a_s222 + b_s222 >= 0;
    c_s221 := a_s222 + b_s222;
    gas := gas - 1328;
    assume c_s221 >= 0;
    assume a_s222 >= 0;
    if (!(c_s221 >= a_s222))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume c_s221 >= 0;
    __ret_0_ := c_s221;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s222: int, b_s222: int)
   returns (__ret_0_: int)
{
  var c_s221: int;

    gas := gas - 6;
    gas := gas - 34;
    assume c_s221 >= 0;
    assume a_s222 >= 0;
    assume b_s222 >= 0;
    assume a_s222 + b_s222 >= 0;
    c_s221 := a_s222 + b_s222;
    gas := gas - 1328;
    assume c_s221 >= 0;
    assume a_s222 >= 0;
    if (!(c_s221 >= a_s222))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume c_s221 >= 0;
    __ret_0_ := c_s221;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s247: int, b_s247: int)
   returns (__ret_0_: int)
{
  var c_s246: int;

    gas := gas - 3;
    gas := gas - 664;
    assume b_s247 >= 0;
    assume a_s247 >= 0;
    if (!(b_s247 <= a_s247))
    {
        revert := true;
        return;
    }

    gas := gas - 17;
    assume c_s246 >= 0;
    assume a_s247 >= 0;
    assume b_s247 >= 0;
    assume a_s247 - b_s247 >= 0;
    c_s246 := a_s247 - b_s247;
    gas := gas - 10;
    assume c_s246 >= 0;
    __ret_0_ := c_s246;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s247: int, b_s247: int)
   returns (__ret_0_: int)
{
  var c_s246: int;

    gas := gas - 3;
    gas := gas - 664;
    assume b_s247 >= 0;
    assume a_s247 >= 0;
    if (!(b_s247 <= a_s247))
    {
        revert := true;
        return;
    }

    gas := gas - 17;
    assume c_s246 >= 0;
    assume a_s247 >= 0;
    assume b_s247 >= 0;
    assume a_s247 - b_s247 >= 0;
    c_s246 := a_s247 - b_s247;
    gas := gas - 10;
    assume c_s246 >= 0;
    __ret_0_ := c_s246;
    return;
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
    token_s269: Ref, 
    to_s269: Ref, 
    value_s269: int)
{
  var __var_5: bool;
  var __var_6: int;

    gas := gas - 37240;
    assume value_s269 >= 0;
    call __var_5 := transfer_IERC20(token_s269, this, __var_6, to_s269, value_s269);
    if (!__var_5)
    {
        revert := true;
        return;
    }
}



implementation safeTransfer_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s269: Ref, 
    to_s269: Ref, 
    value_s269: int)
{
  var __var_5: bool;
  var __var_6: int;

    gas := gas - 37240;
    assume value_s269 >= 0;
    call __var_5 := transfer_IERC20(token_s269, this, __var_6, to_s269, value_s269);
    if (!__var_5)
    {
        revert := true;
        return;
    }
}



implementation safeTransferFrom_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s290: Ref, 
    from_s290: Ref, 
    to_s290: Ref, 
    value_s290: int)
{
  var __var_7: bool;
  var __var_8: int;

    gas := gas - 37379;
    assume value_s290 >= 0;
    call __var_7 := transferFrom_IERC20(token_s290, this, __var_8, from_s290, to_s290, value_s290);
    if (!__var_7)
    {
        revert := true;
        return;
    }
}



implementation safeTransferFrom_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s290: Ref, 
    from_s290: Ref, 
    to_s290: Ref, 
    value_s290: int)
{
  var __var_7: bool;
  var __var_8: int;

    gas := gas - 37379;
    assume value_s290 >= 0;
    call __var_7 := transferFrom_IERC20(token_s290, this, __var_8, from_s290, to_s290, value_s290);
    if (!__var_7)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s327: Ref, 
    spender_s327: Ref, 
    value_s327: int)
{
  var __var_9: int;
  var __var_10: int;
  var __var_11: Ref;
  var __var_12: bool;
  var __var_13: int;

    assume value_s327 >= 0;
    assume __var_9 >= 0;
    __var_11 := this;
    call __var_9 := allowance_IERC20(token_s327, this, __var_10, this, spender_s327);
    assume __var_9 >= 0;
    if (!(value_s327 == 0 || __var_9 == 0))
    {
        revert := true;
        return;
    }

    assume value_s327 >= 0;
    call __var_12 := approve_IERC20(token_s327, this, __var_13, spender_s327, value_s327);
    if (!__var_12)
    {
        revert := true;
        return;
    }
}



implementation safeApprove_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s327: Ref, 
    spender_s327: Ref, 
    value_s327: int)
{
  var __var_9: int;
  var __var_10: int;
  var __var_11: Ref;
  var __var_12: bool;
  var __var_13: int;

    assume value_s327 >= 0;
    assume __var_9 >= 0;
    __var_11 := this;
    call __var_9 := allowance_IERC20(token_s327, this, __var_10, this, spender_s327);
    assume __var_9 >= 0;
    if (!(value_s327 == 0 || __var_9 == 0))
    {
        revert := true;
        return;
    }

    assume value_s327 >= 0;
    call __var_12 := approve_IERC20(token_s327, this, __var_13, spender_s327, value_s327);
    if (!__var_12)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s358: Ref, 
    spender_s358: Ref, 
    value_s358: int)
{
  var newAllowance_s357: int;
  var __var_14: int;
  var __var_15: int;
  var __var_16: Ref;
  var __var_17: bool;
  var __var_18: int;

    assume newAllowance_s357 >= 0;
    assume __var_14 >= 0;
    __var_16 := this;
    call __var_14 := allowance_IERC20(token_s358, this, __var_15, this, spender_s358);
    assume __var_14 >= 0;
    assume value_s358 >= 0;
    call newAllowance_s357 := add_SafeMath__fail(this, this, 0, __var_14, value_s358);
    if (revert)
    {
        return;
    }

    newAllowance_s357 := newAllowance_s357;
    assume newAllowance_s357 >= 0;
    call __var_17 := approve_IERC20(token_s358, this, __var_18, spender_s358, newAllowance_s357);
    if (!__var_17)
    {
        revert := true;
        return;
    }
}



implementation safeIncreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s358: Ref, 
    spender_s358: Ref, 
    value_s358: int)
{
  var newAllowance_s357: int;
  var __var_14: int;
  var __var_15: int;
  var __var_16: Ref;
  var __var_17: bool;
  var __var_18: int;

    assume newAllowance_s357 >= 0;
    assume __var_14 >= 0;
    __var_16 := this;
    call __var_14 := allowance_IERC20(token_s358, this, __var_15, this, spender_s358);
    assume __var_14 >= 0;
    assume value_s358 >= 0;
    call newAllowance_s357 := add_SafeMath__success(this, this, 0, __var_14, value_s358);
    if (revert)
    {
        return;
    }

    newAllowance_s357 := newAllowance_s357;
    assume newAllowance_s357 >= 0;
    call __var_17 := approve_IERC20(token_s358, this, __var_18, spender_s358, newAllowance_s357);
    if (!__var_17)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s389: Ref, 
    spender_s389: Ref, 
    value_s389: int)
{
  var newAllowance_s388: int;
  var __var_19: int;
  var __var_20: int;
  var __var_21: Ref;
  var __var_22: bool;
  var __var_23: int;

    assume newAllowance_s388 >= 0;
    assume __var_19 >= 0;
    __var_21 := this;
    call __var_19 := allowance_IERC20(token_s389, this, __var_20, this, spender_s389);
    assume __var_19 >= 0;
    assume value_s389 >= 0;
    call newAllowance_s388 := sub_SafeMath__fail(this, this, 0, __var_19, value_s389);
    if (revert)
    {
        return;
    }

    newAllowance_s388 := newAllowance_s388;
    assume newAllowance_s388 >= 0;
    call __var_22 := approve_IERC20(token_s389, this, __var_23, spender_s389, newAllowance_s388);
    if (!__var_22)
    {
        revert := true;
        return;
    }
}



implementation safeDecreaseAllowance_SafeERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    token_s389: Ref, 
    spender_s389: Ref, 
    value_s389: int)
{
  var newAllowance_s388: int;
  var __var_19: int;
  var __var_20: int;
  var __var_21: Ref;
  var __var_22: bool;
  var __var_23: int;

    assume newAllowance_s388 >= 0;
    assume __var_19 >= 0;
    __var_21 := this;
    call __var_19 := allowance_IERC20(token_s389, this, __var_20, this, spender_s389);
    assume __var_19 >= 0;
    assume value_s389 >= 0;
    call newAllowance_s388 := sub_SafeMath__success(this, this, 0, __var_19, value_s389);
    if (revert)
    {
        return;
    }

    newAllowance_s388 := newAllowance_s388;
    assume newAllowance_s388 >= 0;
    call __var_22 := approve_IERC20(token_s389, this, __var_23, spender_s389, newAllowance_s388);
    if (!__var_22)
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
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref)
{
  var __var_24: Ref;
  var __var_25: Ref;
  var __var_26: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___wallet_Crowdsale[this] := null;
    __tmp___rate_Crowdsale[this] := 0;
    __tmp___weiRaised_Crowdsale[this] := 0;
    assume rate_s492 >= 0;
    if (!(rate_s492 > 0))
    {
        revert := true;
        return;
    }

    __var_24 := null;
    if (!(wallet_s492 != null))
    {
        revert := true;
        return;
    }

    __var_25 := token_s492;
    __var_26 := null;
    if (!(token_s492 != null))
    {
        revert := true;
        return;
    }

    assume __tmp___rate_Crowdsale[this] >= 0;
    assume rate_s492 >= 0;
    __tmp___rate_Crowdsale[this] := rate_s492;
    __tmp___wallet_Crowdsale[this] := wallet_s492;
    __tmp___token_Crowdsale[this] := token_s492;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref)
{
  var __var_24: Ref;
  var __var_25: Ref;
  var __var_26: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _wallet_Crowdsale[this] := null;
    _rate_Crowdsale[this] := 0;
    _weiRaised_Crowdsale[this] := 0;
    assume rate_s492 >= 0;
    if (!(rate_s492 > 0))
    {
        revert := true;
        return;
    }

    __var_24 := null;
    if (!(wallet_s492 != null))
    {
        revert := true;
        return;
    }

    __var_25 := token_s492;
    __var_26 := null;
    if (!(token_s492 != null))
    {
        revert := true;
        return;
    }

    assume _rate_Crowdsale[this] >= 0;
    assume rate_s492 >= 0;
    _rate_Crowdsale[this] := rate_s492;
    _wallet_Crowdsale[this] := wallet_s492;
    _token_Crowdsale[this] := token_s492;
}



implementation Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref)
{
  var __var_24: Ref;
  var __var_25: Ref;
  var __var_26: Ref;

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

    call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, rate_s492, wallet_s492, token_s492);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate_s492: int, 
    wallet_s492: Ref, 
    token_s492: Ref)
{
  var __var_24: Ref;
  var __var_25: Ref;
  var __var_26: Ref;

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

    call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, rate_s492, wallet_s492, token_s492);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: Ref;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 16;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_27 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_27 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call __var_27 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call __var_27 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_27);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_27);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_27);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_27);
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
  var __var_27: Ref;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 16;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_27 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_27 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call __var_27 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call __var_27 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == SmartexCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_27);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_27);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_27);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_27);
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
    gas := gas - 538;
    __ret_0_ := __tmp___token_Crowdsale[this];
    return;
}



implementation token_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 538;
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



implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s590: Ref)
{
  var weiAmount_s589: int;
  var tokens_s589: int;
  var __var_28: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call nonReentrant_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume weiAmount_s589 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s589 := msgvalue_MSG;
    gas := gas - 20;
    assume weiAmount_s589 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 41;
    assume tokens_s589 >= 0;
    assume weiAmount_s589 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call tokens_s589 := _getTokenAmount_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call tokens_s589 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call tokens_s589 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call tokens_s589 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s589 := tokens_s589;
    gas := gas - 40494;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume __tmp___weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s589 >= 0;
    call __var_28 := add_SafeMath__fail(this, this, 0, __tmp___weiRaised_Crowdsale[this], weiAmount_s589);
    if (revert)
    {
        return;
    }

    __tmp___weiRaised_Crowdsale[this] := __var_28;
    assume __var_28 >= 0;
    gas := gas - 20;
    assume tokens_s589 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
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
    assume weiAmount_s589 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
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
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _forwardFunds_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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
    else if (__tmp__DType[this] == AllowanceCrowdsale)
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
    assume weiAmount_s589 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
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



implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s590: Ref)
{
  var weiAmount_s589: int;
  var tokens_s589: int;
  var __var_28: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call nonReentrant_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume weiAmount_s589 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s589 := msgvalue_MSG;
    gas := gas - 20;
    assume weiAmount_s589 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 41;
    assume tokens_s589 >= 0;
    assume weiAmount_s589 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call tokens_s589 := _getTokenAmount_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call tokens_s589 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call tokens_s589 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call tokens_s589 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s589 := tokens_s589;
    gas := gas - 40494;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s589 >= 0;
    call __var_28 := add_SafeMath__success(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s589);
    if (revert)
    {
        return;
    }

    _weiRaised_Crowdsale[this] := __var_28;
    assume __var_28 >= 0;
    gas := gas - 20;
    assume tokens_s589 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, tokens_s589);
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
    assume weiAmount_s589 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
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
    if (DType[this] == SmartexCrowdsale)
    {
        call _forwardFunds_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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
    else if (DType[this] == AllowanceCrowdsale)
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
    assume weiAmount_s589 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590, weiAmount_s589);
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
    beneficiary_s603: Ref, 
    weiAmount_s603: int)
{
    gas := gas - 10;
    assume weiAmount_s603 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
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
    beneficiary_s603: Ref, 
    weiAmount_s603: int)
{
    gas := gas - 10;
    assume weiAmount_s603 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s603, weiAmount_s603);
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
    beneficiary_s629: Ref, 
    weiAmount_s629: int)
{
  var __var_29: Ref;

    gas := gas - 1366;
    __var_29 := null;
    if (!(beneficiary_s629 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1328;
    assume weiAmount_s629 >= 0;
    if (!(weiAmount_s629 != 0))
    {
        revert := true;
        return;
    }
}



implementation _preValidatePurchase_Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s629: Ref, 
    weiAmount_s629: int)
{
  var __var_29: Ref;

    gas := gas - 1366;
    __var_29 := null;
    if (!(beneficiary_s629 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1328;
    assume weiAmount_s629 >= 0;
    if (!(weiAmount_s629 != 0))
    {
        revert := true;
        return;
    }
}



implementation _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s637: Ref, 
    weiAmount_s637: int)
{
}



implementation _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s637: Ref, 
    weiAmount_s637: int)
{
}



implementation _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s653: Ref, 
    tokenAmount_s653: int)
{
    gas := gas - 299;
    assume tokenAmount_s653 >= 0;
    call safeTransfer_SafeERC20__fail(this, this, msgvalue_MSG, __tmp___token_Crowdsale[this], beneficiary_s653, tokenAmount_s653);
    if (revert)
    {
        return;
    }
}



implementation _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s653: Ref, 
    tokenAmount_s653: int)
{
    gas := gas - 299;
    assume tokenAmount_s653 >= 0;
    call safeTransfer_SafeERC20__success(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s653, tokenAmount_s653);
    if (revert)
    {
        return;
    }
}



implementation _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s666: Ref, 
    tokenAmount_s666: int)
{
    gas := gas - 20;
    assume tokenAmount_s666 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
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
    beneficiary_s666: Ref, 
    tokenAmount_s666: int)
{
    gas := gas - 20;
    assume tokenAmount_s666 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s666, tokenAmount_s666);
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
    beneficiary_s674: Ref, 
    weiAmount_s674: int)
{
}



implementation _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s674: Ref, 
    weiAmount_s674: int)
{
}



implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s686: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 216;
    assume weiAmount_s686 >= 0;
    assume __tmp___rate_Crowdsale[this] >= 0;
    assume weiAmount_s686 * __tmp___rate_Crowdsale[this] >= 0;
    __ret_0_ := weiAmount_s686 * __tmp___rate_Crowdsale[this];
    return;
}



implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s686: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 216;
    assume weiAmount_s686 >= 0;
    assume _rate_Crowdsale[this] >= 0;
    assume weiAmount_s686 * _rate_Crowdsale[this] >= 0;
    __ret_0_ := weiAmount_s686 * _rate_Crowdsale[this];
    return;
}



implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_30: int;
  var __var_31: bool;

    gas := gas - 36028;
    __var_30 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_30 := __var_30 - gas;
    assume msgvalue_MSG >= 0;
    call __var_31 := send__fail(this, __tmp___wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_31)
    {
        revert := true;
        return;
    }

    gas := __var_30 + gas;
}



implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_30: int;
  var __var_31: bool;

    gas := gas - 36028;
    __var_30 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_30 := __var_30 - gas;
    assume msgvalue_MSG >= 0;
    call __var_31 := send__success(this, _wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_31)
    {
        revert := true;
        return;
    }

    gas := __var_30 + gas;
}



implementation Math_Math_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation Math_Math_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation Math_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Math_Math_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Math_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Math_Math_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation max_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s715: int, b_s715: int)
   returns (__ret_0_: int)
{
    assume a_s715 >= 0;
    assume b_s715 >= 0;
    assume a_s715 >= 0;
    assume b_s715 >= 0;
    assume (if a_s715 >= b_s715 then a_s715 else b_s715) >= 0;
    __ret_0_ := (if a_s715 >= b_s715 then a_s715 else b_s715);
    return;
}



implementation max_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s715: int, b_s715: int)
   returns (__ret_0_: int)
{
    assume a_s715 >= 0;
    assume b_s715 >= 0;
    assume a_s715 >= 0;
    assume b_s715 >= 0;
    assume (if a_s715 >= b_s715 then a_s715 else b_s715) >= 0;
    __ret_0_ := (if a_s715 >= b_s715 then a_s715 else b_s715);
    return;
}



implementation min_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s732: int, b_s732: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 46;
    assume a_s732 >= 0;
    assume b_s732 >= 0;
    assume a_s732 >= 0;
    assume b_s732 >= 0;
    assume (if a_s732 < b_s732 then a_s732 else b_s732) >= 0;
    __ret_0_ := (if a_s732 < b_s732 then a_s732 else b_s732);
    return;
}



implementation min_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s732: int, b_s732: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 46;
    assume a_s732 >= 0;
    assume b_s732 >= 0;
    assume a_s732 >= 0;
    assume b_s732 >= 0;
    assume (if a_s732 < b_s732 then a_s732 else b_s732) >= 0;
    __ret_0_ := (if a_s732 < b_s732 then a_s732 else b_s732);
    return;
}



implementation average_Math__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s764: int, b_s764: int)
   returns (__ret_0_: int)
{
    assume a_s764 >= 0;
    assume a_s764 / 2 >= 0;
    assume b_s764 >= 0;
    assume b_s764 / 2 >= 0;
    assume a_s764 / 2 + b_s764 / 2 >= 0;
    assume a_s764 >= 0;
    assume a_s764 mod 2 >= 0;
    assume b_s764 >= 0;
    assume b_s764 mod 2 >= 0;
    assume a_s764 mod 2 + b_s764 mod 2 >= 0;
    assume (a_s764 mod 2 + b_s764 mod 2) / 2 >= 0;
    assume a_s764 / 2 + b_s764 / 2 + (a_s764 mod 2 + b_s764 mod 2) / 2 >= 0;
    __ret_0_ := a_s764 / 2 + b_s764 / 2 + (a_s764 mod 2 + b_s764 mod 2) / 2;
    return;
}



implementation average_Math__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s764: int, b_s764: int)
   returns (__ret_0_: int)
{
    assume a_s764 >= 0;
    assume a_s764 / 2 >= 0;
    assume b_s764 >= 0;
    assume b_s764 / 2 >= 0;
    assume a_s764 / 2 + b_s764 / 2 >= 0;
    assume a_s764 >= 0;
    assume a_s764 mod 2 >= 0;
    assume b_s764 >= 0;
    assume b_s764 mod 2 >= 0;
    assume a_s764 mod 2 + b_s764 mod 2 >= 0;
    assume (a_s764 mod 2 + b_s764 mod 2) / 2 >= 0;
    assume a_s764 / 2 + b_s764 / 2 + (a_s764 mod 2 + b_s764 mod 2) / 2 >= 0;
    __ret_0_ := a_s764 / 2 + b_s764 / 2 + (a_s764 mod 2 + b_s764 mod 2) / 2;
    return;
}



implementation AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref)
{
  var __var_32: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___tokenWallet_AllowanceCrowdsale[this] := null;
    __var_32 := null;
    if (!(tokenWallet_s791 != null))
    {
        revert := true;
        return;
    }

    __tmp___tokenWallet_AllowanceCrowdsale[this] := tokenWallet_s791;
}



implementation AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref)
{
  var __var_32: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _tokenWallet_AllowanceCrowdsale[this] := null;
    __var_32 := null;
    if (!(tokenWallet_s791 != null))
    {
        revert := true;
        return;
    }

    _tokenWallet_AllowanceCrowdsale[this] := tokenWallet_s791;
}



implementation AllowanceCrowdsale_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref)
{
  var __var_32: Ref;

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

    call AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, tokenWallet_s791);
    if (revert)
    {
        return;
    }
}



implementation AllowanceCrowdsale_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokenWallet_s791: Ref)
{
  var __var_32: Ref;

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

    call AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, tokenWallet_s791);
    if (revert)
    {
        return;
    }
}



implementation tokenWallet_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := __tmp___tokenWallet_AllowanceCrowdsale[this];
    return;
}



implementation tokenWallet_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := _tokenWallet_AllowanceCrowdsale[this];
    return;
}



implementation remainingTokens_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_33: int;
  var __var_34: int;
  var __var_35: Ref;
  var __var_36: int;
  var __var_37: int;
  var __var_38: Ref;
  var __var_39: int;
  var __var_40: Ref;

    gas := gas - 3;
    gas := gas - 6816;
    assume __var_33 >= 0;
    assume __var_34 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_35 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call __var_35 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_34 := balanceOf_IERC20(__var_35, this, __var_36, __tmp___tokenWallet_AllowanceCrowdsale[this]);
    assume __var_34 >= 0;
    assume __var_37 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_38 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call __var_38 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __var_40 := this;
    call __var_37 := allowance_IERC20(__var_38, this, __var_39, __tmp___tokenWallet_AllowanceCrowdsale[this], this);
    assume __var_37 >= 0;
    call __var_33 := min_Math__fail(this, this, msgvalue_MSG, __var_34, __var_37);
    if (revert)
    {
        return;
    }

    assume __var_33 >= 0;
    __ret_0_ := __var_33;
    return;
}



implementation remainingTokens_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_33: int;
  var __var_34: int;
  var __var_35: Ref;
  var __var_36: int;
  var __var_37: int;
  var __var_38: Ref;
  var __var_39: int;
  var __var_40: Ref;

    gas := gas - 3;
    gas := gas - 6816;
    assume __var_33 >= 0;
    assume __var_34 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_35 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call __var_35 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_34 := balanceOf_IERC20(__var_35, this, __var_36, _tokenWallet_AllowanceCrowdsale[this]);
    assume __var_34 >= 0;
    assume __var_37 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_38 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call __var_38 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __var_40 := this;
    call __var_37 := allowance_IERC20(__var_38, this, __var_39, _tokenWallet_AllowanceCrowdsale[this], this);
    assume __var_37 >= 0;
    call __var_33 := min_Math__success(this, this, msgvalue_MSG, __var_34, __var_37);
    if (revert)
    {
        return;
    }

    assume __var_33 >= 0;
    __ret_0_ := __var_33;
    return;
}



implementation _deliverTokens_AllowanceCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s840: Ref, 
    tokenAmount_s840: int)
{
  var __var_41: Ref;

    gas := gas - 264;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_41 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call __var_41 := token_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume tokenAmount_s840 >= 0;
    call safeTransferFrom_SafeERC20__fail(this, this, msgvalue_MSG, __var_41, __tmp___tokenWallet_AllowanceCrowdsale[this], beneficiary_s840, tokenAmount_s840);
    if (revert)
    {
        return;
    }
}



implementation _deliverTokens_AllowanceCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    beneficiary_s840: Ref, 
    tokenAmount_s840: int)
{
  var __var_41: Ref;

    gas := gas - 264;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_41 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call __var_41 := token_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume tokenAmount_s840 >= 0;
    call safeTransferFrom_SafeERC20__success(this, this, msgvalue_MSG, __var_41, _tokenWallet_AllowanceCrowdsale[this], beneficiary_s840, tokenAmount_s840);
    if (revert)
    {
        return;
    }
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___openingTime_TimedCrowdsale[this] := 0;
    __tmp___closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s897 >= 0;
    assume __tmp__now >= 0;
    if (!(openingTime_s897 >= __tmp__now))
    {
        revert := true;
        return;
    }

    assume closingTime_s897 >= 0;
    assume openingTime_s897 >= 0;
    if (!(closingTime_s897 > openingTime_s897))
    {
        revert := true;
        return;
    }

    assume __tmp___openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s897 >= 0;
    __tmp___openingTime_TimedCrowdsale[this] := openingTime_s897;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s897 >= 0;
    __tmp___closingTime_TimedCrowdsale[this] := closingTime_s897;
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _openingTime_TimedCrowdsale[this] := 0;
    _closingTime_TimedCrowdsale[this] := 0;
    assume openingTime_s897 >= 0;
    assume now >= 0;
    if (!(openingTime_s897 >= now))
    {
        revert := true;
        return;
    }

    assume closingTime_s897 >= 0;
    assume openingTime_s897 >= 0;
    if (!(closingTime_s897 > openingTime_s897))
    {
        revert := true;
        return;
    }

    assume _openingTime_TimedCrowdsale[this] >= 0;
    assume openingTime_s897 >= 0;
    _openingTime_TimedCrowdsale[this] := openingTime_s897;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    assume closingTime_s897 >= 0;
    _closingTime_TimedCrowdsale[this] := closingTime_s897;
}



implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int)
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

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, openingTime_s897, closingTime_s897);
    if (revert)
    {
        return;
    }
}



implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    openingTime_s897: int, 
    closingTime_s897: int)
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

    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, openingTime_s897, closingTime_s897);
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
    beneficiary_s955: Ref, 
    weiAmount_s955: int)
{
    call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s955 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s955, weiAmount_s955);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s955, weiAmount_s955);
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
    beneficiary_s955: Ref, 
    weiAmount_s955: int)
{
    call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 10;
    assume weiAmount_s955 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s955, weiAmount_s955);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s955, weiAmount_s955);
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



implementation _extendTime_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s965: int)
{
    assume newClosingTime_s965 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _extendTime_TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s965);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _extendTime_TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s965);
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



implementation _extendTime_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s965: int)
{
    assume newClosingTime_s965 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _extendTime_TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s965);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _extendTime_TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s965);
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



implementation _extendTime_TimedCrowdsale_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s994: int)
{
  var __var_43: bool;

    gas := gas - 670;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_43 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_43 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_43)
    {
        revert := true;
        return;
    }

    gas := gas - 868;
    assume newClosingTime_s994 >= 0;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    if (!(newClosingTime_s994 > __tmp___closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume __tmp___closingTime_TimedCrowdsale[this] >= 0;
    assume newClosingTime_s994 >= 0;
    __tmp___closingTime_TimedCrowdsale[this] := newClosingTime_s994;
}



implementation _extendTime_TimedCrowdsale_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s994: int)
{
  var __var_43: bool;

    gas := gas - 670;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_43 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_43 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_43)
    {
        revert := true;
        return;
    }

    gas := gas - 868;
    assume newClosingTime_s994 >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    if (!(newClosingTime_s994 > _closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "TimedCrowdsaleExtended_TimedCrowdsale"} true;
    gas := gas - 20014;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    assume newClosingTime_s994 >= 0;
    _closingTime_TimedCrowdsale[this] := newClosingTime_s994;
}



implementation SmartexCrowdsale_SmartexCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref)
{
  var __var_44: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp___secondWallet_SmartexCrowdsale[this] := null;
    __tmp___firstEdge_SmartexCrowdsale[this] := 50;
    __tmp___secondEdge_SmartexCrowdsale[this] := 100;
    __tmp___secondWallet_SmartexCrowdsale[this] := secondWallet_s1043;
}



implementation SmartexCrowdsale_SmartexCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref)
{
  var __var_44: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    _secondWallet_SmartexCrowdsale[this] := null;
    _firstEdge_SmartexCrowdsale[this] := 50;
    _secondEdge_SmartexCrowdsale[this] := 100;
    _secondWallet_SmartexCrowdsale[this] := secondWallet_s1043;
}



implementation SmartexCrowdsale_SmartexCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref)
{
  var __var_44: Ref;

    call Context_Context__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ReentrancyGuard_ReentrancyGuard__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, 8 * 10000000, wallet_s1043, token_s1043);
    if (revert)
    {
        return;
    }

    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_44 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call AllowanceCrowdsale_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __var_44);
    if (revert)
    {
        return;
    }

    assume __tmp__now >= 0;
    assume __tmp__now >= 0;
    assume __tmp__now + 3 >= 0;
    call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__now, __tmp__now + 3);
    if (revert)
    {
        return;
    }

    call SmartexCrowdsale_SmartexCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, wallet_s1043, secondWallet_s1043, token_s1043);
    if (revert)
    {
        return;
    }
}



implementation SmartexCrowdsale_SmartexCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    wallet_s1043: Ref, 
    secondWallet_s1043: Ref, 
    token_s1043: Ref)
{
  var __var_44: Ref;

    call Context_Context__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ReentrancyGuard_ReentrancyGuard__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, 8 * 10000000, wallet_s1043, token_s1043);
    if (revert)
    {
        return;
    }

    if (DType[this] == SmartexCrowdsale)
    {
        call __var_44 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call AllowanceCrowdsale_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, __var_44);
    if (revert)
    {
        return;
    }

    assume now >= 0;
    assume now >= 0;
    assume now + 3 >= 0;
    call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, now, now + 3);
    if (revert)
    {
        return;
    }

    call SmartexCrowdsale_SmartexCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, wallet_s1043, secondWallet_s1043, token_s1043);
    if (revert)
    {
        return;
    }
}



implementation secondWallet_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := __tmp___secondWallet_SmartexCrowdsale[this];
    return;
}



implementation secondWallet_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 244;
    __ret_0_ := _secondWallet_SmartexCrowdsale[this];
    return;
}



implementation extendTime_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1063: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    assume newClosingTime_s1063 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call _extendTime_TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s1063);
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



implementation extendTime_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1063: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    assume newClosingTime_s1063 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call _extendTime_TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s1063);
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



implementation getWeiAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1075: int)
   returns (__ret_0_: int)
{
  var __var_45: int;

    gas := gas - 3;
    gas := gas - 12;
    assume __var_45 >= 0;
    assume tokens_s1075 >= 0;
    call __var_45 := _getWeiAmount_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, tokens_s1075);
    if (revert)
    {
        return;
    }

    assume __var_45 >= 0;
    __ret_0_ := __var_45;
    return;
}



implementation getWeiAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1075: int)
   returns (__ret_0_: int)
{
  var __var_45: int;

    gas := gas - 3;
    gas := gas - 12;
    assume __var_45 >= 0;
    assume tokens_s1075 >= 0;
    call __var_45 := _getWeiAmount_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, tokens_s1075);
    if (revert)
    {
        return;
    }

    assume __var_45 >= 0;
    __ret_0_ := __var_45;
    return;
}



implementation getTokenAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1087: int)
   returns (__ret_0_: int)
{
  var __var_46: int;

    gas := gas - 3;
    gas := gas - 12;
    assume __var_46 >= 0;
    assume weiAmount_s1087 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_46 := _getTokenAmount_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s1087);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_46 >= 0;
    __ret_0_ := __var_46;
    return;
}



implementation getTokenAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1087: int)
   returns (__ret_0_: int)
{
  var __var_46: int;

    gas := gas - 3;
    gas := gas - 12;
    assume __var_46 >= 0;
    assume weiAmount_s1087 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_46 := _getTokenAmount_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s1087);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assume __var_46 >= 0;
    __ret_0_ := __var_46;
    return;
}



implementation _getWeiAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1103: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 41;
    assume tokens_s1103 >= 0;
    assume tokens_s1103 * 1 >= 0;
    assume tokens_s1103 * 1 / 157 >= 0;
    __ret_0_ := tokens_s1103 * 1 / 157;
    return;
}



implementation _getWeiAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1103: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 41;
    assume tokens_s1103 >= 0;
    assume tokens_s1103 * 1 >= 0;
    assume tokens_s1103 * 1 / 157 >= 0;
    __ret_0_ := tokens_s1103 * 1 / 157;
    return;
}



implementation _getTokenAmount_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1117: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 41;
    assume weiAmount_s1117 >= 0;
    assume weiAmount_s1117 * 157 >= 0;
    assume weiAmount_s1117 * 157 / 1 >= 0;
    __ret_0_ := weiAmount_s1117 * 157 / 1;
    return;
}



implementation _getTokenAmount_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s1117: int)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 41;
    assume weiAmount_s1117 >= 0;
    assume weiAmount_s1117 * 157 >= 0;
    assume weiAmount_s1117 * 157 / 1 >= 0;
    __ret_0_ := weiAmount_s1117 * 157 / 1;
    return;
}



implementation _forwardFunds_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var ownerPayment_s1169: int;
  var walletsPayment_s1169: int;
  var __var_47: int;
  var __var_48: int;
  var __var_49: int;
  var __var_50: bool;
  var __var_51: Ref;
  var firstWalletPayment_s1167: int;
  var secondWalletPayment_s1167: int;
  var __var_52: int;
  var __var_53: bool;
  var __var_54: Ref;
  var __var_55: int;
  var __var_56: bool;
  var __var_57: Ref;

    gas := gas - 3;
    havoc ownerPayment_s1169;
    gas := gas - 3;
    havoc walletsPayment_s1169;
    gas := gas - 24;
    assume ownerPayment_s1169 >= 0;
    assume walletsPayment_s1169 >= 0;
    call __var_47, __var_48 := _splitPayment_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    ownerPayment_s1169 := __var_47;
    walletsPayment_s1169 := __var_48;
    gas := gas - 35805;
    __var_49 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_49 := __var_49 - gas;
    assume ownerPayment_s1169 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_51 := owner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_50 := send__fail(this, __var_51, ownerPayment_s1169);
    if (!__var_50)
    {
        revert := true;
        return;
    }

    gas := __var_49 + gas;
    gas := gas - 9;
    assume walletsPayment_s1169 >= 0;
    if (walletsPayment_s1169 > 0)
    {
        gas := gas - 36;
        assume firstWalletPayment_s1167 >= 0;
        assume walletsPayment_s1169 >= 0;
        assume walletsPayment_s1169 / 2 >= 0;
        firstWalletPayment_s1167 := walletsPayment_s1169 / 2;
        gas := gas - 44;
        assume secondWalletPayment_s1167 >= 0;
        assume walletsPayment_s1169 >= 0;
        assume firstWalletPayment_s1167 >= 0;
        call secondWalletPayment_s1167 := sub_SafeMath__fail(this, this, 0, walletsPayment_s1169, firstWalletPayment_s1167);
        if (revert)
        {
            return;
        }

        secondWalletPayment_s1167 := secondWalletPayment_s1167;
        gas := gas - 35805;
        __var_52 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_52 := __var_52 - gas;
        assume firstWalletPayment_s1167 >= 0;
        if (__tmp__DType[this] == SmartexCrowdsale)
        {
            call __var_54 := wallet_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }

        call __var_53 := send__fail(this, __var_54, firstWalletPayment_s1167);
        if (!__var_53)
        {
            revert := true;
            return;
        }

        gas := __var_52 + gas;
        gas := gas - 35805;
        __var_55 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_55 := __var_55 - gas;
        assume secondWalletPayment_s1167 >= 0;
        call __var_57 := secondWallet_SmartexCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }

        call __var_56 := send__fail(this, __var_57, secondWalletPayment_s1167);
        if (!__var_56)
        {
            revert := true;
            return;
        }

        gas := __var_55 + gas;
    }
}



implementation _forwardFunds_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var ownerPayment_s1169: int;
  var walletsPayment_s1169: int;
  var __var_47: int;
  var __var_48: int;
  var __var_49: int;
  var __var_50: bool;
  var __var_51: Ref;
  var firstWalletPayment_s1167: int;
  var secondWalletPayment_s1167: int;
  var __var_52: int;
  var __var_53: bool;
  var __var_54: Ref;
  var __var_55: int;
  var __var_56: bool;
  var __var_57: Ref;

    gas := gas - 3;
    havoc ownerPayment_s1169;
    gas := gas - 3;
    havoc walletsPayment_s1169;
    gas := gas - 24;
    assume ownerPayment_s1169 >= 0;
    assume walletsPayment_s1169 >= 0;
    call __var_47, __var_48 := _splitPayment_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    ownerPayment_s1169 := __var_47;
    walletsPayment_s1169 := __var_48;
    gas := gas - 35805;
    __var_49 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_49 := __var_49 - gas;
    assume ownerPayment_s1169 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_51 := owner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    call __var_50 := send__success(this, __var_51, ownerPayment_s1169);
    if (!__var_50)
    {
        revert := true;
        return;
    }

    gas := __var_49 + gas;
    gas := gas - 9;
    assume walletsPayment_s1169 >= 0;
    if (walletsPayment_s1169 > 0)
    {
        gas := gas - 36;
        assume firstWalletPayment_s1167 >= 0;
        assume walletsPayment_s1169 >= 0;
        assume walletsPayment_s1169 / 2 >= 0;
        firstWalletPayment_s1167 := walletsPayment_s1169 / 2;
        gas := gas - 44;
        assume secondWalletPayment_s1167 >= 0;
        assume walletsPayment_s1169 >= 0;
        assume firstWalletPayment_s1167 >= 0;
        call secondWalletPayment_s1167 := sub_SafeMath__success(this, this, 0, walletsPayment_s1169, firstWalletPayment_s1167);
        if (revert)
        {
            return;
        }

        secondWalletPayment_s1167 := secondWalletPayment_s1167;
        gas := gas - 35805;
        __var_52 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_52 := __var_52 - gas;
        assume firstWalletPayment_s1167 >= 0;
        if (DType[this] == SmartexCrowdsale)
        {
            call __var_54 := wallet_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }

        call __var_53 := send__success(this, __var_54, firstWalletPayment_s1167);
        if (!__var_53)
        {
            revert := true;
            return;
        }

        gas := __var_52 + gas;
        gas := gas - 35805;
        __var_55 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_55 := __var_55 - gas;
        assume secondWalletPayment_s1167 >= 0;
        call __var_57 := secondWallet_SmartexCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }

        call __var_56 := send__success(this, __var_57, secondWalletPayment_s1167);
        if (!__var_56)
        {
            revert := true;
            return;
        }

        gas := __var_55 + gas;
    }
}



implementation _splitPayment_SmartexCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int)
{
  var raised_s1312: int;
  var prevRaised_s1312: int;
  var toSplit_s1312: int;
  var diff_s1312: int;
  var percent_s1312: int;
  var edge_s1312: int;
  var ownerPayment_s1312: int;
  var walletsPayment_s1312: int;
  var __var_58: int;

    gas := gas - 6;
    gas := gas - 23;
    assume raised_s1312 >= 0;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call raised_s1312 := weiRaised_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    raised_s1312 := raised_s1312;
    gas := gas - 43;
    assume prevRaised_s1312 >= 0;
    assume raised_s1312 >= 0;
    assume msgvalue_MSG >= 0;
    call prevRaised_s1312 := sub_SafeMath__fail(this, this, 0, raised_s1312, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    prevRaised_s1312 := prevRaised_s1312;
    gas := gas - 6;
    assume raised_s1312 >= 0;
    assume __tmp___firstEdge_SmartexCrowdsale[this] >= 0;
    if (raised_s1312 <= __tmp___firstEdge_SmartexCrowdsale[this])
    {
        gas := gas - 38;
        __ret_0_ := msgvalue_MSG;
        __ret_1_ := 0;
        return;
    }

    gas := gas - 10;
    assume toSplit_s1312 >= 0;
    assume msgvalue_MSG >= 0;
    toSplit_s1312 := msgvalue_MSG;
    gas := gas - 11;
    assume diff_s1312 >= 0;
    diff_s1312 := 0;
    gas := gas - 3;
    havoc percent_s1312;
    gas := gas - 3;
    havoc edge_s1312;
    gas := gas - 3;
    havoc ownerPayment_s1312;
    gas := gas - 37;
    assume raised_s1312 >= 0;
    assume __tmp___firstEdge_SmartexCrowdsale[this] >= 0;
    assume raised_s1312 >= 0;
    assume __tmp___secondEdge_SmartexCrowdsale[this] >= 0;
    if (raised_s1312 > __tmp___firstEdge_SmartexCrowdsale[this]
       && raised_s1312 <= __tmp___secondEdge_SmartexCrowdsale[this])
    {
        gas := gas - 5;
        assume edge_s1312 >= 0;
        assume __tmp___firstEdge_SmartexCrowdsale[this] >= 0;
        edge_s1312 := __tmp___firstEdge_SmartexCrowdsale[this];
        gas := gas - 8;
        assume percent_s1312 >= 0;
        percent_s1312 := 80;
        gas := gas - 9;
        assume prevRaised_s1312 >= 0;
        assume edge_s1312 >= 0;
        if (prevRaised_s1312 < edge_s1312)
        {
            gas := gas - 41;
            assume diff_s1312 >= 0;
            assume edge_s1312 >= 0;
            assume prevRaised_s1312 >= 0;
            call diff_s1312 := sub_SafeMath__fail(this, this, 0, edge_s1312, prevRaised_s1312);
            if (revert)
            {
                return;
            }

            diff_s1312 := diff_s1312;
            gas := gas - 41;
            assume toSplit_s1312 >= 0;
            assume toSplit_s1312 >= 0;
            assume diff_s1312 >= 0;
            call toSplit_s1312 := sub_SafeMath__fail(this, this, 0, toSplit_s1312, diff_s1312);
            if (revert)
            {
                return;
            }

            toSplit_s1312 := toSplit_s1312;
        }

        gas := gas - 41;
        assume ownerPayment_s1312 >= 0;
        assume toSplit_s1312 >= 0;
        assume toSplit_s1312 * 80 >= 0;
        assume toSplit_s1312 * 80 / 100 >= 0;
        ownerPayment_s1312 := toSplit_s1312 * 80 / 100;
    }
    else
    {
        gas := gas - 5;
        assume edge_s1312 >= 0;
        assume __tmp___secondEdge_SmartexCrowdsale[this] >= 0;
        edge_s1312 := __tmp___secondEdge_SmartexCrowdsale[this];
        gas := gas - 8;
        assume percent_s1312 >= 0;
        percent_s1312 := 70;
        gas := gas - 9;
        assume prevRaised_s1312 >= 0;
        assume edge_s1312 >= 0;
        if (prevRaised_s1312 < edge_s1312)
        {
            gas := gas - 41;
            assume diff_s1312 >= 0;
            assume edge_s1312 >= 0;
            assume prevRaised_s1312 >= 0;
            call diff_s1312 := sub_SafeMath__fail(this, this, 0, edge_s1312, prevRaised_s1312);
            if (revert)
            {
                return;
            }

            diff_s1312 := diff_s1312;
            gas := gas - 41;
            assume toSplit_s1312 >= 0;
            assume toSplit_s1312 >= 0;
            assume diff_s1312 >= 0;
            call toSplit_s1312 := sub_SafeMath__fail(this, this, 0, toSplit_s1312, diff_s1312);
            if (revert)
            {
                return;
            }

            toSplit_s1312 := toSplit_s1312;
        }

        gas := gas - 41;
        assume ownerPayment_s1312 >= 0;
        assume toSplit_s1312 >= 0;
        assume toSplit_s1312 * 70 >= 0;
        assume toSplit_s1312 * 70 / 100 >= 0;
        ownerPayment_s1312 := toSplit_s1312 * 70 / 100;
    }

    gas := gas - 44;
    assume walletsPayment_s1312 >= 0;
    assume toSplit_s1312 >= 0;
    assume ownerPayment_s1312 >= 0;
    call walletsPayment_s1312 := sub_SafeMath__fail(this, this, 0, toSplit_s1312, ownerPayment_s1312);
    if (revert)
    {
        return;
    }

    walletsPayment_s1312 := walletsPayment_s1312;
    gas := gas - 65;
    assume __var_58 >= 0;
    assume ownerPayment_s1312 >= 0;
    assume diff_s1312 >= 0;
    call __var_58 := add_SafeMath__fail(this, this, 0, ownerPayment_s1312, diff_s1312);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_58;
    __ret_1_ := walletsPayment_s1312;
    return;
}



implementation _splitPayment_SmartexCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (__ret_0_: int, __ret_1_: int)
{
  var raised_s1312: int;
  var prevRaised_s1312: int;
  var toSplit_s1312: int;
  var diff_s1312: int;
  var percent_s1312: int;
  var edge_s1312: int;
  var ownerPayment_s1312: int;
  var walletsPayment_s1312: int;
  var __var_58: int;

    gas := gas - 6;
    gas := gas - 23;
    assume raised_s1312 >= 0;
    if (DType[this] == SmartexCrowdsale)
    {
        call raised_s1312 := weiRaised_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    raised_s1312 := raised_s1312;
    gas := gas - 43;
    assume prevRaised_s1312 >= 0;
    assume raised_s1312 >= 0;
    assume msgvalue_MSG >= 0;
    call prevRaised_s1312 := sub_SafeMath__success(this, this, 0, raised_s1312, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    prevRaised_s1312 := prevRaised_s1312;
    gas := gas - 6;
    assume raised_s1312 >= 0;
    assume _firstEdge_SmartexCrowdsale[this] >= 0;
    if (raised_s1312 <= _firstEdge_SmartexCrowdsale[this])
    {
        gas := gas - 38;
        __ret_0_ := msgvalue_MSG;
        __ret_1_ := 0;
        return;
    }

    gas := gas - 10;
    assume toSplit_s1312 >= 0;
    assume msgvalue_MSG >= 0;
    toSplit_s1312 := msgvalue_MSG;
    gas := gas - 11;
    assume diff_s1312 >= 0;
    diff_s1312 := 0;
    gas := gas - 3;
    havoc percent_s1312;
    gas := gas - 3;
    havoc edge_s1312;
    gas := gas - 3;
    havoc ownerPayment_s1312;
    gas := gas - 37;
    assume raised_s1312 >= 0;
    assume _firstEdge_SmartexCrowdsale[this] >= 0;
    assume raised_s1312 >= 0;
    assume _secondEdge_SmartexCrowdsale[this] >= 0;
    if (raised_s1312 > _firstEdge_SmartexCrowdsale[this]
       && raised_s1312 <= _secondEdge_SmartexCrowdsale[this])
    {
        gas := gas - 5;
        assume edge_s1312 >= 0;
        assume _firstEdge_SmartexCrowdsale[this] >= 0;
        edge_s1312 := _firstEdge_SmartexCrowdsale[this];
        gas := gas - 8;
        assume percent_s1312 >= 0;
        percent_s1312 := 80;
        gas := gas - 9;
        assume prevRaised_s1312 >= 0;
        assume edge_s1312 >= 0;
        if (prevRaised_s1312 < edge_s1312)
        {
            gas := gas - 41;
            assume diff_s1312 >= 0;
            assume edge_s1312 >= 0;
            assume prevRaised_s1312 >= 0;
            call diff_s1312 := sub_SafeMath__success(this, this, 0, edge_s1312, prevRaised_s1312);
            if (revert)
            {
                return;
            }

            diff_s1312 := diff_s1312;
            gas := gas - 41;
            assume toSplit_s1312 >= 0;
            assume toSplit_s1312 >= 0;
            assume diff_s1312 >= 0;
            call toSplit_s1312 := sub_SafeMath__success(this, this, 0, toSplit_s1312, diff_s1312);
            if (revert)
            {
                return;
            }

            toSplit_s1312 := toSplit_s1312;
        }

        gas := gas - 41;
        assume ownerPayment_s1312 >= 0;
        assume toSplit_s1312 >= 0;
        assume toSplit_s1312 * 80 >= 0;
        assume toSplit_s1312 * 80 / 100 >= 0;
        ownerPayment_s1312 := toSplit_s1312 * 80 / 100;
    }
    else
    {
        gas := gas - 5;
        assume edge_s1312 >= 0;
        assume _secondEdge_SmartexCrowdsale[this] >= 0;
        edge_s1312 := _secondEdge_SmartexCrowdsale[this];
        gas := gas - 8;
        assume percent_s1312 >= 0;
        percent_s1312 := 70;
        gas := gas - 9;
        assume prevRaised_s1312 >= 0;
        assume edge_s1312 >= 0;
        if (prevRaised_s1312 < edge_s1312)
        {
            gas := gas - 41;
            assume diff_s1312 >= 0;
            assume edge_s1312 >= 0;
            assume prevRaised_s1312 >= 0;
            call diff_s1312 := sub_SafeMath__success(this, this, 0, edge_s1312, prevRaised_s1312);
            if (revert)
            {
                return;
            }

            diff_s1312 := diff_s1312;
            gas := gas - 41;
            assume toSplit_s1312 >= 0;
            assume toSplit_s1312 >= 0;
            assume diff_s1312 >= 0;
            call toSplit_s1312 := sub_SafeMath__success(this, this, 0, toSplit_s1312, diff_s1312);
            if (revert)
            {
                return;
            }

            toSplit_s1312 := toSplit_s1312;
        }

        gas := gas - 41;
        assume ownerPayment_s1312 >= 0;
        assume toSplit_s1312 >= 0;
        assume toSplit_s1312 * 70 >= 0;
        assume toSplit_s1312 * 70 / 100 >= 0;
        ownerPayment_s1312 := toSplit_s1312 * 70 / 100;
    }

    gas := gas - 44;
    assume walletsPayment_s1312 >= 0;
    assume toSplit_s1312 >= 0;
    assume ownerPayment_s1312 >= 0;
    call walletsPayment_s1312 := sub_SafeMath__success(this, this, 0, toSplit_s1312, ownerPayment_s1312);
    if (revert)
    {
        return;
    }

    walletsPayment_s1312 := walletsPayment_s1312;
    gas := gas - 65;
    assume __var_58 >= 0;
    assume ownerPayment_s1312 >= 0;
    assume diff_s1312 >= 0;
    call __var_58 := add_SafeMath__success(this, this, 0, ownerPayment_s1312, diff_s1312);
    if (revert)
    {
        return;
    }

    __ret_0_ := __var_58;
    __ret_1_ := walletsPayment_s1312;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == SmartexCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == AllowanceCrowdsale)
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
    else if (__tmp__DType[to] == Ownable)
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
    if (DType[to] == SmartexCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == AllowanceCrowdsale)
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
    else if (DType[to] == Ownable)
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
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp___owner_Ownable: [Ref]Ref;
  var __snap___tmp___notEntered_ReentrancyGuard: [Ref]bool;
  var __snap___tmp___token_Crowdsale: [Ref]Ref;
  var __snap___tmp___wallet_Crowdsale: [Ref]Ref;
  var __snap___tmp___rate_Crowdsale: [Ref]int;
  var __snap___tmp___weiRaised_Crowdsale: [Ref]int;
  var __snap___tmp___tokenWallet_AllowanceCrowdsale: [Ref]Ref;
  var __snap___tmp___openingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp___closingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp___secondWallet_SmartexCrowdsale: [Ref]Ref;
  var __snap___tmp___firstEdge_SmartexCrowdsale: [Ref]int;
  var __snap___tmp___secondEdge_SmartexCrowdsale: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__now := __tmp__now;
        __snap___tmp___owner_Ownable := __tmp___owner_Ownable;
        __snap___tmp___notEntered_ReentrancyGuard := __tmp___notEntered_ReentrancyGuard;
        __snap___tmp___token_Crowdsale := __tmp___token_Crowdsale;
        __snap___tmp___wallet_Crowdsale := __tmp___wallet_Crowdsale;
        __snap___tmp___rate_Crowdsale := __tmp___rate_Crowdsale;
        __snap___tmp___weiRaised_Crowdsale := __tmp___weiRaised_Crowdsale;
        __snap___tmp___tokenWallet_AllowanceCrowdsale := __tmp___tokenWallet_AllowanceCrowdsale;
        __snap___tmp___openingTime_TimedCrowdsale := __tmp___openingTime_TimedCrowdsale;
        __snap___tmp___closingTime_TimedCrowdsale := __tmp___closingTime_TimedCrowdsale;
        __snap___tmp___secondWallet_SmartexCrowdsale := __tmp___secondWallet_SmartexCrowdsale;
        __snap___tmp___firstEdge_SmartexCrowdsale := __tmp___firstEdge_SmartexCrowdsale;
        __snap___tmp___secondEdge_SmartexCrowdsale := __tmp___secondEdge_SmartexCrowdsale;
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
        __tmp__sum := __snap___tmp__sum;
        __tmp__now := __snap___tmp__now;
        __tmp___owner_Ownable := __snap___tmp___owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := __snap___tmp___notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := __snap___tmp___token_Crowdsale;
        __tmp___wallet_Crowdsale := __snap___tmp___wallet_Crowdsale;
        __tmp___rate_Crowdsale := __snap___tmp___rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := __snap___tmp___weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := __snap___tmp___tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := __snap___tmp___openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := __snap___tmp___closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := __snap___tmp___secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := __snap___tmp___firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := __snap___tmp___secondEdge_SmartexCrowdsale;
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
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp___owner_Ownable := _owner_Ownable;
        __tmp___notEntered_ReentrancyGuard := _notEntered_ReentrancyGuard;
        __tmp___token_Crowdsale := _token_Crowdsale;
        __tmp___wallet_Crowdsale := _wallet_Crowdsale;
        __tmp___rate_Crowdsale := _rate_Crowdsale;
        __tmp___weiRaised_Crowdsale := _weiRaised_Crowdsale;
        __tmp___tokenWallet_AllowanceCrowdsale := _tokenWallet_AllowanceCrowdsale;
        __tmp___openingTime_TimedCrowdsale := _openingTime_TimedCrowdsale;
        __tmp___closingTime_TimedCrowdsale := _closingTime_TimedCrowdsale;
        __tmp___secondWallet_SmartexCrowdsale := _secondWallet_SmartexCrowdsale;
        __tmp___firstEdge_SmartexCrowdsale := _firstEdge_SmartexCrowdsale;
        __tmp___secondEdge_SmartexCrowdsale := _secondEdge_SmartexCrowdsale;
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
  var __var_1: bool;

    gas := gas - 1990;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_1 := isOwner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Ownable)
    {
        call __var_1 := isOwner_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
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



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: bool;

    gas := gas - 1990;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_1 := isOwner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Ownable)
    {
        call __var_1 := isOwner_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
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



implementation nonReentrant_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1832;
    if (!__tmp___notEntered_ReentrancyGuard[this])
    {
        revert := true;
        return;
    }

    gas := gas - 40584;
    __tmp___notEntered_ReentrancyGuard[this] := false;
}



implementation nonReentrant_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1832;
    if (!_notEntered_ReentrancyGuard[this])
    {
        revert := true;
        return;
    }

    gas := gas - 40584;
    _notEntered_ReentrancyGuard[this] := false;
}



implementation onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_42: bool;

    gas := gas - 667;
    if (__tmp__DType[this] == SmartexCrowdsale)
    {
        call __var_42 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call __var_42 := isOpen_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_42)
    {
        revert := true;
        return;
    }
}



implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_42: bool;

    gas := gas - 667;
    if (DType[this] == SmartexCrowdsale)
    {
        call __var_42 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call __var_42 := isOpen_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_42)
    {
        revert := true;
        return;
    }
}



implementation nonReentrant_post__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 40584;
    __tmp___notEntered_ReentrancyGuard[this] := true;
}



implementation nonReentrant_post__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 40584;
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
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
       || DType[this] == Ownable
       || DType[this] == Crowdsale
       || DType[this] == AllowanceCrowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == SmartexCrowdsale;
    gas := gas - 53000;
    call Context_Context(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Context(this);
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_owner: Ref;
  var __ret_0_isOwner: bool;
  var newOwner_s105: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_owner;
    havoc __ret_0_isOwner;
    havoc newOwner_s105;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_isOwner := isOwner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call renounceOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
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
    assume DType[this] == Ownable || DType[this] == SmartexCrowdsale;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
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
       || DType[this] == AllowanceCrowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == SmartexCrowdsale;
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
  var rate_s492: int;
  var wallet_s492: Ref;
  var token_s492: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s590: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s492;
    havoc wallet_s492;
    havoc token_s492;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s590;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
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
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590);
    }
}



implementation CorralEntry_Crowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var rate_s492: int;
  var wallet_s492: Ref;
  var token_s492: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Crowdsale
       || DType[this] == AllowanceCrowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == SmartexCrowdsale;
    gas := gas - 53000;
    call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s492, wallet_s492, token_s492);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Crowdsale(this);
    }
}



implementation CorralChoice_Math(this: Ref)
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_Math()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Math;
    gas := gas - 53000;
    call Math_Math__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Math(this);
    }
}



implementation CorralChoice_AllowanceCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s492: int;
  var wallet_s492: Ref;
  var token_s492: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s590: Ref;
  var tokenWallet_s791: Ref;
  var __ret_0_tokenWallet: Ref;
  var __ret_0_remainingTokens: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s492;
    havoc wallet_s492;
    havoc token_s492;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s590;
    havoc tokenWallet_s791;
    havoc __ret_0_tokenWallet;
    havoc __ret_0_remainingTokens;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_tokenWallet := tokenWallet_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_AllowanceCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var tokenWallet_s791: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == AllowanceCrowdsale || DType[this] == SmartexCrowdsale;
    gas := gas - 53000;
    call AllowanceCrowdsale_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG, tokenWallet_s791);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_AllowanceCrowdsale(this);
    }
}



implementation CorralChoice_TimedCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s492: int;
  var wallet_s492: Ref;
  var token_s492: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s590: Ref;
  var openingTime_s897: int;
  var closingTime_s897: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s492;
    havoc wallet_s492;
    havoc token_s492;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s590;
    havoc openingTime_s897;
    havoc closingTime_s897;
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
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
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590);
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
  var openingTime_s897: int;
  var closingTime_s897: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == TimedCrowdsale || DType[this] == SmartexCrowdsale;
    gas := gas - 53000;
    call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, openingTime_s897, closingTime_s897);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_TimedCrowdsale(this);
    }
}



implementation CorralChoice_SmartexCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_owner: Ref;
  var __ret_0_isOwner: bool;
  var newOwner_s105: Ref;
  var rate_s492: int;
  var wallet_s492: Ref;
  var token_s492: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s590: Ref;
  var tokenWallet_s791: Ref;
  var __ret_0_tokenWallet: Ref;
  var __ret_0_remainingTokens: int;
  var openingTime_s897: int;
  var closingTime_s897: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var wallet_s1043: Ref;
  var secondWallet_s1043: Ref;
  var token_s1043: Ref;
  var __ret_0_secondWallet: Ref;
  var newClosingTime_s1063: int;
  var tokens_s1075: int;
  var __ret_0_getWeiAmount: int;
  var weiAmount_s1087: int;
  var __ret_0_getTokenAmount: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_owner;
    havoc __ret_0_isOwner;
    havoc newOwner_s105;
    havoc rate_s492;
    havoc wallet_s492;
    havoc token_s492;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s590;
    havoc tokenWallet_s791;
    havoc __ret_0_tokenWallet;
    havoc __ret_0_remainingTokens;
    havoc openingTime_s897;
    havoc closingTime_s897;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc wallet_s1043;
    havoc secondWallet_s1043;
    havoc token_s1043;
    havoc __ret_0_secondWallet;
    havoc newClosingTime_s1063;
    havoc tokens_s1075;
    havoc __ret_0_getWeiAmount;
    havoc weiAmount_s1087;
    havoc __ret_0_getTokenAmount;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != Math;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != SmartexCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 19)
    {
        gas := gas - 21000;
        call __ret_0_owner := owner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        call __ret_0_isOwner := isOwner_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        call renounceOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s105);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        call __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s590);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call __ret_0_tokenWallet := tokenWallet_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_secondWallet := secondWallet_SmartexCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call extendTime_SmartexCrowdsale(this, msgsender_MSG, msgvalue_MSG, newClosingTime_s1063);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_getWeiAmount := getWeiAmount_SmartexCrowdsale(this, msgsender_MSG, msgvalue_MSG, tokens_s1075);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_getTokenAmount := getTokenAmount_SmartexCrowdsale(this, msgsender_MSG, msgvalue_MSG, weiAmount_s1087);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var wallet_s1043: Ref;
  var secondWallet_s1043: Ref;
  var token_s1043: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == SmartexCrowdsale;
    gas := gas - 53000;
    call SmartexCrowdsale_SmartexCrowdsale(this, msgsender_MSG, msgvalue_MSG, wallet_s1043, secondWallet_s1043, token_s1043);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SmartexCrowdsale(this);
    }
}


