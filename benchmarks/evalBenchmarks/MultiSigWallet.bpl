// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:MultiSigWallet.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// Spec: L1

// Spec: L2
// LTLVariables: id:int,user:Ref
// LTLFairness: <>(success(MultiSigWallet.confirmTransaction(txnId)) {id == txnId && msg.sender == user}) && [](<>(call(MultiSigWallet.revokeConfirmation(txnId)) {id == txnId && msg.sender == user}))
// LTLProperty: <>(success(MultiSigWallet.revokeConfirmation(txnId)) {txnId == id && msg.sender == user}) || <>(fail(MultiSigWallet.revokeConfirmation(txnId)) {txnId == id && msg.sender == user && MultiSigWallet.hasExecuted(txnId) == true})

// Spec: S1
// LTLProperty: [](!success(MultiSigWallet.confirmTransaction) {MultiSigWallet.isAOwner(msg.sender) == false})

// Spec: S2
// LTLProperty: [](!callSuccess(MultiSigWallet.confirmTransaction(txnId)) { MultiSigWallet.hasExecuted(txnId) == true } && !callSuccess(MultiSigWallet.executeTransaction(txnId)) { MultiSigWallet.hasExecuted(txnId) == true})

// Spec: S3
// LTLVariables: id:int,dst:Ref
// LTLProperty: []((callSuccess(MultiSigWallet.confirmTransaction(txnId)) {id == txnId && dst == MultiSigWallet.getDestination(id)} && (!success(MultiSigWallet.confirmTransaction) {}) U (success(send(from, to, amt)) {to == dst})) ==> <>(success(MultiSigWallet.confirmTransaction(txnId)) {txnId == id && MultiSigWallet.hasExecuted(id) == true}))


// Spec: S4
// LTLVariables: id:int
// LTLProperty: [](INV {MultiSigWallet.hasExecuted(id) == true} ==> [](!INV{MultiSigWallet.hasExecuted(id) == false}))

type Ref = int;

type ContractName = int;

var null: Ref;

var MultiSigWallet: ContractName;

var MultiSigWallet.Transaction: ContractName;

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

var M_int_Ref: [Ref][int]Ref;

var M_Ref_bool: [Ref][Ref]bool;

var M_int_int: [Ref][int]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var sum: [Ref]int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} MultiSigWallet.Transaction_ctor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination: Ref, 
    value: int, 
    data: int, 
    executed: bool);
  modifies destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, executed_MultiSigWallet.Transaction;



var MAX_OWNER_COUNT_MultiSigWallet: [Ref]int;

var transactions_MultiSigWallet: [Ref]Ref;

var confirmations_MultiSigWallet: [Ref]Ref;

var isOwner_MultiSigWallet: [Ref]Ref;

var owners_MultiSigWallet: [Ref]Ref;

var required_MultiSigWallet: [Ref]int;

var transactionCount_MultiSigWallet: [Ref]int;

var destination_MultiSigWallet.Transaction: [Ref]Ref;

var value_MultiSigWallet.Transaction: [Ref]int;

var data_MultiSigWallet.Transaction: [Ref]int;

var executed_MultiSigWallet.Transaction: [Ref]bool;

procedure {:inline 1} FallbackMethod_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas;



procedure {:inline 1} MultiSigWallet_MultiSigWallet_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int);
  modifies Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, revert, Alloc, gas;



procedure {:constructor} {:public} {:inline 1} MultiSigWallet_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, Alloc;



implementation MultiSigWallet_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call MultiSigWallet_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s294, _required_s294);
        assume revert || gas < 0;
    }
    else
    {
        call MultiSigWallet_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, _owners_s294, _required_s294);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s331: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_Ref_bool, M_int_Ref, Length;



implementation addOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s331: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call addOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, owner_s331);
        assume revert || gas < 0;
    }
    else
    {
        call addOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, owner_s331);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} removeOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s401: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet;



implementation removeOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s401: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call removeOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, owner_s401);
        assume revert || gas < 0;
    }
    else
    {
        call removeOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, owner_s401);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} replaceOwner_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s463: Ref, 
    newOwner_s463: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_int_Ref, M_Ref_bool;



implementation replaceOwner_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s463: Ref, 
    newOwner_s463: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call replaceOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, owner_s463, newOwner_s463);
        assume revert || gas < 0;
    }
    else
    {
        call replaceOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, owner_s463, newOwner_s463);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} changeRequirement_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s484: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, required_MultiSigWallet;



implementation changeRequirement_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s484: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call changeRequirement_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, _required_s484);
        assume revert || gas < 0;
    }
    else
    {
        call changeRequirement_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, _required_s484);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} submitTransaction_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s508: Ref, 
    value_s508: int, 
    data_s508: int)
   returns (transactionId_s508: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_int_Ref, transactionCount_MultiSigWallet, M_Ref_bool, Alloc, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, executed_MultiSigWallet.Transaction, Balance;



implementation submitTransaction_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s508: Ref, 
    value_s508: int, 
    data_s508: int)
   returns (transactionId_s508: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call transactionId_s508 := submitTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, destination_s508, value_s508, data_s508);
        assume revert || gas < 0;
    }
    else
    {
        call transactionId_s508 := submitTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, destination_s508, value_s508, data_s508);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} confirmTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s545: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_int_Ref, M_Ref_bool, Alloc, executed_MultiSigWallet.Transaction, Balance;



implementation confirmTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s545: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call confirmTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s545);
        assume revert || gas < 0;
    }
    else
    {
        call confirmTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s545);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} revokeConfirmation_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s578: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_int_Ref, M_Ref_bool, Alloc;



implementation revokeConfirmation_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s578: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call revokeConfirmation_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s578);
        assume revert || gas < 0;
    }
    else
    {
        call revokeConfirmation_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s578);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} executeTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s640: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, executed_MultiSigWallet.Transaction, M_int_Ref, M_Ref_bool, Alloc, Balance;



implementation executeTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s640: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call executeTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s640);
        assume revert || gas < 0;
    }
    else
    {
        call executeTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s640);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} external_call_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s674: Ref, 
    value_s674: int, 
    dataLength_s674: int, 
    data_s674: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, revert, Balance;



procedure {:public} {:inline 1} isConfirmed_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s717: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_int_Ref, M_Ref_bool, Alloc;



implementation isConfirmed_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s717: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call __ret_0_ := isConfirmed_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s717);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isConfirmed_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s717);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} addTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s755: Ref, 
    value_s755: int, 
    data_s755: int)
   returns (transactionId_s755: int);
  modifies gas, M_int_Ref, transactionCount_MultiSigWallet, revert, Alloc, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, executed_MultiSigWallet.Transaction;



procedure {:public} {:inline 1} getConfirmationCount_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s787: int)
   returns (count_s787: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, M_int_Ref, M_Ref_bool, Alloc;



implementation getConfirmationCount_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s787: int)
   returns (count_s787: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call count_s787 := getConfirmationCount_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s787);
        assume revert || gas < 0;
    }
    else
    {
        call count_s787 := getConfirmationCount_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s787);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getTransactionCount_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s827: bool, 
    executed_s827: bool)
   returns (count_s827: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas;



implementation getTransactionCount_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s827: bool, 
    executed_s827: bool)
   returns (count_s827: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call count_s827 := getTransactionCount_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, pending_s827, executed_s827);
        assume revert || gas < 0;
    }
    else
    {
        call count_s827 := getTransactionCount_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, pending_s827, executed_s827);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getOwners_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas;



implementation getOwners_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call __ret_0_ := getOwners_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getOwners_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getConfirmations_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s923: int)
   returns (_confirmations_s923: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, Length, M_int_Ref, M_Ref_bool, Alloc;



implementation getConfirmations_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s923: int)
   returns (_confirmations_s923: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call _confirmations_s923 := getConfirmations_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s923);
        assume revert || gas < 0;
    }
    else
    {
        call _confirmations_s923 := getConfirmations_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s923);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getTransactionIds_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1023: int, 
    to_s1023: int, 
    pending_s1023: bool, 
    executed_s1023: bool)
   returns (_transactionIds_s1023: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas, Length, sum, M_int_int, Alloc;



implementation getTransactionIds_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1023: int, 
    to_s1023: int, 
    pending_s1023: bool, 
    executed_s1023: bool)
   returns (_transactionIds_s1023: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call _transactionIds_s1023 := getTransactionIds_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, from_s1023, to_s1023, pending_s1023, executed_s1023);
        assume revert || gas < 0;
    }
    else
    {
        call _transactionIds_s1023 := getTransactionIds_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, from_s1023, to_s1023, pending_s1023, executed_s1023);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} hasExecuted_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1036: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas;



implementation hasExecuted_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1036: int)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call __ret_0_ := hasExecuted_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s1036);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := hasExecuted_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s1036);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getDestination_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1049: int)
   returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas;



implementation getDestination_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1049: int)
   returns (__ret_0_: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call __ret_0_ := getDestination_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s1049);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getDestination_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s1049);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isAOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1061: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, gas;



implementation isAOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1061: Ref)
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
        call __ret_0_ := isAOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, addr_s1061);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isAOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, addr_s1061);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, revert, gas, Balance;



