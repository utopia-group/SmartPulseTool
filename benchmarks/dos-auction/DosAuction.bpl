// []((call(bid) {msg.value > currentBid}) ==> <>(success(bid)))
// #LTLProperty: []((AP(bidCalled1)) ==> <>(AP(bidSuccess1)))


///////////////////////////////////////////
// Instrumentation Vars
///////////////////////////////////////////
var bidCalled1 : bool;
var bidSuccess1 : bool;

type Ref = int;

type ContractName = int;

var null: Ref;

const unique DosAuction: ContractName;

function ConstantToRef(x: int) : Ref;

function {:bvbuiltin "mod"} modBpl(x: int, y: int) : int;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} DosAuction_DosAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies currentFrontrunner_DosAuction, currentBid_DosAuction;



procedure {:inline 1} DosAuction_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, currentFrontrunner_DosAuction, currentBid_DosAuction;



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



var currentFrontrunner_DosAuction: [Ref]Ref;

var currentBid_DosAuction: [Ref]int;

procedure {:public} {:inline 1} bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction, gas, bidCalled1, bidSuccess1;



implementation bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    if(msgvalue_MSG > currentBid_DosAuction[this]) {
        bidCalled1 := true;
        bidCalled1 := false;
    }

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__Length := Length;
        __tmp__currentFrontrunner_DosAuction := currentFrontrunner_DosAuction;
        __tmp__currentBid_DosAuction := currentBid_DosAuction;
        call bid_DosAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call bid_DosAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;

        bidSuccess1 := true;
        bidSuccess1 := false;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, currentFrontrunner_DosAuction, currentBid_DosAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, currentFrontrunner_DosAuction, currentBid_DosAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, revert, gas, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction;



const {:existential true} HoudiniB1_DosAuction: bool;

const {:existential true} HoudiniB2_DosAuction: bool;

procedure BoogieEntry_DosAuction();
  modifies gas, currentFrontrunner_DosAuction, currentBid_DosAuction, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, Balance;



procedure CorralChoice_DosAuction(this: Ref);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, Balance, currentFrontrunner_DosAuction, currentBid_DosAuction, bidCalled1, bidSuccess1;



procedure main();
  modifies gas, currentFrontrunner_DosAuction, currentBid_DosAuction, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, Balance, bidCalled1, bidSuccess1;

procedure ULTIMATE.start();
  modifies gas, currentFrontrunner_DosAuction, currentBid_DosAuction, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, Balance, bidCalled1, bidSuccess1;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__currentFrontrunner_DosAuction: [Ref]Ref;

var __tmp__currentBid_DosAuction: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} DosAuction_DosAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} DosAuction_DosAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies currentFrontrunner_DosAuction, currentBid_DosAuction;



procedure {:inline 1} DosAuction_DosAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction;



procedure {:inline 1} bid_DosAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, revert, currentFrontrunner_DosAuction, currentBid_DosAuction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, gas;



procedure {:inline 1} bid_DosAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, revert, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, gas;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__currentFrontrunner_DosAuction, __tmp__currentBid_DosAuction, revert, gas;



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
    __tmp__currentFrontrunner_DosAuction[this] := null;
    __tmp__currentBid_DosAuction[this] := 0;
}



implementation DosAuction_DosAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
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
  var __var_2: bool;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    if (!(msgvalue_MSG > __tmp__currentBid_DosAuction[this]))
    {
        revert := true;
        return;
    }

    __var_1 := null;
    if (__tmp__currentFrontrunner_DosAuction[this] != null)
    {
        call __var_2 := send__fail(this, __tmp__currentFrontrunner_DosAuction[this], __tmp__currentBid_DosAuction[this]);
        if (!__var_2)
        {
            revert := true;
            return;
        }
    }

    __tmp__currentFrontrunner_DosAuction[this] := msgsender_MSG;
    __tmp__currentBid_DosAuction[this] := msgvalue_MSG;
}



implementation bid_DosAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: bool;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    if (!(msgvalue_MSG > currentBid_DosAuction[this]))
    {
        revert := true;
        return;
    }

    __var_1 := null;
    if (currentFrontrunner_DosAuction[this] != null)
    {
        call __var_2 := send__success(this, currentFrontrunner_DosAuction[this], currentBid_DosAuction[this]);
        if (!__var_2)
        {
            revert := true;
            return;
        }
    }

    currentFrontrunner_DosAuction[this] := msgsender_MSG;
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
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 1)
    {
        revert := true;
    }
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 1)
    {
        revert := true;
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

    havoc msgsender_MSG;
    assume(msgsender_MSG != this && msgsender_MSG != null);
    havoc msgvalue_MSG;
    assume(msgvalue_MSG >= 0);
    havoc choice;
    if (choice == 1)
    {
        havoc gas;
        assume gas > 4000000 && gas <= 8000000;
        call bid_DosAuction(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume DType[this] == DosAuction;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    call DosAuction_DosAuction__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_DosAuction(this);
    }
}

implementation ULTIMATE.start() {
    bidCalled1 := false;
    bidSuccess1 := false;
    call main();
}
