// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:ReentrancyFixed.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// LTLFairness: <>(finished(SimpleDAO.donate, msg.value > 0)) 
// LTLProperty: [](!finished(SimpleDAO.withdraw, (Balance[msg.sender] - old(Balance[msg.sender])) > old(this.credit[msg.sender])))

// LTLVariables: user:Ref
// LTLProperty: [](finished(SimpleDAO.donate, msg.sender == user && msg.value > 0) ==> [](!finished(SimpleDAO.withdraw, msg.sender == user && (Balance[msg.sender] - old(Balance[msg.sender])) > old(this.credit[msg.sender]))))

// LTLVariables: user:Ref
// LTLFairness: <>(finished(SimpleDAO.donate, msg.sender == user && msg.value > 0)) 
// LTLProperty: [](!finished(SimpleDAO.withdraw, msg.sender == user && (Balance[msg.sender] - old(Balance[msg.sender])) > old(this.credit[msg.sender])))

// LTLVariables: user:Ref
// LTLFairness: <>(finished(SimpleDAO.donate) ; finished(SimpleDAO.donate, msg.sender == user))
// LTLProperty: [](!finished(SimpleDAO.withdraw, msg.sender == user && (Balance[msg.sender] - old(Balance[msg.sender])) > old(this.credit[msg.sender])))

// LTLFairness: <>(finished(SimpleDAO.donate) ; finished(SimpleDAO.donate))
// LTLProperty: [](!finished(SimpleDAO.withdraw, (Balance[msg.sender] - old(Balance[msg.sender])) > old(this.credit[msg.sender])))

// #LTLFairness: <>(finished(SimpleDAO.donate) ; finished(SimpleDAO.donate))
// #LTLProperty: [](willSucceed(SimpleDao.withdraw(amt)) ==> <>(finished(SimpleDAO.withdraw, (Balance[msg.sender] - old(Balance[msg.sender])) <= old(this.credit[msg.sender]))))

type Ref = int;

type ContractName = int;

var null: Ref;

var SimpleDAO: ContractName;

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

function nonlinearMod(x: int, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int_credit0: [Ref][Ref]int;

var sum_credit0: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} SimpleDAO_SimpleDAO_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, credit_SimpleDAO, M_Ref_int_credit0, sum_credit0, Alloc;



procedure {:inline 1} SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, Balance, credit_SimpleDAO, M_Ref_int_credit0, sum_credit0, Alloc;



implementation SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_credit0 := M_Ref_int_credit0;
        __tmp__sum_credit0 := sum_credit0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__credit_SimpleDAO := credit_SimpleDAO;
        call SimpleDAO_SimpleDAO__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SimpleDAO_SimpleDAO__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.credit[i0]=M_Ref_int_credit0[credit_SimpleDAO[this]][i0]"} {:sum "sum(this.credit)=sum_credit0[credit_SimpleDAO[this]]"} credit_SimpleDAO: [Ref]Ref;

procedure {:public} {:inline 1} donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s18: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, gas, Balance, sum_credit0, M_Ref_int_credit0;



implementation donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s18: Ref)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_credit0 := M_Ref_int_credit0;
        __tmp__sum_credit0 := sum_credit0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__credit_SimpleDAO := credit_SimpleDAO;
        call donate_SimpleDAO__fail(this, msgsender_MSG, msgvalue_MSG, to_s18);
        assume revert || gas < 0;
    }
    else
    {
        call donate_SimpleDAO__success(this, msgsender_MSG, msgvalue_MSG, to_s18);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s62: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, gas, sum_credit0, M_Ref_int_credit0, Balance;



implementation withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s62: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_credit0 := M_Ref_int_credit0;
        __tmp__sum_credit0 := sum_credit0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__credit_SimpleDAO := credit_SimpleDAO;
        call withdraw_SimpleDAO__fail(this, msgsender_MSG, msgvalue_MSG, amount_s62);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_SimpleDAO__success(this, msgsender_MSG, msgvalue_MSG, amount_s62);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s74: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, gas;



implementation queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s74: Ref)
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
        __tmp__M_Ref_int_credit0 := M_Ref_int_credit0;
        __tmp__sum_credit0 := sum_credit0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__credit_SimpleDAO := credit_SimpleDAO;
        call __ret_0_ := queryCredit_SimpleDAO__fail(this, msgsender_MSG, msgvalue_MSG, to_s74);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := queryCredit_SimpleDAO__success(this, msgsender_MSG, msgvalue_MSG, to_s74);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, sum_credit0, M_Ref_int_credit0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, sum_credit0, M_Ref_int_credit0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, revert, gas, Balance, sum_credit0, M_Ref_int_credit0;