procedure {:inline 1} onlyWallet_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} ownerDoesNotExist_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s102: Ref);
  modifies gas, revert;



procedure {:inline 1} ownerExists_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s114: Ref);
  modifies gas, revert;



procedure {:inline 1} transactionExists_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s131: int);
  modifies gas, revert;



procedure {:inline 1} confirmed_pre__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s147: int, 
    owner_s147: Ref);
  modifies gas, M_int_Ref, M_Ref_bool, revert, Alloc;



procedure {:inline 1} notConfirmed_pre__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s164: int, 
    owner_s164: Ref);
  modifies gas, M_int_Ref, M_Ref_bool, revert, Alloc;



procedure {:inline 1} notExecuted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s178: int);
  modifies gas, revert;



procedure {:inline 1} notNull_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s192: Ref);
  modifies gas, revert;



procedure {:inline 1} validRequirement_pre__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    ownerCount_s218: int, 
    _required_s218: int);
  modifies gas, revert;



procedure CorralChoice_MultiSigWallet(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet, executed_MultiSigWallet.Transaction, sum, M_int_int, transactionCount_MultiSigWallet, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, Balance;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, now, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet, executed_MultiSigWallet.Transaction, sum, M_int_int, Balance, MAX_OWNER_COUNT_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, confirmations_MultiSigWallet, isOwner_MultiSigWallet, owners_MultiSigWallet, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_int_Ref: [Ref][int]Ref;

var __tmp__M_Ref_bool: [Ref][Ref]bool;

var __tmp__M_int_int: [Ref][int]int;

var __tmp__Length: [Ref]int;

var __tmp__sum: [Ref]int;

var __tmp__now: int;

var __tmp__MAX_OWNER_COUNT_MultiSigWallet: [Ref]int;

var __tmp__transactions_MultiSigWallet: [Ref]Ref;

var __tmp__confirmations_MultiSigWallet: [Ref]Ref;

var __tmp__isOwner_MultiSigWallet: [Ref]Ref;

var __tmp__owners_MultiSigWallet: [Ref]Ref;

var __tmp__required_MultiSigWallet: [Ref]int;

var __tmp__transactionCount_MultiSigWallet: [Ref]int;

var __tmp__destination_MultiSigWallet.Transaction: [Ref]Ref;

var __tmp__value_MultiSigWallet.Transaction: [Ref]int;

var __tmp__data_MultiSigWallet.Transaction: [Ref]int;

var __tmp__executed_MultiSigWallet.Transaction: [Ref]bool;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} MultiSigWallet.Transaction_ctor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination: Ref, 
    value: int, 
    data: int, 
    executed: bool);
  modifies __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction;



procedure {:inline 1} FallbackMethod_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas;



procedure {:inline 1} MultiSigWallet_MultiSigWallet_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int);
  modifies __tmp__Balance, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__M_int_Ref, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__M_Ref_bool, __tmp__owners_MultiSigWallet, revert, __tmp__Alloc, gas;



procedure {:constructor} {:inline 1} MultiSigWallet_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int);
  modifies Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, revert, Alloc, gas;



procedure {:constructor} {:inline 1} MultiSigWallet_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int);
  modifies __tmp__Balance, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__M_int_Ref, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__M_Ref_bool, __tmp__owners_MultiSigWallet, revert, __tmp__Alloc, gas;



procedure {:inline 1} addOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s331: Ref);
  modifies gas, M_Ref_bool, M_int_Ref, Length, revert;



procedure {:inline 1} addOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s331: Ref);
  modifies gas, __tmp__M_Ref_bool, __tmp__M_int_Ref, __tmp__Length, revert;



procedure {:inline 1} removeOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s401: Ref);
  modifies gas, M_Ref_bool, M_int_Ref, Length, revert, required_MultiSigWallet;



procedure {:inline 1} removeOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s401: Ref);
  modifies gas, __tmp__M_Ref_bool, __tmp__M_int_Ref, __tmp__Length, revert, __tmp__required_MultiSigWallet;



procedure {:inline 1} replaceOwner_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s463: Ref, 
    newOwner_s463: Ref);
  modifies gas, M_int_Ref, M_Ref_bool, revert;



procedure {:inline 1} replaceOwner_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s463: Ref, 
    newOwner_s463: Ref);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert;



procedure {:inline 1} changeRequirement_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s484: int);
  modifies gas, required_MultiSigWallet, revert;



procedure {:inline 1} changeRequirement_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s484: int);
  modifies gas, __tmp__required_MultiSigWallet, revert;



procedure {:inline 1} submitTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s508: Ref, 
    value_s508: int, 
    data_s508: int)
   returns (transactionId_s508: int);
  modifies gas, M_int_Ref, transactionCount_MultiSigWallet, M_Ref_bool, revert, Alloc, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, executed_MultiSigWallet.Transaction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, Balance;



procedure {:inline 1} submitTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s508: Ref, 
    value_s508: int, 
    data_s508: int)
   returns (transactionId_s508: int);
  modifies gas, __tmp__M_int_Ref, __tmp__transactionCount_MultiSigWallet, __tmp__M_Ref_bool, revert, __tmp__Alloc, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__Balance, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet;



procedure {:inline 1} confirmTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s545: int);
  modifies gas, M_int_Ref, M_Ref_bool, revert, Alloc, executed_MultiSigWallet.Transaction, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, Balance;



procedure {:inline 1} confirmTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s545: int);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert, __tmp__Alloc, __tmp__executed_MultiSigWallet.Transaction, __tmp__Balance, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction;



procedure {:inline 1} revokeConfirmation_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s578: int);
  modifies gas, M_int_Ref, M_Ref_bool, revert, Alloc;



procedure {:inline 1} revokeConfirmation_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s578: int);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert, __tmp__Alloc;



procedure {:inline 1} executeTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s640: int);
  modifies gas, executed_MultiSigWallet.Transaction, revert, M_int_Ref, M_Ref_bool, Alloc, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, Balance;



procedure {:inline 1} executeTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s640: int);
  modifies gas, __tmp__executed_MultiSigWallet.Transaction, revert, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc, __tmp__Balance, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction;



procedure {:inline 1} external_call_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s674: Ref, 
    value_s674: int, 
    dataLength_s674: int, 
    data_s674: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, revert;



procedure {:inline 1} isConfirmed_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s717: int)
   returns (__ret_0_: bool);
  modifies gas, M_int_Ref, M_Ref_bool, Alloc;



procedure {:inline 1} isConfirmed_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s717: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc;



procedure {:inline 1} addTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s755: Ref, 
    value_s755: int, 
    data_s755: int)
   returns (transactionId_s755: int);
  modifies gas, __tmp__M_int_Ref, __tmp__transactionCount_MultiSigWallet, revert, __tmp__Alloc, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction;



procedure {:inline 1} getConfirmationCount_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s787: int)
   returns (count_s787: int);
  modifies gas, M_int_Ref, M_Ref_bool, Alloc;



procedure {:inline 1} getConfirmationCount_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s787: int)
   returns (count_s787: int);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc;



procedure {:inline 1} getTransactionCount_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s827: bool, 
    executed_s827: bool)
   returns (count_s827: int);
  modifies gas;



procedure {:inline 1} getTransactionCount_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s827: bool, 
    executed_s827: bool)
   returns (count_s827: int);
  modifies gas;



procedure {:inline 1} getOwners_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} getOwners_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} getConfirmations_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s923: int)
   returns (_confirmations_s923: Ref);
  modifies gas, Length, M_int_Ref, M_Ref_bool, Alloc;



procedure {:inline 1} getConfirmations_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s923: int)
   returns (_confirmations_s923: Ref);
  modifies gas, __tmp__Length, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc;



procedure {:inline 1} getTransactionIds_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1023: int, 
    to_s1023: int, 
    pending_s1023: bool, 
    executed_s1023: bool)
   returns (_transactionIds_s1023: Ref);
  modifies gas, Length, sum, M_int_int, Alloc;



procedure {:inline 1} getTransactionIds_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1023: int, 
    to_s1023: int, 
    pending_s1023: bool, 
    executed_s1023: bool)
   returns (_transactionIds_s1023: Ref);
  modifies gas, __tmp__Length, __tmp__sum, __tmp__M_int_int, __tmp__Alloc;



procedure {:inline 1} hasExecuted_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1036: int)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasExecuted_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1036: int)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} getDestination_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1049: int)
   returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} getDestination_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1049: int)
   returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} isAOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1061: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} isAOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1061: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, revert, gas;



procedure {:inline 1} onlyWallet_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} ownerDoesNotExist_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s102: Ref);
  modifies gas, revert;



procedure {:inline 1} ownerExists_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s114: Ref);
  modifies gas, revert;



procedure {:inline 1} transactionExists_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s131: int);
  modifies gas, revert;



procedure {:inline 1} confirmed_pre__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s147: int, 
    owner_s147: Ref);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert, __tmp__Alloc;



procedure {:inline 1} notConfirmed_pre__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s164: int, 
    owner_s164: Ref);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert, __tmp__Alloc;



procedure {:inline 1} notExecuted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s178: int);
  modifies gas, revert;



procedure {:inline 1} notNull_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s192: Ref);
  modifies gas, revert;



