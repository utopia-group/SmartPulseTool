// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /pretty:1 /print:RefundEscrow.bpl /noVerify __SolToBoogieTest_out.bpl

// LIVE SPEC 1
// LTLFairness: success(RefundEscrow.close) {} ; call(RefundEscrow.beneficiaryWithdraw) {}
// LTLProperty: [](success(RefundEscrow.close) {} ==> <>(success(RefundEscrow.beneficiaryWithdraw) {})) 

// LIVE SPEC 1 Alt
// LTLFairness: success(RefundEscrow.close) {} ; call(RefundEscrow.beneficiaryWithdraw) {}
// LTLProperty: <>(success(RefundEscrow.beneficiaryWithdraw) {})

// Live Spec 2
// #LTLFairness: <>(success(RefundEscrow.enableRefunds) {})
// #LTLProperty: <>([](!fail(ConditionalEscrow.withdraw) {msg.sender == Secondary.primary()}))

type Ref = int;

type ContractName = int;

var null: Ref;

var ConditionalEscrow: ContractName;

var Context: ContractName;

var Escrow: ContractName;

var RefundEscrow: ContractName;

var SafeMath: ContractName;

var Secondary: ContractName;

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

var M_Ref_int: [Ref][Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, _primary_Secondary, _deposits_Escrow, M_Ref_int, Alloc;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call ConditionalEscrow_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ConditionalEscrow_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawalAllowed_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s165: Ref)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s182: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, M_Ref_int, Balance;



implementation withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s182: Ref)
{
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call withdraw_ConditionalEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s182);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_ConditionalEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s182);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Context_Context_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:public} {:inline 1} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _deposits_Escrow, M_Ref_int, Alloc;



procedure {:inline 1} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _deposits_Escrow, M_Ref_int, Alloc, gas, _primary_Secondary;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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

procedure {:public} {:inline 1} depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s220: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas;



implementation depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s220: Ref)
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call __ret_0_ := depositsOf_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s220);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := depositsOf_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s220);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, Balance, M_Ref_int;



implementation deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref)
{
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call deposit_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s230);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s230);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s259: Ref);
  modifies gas, M_Ref_int, revert;



procedure {:public} {:inline 1} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s269: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, M_Ref_int, Balance;



implementation withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s269: Ref)
{
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call withdraw_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s269);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s269);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s300: Ref);
  modifies gas, M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, Balance;



var _state_RefundEscrow: [Ref]int;

var _beneficiary_RefundEscrow: [Ref]Ref;

procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref);
  modifies _beneficiary_RefundEscrow, revert, _state_RefundEscrow;



procedure {:constructor} {:public} {:inline 1} RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _deposits_Escrow, M_Ref_int, Alloc, _beneficiary_RefundEscrow, _state_RefundEscrow, gas, _primary_Secondary;



implementation RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref)
{
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call RefundEscrow_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s40);
        assume revert || gas < 0;
    }
    else
    {
        call RefundEscrow_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s40);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call __ret_0_ := beneficiary_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := beneficiary_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, Balance, M_Ref_int;



implementation deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref)
{
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call deposit_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, _state_RefundEscrow;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, _state_RefundEscrow;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, Balance;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call __ret_0_ := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, __param_0_);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, __param_0_);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s328: int, b_s328: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s353: int, b_s353: int)
   returns (__ret_0_: int);
  modifies revert;



var _primary_Secondary: [Ref]Ref;

procedure {:inline 1} Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _primary_Secondary, gas;



procedure {:constructor} {:public} {:inline 1} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, _primary_Secondary;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas;



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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call __ret_0_ := primary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := primary_Secondary__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s507: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, gas, _primary_Secondary;