procedure CorralChoice_SimpleDAO(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, Balance, sum_credit0, M_Ref_int_credit0;



procedure main();
  modifies gas, Alloc, Balance, credit_SimpleDAO, M_Ref_int_credit0, sum_credit0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_credit0: [Ref][Ref]int;

var __tmp__sum_credit0: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__credit_SimpleDAO: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} SimpleDAO_SimpleDAO_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__credit_SimpleDAO, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Alloc;



procedure {:inline 1} SimpleDAO_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, credit_SimpleDAO, M_Ref_int_credit0, sum_credit0, Alloc;



procedure {:inline 1} SimpleDAO_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__credit_SimpleDAO, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Alloc;



procedure {:inline 1} donate_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s18: Ref);
  modifies Balance, gas, sum_credit0, M_Ref_int_credit0;



procedure {:inline 1} donate_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s18: Ref);
  modifies __tmp__Balance, gas, __tmp__sum_credit0, __tmp__M_Ref_int_credit0;



procedure {:inline 1} withdraw_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s62: int);
  modifies gas, sum_credit0, M_Ref_int_credit0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, Balance;



procedure {:inline 1} withdraw_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s62: int);
  modifies gas, __tmp__sum_credit0, __tmp__M_Ref_int_credit0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO;



procedure {:inline 1} queryCredit_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s74: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} queryCredit_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s74: Ref)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__sum_credit0, __tmp__M_Ref_int_credit0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__sum_credit0, __tmp__M_Ref_int_credit0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_credit0, __tmp__sum_credit0, __tmp__Length, __tmp__now, __tmp__credit_SimpleDAO, revert, gas;



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



implementation SimpleDAO_SimpleDAO_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__credit_SimpleDAO[this] := __var_1;
    __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]] := zeroRefIntArr();
    __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]] := 0;
}



implementation SimpleDAO_SimpleDAO_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    credit_SimpleDAO[this] := __var_1;
    M_Ref_int_credit0[credit_SimpleDAO[this]] := zeroRefIntArr();
    sum_credit0[credit_SimpleDAO[this]] := 0;
}



implementation SimpleDAO_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SimpleDAO_SimpleDAO_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SimpleDAO_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SimpleDAO_SimpleDAO_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation donate_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s18: Ref)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 20328;
    assume __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][to_s18] >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]] := __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]]
       - __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][to_s18];
    __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][to_s18] := __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][to_s18] + msgvalue_MSG;
    __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]] := __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]]
       + __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][to_s18];
}



implementation donate_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s18: Ref)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 20328;
    assume M_Ref_int_credit0[credit_SimpleDAO[this]][to_s18] >= 0;
    assume msgvalue_MSG >= 0;
    sum_credit0[credit_SimpleDAO[this]] := sum_credit0[credit_SimpleDAO[this]]
       - M_Ref_int_credit0[credit_SimpleDAO[this]][to_s18];
    M_Ref_int_credit0[credit_SimpleDAO[this]][to_s18] := M_Ref_int_credit0[credit_SimpleDAO[this]][to_s18] + msgvalue_MSG;
    sum_credit0[credit_SimpleDAO[this]] := sum_credit0[credit_SimpleDAO[this]]
       + M_Ref_int_credit0[credit_SimpleDAO[this]][to_s18];
}