procedure {:inline 1} validRequirement_pre__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    ownerCount_s218: int, 
    _required_s218: int);
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



implementation MultiSigWallet.Transaction_ctor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination: Ref, 
    value: int, 
    data: int, 
    executed: bool)
{
    __tmp__destination_MultiSigWallet.Transaction[this] := destination;
    __tmp__value_MultiSigWallet.Transaction[this] := value;
    __tmp__data_MultiSigWallet.Transaction[this] := data;
    __tmp__executed_MultiSigWallet.Transaction[this] := executed;
}



implementation MultiSigWallet.Transaction_ctor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination: Ref, 
    value: int, 
    data: int, 
    executed: bool)
{
    destination_MultiSigWallet.Transaction[this] := destination;
    value_MultiSigWallet.Transaction[this] := value;
    data_MultiSigWallet.Transaction[this] := data;
    executed_MultiSigWallet.Transaction[this] := executed;
}



implementation FallbackMethod_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    assume msgvalue_MSG >= 0;
    if (msgvalue_MSG > 0)
    {
    }
}



implementation FallbackMethod_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    assume msgvalue_MSG >= 0;
    if (msgvalue_MSG > 0)
    {
        assert {:EventEmitted "Deposit_MultiSigWallet"} true;
    }
}



implementation MultiSigWallet_MultiSigWallet_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int)
{
  var i_s284: int;
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: Ref;
  var __var_10: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__MAX_OWNER_COUNT_MultiSigWallet[this] := 50;
    __tmp__required_MultiSigWallet[this] := 0;
    __tmp__transactionCount_MultiSigWallet[this] := 0;
    call __var_7 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__transactions_MultiSigWallet[this] := __var_7;
    __tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]] := zeroIntRefArr();
    call __var_8 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__confirmations_MultiSigWallet[this] := __var_8;
    __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]] := zeroIntRefArr();
    call __var_9 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__isOwner_MultiSigWallet[this] := __var_9;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]] := zeroRefBoolArr();
    call __var_10 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__owners_MultiSigWallet[this] := __var_10;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] == 0;
    call validRequirement_pre__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[_owners_s294], _required_s294);
    if (revert)
    {
        return;
    }

    assume i_s284 >= 0;
    assume __tmp__Length[_owners_s294] >= 0;
    assume i_s284 >= 0;
    i_s284 := 0;
    while (i_s284 < __tmp__Length[_owners_s294])
    {
        assume i_s284 >= 0;
        assume i_s284 >= 0;
        __var_6 := null;
        if (!(!__tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][__tmp__M_int_Ref[_owners_s294][i_s284]]
           && __tmp__M_int_Ref[_owners_s294][i_s284] != null))
        {
            revert := true;
            return;
        }

        assume i_s284 >= 0;
        __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][__tmp__M_int_Ref[_owners_s294][i_s284]] := true;
        assume i_s284 >= 0;
        i_s284 := i_s284 + 1;
        assume i_s284 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    __tmp__owners_MultiSigWallet[this] := _owners_s294;
    assume __tmp__required_MultiSigWallet[this] >= 0;
    assume _required_s294 >= 0;
    __tmp__required_MultiSigWallet[this] := _required_s294;
}



implementation MultiSigWallet_MultiSigWallet_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int)
{
  var i_s284: int;
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: Ref;
  var __var_10: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    MAX_OWNER_COUNT_MultiSigWallet[this] := 50;
    required_MultiSigWallet[this] := 0;
    transactionCount_MultiSigWallet[this] := 0;
    call __var_7 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    transactions_MultiSigWallet[this] := __var_7;
    M_int_Ref[transactions_MultiSigWallet[this]] := zeroIntRefArr();
    call __var_8 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    confirmations_MultiSigWallet[this] := __var_8;
    M_int_Ref[confirmations_MultiSigWallet[this]] := zeroIntRefArr();
    call __var_9 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    isOwner_MultiSigWallet[this] := __var_9;
    M_Ref_bool[isOwner_MultiSigWallet[this]] := zeroRefBoolArr();
    call __var_10 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    owners_MultiSigWallet[this] := __var_10;
    assume Length[owners_MultiSigWallet[this]] == 0;
    call validRequirement_pre__success(this, msgsender_MSG, msgvalue_MSG, Length[_owners_s294], _required_s294);
    if (revert)
    {
        return;
    }

    assume i_s284 >= 0;
    assume Length[_owners_s294] >= 0;
    assume i_s284 >= 0;
    i_s284 := 0;
    while (i_s284 < Length[_owners_s294])
    {
        assume i_s284 >= 0;
        assume i_s284 >= 0;
        __var_6 := null;
        if (!(!M_Ref_bool[isOwner_MultiSigWallet[this]][M_int_Ref[_owners_s294][i_s284]]
           && M_int_Ref[_owners_s294][i_s284] != null))
        {
            revert := true;
            return;
        }

        assume i_s284 >= 0;
        M_Ref_bool[isOwner_MultiSigWallet[this]][M_int_Ref[_owners_s294][i_s284]] := true;
        assume i_s284 >= 0;
        i_s284 := i_s284 + 1;
        assume i_s284 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    owners_MultiSigWallet[this] := _owners_s294;
    assume required_MultiSigWallet[this] >= 0;
    assume _required_s294 >= 0;
    required_MultiSigWallet[this] := _required_s294;
}



implementation MultiSigWallet_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int)
{
  var i_s284: int;
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: Ref;
  var __var_10: Ref;

    call MultiSigWallet_MultiSigWallet_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s294, _required_s294);
    if (revert)
    {
        return;
    }
}



implementation MultiSigWallet_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s294: Ref, 
    _required_s294: int)
{
  var i_s284: int;
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: Ref;
  var __var_10: Ref;

    call MultiSigWallet_MultiSigWallet_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _owners_s294, _required_s294);
    if (revert)
    {
        return;
    }
}



implementation addOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s331: Ref)
{
  var __var_11: int;

    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s331);
    if (revert)
    {
        return;
    }

    call notNull_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s331);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[__tmp__owners_MultiSigWallet[this]] + 1, __tmp__required_MultiSigWallet[this]);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s331] := true;
    gas := gas - 20362;
    __var_11 := __tmp__Length[__tmp__owners_MultiSigWallet[this]];
    __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][__var_11] := owner_s331;
    __tmp__Length[__tmp__owners_MultiSigWallet[this]] := __var_11 + 1;
}



implementation addOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s331: Ref)
{
  var __var_11: int;

    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s331);
    if (revert)
    {
        return;
    }

    call notNull_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s331);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__success(this, msgsender_MSG, msgvalue_MSG, Length[owners_MultiSigWallet[this]] + 1, required_MultiSigWallet[this]);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s331] := true;
    gas := gas - 20362;
    __var_11 := Length[owners_MultiSigWallet[this]];
    M_int_Ref[owners_MultiSigWallet[this]][__var_11] := owner_s331;
    Length[owners_MultiSigWallet[this]] := __var_11 + 1;
    assert {:EventEmitted "OwnerAddition_MultiSigWallet"} true;
}



implementation removeOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s401: Ref)
{
  var i_s379: int;

    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s401);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s401] := false;
    gas := gas - 223;
    assume i_s379 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1 >= 0;
    gas := gas - 11;
    assume i_s379 >= 0;
    i_s379 := 0;
    while (i_s379 < __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1)
    {
        gas := gas - 540;
        assume i_s379 >= 0;
        if (__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s379] == owner_s401)
        {
            gas := gas - 21283;
            assume i_s379 >= 0;
            assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
            assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1 >= 0;
            __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s379] := __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][__tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1];
            break;
        }

        gas := gas - 19;
        assume i_s379 >= 0;
        i_s379 := i_s379 + 1;
        assume i_s379 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 243;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    __tmp__Length[__tmp__owners_MultiSigWallet[this]] := __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1;
    gas := gas - 417;
    assume __tmp__required_MultiSigWallet[this] >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    if (__tmp__required_MultiSigWallet[this]
       > __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 226;
        assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
        call changeRequirement_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[__tmp__owners_MultiSigWallet[this]]);
        if (revert)
        {
            return;
        }
    }
}



implementation removeOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s401: Ref)
{
  var i_s379: int;

    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s401);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s401] := false;
    gas := gas - 223;
    assume i_s379 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    assume Length[owners_MultiSigWallet[this]] - 1 >= 0;
    gas := gas - 11;
    assume i_s379 >= 0;
    i_s379 := 0;
    while (i_s379 < Length[owners_MultiSigWallet[this]] - 1)
    {
        gas := gas - 540;
        assume i_s379 >= 0;
        if (M_int_Ref[owners_MultiSigWallet[this]][i_s379] == owner_s401)
        {
            gas := gas - 21283;
            assume i_s379 >= 0;
            assume Length[owners_MultiSigWallet[this]] >= 0;
            assume Length[owners_MultiSigWallet[this]] - 1 >= 0;
            M_int_Ref[owners_MultiSigWallet[this]][i_s379] := M_int_Ref[owners_MultiSigWallet[this]][Length[owners_MultiSigWallet[this]] - 1];
            break;
        }

        gas := gas - 19;
        assume i_s379 >= 0;
        i_s379 := i_s379 + 1;
        assume i_s379 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 243;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    Length[owners_MultiSigWallet[this]] := Length[owners_MultiSigWallet[this]] - 1;
    gas := gas - 417;
    assume required_MultiSigWallet[this] >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    if (required_MultiSigWallet[this] > Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 226;
        assume Length[owners_MultiSigWallet[this]] >= 0;
        call changeRequirement_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, Length[owners_MultiSigWallet[this]]);
        if (revert)
        {
            return;
        }
    }

    assert {:EventEmitted "OwnerRemoval_MultiSigWallet"} true;
}