implementation transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s507: Ref)
{
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
        call transferPrimary_Secondary__fail(this, msgsender_MSG, msgvalue_MSG, recipient_s507);
        assume revert || gas < 0;
    }
    else
    {
        call transferPrimary_Secondary__success(this, msgsender_MSG, msgvalue_MSG, recipient_s507);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, revert, Balance;



procedure onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_ConditionalEscrow(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _primary_Secondary, Balance, M_Ref_int;



procedure CorralEntry_ConditionalEscrow();
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _primary_Secondary, Balance, _deposits_Escrow, M_Ref_int, Alloc;



procedure CorralChoice_Context(this: Ref);
  modifies gas, now;



procedure CorralEntry_Context();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, now;



procedure CorralChoice_Escrow(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _primary_Secondary, Balance, M_Ref_int;



procedure CorralEntry_Escrow();
  modifies gas, _deposits_Escrow, M_Ref_int, Alloc, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _primary_Secondary, Balance;



procedure CorralChoice_RefundEscrow(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _primary_Secondary, Balance, _state_RefundEscrow, M_Ref_int;



procedure main();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, now, _primary_Secondary, Balance, _state_RefundEscrow, _deposits_Escrow, M_Ref_int, Alloc, _beneficiary_RefundEscrow;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now;



procedure CorralEntry_SafeMath();
  modifies gas, now;



procedure CorralChoice_Secondary(this: Ref);
  modifies gas, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, _primary_Secondary;



procedure CorralEntry_Secondary();
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, now, _primary_Secondary;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int: [Ref][Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp___deposits_Escrow: [Ref]Ref;

var __tmp___state_RefundEscrow: [Ref]int;

var __tmp___beneficiary_RefundEscrow: [Ref]Ref;

var __tmp___primary_Secondary: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _primary_Secondary, gas, _deposits_Escrow, M_Ref_int, Alloc;



procedure {:inline 1} ConditionalEscrow_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___primary_Secondary, gas, __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__Alloc;



procedure {:inline 1} withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s182: Ref);
  modifies gas, revert, M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, Balance;



procedure {:inline 1} withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s182: Ref);
  modifies gas, revert, __tmp__M_Ref_int, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary;



procedure {:inline 1} Context_Context_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:constructor} {:inline 1} Context_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _msgSender_Context__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__Alloc;



procedure {:inline 1} Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _deposits_Escrow, M_Ref_int, Alloc, _primary_Secondary, gas;



procedure {:inline 1} Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__Alloc, __tmp___primary_Secondary, gas;



procedure {:inline 1} depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s220: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s220: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref);
  modifies Balance, gas, M_Ref_int, revert;



procedure {:inline 1} deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref);
  modifies __tmp__Balance, gas, __tmp__M_Ref_int, revert;



procedure {:inline 1} deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s259: Ref);
  modifies gas, __tmp__M_Ref_int, revert;



procedure {:inline 1} withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s269: Ref);
  modifies gas, M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, Balance;



procedure {:inline 1} withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s269: Ref);
  modifies gas, __tmp__M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary;



procedure {:inline 1} withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s300: Ref);
  modifies gas, __tmp__M_Ref_int, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary;



procedure {:inline 1} RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref);
  modifies __tmp___beneficiary_RefundEscrow, revert, __tmp___state_RefundEscrow;



procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref);
  modifies _deposits_Escrow, M_Ref_int, Alloc, _beneficiary_RefundEscrow, revert, _state_RefundEscrow, _primary_Secondary, gas;



procedure {:constructor} {:inline 1} RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref);
  modifies __tmp___deposits_Escrow, __tmp__M_Ref_int, __tmp__Alloc, __tmp___beneficiary_RefundEscrow, revert, __tmp___state_RefundEscrow, __tmp___primary_Secondary, gas;



procedure {:inline 1} state_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} state_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} beneficiary_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} beneficiary_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref);
  modifies Balance, gas, revert, M_Ref_int;



procedure {:inline 1} deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__M_Ref_int;



procedure {:inline 1} close_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _state_RefundEscrow;



procedure {:inline 1} close_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} enableRefunds_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, _state_RefundEscrow;



procedure {:inline 1} enableRefunds_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp___state_RefundEscrow;



procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, Balance;



procedure {:inline 1} beneficiaryWithdraw_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary;



procedure {:inline 1} withdrawalAllowed_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} withdrawalAllowed_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s328: int, b_s328: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s353: int, b_s353: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___primary_Secondary, gas;



procedure {:constructor} {:inline 1} Secondary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _primary_Secondary, gas;



procedure {:constructor} {:inline 1} Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp___primary_Secondary, gas;