implementation withdraw_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s62: int)
{
  var success_s61: bool;
  var data_s61: int;
  var __var_2: bool;
  var __var_3: int;
  var __var_4: int;

    gas := gas - 3;
    havoc success_s61;
    gas := gas - 3;
    havoc data_s61;
    gas := gas - 304;
    assume __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][msgsender_MSG] >= 0;
    assume amount_s62 >= 0;
    if (__tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][msgsender_MSG]
       >= amount_s62)
    {
        gas := gas - 20328;
        assume __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][msgsender_MSG] >= 0;
        assume amount_s62 >= 0;
        __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]] := __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]]
           - __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][msgsender_MSG];
        __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][msgsender_MSG] := __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][msgsender_MSG]
           - amount_s62;
        __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]] := __tmp__sum_credit0[__tmp__credit_SimpleDAO[this]]
           + __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][msgsender_MSG];
        gas := gas - 35794;
        assume amount_s62 >= 0;
        call __var_2 := send__fail(this, msgsender_MSG, amount_s62);
        success_s61 := __var_2;
        data_s61 := __var_3;
        gas := gas - 23;
        if (!success_s61)
        {
            revert := true;
            return;
        }
    }
}



implementation withdraw_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s62: int)
{
  var success_s61: bool;
  var data_s61: int;
  var __var_2: bool;
  var __var_3: int;
  var __var_4: int;

    gas := gas - 3;
    havoc success_s61;
    gas := gas - 3;
    havoc data_s61;
    gas := gas - 304;
    assume M_Ref_int_credit0[credit_SimpleDAO[this]][msgsender_MSG] >= 0;
    assume amount_s62 >= 0;
    if (M_Ref_int_credit0[credit_SimpleDAO[this]][msgsender_MSG] >= amount_s62)
    {
        gas := gas - 20328;
        assume M_Ref_int_credit0[credit_SimpleDAO[this]][msgsender_MSG] >= 0;
        assume amount_s62 >= 0;
        sum_credit0[credit_SimpleDAO[this]] := sum_credit0[credit_SimpleDAO[this]]
           - M_Ref_int_credit0[credit_SimpleDAO[this]][msgsender_MSG];
        M_Ref_int_credit0[credit_SimpleDAO[this]][msgsender_MSG] := M_Ref_int_credit0[credit_SimpleDAO[this]][msgsender_MSG] - amount_s62;
        sum_credit0[credit_SimpleDAO[this]] := sum_credit0[credit_SimpleDAO[this]]
           + M_Ref_int_credit0[credit_SimpleDAO[this]][msgsender_MSG];
        gas := gas - 35794;
        assume amount_s62 >= 0;
        call __var_2 := send__success(this, msgsender_MSG, amount_s62);
        success_s61 := __var_2;
        data_s61 := __var_3;
        gas := gas - 23;
        if (!success_s61)
        {
            revert := true;
            return;
        }
    }
}



implementation queryCredit_SimpleDAO__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s74: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 304;
    assume __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][to_s74] >= 0;
    __ret_0_ := __tmp__M_Ref_int_credit0[__tmp__credit_SimpleDAO[this]][to_s74];
    return;
}