implementation replaceOwner_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s463: Ref, 
    newOwner_s463: Ref)
{
  var i_s441: int;

    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s463);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s463);
    if (revert)
    {
        return;
    }

    gas := gas - 217;
    assume i_s441 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 11;
    assume i_s441 >= 0;
    i_s441 := 0;
    while (i_s441 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 540;
        assume i_s441 >= 0;
        if (__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s441] == owner_s463)
        {
            gas := gas - 20550;
            assume i_s441 >= 0;
            __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s441] := newOwner_s463;
            break;
        }

        gas := gas - 19;
        assume i_s441 >= 0;
        i_s441 := i_s441 + 1;
        assume i_s441 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s463] := false;
    gas := gas - 20357;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][newOwner_s463] := true;
}



implementation replaceOwner_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s463: Ref, 
    newOwner_s463: Ref)
{
  var i_s441: int;

    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s463);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s463);
    if (revert)
    {
        return;
    }

    gas := gas - 217;
    assume i_s441 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 11;
    assume i_s441 >= 0;
    i_s441 := 0;
    while (i_s441 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 540;
        assume i_s441 >= 0;
        if (M_int_Ref[owners_MultiSigWallet[this]][i_s441] == owner_s463)
        {
            gas := gas - 20550;
            assume i_s441 >= 0;
            M_int_Ref[owners_MultiSigWallet[this]][i_s441] := newOwner_s463;
            break;
        }

        gas := gas - 19;
        assume i_s441 >= 0;
        i_s441 := i_s441 + 1;
        assume i_s441 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 20363;
    M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s463] := false;
    gas := gas - 20357;
    M_Ref_bool[isOwner_MultiSigWallet[this]][newOwner_s463] := true;
    assert {:EventEmitted "OwnerRemoval_MultiSigWallet"} true;
    assert {:EventEmitted "OwnerAddition_MultiSigWallet"} true;
}



implementation changeRequirement_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s484: int)
{
    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[__tmp__owners_MultiSigWallet[this]], _required_s484);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume __tmp__required_MultiSigWallet[this] >= 0;
    assume _required_s484 >= 0;
    __tmp__required_MultiSigWallet[this] := _required_s484;
}



implementation changeRequirement_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s484: int)
{
    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__success(this, msgsender_MSG, msgvalue_MSG, Length[owners_MultiSigWallet[this]], _required_s484);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume required_MultiSigWallet[this] >= 0;
    assume _required_s484 >= 0;
    required_MultiSigWallet[this] := _required_s484;
    assert {:EventEmitted "RequirementChange_MultiSigWallet"} true;
}



implementation submitTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s508: Ref, 
    value_s508: int, 
    data_s508: int)
   returns (transactionId_s508: int)
{
    gas := gas - 3;
    gas := gas - 18;
    assume transactionId_s508 >= 0;
    assume value_s508 >= 0;
    call transactionId_s508 := addTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, destination_s508, value_s508, data_s508);
    if (revert)
    {
        return;
    }

    transactionId_s508 := transactionId_s508;
    gas := gas - 18;
    assume transactionId_s508 >= 0;
    call confirmTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s508);
    if (revert)
    {
        return;
    }
}



implementation submitTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s508: Ref, 
    value_s508: int, 
    data_s508: int)
   returns (transactionId_s508: int)
{
    gas := gas - 3;
    gas := gas - 18;
    assume transactionId_s508 >= 0;
    assume value_s508 >= 0;
    call transactionId_s508 := addTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, destination_s508, value_s508, data_s508);
    if (revert)
    {
        return;
    }

    transactionId_s508 := transactionId_s508;
    gas := gas - 18;
    assume transactionId_s508 >= 0;
    call confirmTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s508);
    if (revert)
    {
        return;
    }
}



implementation confirmTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s545: int)
{
  var __var_12: Ref;

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call transactionExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s545);
    if (revert)
    {
        return;
    }

    call notConfirmed_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s545, msgsender_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20440;
    assume transactionId_s545 >= 0;
    if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s545]
       == null)
    {
        call __var_12 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s545] := __var_12;
        __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s545]] := zeroRefBoolArr();
    }

    __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s545]][msgsender_MSG] := true;
    gas := gas - 18;
    assume transactionId_s545 >= 0;
    call executeTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s545);
    if (revert)
    {
        return;
    }
}



implementation confirmTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s545: int)
{
  var __var_12: Ref;

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call transactionExists_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s545);
    if (revert)
    {
        return;
    }

    call notConfirmed_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s545, msgsender_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20440;
    assume transactionId_s545 >= 0;
    if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s545] == null)
    {
        call __var_12 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s545] := __var_12;
        M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s545]] := zeroRefBoolArr();
    }

    M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s545]][msgsender_MSG] := true;
    assert {:EventEmitted "Confirmation_MultiSigWallet"} true;
    gas := gas - 18;
    assume transactionId_s545 >= 0;
    call executeTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s545);
    if (revert)
    {
        return;
    }
}



implementation revokeConfirmation_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s578: int)
{
  var __var_13: Ref;

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call confirmed_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s578, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call notExecuted_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s578);
    if (revert)
    {
        return;
    }

    gas := gas - 20440;
    assume transactionId_s578 >= 0;
    if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s578]
       == null)
    {
        call __var_13 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s578] := __var_13;
        __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s578]] := zeroRefBoolArr();
    }

    __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s578]][msgsender_MSG] := false;
}



implementation revokeConfirmation_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s578: int)
{
  var __var_13: Ref;

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call confirmed_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s578, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call notExecuted_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s578);
    if (revert)
    {
        return;
    }

    gas := gas - 20440;
    assume transactionId_s578 >= 0;
    if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s578] == null)
    {
        call __var_13 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s578] := __var_13;
        M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s578]] := zeroRefBoolArr();
    }

    M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s578]][msgsender_MSG] := false;
    assert {:EventEmitted "Revocation_MultiSigWallet"} true;
}



implementation executeTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s640: int)
{
  var __var_14: bool;
  var txn_s637: Ref;
  var __var_15: bool;

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call confirmed_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s640, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call notExecuted_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s640);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume transactionId_s640 >= 0;
    call __var_14 := isConfirmed_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s640);
    if (revert)
    {
        return;
    }

    if (__var_14)
    {
        gas := gas - 95;
        assume transactionId_s640 >= 0;
        txn_s637 := __tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s640];
        gas := gas - 20273;
        __tmp__executed_MultiSigWallet.Transaction[txn_s637] := true;
        gas := gas - 2233;
        assume __tmp__value_MultiSigWallet.Transaction[txn_s637] >= 0;
        assume __tmp__Length[__tmp__data_MultiSigWallet.Transaction[txn_s637]] >= 0;
        call __var_15 := external_call_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__destination_MultiSigWallet.Transaction[txn_s637], __tmp__value_MultiSigWallet.Transaction[txn_s637], __tmp__Length[__tmp__data_MultiSigWallet.Transaction[txn_s637]], __tmp__data_MultiSigWallet.Transaction[txn_s637]);
        if (revert)
        {
            return;
        }

        if (__var_15)
        {
        }
        else
        {
            gas := gas - 20273;
            __tmp__executed_MultiSigWallet.Transaction[txn_s637] := false;
        }
    }
}



implementation executeTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s640: int)
{
  var __var_14: bool;
  var txn_s637: Ref;
  var __var_15: bool;

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call confirmed_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s640, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call notExecuted_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s640);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume transactionId_s640 >= 0;
    call __var_14 := isConfirmed_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s640);
    if (revert)
    {
        return;
    }

    if (__var_14)
    {
        gas := gas - 95;
        assume transactionId_s640 >= 0;
        txn_s637 := M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s640];
        gas := gas - 20273;
        executed_MultiSigWallet.Transaction[txn_s637] := true;
        gas := gas - 2233;
        assume value_MultiSigWallet.Transaction[txn_s637] >= 0;
        assume Length[data_MultiSigWallet.Transaction[txn_s637]] >= 0;
        call __var_15 := external_call_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, destination_MultiSigWallet.Transaction[txn_s637], value_MultiSigWallet.Transaction[txn_s637], Length[data_MultiSigWallet.Transaction[txn_s637]], data_MultiSigWallet.Transaction[txn_s637]);
        if (revert)
        {
            return;
        }

        if (__var_15)
        {
            assert {:EventEmitted "Execution_MultiSigWallet"} true;
        }
        else
        {
            assert {:EventEmitted "ExecutionFailure_MultiSigWallet"} true;
            gas := gas - 20273;
            executed_MultiSigWallet.Transaction[txn_s637] := false;
        }
    }
}



