// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:RevertDos.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// #LTLFairness: [](<>(started(DosAuction.bid, msg.value > this.currentBid)))
// #LTLProperty: [](<>(finished(DosAuction.bid)))

type Ref = int;

type ContractName = int;

var null: Ref;

var DosAuction: ContractName;

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

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} DosAuction_DosAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, currentFrontrunner_DosAuction, currentBid_DosAuction;



procedure {:inline 1} DosAuction_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction;



implementation DosAuction_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
        __tmp__currentFrontrunner_DosAuction := currentFrontrunner_DosAuction;
        __tmp__currentBid_DosAuction := currentBid_DosAuction;
        call DosAuction_DosAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call DosAuction_DosAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.currentFrontrunner=currentFrontrunner_DosAuction[this]"} currentFrontrunner_DosAuction: [Ref]Ref;

var {:access "this.currentBid=currentBid_DosAuction[this]"} currentBid_DosAuction: [Ref]int;

procedure {:public} {:inline 1} bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, gas, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction;



implementation bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
        __tmp__currentFrontrunner_DosAuction := currentFrontrunner_DosAuction;
        __tmp__currentBid_DosAuction := currentBid_DosAuction;
        call bid_DosAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call bid_DosAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, currentFrontrunner_DosAuction, currentBid_DosAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, revert, gas, currentFrontrunner_DosAuction, currentBid_DosAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, revert, gas, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction;



procedure CorralChoice_DosAuction(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction;



procedure main();
  modifies gas, Alloc, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__currentFrontrunner_DosAuction: [Ref]Ref;

var __tmp__currentBid_DosAuction: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} DosAuction_DosAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} DosAuction_DosAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, currentFrontrunner_DosAuction, currentBid_DosAuction;



procedure {:inline 1} DosAuction_DosAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} bid_DosAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, currentFrontrunner_DosAuction, currentBid_DosAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} bid_DosAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, revert, gas, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, revert, gas;



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



implementation DosAuction_DosAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__currentFrontrunner_DosAuction[this] := null;
    __tmp__currentBid_DosAuction[this] := 0;
}



implementation DosAuction_DosAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    currentFrontrunner_DosAuction[this] := null;
    currentBid_DosAuction[this] := 0;
}



implementation DosAuction_DosAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call DosAuction_DosAuction_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation DosAuction_DosAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call DosAuction_DosAuction_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation bid_DosAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: int;
  var __var_3: bool;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 228;
    assume msgvalue_MSG >= 0;
    assume __tmp__currentBid_DosAuction[this] >= 0;
    if (!(msgvalue_MSG > __tmp__currentBid_DosAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    __var_1 := null;
    if (__tmp__currentFrontrunner_DosAuction[this] != null)
    {
        gas := gas - 36229;
        __var_2 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_2 := __var_2 - gas;
        assume __tmp__currentBid_DosAuction[this] >= 0;
        call __var_3 := send__fail(this, __tmp__currentFrontrunner_DosAuction[this], __tmp__currentBid_DosAuction[this]);
        if (!__var_3)
        {
            revert := true;
            return;
        }

        gas := __var_2 + gas;
    }

    gas := gas - 20266;
    __tmp__currentFrontrunner_DosAuction[this] := msgsender_MSG;
    gas := gas - 20013;
    assume __tmp__currentBid_DosAuction[this] >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__currentBid_DosAuction[this] := msgvalue_MSG;
}



implementation bid_DosAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: int;
  var __var_3: bool;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 228;
    assume msgvalue_MSG >= 0;
    assume currentBid_DosAuction[this] >= 0;
    if (!(msgvalue_MSG > currentBid_DosAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    __var_1 := null;
    if (currentFrontrunner_DosAuction[this] != null)
    {
        gas := gas - 36229;
        __var_2 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_2 := __var_2 - gas;
        assume currentBid_DosAuction[this] >= 0;
        call __var_3 := send__success(this, currentFrontrunner_DosAuction[this], currentBid_DosAuction[this]);
        if (!__var_3)
        {
            revert := true;
            return;
        }

        gas := __var_2 + gas;
    }

    gas := gas - 20266;
    currentFrontrunner_DosAuction[this] := msgsender_MSG;
    gas := gas - 20013;
    assume currentBid_DosAuction[this] >= 0;
    assume msgvalue_MSG >= 0;
    currentBid_DosAuction[this] := msgvalue_MSG;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == DosAuction)
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
    if (DType[to] == DosAuction)
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
        havoc iterate;
        if (__tmp__DType[from] == DosAuction)
        {
            if (choice == 1)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call bid_DosAuction__fail(from, to, msgvalue_MSG);
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
        havoc iterate;
        if (DType[from] == DosAuction)
        {
            if (choice == 1)
            {
                gas := gas - 21000;
                if (gas >= 0)
                {
                    assume msgvalue_MSG >= 0;
                    call bid_DosAuction__success(from, to, msgvalue_MSG);
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
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__currentFrontrunner_DosAuction: [Ref]Ref;
  var __snap___tmp__currentBid_DosAuction: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__currentFrontrunner_DosAuction := __tmp__currentFrontrunner_DosAuction;
        __snap___tmp__currentBid_DosAuction := __tmp__currentBid_DosAuction;
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
        __tmp__currentFrontrunner_DosAuction := __snap___tmp__currentFrontrunner_DosAuction;
        __tmp__currentBid_DosAuction := __snap___tmp__currentBid_DosAuction;
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
        __tmp__currentFrontrunner_DosAuction := currentFrontrunner_DosAuction;
        __tmp__currentBid_DosAuction := currentBid_DosAuction;
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



implementation CorralChoice_DosAuction(this: Ref)
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
    assume DType[msgsender_MSG] != DosAuction;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        if (gas >= 0)
        {
            assume msgvalue_MSG >= 0;
            call bid_DosAuction(this, msgsender_MSG, msgvalue_MSG);
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
    assume DType[this] == DosAuction;
    gas := gas - 53000;
    call DosAuction_DosAuction__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_DosAuction(this);
    }
}