procedure {:inline 1} primary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} primary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s507: Ref);
  modifies gas, revert, _primary_Secondary;



procedure {:inline 1} transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s507: Ref);
  modifies gas, revert, __tmp___primary_Secondary;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int, __tmp__Length, __tmp__now, __tmp___deposits_Escrow, __tmp___state_RefundEscrow, __tmp___beneficiary_RefundEscrow, __tmp___primary_Secondary, revert;



procedure onlyPrimary_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
}



implementation ConditionalEscrow_ConditionalEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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



implementation withdraw_ConditionalEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s182: Ref)
{
  var __var_1: bool;

    gas := gas - 666;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call __var_1 := withdrawalAllowed_RefundEscrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s182);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call __var_1 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s182);
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

    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s182);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s182);
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



implementation withdraw_ConditionalEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s182: Ref)
{
  var __var_1: bool;

    gas := gas - 666;
    if (DType[this] == RefundEscrow)
    {
        call __var_1 := withdrawalAllowed_RefundEscrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s182);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call __var_1 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s182);
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

    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s182);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s182);
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



implementation Escrow_Escrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume msgsender_MSG != null;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp___deposits_Escrow[this] := __var_2;
    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]] := zeroRefIntArr();
}



implementation Escrow_Escrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume msgsender_MSG != null;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    _deposits_Escrow[this] := __var_2;
    M_Ref_int[_deposits_Escrow[this]] := zeroRefIntArr();
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



implementation depositsOf_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s220: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s220] >= 0;
    __ret_0_ := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s220];
    return;
}



implementation depositsOf_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s220: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 608;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s220] >= 0;
    __ret_0_ := M_Ref_int[_deposits_Escrow[this]][payee_s220];
    return;
}



implementation deposit_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s230);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s230);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s230);
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



implementation deposit_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s230);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s230);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s230);
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



implementation deposit_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s259: Ref)
{
  var amount_s258: int;
  var __var_3: int;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s258 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s258 := msgvalue_MSG;
    gas := gas - 40878;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s259] >= 0;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s259] >= 0;
    assume amount_s258 >= 0;
    call __var_3 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s259], amount_s258);
    if (revert)
    {
        return;
    }

    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s259] := __var_3;
    assume __var_3 >= 0;
}



implementation deposit_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s259: Ref)
{
  var amount_s258: int;
  var __var_3: int;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume amount_s258 >= 0;
    assume msgvalue_MSG >= 0;
    amount_s258 := msgvalue_MSG;
    gas := gas - 40878;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s259] >= 0;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s259] >= 0;
    assume amount_s258 >= 0;
    call __var_3 := add_SafeMath__success(this, this, 0, M_Ref_int[_deposits_Escrow[this]][payee_s259], amount_s258);
    if (revert)
    {
        return;
    }

    M_Ref_int[_deposits_Escrow[this]][payee_s259] := __var_3;
    assume __var_3 >= 0;
    assert {:EventEmitted "Deposited_Escrow"} true;
}



implementation withdraw_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s269: Ref)
{
    gas := gas - 7;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s269);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s269);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call withdraw_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, payee_s269);
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



implementation withdraw_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s269: Ref)
{
    gas := gas - 7;
    if (DType[this] == RefundEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s269);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s269);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call withdraw_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, payee_s269);
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



implementation withdraw_Escrow_Escrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s300: Ref)
{
  var payment_s299: int;
  var __var_4: int;
  var __var_5: bool;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 614;
    assume payment_s299 >= 0;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s300] >= 0;
    payment_s299 := __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s300];
    gas := gas - 10208;
    assume __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s300] >= 0;
    __tmp__M_Ref_int[__tmp___deposits_Escrow[this]][payee_s300] := 0;
    gas := gas - 71574;
    __var_4 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_4 := __var_4 - gas;
    assume payment_s299 >= 0;
    call __var_5 := send__fail(this, payee_s300, payment_s299);
    if (!__var_5)
    {
        revert := true;
        return;
    }

    gas := __var_4 + gas;
}