implementation external_call_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s674: Ref, 
    value_s674: int, 
    dataLength_s674: int, 
    data_s674: int)
   returns (__ret_0_: bool)
{
  var result_s673: bool;
  var _data_s673: int;
  var __var_16: bool;
  var __var_17: int;
  var __var_18: int;

    gas := gas - 3;
    gas := gas - 3;
    havoc result_s673;
    gas := gas - 3;
    havoc _data_s673;
    gas := gas - 35801;
    assume value_s674 >= 0;
    call __var_16 := send__fail(this, destination_s674, value_s674);
    result_s673 := __var_16;
    _data_s673 := __var_17;
    gas := gas - 12;
    __ret_0_ := result_s673;
    return;
}



implementation external_call_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s674: Ref, 
    value_s674: int, 
    dataLength_s674: int, 
    data_s674: int)
   returns (__ret_0_: bool)
{
  var result_s673: bool;
  var _data_s673: int;
  var __var_16: bool;
  var __var_17: int;
  var __var_18: int;

    gas := gas - 3;
    gas := gas - 3;
    havoc result_s673;
    gas := gas - 3;
    havoc _data_s673;
    gas := gas - 35801;
    assume value_s674 >= 0;
    call __var_16 := send__success(this, destination_s674, value_s674);
    result_s673 := __var_16;
    _data_s673 := __var_17;
    gas := gas - 12;
    __ret_0_ := result_s673;
    return;
}



implementation isConfirmed_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s717: int)
   returns (__ret_0_: bool)
{
  var count_s716: int;
  var i_s715: int;
  var __var_19: Ref;

    gas := gas - 3;
    gas := gas - 11;
    assume count_s716 >= 0;
    count_s716 := 0;
    gas := gas - 217;
    assume i_s715 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 11;
    assume i_s715 >= 0;
    i_s715 := 0;
    while (i_s715 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 1411;
        assume i_s715 >= 0;
        assume transactionId_s717 >= 0;
        if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s717]
           == null)
        {
            call __var_19 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s717] := __var_19;
            __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s717]] := zeroRefBoolArr();
        }

        if (__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s717]][__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s715]])
        {
            gas := gas - 14;
            assume count_s716 >= 0;
            count_s716 := count_s716 + 1;
        }

        gas := gas - 209;
        assume count_s716 >= 0;
        assume __tmp__required_MultiSigWallet[this] >= 0;
        if (count_s716 == __tmp__required_MultiSigWallet[this])
        {
            gas := gas - 23;
            __ret_0_ := true;
            return;
        }

        gas := gas - 19;
        assume i_s715 >= 0;
        i_s715 := i_s715 + 1;
        assume i_s715 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation isConfirmed_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s717: int)
   returns (__ret_0_: bool)
{
  var count_s716: int;
  var i_s715: int;
  var __var_19: Ref;

    gas := gas - 3;
    gas := gas - 11;
    assume count_s716 >= 0;
    count_s716 := 0;
    gas := gas - 217;
    assume i_s715 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 11;
    assume i_s715 >= 0;
    i_s715 := 0;
    while (i_s715 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 1411;
        assume i_s715 >= 0;
        assume transactionId_s717 >= 0;
        if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s717] == null)
        {
            call __var_19 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s717] := __var_19;
            M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s717]] := zeroRefBoolArr();
        }

        if (M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s717]][M_int_Ref[owners_MultiSigWallet[this]][i_s715]])
        {
            gas := gas - 14;
            assume count_s716 >= 0;
            count_s716 := count_s716 + 1;
        }

        gas := gas - 209;
        assume count_s716 >= 0;
        assume required_MultiSigWallet[this] >= 0;
        if (count_s716 == required_MultiSigWallet[this])
        {
            gas := gas - 23;
            __ret_0_ := true;
            return;
        }

        gas := gas - 19;
        assume i_s715 >= 0;
        i_s715 := i_s715 + 1;
        assume i_s715 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation addTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s755: Ref, 
    value_s755: int, 
    data_s755: int)
   returns (transactionId_s755: int)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: int;

    gas := gas - 3;
    call notNull_pre__fail(this, msgsender_MSG, msgvalue_MSG, destination_s755);
    if (revert)
    {
        return;
    }

    gas := gas - 208;
    assume transactionId_s755 >= 0;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    transactionId_s755 := __tmp__transactionCount_MultiSigWallet[this];
    gas := gas - 61804;
    assume transactionId_s755 >= 0;
    call __var_21 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume value_s755 >= 0;
    assume __tmp__DType[__var_21] == MultiSigWallet.Transaction;
    call MultiSigWallet.Transaction_ctor__fail(__var_21, this, 0, destination_s755, value_s755, data_s755, false);
    if (revert)
    {
        return;
    }

    __var_20 := __var_21;
    __tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s755] := __var_20;
    gas := gas - 20233;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    __tmp__transactionCount_MultiSigWallet[this] := __tmp__transactionCount_MultiSigWallet[this] + 1;
}



implementation addTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s755: Ref, 
    value_s755: int, 
    data_s755: int)
   returns (transactionId_s755: int)
{
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: int;

    gas := gas - 3;
    call notNull_pre__success(this, msgsender_MSG, msgvalue_MSG, destination_s755);
    if (revert)
    {
        return;
    }

    gas := gas - 208;
    assume transactionId_s755 >= 0;
    assume transactionCount_MultiSigWallet[this] >= 0;
    transactionId_s755 := transactionCount_MultiSigWallet[this];
    gas := gas - 61804;
    assume transactionId_s755 >= 0;
    call __var_21 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume value_s755 >= 0;
    assume DType[__var_21] == MultiSigWallet.Transaction;
    call MultiSigWallet.Transaction_ctor__success(__var_21, this, 0, destination_s755, value_s755, data_s755, false);
    if (revert)
    {
        return;
    }

    __var_20 := __var_21;
    M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s755] := __var_20;
    gas := gas - 20233;
    assume transactionCount_MultiSigWallet[this] >= 0;
    transactionCount_MultiSigWallet[this] := transactionCount_MultiSigWallet[this] + 1;
    assert {:EventEmitted "Submission_MultiSigWallet"} true;
}



implementation getConfirmationCount_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s787: int)
   returns (count_s787: int)
{
  var i_s785: int;
  var __var_23: Ref;

    gas := gas - 3;
    gas := gas - 217;
    assume i_s785 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 11;
    assume i_s785 >= 0;
    i_s785 := 0;
    while (i_s785 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 1411;
        assume i_s785 >= 0;
        assume transactionId_s787 >= 0;
        if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s787]
           == null)
        {
            call __var_23 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s787] := __var_23;
            __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s787]] := zeroRefBoolArr();
        }

        if (__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s787]][__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s785]])
        {
            gas := gas - 14;
            assume count_s787 >= 0;
            count_s787 := count_s787 + 1;
        }

        gas := gas - 19;
        assume i_s785 >= 0;
        i_s785 := i_s785 + 1;
        assume i_s785 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getConfirmationCount_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s787: int)
   returns (count_s787: int)
{
  var i_s785: int;
  var __var_23: Ref;

    gas := gas - 3;
    gas := gas - 217;
    assume i_s785 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 11;
    assume i_s785 >= 0;
    i_s785 := 0;
    while (i_s785 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 1411;
        assume i_s785 >= 0;
        assume transactionId_s787 >= 0;
        if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s787] == null)
        {
            call __var_23 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s787] := __var_23;
            M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s787]] := zeroRefBoolArr();
        }

        if (M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s787]][M_int_Ref[owners_MultiSigWallet[this]][i_s785]])
        {
            gas := gas - 14;
            assume count_s787 >= 0;
            count_s787 := count_s787 + 1;
        }

        gas := gas - 19;
        assume i_s785 >= 0;
        i_s785 := i_s785 + 1;
        assume i_s785 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionCount_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s827: bool, 
    executed_s827: bool)
   returns (count_s827: int)
{
  var i_s825: int;

    gas := gas - 3;
    gas := gas - 209;
    assume i_s825 >= 0;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 11;
    assume i_s825 >= 0;
    i_s825 := 0;
    while (i_s825 < __tmp__transactionCount_MultiSigWallet[this])
    {
        gas := gas - 730;
        assume i_s825 >= 0;
        assume i_s825 >= 0;
        if ((pending_s827
             && !__tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s825]])
           || (executed_s827
             && __tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s825]]))
        {
            gas := gas - 14;
            assume count_s827 >= 0;
            count_s827 := count_s827 + 1;
        }

        gas := gas - 19;
        assume i_s825 >= 0;
        i_s825 := i_s825 + 1;
        assume i_s825 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionCount_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s827: bool, 
    executed_s827: bool)
   returns (count_s827: int)
{
  var i_s825: int;

    gas := gas - 3;
    gas := gas - 209;
    assume i_s825 >= 0;
    assume transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 11;
    assume i_s825 >= 0;
    i_s825 := 0;
    while (i_s825 < transactionCount_MultiSigWallet[this])
    {
        gas := gas - 730;
        assume i_s825 >= 0;
        assume i_s825 >= 0;
        if ((pending_s827
             && !executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s825]])
           || (executed_s827
             && executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s825]]))
        {
            gas := gas - 14;
            assume count_s827 >= 0;
            count_s827 := count_s827 + 1;
        }

        gas := gas - 19;
        assume i_s825 >= 0;
        i_s825 := i_s825 + 1;
        assume i_s825 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getOwners_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 1083;
    __ret_0_ := __tmp__owners_MultiSigWallet[this];
    return;
}