implementation queryCredit_SimpleDAO__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s74: Ref)
   returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 304;
    assume M_Ref_int_credit0[credit_SimpleDAO[this]][to_s74] >= 0;
    __ret_0_ := M_Ref_int_credit0[credit_SimpleDAO[this]][to_s74];
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == SimpleDAO)
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
    if (DType[to] == SimpleDAO)
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
  var iterate: bool;
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s18: Ref;
  var amount_s62: int;
  var to_s74: Ref;
  var __ret_0_queryCredit: int;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 0)
    {
        revert := true;
        return;
    }

    if (gas < 21000)
    {
        return;
    }

    while (iterate && gas >= 21000)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc to_s18;
        havoc amount_s62;
        havoc to_s74;
        havoc __ret_0_queryCredit;
        havoc iterate;
        if (__tmp__DType[from] == SimpleDAO)
        {
            if (choice == 3)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call donate_SimpleDAO__fail(from, to, msgvalue_MSG, to_s18);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call withdraw_SimpleDAO__fail(from, to, msgvalue_MSG, amount_s62);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 1)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call __ret_0_queryCredit := queryCredit_SimpleDAO__fail(from, to, msgvalue_MSG, to_s74);
                    if (revert)
                    {
                        return;
                    }
                }
            }
        }
    }
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
  var iterate: bool;
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s18: Ref;
  var amount_s62: int;
  var to_s74: Ref;
  var __ret_0_queryCredit: int;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 0)
    {
        revert := true;
        return;
    }

    if (gas < 21000)
    {
        return;
    }

    while (iterate && gas >= 21000)
    {
        havoc msgsender_MSG;
        havoc msgvalue_MSG;
        havoc choice;
        havoc to_s18;
        havoc amount_s62;
        havoc to_s74;
        havoc __ret_0_queryCredit;
        havoc iterate;
        if (DType[from] == SimpleDAO)
        {
            if (choice == 3)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call donate_SimpleDAO__success(from, to, msgvalue_MSG, to_s18);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 2)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call withdraw_SimpleDAO__success(from, to, msgvalue_MSG, amount_s62);
                    if (revert)
                    {
                        return;
                    }
                }
            }
            else if (choice == 1)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG == 0;
                    call __ret_0_queryCredit := queryCredit_SimpleDAO__success(from, to, msgvalue_MSG, to_s74);
                    if (revert)
                    {
                        return;
                    }
                }
            }
        }
    }
}



implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;
  var __snap___tmp__Balance: [Ref]int;
  var __snap___tmp__DType: [Ref]ContractName;
  var __snap___tmp__Alloc: [Ref]bool;
  var __snap___tmp__balance_ADDR: [Ref]int;
  var __snap___tmp__M_Ref_int_credit0: [Ref][Ref]int;
  var __snap___tmp__sum_credit0: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__credit_SimpleDAO: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_credit0 := __tmp__M_Ref_int_credit0;
        __snap___tmp__sum_credit0 := __tmp__sum_credit0;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__credit_SimpleDAO := __tmp__credit_SimpleDAO;
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
        __tmp__M_Ref_int_credit0 := __snap___tmp__M_Ref_int_credit0;
        __tmp__sum_credit0 := __snap___tmp__sum_credit0;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__credit_SimpleDAO := __snap___tmp__credit_SimpleDAO;
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
        __tmp__M_Ref_int_credit0 := M_Ref_int_credit0;
        __tmp__sum_credit0 := sum_credit0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__credit_SimpleDAO := credit_SimpleDAO;
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



implementation CorralChoice_SimpleDAO(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var to_s18: Ref;
  var amount_s62: int;
  var to_s74: Ref;
  var __ret_0_queryCredit: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc to_s18;
    havoc amount_s62;
    havoc to_s74;
    havoc __ret_0_queryCredit;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SimpleDAO;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG >= 0;
            call donate_SimpleDAO(this, msgsender_MSG, msgvalue_MSG, to_s18);
        }
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call withdraw_SimpleDAO(this, msgsender_MSG, msgvalue_MSG, amount_s62);
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG == 0;
            call __ret_0_queryCredit := queryCredit_SimpleDAO(this, msgsender_MSG, msgvalue_MSG, to_s74);
        }
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
    assume DType[this] == SimpleDAO;
    gas := gas - 53000;
    call SimpleDAO_SimpleDAO__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SimpleDAO(this);
    }
}