implementation withdraw_Escrow_Escrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s300: Ref)
{
  var payment_s299: int;
  var __var_4: int;
  var __var_5: bool;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 614;
    assume payment_s299 >= 0;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s300] >= 0;
    payment_s299 := M_Ref_int[_deposits_Escrow[this]][payee_s300];
    gas := gas - 10208;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s300] >= 0;
    M_Ref_int[_deposits_Escrow[this]][payee_s300] := 0;
    gas := gas - 71574;
    __var_4 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_4 := __var_4 - gas;
    assume payment_s299 >= 0;
    call __var_5 := send__success(this, payee_s300, payment_s299);
    if (!__var_5)
    {
        revert := true;
        return;
    }

    gas := __var_4 + gas;
    assert {:EventEmitted "Withdrawn_Escrow"} true;
}



implementation RefundEscrow_RefundEscrow_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref)
{
  var __var_6: Ref;

    assume msgsender_MSG != null;
    __tmp___beneficiary_RefundEscrow[this] := null;
    __var_6 := null;
    if (!(beneficiary_s40 != null))
    {
        revert := true;
        return;
    }

    __tmp___beneficiary_RefundEscrow[this] := beneficiary_s40;
    __tmp___state_RefundEscrow[this] := 0;
}



implementation RefundEscrow_RefundEscrow_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref)
{
  var __var_6: Ref;

    assume msgsender_MSG != null;
    _beneficiary_RefundEscrow[this] := null;
    __var_6 := null;
    if (!(beneficiary_s40 != null))
    {
        revert := true;
        return;
    }

    _beneficiary_RefundEscrow[this] := beneficiary_s40;
    _state_RefundEscrow[this] := 0;
}



implementation RefundEscrow_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref)
{
  var __var_6: Ref;

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

    call RefundEscrow_RefundEscrow_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s40);
    if (revert)
    {
        return;
    }
}



implementation RefundEscrow_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s40: Ref)
{
  var __var_6: Ref;

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

    call RefundEscrow_RefundEscrow_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s40);
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