implementation getOwners_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 1083;
    __ret_0_ := owners_MultiSigWallet[this];
    return;
}



implementation getConfirmations_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s923: int)
   returns (_confirmations_s923: Ref)
{
  var confirmationsTemp_s922: Ref;
  var __var_24: Ref;
  var count_s922: int;
  var i_s922: int;
  var __var_25: Ref;
  var __var_26: Ref;

    gas := gas - 3;
    gas := gas - 409;
    call __var_24 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    __tmp__Length[__var_24] := __tmp__Length[__tmp__owners_MultiSigWallet[this]];
    confirmationsTemp_s922 := __var_24;
    confirmationsTemp_s922 := confirmationsTemp_s922;
    gas := gas - 11;
    assume count_s922 >= 0;
    count_s922 := 0;
    gas := gas - 3;
    havoc i_s922;
    gas := gas - 217;
    assume i_s922 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 8;
    assume i_s922 >= 0;
    i_s922 := 0;
    while (i_s922 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 1411;
        assume i_s922 >= 0;
        assume transactionId_s923 >= 0;
        if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s923]
           == null)
        {
            call __var_25 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s923] := __var_25;
            __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s923]] := zeroRefBoolArr();
        }

        if (__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s923]][__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s922]])
        {
            gas := gas - 798;
            assume count_s922 >= 0;
            assume i_s922 >= 0;
            __tmp__M_int_Ref[confirmationsTemp_s922][count_s922] := __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s922];
            gas := gas - 14;
            assume count_s922 >= 0;
            count_s922 := count_s922 + 1;
        }

        gas := gas - 19;
        assume i_s922 >= 0;
        i_s922 := i_s922 + 1;
        assume i_s922 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 198;
    call __var_26 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume count_s922 >= 0;
    __tmp__Length[__var_26] := count_s922;
    _confirmations_s923 := __var_26;
    _confirmations_s923 := _confirmations_s923;
    gas := gas - 9;
    assume i_s922 >= 0;
    assume count_s922 >= 0;
    gas := gas - 8;
    assume i_s922 >= 0;
    i_s922 := 0;
    while (i_s922 < count_s922)
    {
        gas := gas - 524;
        assume i_s922 >= 0;
        assume i_s922 >= 0;
        __tmp__M_int_Ref[_confirmations_s923][i_s922] := __tmp__M_int_Ref[confirmationsTemp_s922][i_s922];
        gas := gas - 19;
        assume i_s922 >= 0;
        i_s922 := i_s922 + 1;
        assume i_s922 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getConfirmations_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s923: int)
   returns (_confirmations_s923: Ref)
{
  var confirmationsTemp_s922: Ref;
  var __var_24: Ref;
  var count_s922: int;
  var i_s922: int;
  var __var_25: Ref;
  var __var_26: Ref;

    gas := gas - 3;
    gas := gas - 409;
    call __var_24 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume Length[owners_MultiSigWallet[this]] >= 0;
    Length[__var_24] := Length[owners_MultiSigWallet[this]];
    confirmationsTemp_s922 := __var_24;
    confirmationsTemp_s922 := confirmationsTemp_s922;
    gas := gas - 11;
    assume count_s922 >= 0;
    count_s922 := 0;
    gas := gas - 3;
    havoc i_s922;
    gas := gas - 217;
    assume i_s922 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 8;
    assume i_s922 >= 0;
    i_s922 := 0;
    while (i_s922 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 1411;
        assume i_s922 >= 0;
        assume transactionId_s923 >= 0;
        if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s923] == null)
        {
            call __var_25 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s923] := __var_25;
            M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s923]] := zeroRefBoolArr();
        }

        if (M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s923]][M_int_Ref[owners_MultiSigWallet[this]][i_s922]])
        {
            gas := gas - 798;
            assume count_s922 >= 0;
            assume i_s922 >= 0;
            M_int_Ref[confirmationsTemp_s922][count_s922] := M_int_Ref[owners_MultiSigWallet[this]][i_s922];
            gas := gas - 14;
            assume count_s922 >= 0;
            count_s922 := count_s922 + 1;
        }

        gas := gas - 19;
        assume i_s922 >= 0;
        i_s922 := i_s922 + 1;
        assume i_s922 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 198;
    call __var_26 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume count_s922 >= 0;
    Length[__var_26] := count_s922;
    _confirmations_s923 := __var_26;
    _confirmations_s923 := _confirmations_s923;
    gas := gas - 9;
    assume i_s922 >= 0;
    assume count_s922 >= 0;
    gas := gas - 8;
    assume i_s922 >= 0;
    i_s922 := 0;
    while (i_s922 < count_s922)
    {
        gas := gas - 524;
        assume i_s922 >= 0;
        assume i_s922 >= 0;
        M_int_Ref[_confirmations_s923][i_s922] := M_int_Ref[confirmationsTemp_s922][i_s922];
        gas := gas - 19;
        assume i_s922 >= 0;
        i_s922 := i_s922 + 1;
        assume i_s922 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionIds_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1023: int, 
    to_s1023: int, 
    pending_s1023: bool, 
    executed_s1023: bool)
   returns (_transactionIds_s1023: Ref)
{
  var transactionIdsTemp_s1022: Ref;
  var __var_27: Ref;
  var count_s1022: int;
  var i_s1022: int;
  var __var_28: Ref;

    gas := gas - 3;
    gas := gas - 401;
    call __var_27 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    __tmp__Length[__var_27] := __tmp__transactionCount_MultiSigWallet[this];
    transactionIdsTemp_s1022 := __var_27;
    transactionIdsTemp_s1022 := transactionIdsTemp_s1022;
    gas := gas - 11;
    assume count_s1022 >= 0;
    count_s1022 := 0;
    gas := gas - 3;
    havoc i_s1022;
    gas := gas - 209;
    assume i_s1022 >= 0;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 8;
    assume i_s1022 >= 0;
    i_s1022 := 0;
    while (i_s1022 < __tmp__transactionCount_MultiSigWallet[this])
    {
        gas := gas - 730;
        assume i_s1022 >= 0;
        assume i_s1022 >= 0;
        if ((pending_s1023
             && !__tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s1022]])
           || (executed_s1023
             && __tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s1022]]))
        {
            gas := gas - 261;
            assume count_s1022 >= 0;
            assume __tmp__M_int_int[transactionIdsTemp_s1022][count_s1022] >= 0;
            assume i_s1022 >= 0;
            __tmp__sum[transactionIdsTemp_s1022] := __tmp__sum[transactionIdsTemp_s1022]
               - __tmp__M_int_int[transactionIdsTemp_s1022][count_s1022];
            __tmp__M_int_int[transactionIdsTemp_s1022][count_s1022] := i_s1022;
            __tmp__sum[transactionIdsTemp_s1022] := __tmp__sum[transactionIdsTemp_s1022]
               + __tmp__M_int_int[transactionIdsTemp_s1022][count_s1022];
            gas := gas - 14;
            assume count_s1022 >= 0;
            count_s1022 := count_s1022 + 1;
        }

        gas := gas - 19;
        assume i_s1022 >= 0;
        i_s1022 := i_s1022 + 1;
        assume i_s1022 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 204;
    call __var_28 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume to_s1023 >= 0;
    assume from_s1023 >= 0;
    assume to_s1023 - from_s1023 >= 0;
    __tmp__Length[__var_28] := to_s1023 - from_s1023;
    _transactionIds_s1023 := __var_28;
    _transactionIds_s1023 := _transactionIds_s1023;
    gas := gas - 9;
    assume i_s1022 >= 0;
    assume to_s1023 >= 0;
    gas := gas - 8;
    assume i_s1022 >= 0;
    assume from_s1023 >= 0;
    i_s1022 := from_s1023;
    while (i_s1022 < to_s1023)
    {
        gas := gas - 512;
        assume i_s1022 >= 0;
        assume from_s1023 >= 0;
        assume i_s1022 - from_s1023 >= 0;
        assume __tmp__M_int_int[_transactionIds_s1023][i_s1022 - from_s1023] >= 0;
        assume i_s1022 >= 0;
        assume __tmp__M_int_int[transactionIdsTemp_s1022][i_s1022] >= 0;
        __tmp__sum[_transactionIds_s1023] := __tmp__sum[_transactionIds_s1023]
           - __tmp__M_int_int[_transactionIds_s1023][
          i_s1022
           - from_s1023];
        __tmp__M_int_int[_transactionIds_s1023][i_s1022 - from_s1023] := __tmp__M_int_int[transactionIdsTemp_s1022][i_s1022];
        __tmp__sum[_transactionIds_s1023] := __tmp__sum[_transactionIds_s1023]
           + __tmp__M_int_int[_transactionIds_s1023][i_s1022 - from_s1023];
        gas := gas - 19;
        assume i_s1022 >= 0;
        i_s1022 := i_s1022 + 1;
        assume i_s1022 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionIds_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s1023: int, 
    to_s1023: int, 
    pending_s1023: bool, 
    executed_s1023: bool)
   returns (_transactionIds_s1023: Ref)
{
  var transactionIdsTemp_s1022: Ref;
  var __var_27: Ref;
  var count_s1022: int;
  var i_s1022: int;
  var __var_28: Ref;

    gas := gas - 3;
    gas := gas - 401;
    call __var_27 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume transactionCount_MultiSigWallet[this] >= 0;
    Length[__var_27] := transactionCount_MultiSigWallet[this];
    transactionIdsTemp_s1022 := __var_27;
    transactionIdsTemp_s1022 := transactionIdsTemp_s1022;
    gas := gas - 11;
    assume count_s1022 >= 0;
    count_s1022 := 0;
    gas := gas - 3;
    havoc i_s1022;
    gas := gas - 209;
    assume i_s1022 >= 0;
    assume transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 8;
    assume i_s1022 >= 0;
    i_s1022 := 0;
    while (i_s1022 < transactionCount_MultiSigWallet[this])
    {
        gas := gas - 730;
        assume i_s1022 >= 0;
        assume i_s1022 >= 0;
        if ((pending_s1023
             && !executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s1022]])
           || (executed_s1023
             && executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s1022]]))
        {
            gas := gas - 261;
            assume count_s1022 >= 0;
            assume M_int_int[transactionIdsTemp_s1022][count_s1022] >= 0;
            assume i_s1022 >= 0;
            sum[transactionIdsTemp_s1022] := sum[transactionIdsTemp_s1022] - M_int_int[transactionIdsTemp_s1022][count_s1022];
            M_int_int[transactionIdsTemp_s1022][count_s1022] := i_s1022;
            sum[transactionIdsTemp_s1022] := sum[transactionIdsTemp_s1022] + M_int_int[transactionIdsTemp_s1022][count_s1022];
            gas := gas - 14;
            assume count_s1022 >= 0;
            count_s1022 := count_s1022 + 1;
        }

        gas := gas - 19;
        assume i_s1022 >= 0;
        i_s1022 := i_s1022 + 1;
        assume i_s1022 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 204;
    call __var_28 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume to_s1023 >= 0;
    assume from_s1023 >= 0;
    assume to_s1023 - from_s1023 >= 0;
    Length[__var_28] := to_s1023 - from_s1023;
    _transactionIds_s1023 := __var_28;
    _transactionIds_s1023 := _transactionIds_s1023;
    gas := gas - 9;
    assume i_s1022 >= 0;
    assume to_s1023 >= 0;
    gas := gas - 8;
    assume i_s1022 >= 0;
    assume from_s1023 >= 0;
    i_s1022 := from_s1023;
    while (i_s1022 < to_s1023)
    {
        gas := gas - 512;
        assume i_s1022 >= 0;
        assume from_s1023 >= 0;
        assume i_s1022 - from_s1023 >= 0;
        assume M_int_int[_transactionIds_s1023][i_s1022 - from_s1023] >= 0;
        assume i_s1022 >= 0;
        assume M_int_int[transactionIdsTemp_s1022][i_s1022] >= 0;
        sum[_transactionIds_s1023] := sum[_transactionIds_s1023]
           - M_int_int[_transactionIds_s1023][
          i_s1022
           - from_s1023];
        M_int_int[_transactionIds_s1023][i_s1022 - from_s1023] := M_int_int[transactionIdsTemp_s1022][i_s1022];
        sum[_transactionIds_s1023] := sum[_transactionIds_s1023]
           + M_int_int[_transactionIds_s1023][i_s1022 - from_s1023];
        gas := gas - 19;
        assume i_s1022 >= 0;
        i_s1022 := i_s1022 + 1;
        assume i_s1022 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation hasExecuted_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1036: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 334;
    assume transactionId_s1036 >= 0;
    __ret_0_ := __tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s1036]];
    return;
}