implementation deposit_RefundEscrow__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref)
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
        call deposit_Escrow_Escrow__fail(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
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



implementation deposit_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s74: Ref)
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
        call deposit_Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
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
  var __var_7: int;
  var __var_8: Ref;
  var __var_9: bool;

    gas := gas - 956;
    if (!(__tmp___state_RefundEscrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 36484;
    __var_7 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_7 := __var_7 - gas;
    __var_8 := this;
    assume __tmp__Balance[this] >= 0;
    call __var_9 := send__fail(this, __tmp___beneficiary_RefundEscrow[this], __tmp__Balance[this]);
    if (!__var_9)
    {
        revert := true;
        return;
    }

    gas := __var_7 + gas;
}



implementation beneficiaryWithdraw_RefundEscrow__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_7: int;
  var __var_8: Ref;
  var __var_9: bool;

    gas := gas - 956;
    if (!(_state_RefundEscrow[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 36484;
    __var_7 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_7 := __var_7 - gas;
    __var_8 := this;
    assume Balance[this] >= 0;
    call __var_9 := send__success(this, _beneficiary_RefundEscrow[this], Balance[this]);
    if (!__var_9)
    {
        revert := true;
        return;
    }

    gas := __var_7 + gas;
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



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s328: int, b_s328: int)
   returns (__ret_0_: int)
{
  var c_s327: int;

    gas := gas - 6;
    gas := gas - 34;
    assume c_s327 >= 0;
    assume a_s328 >= 0;
    assume b_s328 >= 0;
    assume a_s328 + b_s328 >= 0;
    c_s327 := a_s328 + b_s328;
    gas := gas - 1328;
    assume c_s327 >= 0;
    assume a_s328 >= 0;
    if (!(c_s327 >= a_s328))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume c_s327 >= 0;
    __ret_0_ := c_s327;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s328: int, b_s328: int)
   returns (__ret_0_: int)
{
  var c_s327: int;

    gas := gas - 6;
    gas := gas - 34;
    assume c_s327 >= 0;
    assume a_s328 >= 0;
    assume b_s328 >= 0;
    assume a_s328 + b_s328 >= 0;
    c_s327 := a_s328 + b_s328;
    gas := gas - 1328;
    assume c_s327 >= 0;
    assume a_s328 >= 0;
    if (!(c_s327 >= a_s328))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume c_s327 >= 0;
    __ret_0_ := c_s327;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s353: int, b_s353: int)
   returns (__ret_0_: int)
{
  var c_s352: int;

    assume b_s353 >= 0;
    assume a_s353 >= 0;
    if (!(b_s353 <= a_s353))
    {
        revert := true;
        return;
    }

    assume c_s352 >= 0;
    assume a_s353 >= 0;
    assume b_s353 >= 0;
    assume a_s353 - b_s353 >= 0;
    c_s352 := a_s353 - b_s353;
    assume c_s352 >= 0;
    __ret_0_ := c_s352;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s353: int, b_s353: int)
   returns (__ret_0_: int)
{
  var c_s352: int;

    assume b_s353 >= 0;
    assume a_s353 >= 0;
    if (!(b_s353 <= a_s353))
    {
        revert := true;
        return;
    }

    assume c_s352 >= 0;
    assume a_s353 >= 0;
    assume b_s353 >= 0;
    assume a_s353 - b_s353 >= 0;
    c_s352 := a_s353 - b_s353;
    assume c_s352 >= 0;
    __ret_0_ := c_s352;
    return;
}



implementation Secondary_Secondary_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s461: Ref;

    assume msgsender_MSG != null;
    __tmp___primary_Secondary[this] := null;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call msgSender_s461 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call msgSender_s461 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call msgSender_s461 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Secondary)
    {
        call msgSender_s461 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s461 := msgSender_s461;
    __tmp___primary_Secondary[this] := msgSender_s461;
}



implementation Secondary_Secondary_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s461: Ref;

    assume msgsender_MSG != null;
    _primary_Secondary[this] := null;
    if (DType[this] == RefundEscrow)
    {
        call msgSender_s461 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call msgSender_s461 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call msgSender_s461 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Secondary)
    {
        call msgSender_s461 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    msgSender_s461 := msgSender_s461;
    _primary_Secondary[this] := msgSender_s461;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation Secondary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s461: Ref;

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
  var msgSender_s461: Ref;

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



implementation transferPrimary_Secondary__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s507: Ref)
{
  var __var_11: Ref;

    call onlyPrimary_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 1366;
    __var_11 := null;
    if (!(recipient_s507 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    __tmp___primary_Secondary[this] := recipient_s507;
}



implementation transferPrimary_Secondary__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s507: Ref)
{
  var __var_11: Ref;

    call onlyPrimary_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 1366;
    __var_11 := null;
    if (!(recipient_s507 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    _primary_Secondary[this] := recipient_s507;
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == Secondary)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == RefundEscrow)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Escrow)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Context)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ConditionalEscrow)
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
    if (DType[to] == Secondary)
    {
        assume amount == 0;
    }
    else if (DType[to] == RefundEscrow)
    {
        assume amount == 0;
    }
    else if (DType[to] == Escrow)
    {
        assume amount == 0;
    }
    else if (DType[to] == Context)
    {
        assume amount == 0;
    }
    else if (DType[to] == ConditionalEscrow)
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
  var __snap___tmp__now: int;
  var __snap___tmp___deposits_Escrow: [Ref]Ref;
  var __snap___tmp___state_RefundEscrow: [Ref]int;
  var __snap___tmp___beneficiary_RefundEscrow: [Ref]Ref;
  var __snap___tmp___primary_Secondary: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int := __tmp__M_Ref_int;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp___deposits_Escrow := __tmp___deposits_Escrow;
        __snap___tmp___state_RefundEscrow := __tmp___state_RefundEscrow;
        __snap___tmp___beneficiary_RefundEscrow := __tmp___beneficiary_RefundEscrow;
        __snap___tmp___primary_Secondary := __tmp___primary_Secondary;
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
        __tmp__now := __snap___tmp__now;
        __tmp___deposits_Escrow := __snap___tmp___deposits_Escrow;
        __tmp___state_RefundEscrow := __snap___tmp___state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := __snap___tmp___beneficiary_RefundEscrow;
        __tmp___primary_Secondary := __snap___tmp___primary_Secondary;
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
        __tmp__now := now;
        __tmp___deposits_Escrow := _deposits_Escrow;
        __tmp___state_RefundEscrow := _state_RefundEscrow;
        __tmp___beneficiary_RefundEscrow := _beneficiary_RefundEscrow;
        __tmp___primary_Secondary := _primary_Secondary;
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
  var __var_10: Ref;

    gas := gas - 7402;
    if (__tmp__DType[this] == RefundEscrow)
    {
        call __var_10 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ConditionalEscrow)
    {
        call __var_10 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Escrow)
    {
        call __var_10 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Secondary)
    {
        call __var_10 := _msgSender_Context__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!(__var_10 == __tmp___primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyPrimary_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_10: Ref;

    gas := gas - 7402;
    if (DType[this] == RefundEscrow)
    {
        call __var_10 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ConditionalEscrow)
    {
        call __var_10 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Escrow)
    {
        call __var_10 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Secondary)
    {
        call __var_10 := _msgSender_Context__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!(__var_10 == _primary_Secondary[this]))
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_ConditionalEscrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s507: Ref;
  var payee_s220: Ref;
  var __ret_0_depositsOf: int;
  var payee_s230: Ref;
  var payee_s182: Ref;
  var payee_s165: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s507;
    havoc payee_s220;
    havoc __ret_0_depositsOf;
    havoc payee_s230;
    havoc payee_s182;
    havoc payee_s165;
    havoc __ret_0_withdrawalAllowed;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s507);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s220);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s230);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s182);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_withdrawalAllowed := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s165);
    }
}