implementation hasExecuted_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1036: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 334;
    assume transactionId_s1036 >= 0;
    __ret_0_ := executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s1036]];
    return;
}



implementation getDestination_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1049: int)
   returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 334;
    assume transactionId_s1049 >= 0;
    __ret_0_ := __tmp__destination_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s1049]];
    return;
}



implementation getDestination_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1049: int)
   returns (__ret_0_: Ref)
{
    gas := gas - 3;
    gas := gas - 334;
    assume transactionId_s1049 >= 0;
    __ret_0_ := destination_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s1049]];
    return;
}



implementation isAOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1061: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 340;
    __ret_0_ := __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][addr_s1061];
    return;
}



implementation isAOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1061: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 340;
    __ret_0_ := M_Ref_bool[isOwner_MultiSigWallet[this]][addr_s1061];
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == MultiSigWallet)
    {
        call FallbackMethod_MultiSigWallet__fail(to, from, amount);
        if (revert)
        {
            return;
        }
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
    if (DType[to] == MultiSigWallet)
    {
        call FallbackMethod_MultiSigWallet__success(to, from, amount);
        if (revert)
        {
            return;
        }
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
  var __snap___tmp__M_int_Ref: [Ref][int]Ref;
  var __snap___tmp__M_Ref_bool: [Ref][Ref]bool;
  var __snap___tmp__M_int_int: [Ref][int]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__MAX_OWNER_COUNT_MultiSigWallet: [Ref]int;
  var __snap___tmp__transactions_MultiSigWallet: [Ref]Ref;
  var __snap___tmp__confirmations_MultiSigWallet: [Ref]Ref;
  var __snap___tmp__isOwner_MultiSigWallet: [Ref]Ref;
  var __snap___tmp__owners_MultiSigWallet: [Ref]Ref;
  var __snap___tmp__required_MultiSigWallet: [Ref]int;
  var __snap___tmp__transactionCount_MultiSigWallet: [Ref]int;
  var __snap___tmp__destination_MultiSigWallet.Transaction: [Ref]Ref;
  var __snap___tmp__value_MultiSigWallet.Transaction: [Ref]int;
  var __snap___tmp__data_MultiSigWallet.Transaction: [Ref]int;
  var __snap___tmp__executed_MultiSigWallet.Transaction: [Ref]bool;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_int_Ref := __tmp__M_int_Ref;
        __snap___tmp__M_Ref_bool := __tmp__M_Ref_bool;
        __snap___tmp__M_int_int := __tmp__M_int_int;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__MAX_OWNER_COUNT_MultiSigWallet := __tmp__MAX_OWNER_COUNT_MultiSigWallet;
        __snap___tmp__transactions_MultiSigWallet := __tmp__transactions_MultiSigWallet;
        __snap___tmp__confirmations_MultiSigWallet := __tmp__confirmations_MultiSigWallet;
        __snap___tmp__isOwner_MultiSigWallet := __tmp__isOwner_MultiSigWallet;
        __snap___tmp__owners_MultiSigWallet := __tmp__owners_MultiSigWallet;
        __snap___tmp__required_MultiSigWallet := __tmp__required_MultiSigWallet;
        __snap___tmp__transactionCount_MultiSigWallet := __tmp__transactionCount_MultiSigWallet;
        __snap___tmp__destination_MultiSigWallet.Transaction := __tmp__destination_MultiSigWallet.Transaction;
        __snap___tmp__value_MultiSigWallet.Transaction := __tmp__value_MultiSigWallet.Transaction;
        __snap___tmp__data_MultiSigWallet.Transaction := __tmp__data_MultiSigWallet.Transaction;
        __snap___tmp__executed_MultiSigWallet.Transaction := __tmp__executed_MultiSigWallet.Transaction;
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
        __tmp__M_int_Ref := __snap___tmp__M_int_Ref;
        __tmp__M_Ref_bool := __snap___tmp__M_Ref_bool;
        __tmp__M_int_int := __snap___tmp__M_int_int;
        __tmp__Length := __snap___tmp__Length;
        __tmp__sum := __snap___tmp__sum;
        __tmp__now := __snap___tmp__now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := __snap___tmp__MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := __snap___tmp__transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := __snap___tmp__confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := __snap___tmp__isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := __snap___tmp__owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := __snap___tmp__required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := __snap___tmp__transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := __snap___tmp__destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := __snap___tmp__value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := __snap___tmp__data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := __snap___tmp__executed_MultiSigWallet.Transaction;
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
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__M_Ref_bool := M_Ref_bool;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__sum := sum;
        __tmp__now := now;
        __tmp__MAX_OWNER_COUNT_MultiSigWallet := MAX_OWNER_COUNT_MultiSigWallet;
        __tmp__transactions_MultiSigWallet := transactions_MultiSigWallet;
        __tmp__confirmations_MultiSigWallet := confirmations_MultiSigWallet;
        __tmp__isOwner_MultiSigWallet := isOwner_MultiSigWallet;
        __tmp__owners_MultiSigWallet := owners_MultiSigWallet;
        __tmp__required_MultiSigWallet := required_MultiSigWallet;
        __tmp__transactionCount_MultiSigWallet := transactionCount_MultiSigWallet;
        __tmp__destination_MultiSigWallet.Transaction := destination_MultiSigWallet.Transaction;
        __tmp__value_MultiSigWallet.Transaction := value_MultiSigWallet.Transaction;
        __tmp__data_MultiSigWallet.Transaction := data_MultiSigWallet.Transaction;
        __tmp__executed_MultiSigWallet.Transaction := executed_MultiSigWallet.Transaction;
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



implementation onlyWallet_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    gas := gas - 156;
    __var_1 := this;
    if (!(msgsender_MSG == this))
    {
        revert := true;
        return;
    }
}



implementation onlyWallet_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    gas := gas - 156;
    __var_1 := this;
    if (!(msgsender_MSG == this))
    {
        revert := true;
        return;
    }
}



implementation ownerDoesNotExist_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s102: Ref)
{
    gas := gas - 716;
    if (!!__tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s102])
    {
        revert := true;
        return;
    }
}



implementation ownerDoesNotExist_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s102: Ref)
{
    gas := gas - 716;
    if (!!M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s102])
    {
        revert := true;
        return;
    }
}



implementation ownerExists_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s114: Ref)
{
    gas := gas - 1775;
    if (!__tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s114])
    {
        revert := true;
        return;
    }
}



implementation ownerExists_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s114: Ref)
{
    gas := gas - 1775;
    if (!M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s114])
    {
        revert := true;
        return;
    }
}



implementation transactionExists_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s131: int)
{
  var __var_2: Ref;

    gas := gas - 370;
    assume transactionId_s131 >= 0;
    __var_2 := null;
    if (!(__tmp__destination_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s131]]
       != null))
    {
        revert := true;
        return;
    }
}



implementation transactionExists_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s131: int)
{
  var __var_2: Ref;

    gas := gas - 370;
    assume transactionId_s131 >= 0;
    __var_2 := null;
    if (!(destination_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s131]]
       != null))
    {
        revert := true;
        return;
    }
}



implementation confirmed_pre__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s147: int, 
    owner_s147: Ref)
{
  var __var_3: Ref;

    gas := gas - 866;
    assume transactionId_s147 >= 0;
    if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s147]
       == null)
    {
        call __var_3 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s147] := __var_3;
        __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s147]] := zeroRefBoolArr();
    }

    if (!__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s147]][owner_s147])
    {
        revert := true;
        return;
    }
}



implementation confirmed_pre__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s147: int, 
    owner_s147: Ref)
{
  var __var_3: Ref;

    gas := gas - 866;
    assume transactionId_s147 >= 0;
    if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s147] == null)
    {
        call __var_3 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s147] := __var_3;
        M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s147]] := zeroRefBoolArr();
    }

    if (!M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s147]][owner_s147])
    {
        revert := true;
        return;
    }
}



implementation notConfirmed_pre__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s164: int, 
    owner_s164: Ref)
{
  var __var_4: Ref;

    gas := gas - 436;
    assume transactionId_s164 >= 0;
    if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s164]
       == null)
    {
        call __var_4 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s164] := __var_4;
        __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s164]] := zeroRefBoolArr();
    }

    if (!!__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s164]][owner_s164])
    {
        revert := true;
        return;
    }
}



implementation notConfirmed_pre__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    transactionId_s164: int, 
    owner_s164: Ref)
{
  var __var_4: Ref;

    gas := gas - 436;
    assume transactionId_s164 >= 0;
    if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s164] == null)
    {
        call __var_4 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s164] := __var_4;
        M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s164]] := zeroRefBoolArr();
    }

    if (!!M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s164]][owner_s164])
    {
        revert := true;
        return;
    }
}



implementation notExecuted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s178: int)
{
    gas := gas - 704;
    assume transactionId_s178 >= 0;
    if (!!__tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s178]])
    {
        revert := true;
        return;
    }
}



implementation notExecuted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s178: int)
{
    gas := gas - 704;
    assume transactionId_s178 >= 0;
    if (!!executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s178]])
    {
        revert := true;
        return;
    }
}



implementation notNull_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s192: Ref)
{
  var __var_5: Ref;

    gas := gas - 88;
    __var_5 := null;
    if (!(_address_s192 != null))
    {
        revert := true;
        return;
    }
}



implementation notNull_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _address_s192: Ref)
{
  var __var_5: Ref;

    gas := gas - 88;
    __var_5 := null;
    if (!(_address_s192 != null))
    {
        revert := true;
        return;
    }
}



implementation validRequirement_pre__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    ownerCount_s218: int, 
    _required_s218: int)
{
    gas := gas - 262;
    assume ownerCount_s218 >= 0;
    assume __tmp__MAX_OWNER_COUNT_MultiSigWallet[this] >= 0;
    assume _required_s218 >= 0;
    assume ownerCount_s218 >= 0;
    assume _required_s218 >= 0;
    assume ownerCount_s218 >= 0;
    if (!(
      ownerCount_s218 <= __tmp__MAX_OWNER_COUNT_MultiSigWallet[this]
       && _required_s218 <= ownerCount_s218
       && _required_s218 != 0
       && ownerCount_s218 != 0))
    {
        revert := true;
        return;
    }
}



implementation validRequirement_pre__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    ownerCount_s218: int, 
    _required_s218: int)
{
    gas := gas - 262;
    assume ownerCount_s218 >= 0;
    assume MAX_OWNER_COUNT_MultiSigWallet[this] >= 0;
    assume _required_s218 >= 0;
    assume ownerCount_s218 >= 0;
    assume _required_s218 >= 0;
    assume ownerCount_s218 >= 0;
    if (!(
      ownerCount_s218 <= MAX_OWNER_COUNT_MultiSigWallet[this]
       && _required_s218 <= ownerCount_s218
       && _required_s218 != 0
       && ownerCount_s218 != 0))
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_MultiSigWallet(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owners_s294: Ref;
  var _required_s294: int;
  var owner_s331: Ref;
  var owner_s401: Ref;
  var owner_s463: Ref;
  var newOwner_s463: Ref;
  var _required_s484: int;
  var destination_s508: Ref;
  var value_s508: int;
  var data_s508: int;
  var transactionId_s508: int;
  var transactionId_s545: int;
  var transactionId_s578: int;
  var transactionId_s640: int;
  var transactionId_s717: int;
  var __ret_0_isConfirmed: bool;
  var transactionId_s787: int;
  var count_s787: int;
  var pending_s827: bool;
  var executed_s827: bool;
  var count_s827: int;
  var __ret_0_getOwners: Ref;
  var transactionId_s923: int;
  var _confirmations_s923: Ref;
  var from_s1023: int;
  var to_s1023: int;
  var pending_s1023: bool;
  var executed_s1023: bool;
  var _transactionIds_s1023: Ref;
  var transactionId_s1036: int;
  var __ret_0_hasExecuted: bool;
  var transactionId_s1049: int;
  var __ret_0_getDestination: Ref;
  var addr_s1061: Ref;
  var __ret_0_isAOwner: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owners_s294;
    havoc _required_s294;
    havoc owner_s331;
    havoc owner_s401;
    havoc owner_s463;
    havoc newOwner_s463;
    havoc _required_s484;
    havoc destination_s508;
    havoc value_s508;
    havoc data_s508;
    havoc transactionId_s508;
    havoc transactionId_s545;
    havoc transactionId_s578;
    havoc transactionId_s640;
    havoc transactionId_s717;
    havoc __ret_0_isConfirmed;
    havoc transactionId_s787;
    havoc count_s787;
    havoc pending_s827;
    havoc executed_s827;
    havoc count_s827;
    havoc __ret_0_getOwners;
    havoc transactionId_s923;
    havoc _confirmations_s923;
    havoc from_s1023;
    havoc to_s1023;
    havoc pending_s1023;
    havoc executed_s1023;
    havoc _transactionIds_s1023;
    havoc transactionId_s1036;
    havoc __ret_0_hasExecuted;
    havoc transactionId_s1049;
    havoc __ret_0_getDestination;
    havoc addr_s1061;
    havoc __ret_0_isAOwner;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != MultiSigWallet;
    Alloc[msgsender_MSG] := true;
    if (choice == 17)
    {
        gas := gas - 21000;
        call addOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s331);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        call removeOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s401);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        call replaceOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s463, newOwner_s463);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call changeRequirement_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, _required_s484);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call transactionId_s508 := submitTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, destination_s508, value_s508, data_s508);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call confirmTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s545);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call revokeConfirmation_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s578);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call executeTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s640);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_isConfirmed := isConfirmed_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s717);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call count_s787 := getConfirmationCount_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s787);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call count_s827 := getTransactionCount_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, pending_s827, executed_s827);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_getOwners := getOwners_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call _confirmations_s923 := getConfirmations_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s923);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call _transactionIds_s1023 := getTransactionIds_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, from_s1023, to_s1023, pending_s1023, executed_s1023);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_hasExecuted := hasExecuted_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s1036);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_getDestination := getDestination_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s1049);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_isAOwner := isAOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, addr_s1061);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _owners_s294: Ref;
  var _required_s294: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MultiSigWallet;
    call _owners_s294 := FreshRefGenerator__success();
    gas := gas - 53000;
    call MultiSigWallet_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, _owners_s294, _required_s294);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MultiSigWallet(this);
    }
}