implementation CorralEntry_ConditionalEscrow()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

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
}



implementation CorralEntry_Context()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == ConditionalEscrow
       || DType[this] == Context
       || DType[this] == Escrow
       || DType[this] == RefundEscrow
       || DType[this] == Secondary;
    gas := gas - 53000;
    call Context_Context(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Context(this);
    }
}



implementation CorralChoice_Escrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s507: Ref;
  var payee_s220: Ref;
  var __ret_0_depositsOf: int;
  var payee_s230: Ref;
  var payee_s269: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s507;
    havoc payee_s220;
    havoc __ret_0_depositsOf;
    havoc payee_s230;
    havoc payee_s269;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s507);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s220);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call deposit_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s230);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call withdraw_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s269);
    }
}



implementation CorralEntry_Escrow()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == ConditionalEscrow
       || DType[this] == Escrow
       || DType[this] == RefundEscrow;
    gas := gas - 53000;
    call Escrow_Escrow__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Escrow(this);
    }
}



implementation CorralChoice_RefundEscrow(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_primary: Ref;
  var recipient_s507: Ref;
  var payee_s220: Ref;
  var __ret_0_depositsOf: int;
  var refundee_s74: Ref;
  var payee_s182: Ref;
  var __arg_0_withdrawalAllowed: Ref;
  var __ret_0_withdrawalAllowed: bool;
  var beneficiary_s40: Ref;
  var __ret_0_state: int;
  var __ret_0_beneficiary: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s507;
    havoc payee_s220;
    havoc __ret_0_depositsOf;
    havoc refundee_s74;
    havoc payee_s182;
    havoc __arg_0_withdrawalAllowed;
    havoc __ret_0_withdrawalAllowed;
    havoc beneficiary_s40;
    havoc __ret_0_state;
    havoc __ret_0_beneficiary;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    if (choice == 11)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s507);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_depositsOf := depositsOf_Escrow(this, msgsender_MSG, msgvalue_MSG, payee_s220);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call deposit_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, refundee_s74);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call withdraw_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s182);
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



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var beneficiary_s40: Ref;

    assume now >= 0;
    assume DType[this] == RefundEscrow;
    gas := gas - 53000;
    call RefundEscrow_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, beneficiary_s40);
    Balance[this] := 0;
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_RefundEscrow(this);
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
}



implementation CorralEntry_SafeMath()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

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
  var recipient_s507: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_primary;
    havoc recipient_s507;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_primary := primary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call transferPrimary_Secondary(this, msgsender_MSG, msgvalue_MSG, recipient_s507);
    }
}



implementation CorralEntry_Secondary()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume now >= 0;
    assume DType[this] == ConditionalEscrow
       || DType[this] == Escrow
       || DType[this] == RefundEscrow
       || DType[this] == Secondary;
    gas := gas - 53000;
    call Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Secondary(this);
    }
}


