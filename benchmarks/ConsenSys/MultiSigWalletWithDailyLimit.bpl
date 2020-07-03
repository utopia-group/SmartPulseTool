// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:MultiSigWalletWithDailyLimit.bpl /pretty:1 /noVerify /noinfer __SolToBoogieTest_out.bpl

// Spec: L1

// Spec: L2
// LTLVariables: id:int,user:Ref
// LTLFairness: <>(success(MultiSigWallet.confirmTransaction(txnId)) {id == txnId && msg.sender == user}) && [](<>(call(MultiSigWallet.revokeConfirmation(txnId)) {id == txnId && msg.sender == user}))
// LTLProperty: <>(success(MultiSigWallet.revokeConfirmation(txnId)) {txnId == id && msg.sender == user}) || <>(fail(MultiSigWallet.revokeConfirmation(txnId)) {txnId == id && msg.sender == user && MultiSigWallet.hasExecuted(txnId) == true})  

// Spec: S1
// #LTLProperty: [](!success(MultiSigWallet.confirmTransaction) {MultiSigWallet.isAOwner(msg.sender) == false})

// Spec: S2
// LTLProperty: [](!callSuccess(MultiSigWallet.confirmTransaction(txnId)) { MultiSigWallet.hasExecuted(txnId) == true } && !callSuccess(MultiSigWalletWithDailyLimit.executeTransaction(txnId)) { MultiSigWallet.hasExecuted(txnId) == true})  

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

var MultiSigWalletWithDailyLimit: ContractName;

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
    _owners_s295: Ref, 
    _required_s295: int);
  modifies Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, revert, Alloc, gas;



procedure {:constructor} {:public} {:inline 1} MultiSigWallet_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, Alloc;



implementation MultiSigWallet_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call MultiSigWallet_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s295, _required_s295);
        assume revert || gas < 0;
    }
    else
    {
        call MultiSigWallet_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, _owners_s295, _required_s295);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s332: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_Ref_bool, M_int_Ref, Length;



implementation addOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s332: Ref)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call addOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, owner_s332);
        assume revert || gas < 0;
    }
    else
    {
        call addOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, owner_s332);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} removeOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s402: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet;



implementation removeOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s402: Ref)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call removeOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, owner_s402);
        assume revert || gas < 0;
    }
    else
    {
        call removeOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, owner_s402);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} replaceOwner_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s464: Ref, 
    newOwner_s464: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_int_Ref, M_Ref_bool;



implementation replaceOwner_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s464: Ref, 
    newOwner_s464: Ref)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call replaceOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, owner_s464, newOwner_s464);
        assume revert || gas < 0;
    }
    else
    {
        call replaceOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, owner_s464, newOwner_s464);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} changeRequirement_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s485: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, required_MultiSigWallet;



implementation changeRequirement_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s485: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call changeRequirement_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, _required_s485);
        assume revert || gas < 0;
    }
    else
    {
        call changeRequirement_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, _required_s485);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} submitTransaction_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s509: Ref, 
    value_s509: int, 
    data_s509: int)
   returns (transactionId_s509: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_int_Ref, transactionCount_MultiSigWallet, M_Ref_bool, Alloc, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, Balance, Length, required_MultiSigWallet, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit;



implementation submitTransaction_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s509: Ref, 
    value_s509: int, 
    data_s509: int)
   returns (transactionId_s509: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call transactionId_s509 := submitTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
        assume revert || gas < 0;
    }
    else
    {
        call transactionId_s509 := submitTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} confirmTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s546: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_int_Ref, M_Ref_bool, Alloc, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, Balance, Length, required_MultiSigWallet, transactionCount_MultiSigWallet, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



implementation confirmTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s546: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call confirmTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
        assume revert || gas < 0;
    }
    else
    {
        call confirmTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} revokeConfirmation_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s579: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_int_Ref, M_Ref_bool, Alloc;



implementation revokeConfirmation_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s579: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call revokeConfirmation_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s579);
        assume revert || gas < 0;
    }
    else
    {
        call revokeConfirmation_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s579);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} executeTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s646: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, executed_MultiSigWallet.Transaction, M_int_Ref, M_Ref_bool, Alloc, Balance, Length, required_MultiSigWallet, transactionCount_MultiSigWallet, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



implementation executeTransaction_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s646: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call executeTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
        assume revert || gas < 0;
    }
    else
    {
        call executeTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isConfirmed_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s689: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_int_Ref, M_Ref_bool, Alloc;



implementation isConfirmed_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s689: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call __ret_0_ := isConfirmed_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s689);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isConfirmed_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s689);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} addTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s727: Ref, 
    value_s727: int, 
    data_s727: int)
   returns (transactionId_s727: int);
  modifies gas, M_int_Ref, transactionCount_MultiSigWallet, revert, Alloc, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, executed_MultiSigWallet.Transaction;



procedure {:public} {:inline 1} getConfirmationCount_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s759: int)
   returns (count_s759: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, M_int_Ref, M_Ref_bool, Alloc;



implementation getConfirmationCount_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s759: int)
   returns (count_s759: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call count_s759 := getConfirmationCount_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s759);
        assume revert || gas < 0;
    }
    else
    {
        call count_s759 := getConfirmationCount_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s759);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getTransactionCount_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s799: bool, 
    executed_s799: bool)
   returns (count_s799: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas;



implementation getTransactionCount_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s799: bool, 
    executed_s799: bool)
   returns (count_s799: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call count_s799 := getTransactionCount_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, pending_s799, executed_s799);
        assume revert || gas < 0;
    }
    else
    {
        call count_s799 := getTransactionCount_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, pending_s799, executed_s799);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getOwners_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas;



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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call __ret_0_ := getOwners_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getOwners_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getConfirmations_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s895: int)
   returns (_confirmations_s895: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, Length, M_int_Ref, M_Ref_bool, Alloc;



implementation getConfirmations_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s895: int)
   returns (_confirmations_s895: Ref)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call _confirmations_s895 := getConfirmations_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s895);
        assume revert || gas < 0;
    }
    else
    {
        call _confirmations_s895 := getConfirmations_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s895);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getTransactionIds_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s995: int, 
    to_s995: int, 
    pending_s995: bool, 
    executed_s995: bool)
   returns (_transactionIds_s995: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, Length, sum, M_int_int, Alloc;



implementation getTransactionIds_MultiSigWallet(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s995: int, 
    to_s995: int, 
    pending_s995: bool, 
    executed_s995: bool)
   returns (_transactionIds_s995: Ref)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
        assume revert || gas < 0;
    }
    else
    {
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} hasExecuted_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1008: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas;



implementation hasExecuted_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1008: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call __ret_0_ := hasExecuted_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s1008);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := hasExecuted_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s1008);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getDestination_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1021: int)
   returns (__ret_0_: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas;



implementation getDestination_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1021: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call __ret_0_ := getDestination_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s1021);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getDestination_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s1021);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isAOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1033: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas;



implementation isAOwner_MultiSigWallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1033: Ref)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call __ret_0_ := isAOwner_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, addr_s1033);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isAOwner_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, addr_s1033);
        assume !revert && gas >= 0;
    }
}



var dailyLimit_MultiSigWalletWithDailyLimit: [Ref]int;

var lastDay_MultiSigWalletWithDailyLimit: [Ref]int;

var spentToday_MultiSigWalletWithDailyLimit: [Ref]int;

procedure {:inline 1} MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int);
  modifies Balance, dailyLimit_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, spentToday_MultiSigWalletWithDailyLimit;



procedure {:constructor} {:public} {:inline 1} MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, Alloc, dailyLimit_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, spentToday_MultiSigWalletWithDailyLimit;



implementation MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s1065, _required_s1065, _dailyLimit_s1065);
        assume revert || gas < 0;
    }
    else
    {
        call MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit__success(this, msgsender_MSG, msgvalue_MSG, _owners_s1065, _required_s1065, _dailyLimit_s1065);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} changeDailyLimit_MultiSigWalletWithDailyLimit(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _dailyLimit_s1081: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, dailyLimit_MultiSigWalletWithDailyLimit;



implementation changeDailyLimit_MultiSigWalletWithDailyLimit(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _dailyLimit_s1081: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call changeDailyLimit_MultiSigWalletWithDailyLimit__fail(this, msgsender_MSG, msgvalue_MSG, _dailyLimit_s1081);
        assume revert || gas < 0;
    }
    else
    {
        call changeDailyLimit_MultiSigWalletWithDailyLimit__success(this, msgsender_MSG, msgvalue_MSG, _dailyLimit_s1081);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} executeTransaction_MultiSigWalletWithDailyLimit(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1179: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, M_int_Ref, M_Ref_bool, Alloc, lastDay_MultiSigWalletWithDailyLimit, Balance, Length, required_MultiSigWallet, transactionCount_MultiSigWallet, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



implementation executeTransaction_MultiSigWalletWithDailyLimit(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1179: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call executeTransaction_MultiSigWalletWithDailyLimit__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s1179);
        assume revert || gas < 0;
    }
    else
    {
        call executeTransaction_MultiSigWalletWithDailyLimit__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s1179);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} isUnderLimit_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s1218: int)
   returns (__ret_0_: bool);
  modifies gas, lastDay_MultiSigWalletWithDailyLimit, spentToday_MultiSigWalletWithDailyLimit;



procedure {:public} {:inline 1} calcMaxWithdraw_MultiSigWalletWithDailyLimit(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, gas;



implementation calcMaxWithdraw_MultiSigWalletWithDailyLimit(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
        call __ret_0_ := calcMaxWithdraw_MultiSigWalletWithDailyLimit__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := calcMaxWithdraw_MultiSigWalletWithDailyLimit__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, M_Ref_bool, M_int_Ref, Length, revert, required_MultiSigWallet, transactionCount_MultiSigWallet, Alloc, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, M_Ref_bool, M_int_Ref, Length, revert, required_MultiSigWallet, transactionCount_MultiSigWallet, Alloc, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, revert, gas, Balance, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet, transactionCount_MultiSigWallet, Alloc, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



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
    ownerCount_s219: int, 
    _required_s219: int);
  modifies gas, revert;



procedure CorralChoice_MultiSigWallet(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet, executed_MultiSigWallet.Transaction, sum, M_int_int, transactionCount_MultiSigWallet, spentToday_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, lastDay_MultiSigWalletWithDailyLimit, Balance, dailyLimit_MultiSigWalletWithDailyLimit;



procedure CorralEntry_MultiSigWallet();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, now, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet, executed_MultiSigWallet.Transaction, sum, M_int_int, Balance, MAX_OWNER_COUNT_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, confirmations_MultiSigWallet, isOwner_MultiSigWallet, owners_MultiSigWallet, spentToday_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, lastDay_MultiSigWalletWithDailyLimit, dailyLimit_MultiSigWalletWithDailyLimit;



procedure CorralChoice_MultiSigWalletWithDailyLimit(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, transactionCount_MultiSigWallet, lastDay_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, Balance;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, now, M_Ref_bool, M_int_Ref, Length, required_MultiSigWallet, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, Balance, MAX_OWNER_COUNT_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, confirmations_MultiSigWallet, isOwner_MultiSigWallet, owners_MultiSigWallet, lastDay_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



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

var __tmp__dailyLimit_MultiSigWalletWithDailyLimit: [Ref]int;

var __tmp__lastDay_MultiSigWalletWithDailyLimit: [Ref]int;

var __tmp__spentToday_MultiSigWalletWithDailyLimit: [Ref]int;

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
    _owners_s295: Ref, 
    _required_s295: int);
  modifies __tmp__Balance, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__M_int_Ref, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__M_Ref_bool, __tmp__owners_MultiSigWallet, revert, __tmp__Alloc, gas;



procedure {:constructor} {:inline 1} MultiSigWallet_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int);
  modifies Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, revert, Alloc, gas;



procedure {:constructor} {:inline 1} MultiSigWallet_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int);
  modifies __tmp__Balance, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__M_int_Ref, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__M_Ref_bool, __tmp__owners_MultiSigWallet, revert, __tmp__Alloc, gas;



procedure {:inline 1} addOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s332: Ref);
  modifies gas, M_Ref_bool, M_int_Ref, Length, revert;



procedure {:inline 1} addOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s332: Ref);
  modifies gas, __tmp__M_Ref_bool, __tmp__M_int_Ref, __tmp__Length, revert;



procedure {:inline 1} removeOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s402: Ref);
  modifies gas, M_Ref_bool, M_int_Ref, Length, revert, required_MultiSigWallet;



procedure {:inline 1} removeOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s402: Ref);
  modifies gas, __tmp__M_Ref_bool, __tmp__M_int_Ref, __tmp__Length, revert, __tmp__required_MultiSigWallet;



procedure {:inline 1} replaceOwner_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s464: Ref, 
    newOwner_s464: Ref);
  modifies gas, M_int_Ref, M_Ref_bool, revert;



procedure {:inline 1} replaceOwner_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s464: Ref, 
    newOwner_s464: Ref);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert;



procedure {:inline 1} changeRequirement_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s485: int);
  modifies gas, required_MultiSigWallet, revert;



procedure {:inline 1} changeRequirement_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s485: int);
  modifies gas, __tmp__required_MultiSigWallet, revert;



procedure {:inline 1} submitTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s509: Ref, 
    value_s509: int, 
    data_s509: int)
   returns (transactionId_s509: int);
  modifies gas, M_int_Ref, transactionCount_MultiSigWallet, M_Ref_bool, revert, Alloc, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, Balance, Length, required_MultiSigWallet, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit;



procedure {:inline 1} submitTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s509: Ref, 
    value_s509: int, 
    data_s509: int)
   returns (transactionId_s509: int);
  modifies gas, __tmp__M_int_Ref, __tmp__transactionCount_MultiSigWallet, __tmp__M_Ref_bool, revert, __tmp__Alloc, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__spentToday_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__dailyLimit_MultiSigWalletWithDailyLimit;



procedure {:inline 1} confirmTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s546: int);
  modifies gas, M_int_Ref, M_Ref_bool, revert, Alloc, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, Balance, Length, required_MultiSigWallet, transactionCount_MultiSigWallet, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



procedure {:inline 1} confirmTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s546: int);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert, __tmp__Alloc, __tmp__executed_MultiSigWallet.Transaction, __tmp__spentToday_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit;



procedure {:inline 1} revokeConfirmation_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s579: int);
  modifies gas, M_int_Ref, M_Ref_bool, revert, Alloc;



procedure {:inline 1} revokeConfirmation_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s579: int);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, revert, __tmp__Alloc;



procedure {:inline 1} executeTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s646: int);
  modifies gas, executed_MultiSigWallet.Transaction, revert, M_int_Ref, M_Ref_bool, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, Alloc, Balance, Length, required_MultiSigWallet, transactionCount_MultiSigWallet, spentToday_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



procedure {:inline 1} executeTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s646: int);
  modifies gas, __tmp__executed_MultiSigWallet.Transaction, revert, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit;



procedure {:inline 1} isConfirmed_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s689: int)
   returns (__ret_0_: bool);
  modifies gas, M_int_Ref, M_Ref_bool, Alloc;



procedure {:inline 1} isConfirmed_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s689: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc;



procedure {:inline 1} addTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s727: Ref, 
    value_s727: int, 
    data_s727: int)
   returns (transactionId_s727: int);
  modifies gas, __tmp__M_int_Ref, __tmp__transactionCount_MultiSigWallet, revert, __tmp__Alloc, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction;



procedure {:inline 1} getConfirmationCount_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s759: int)
   returns (count_s759: int);
  modifies gas, M_int_Ref, M_Ref_bool, Alloc;



procedure {:inline 1} getConfirmationCount_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s759: int)
   returns (count_s759: int);
  modifies gas, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc;



procedure {:inline 1} getTransactionCount_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s799: bool, 
    executed_s799: bool)
   returns (count_s799: int);
  modifies gas;



procedure {:inline 1} getTransactionCount_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s799: bool, 
    executed_s799: bool)
   returns (count_s799: int);
  modifies gas;



procedure {:inline 1} getOwners_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} getOwners_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} getConfirmations_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s895: int)
   returns (_confirmations_s895: Ref);
  modifies gas, Length, M_int_Ref, M_Ref_bool, Alloc;



procedure {:inline 1} getConfirmations_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s895: int)
   returns (_confirmations_s895: Ref);
  modifies gas, __tmp__Length, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc;



procedure {:inline 1} getTransactionIds_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s995: int, 
    to_s995: int, 
    pending_s995: bool, 
    executed_s995: bool)
   returns (_transactionIds_s995: Ref);
  modifies gas, Length, sum, M_int_int, Alloc;



procedure {:inline 1} getTransactionIds_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s995: int, 
    to_s995: int, 
    pending_s995: bool, 
    executed_s995: bool)
   returns (_transactionIds_s995: Ref);
  modifies gas, __tmp__Length, __tmp__sum, __tmp__M_int_int, __tmp__Alloc;



procedure {:inline 1} hasExecuted_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1008: int)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasExecuted_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1008: int)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} getDestination_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1021: int)
   returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} getDestination_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1021: int)
   returns (__ret_0_: Ref);
  modifies gas;



procedure {:inline 1} isAOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1033: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} isAOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1033: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int);
  modifies __tmp__Balance, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit;



procedure {:constructor} {:inline 1} MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int);
  modifies Balance, MAX_OWNER_COUNT_MultiSigWallet, required_MultiSigWallet, transactionCount_MultiSigWallet, transactions_MultiSigWallet, M_int_Ref, confirmations_MultiSigWallet, isOwner_MultiSigWallet, M_Ref_bool, owners_MultiSigWallet, revert, Alloc, gas, dailyLimit_MultiSigWalletWithDailyLimit, lastDay_MultiSigWalletWithDailyLimit, spentToday_MultiSigWalletWithDailyLimit;



procedure {:constructor} {:inline 1} MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int);
  modifies __tmp__Balance, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__M_int_Ref, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__M_Ref_bool, __tmp__owners_MultiSigWallet, revert, __tmp__Alloc, gas, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit;



procedure {:inline 1} changeDailyLimit_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _dailyLimit_s1081: int);
  modifies gas, dailyLimit_MultiSigWalletWithDailyLimit, revert;



procedure {:inline 1} changeDailyLimit_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _dailyLimit_s1081: int);
  modifies gas, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, revert;



procedure {:inline 1} executeTransaction_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1179: int);
  modifies gas, executed_MultiSigWallet.Transaction, spentToday_MultiSigWalletWithDailyLimit, revert, M_int_Ref, M_Ref_bool, Alloc, lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, Balance, Length, required_MultiSigWallet, transactionCount_MultiSigWallet, sum, M_int_int, dailyLimit_MultiSigWalletWithDailyLimit, destination_MultiSigWallet.Transaction, value_MultiSigWallet.Transaction, data_MultiSigWallet.Transaction;



procedure {:inline 1} executeTransaction_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1179: int);
  modifies gas, __tmp__executed_MultiSigWallet.Transaction, __tmp__spentToday_MultiSigWalletWithDailyLimit, revert, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__Alloc, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__Balance, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit;



procedure {:inline 1} isUnderLimit_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s1218: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit;



procedure {:inline 1} calcMaxWithdraw_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} calcMaxWithdraw_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp__M_Ref_bool, __tmp__M_int_Ref, __tmp__Length, revert, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__Alloc, __tmp__executed_MultiSigWallet.Transaction, __tmp__spentToday_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp__M_Ref_bool, __tmp__M_int_Ref, __tmp__Length, revert, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__Alloc, __tmp__executed_MultiSigWallet.Transaction, __tmp__spentToday_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__DType, __tmp__balance_ADDR, __tmp__M_int_int, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_int_Ref, __tmp__M_Ref_bool, __tmp__M_int_int, __tmp__Length, __tmp__sum, __tmp__now, __tmp__MAX_OWNER_COUNT_MultiSigWallet, __tmp__transactions_MultiSigWallet, __tmp__confirmations_MultiSigWallet, __tmp__isOwner_MultiSigWallet, __tmp__owners_MultiSigWallet, __tmp__required_MultiSigWallet, __tmp__transactionCount_MultiSigWallet, __tmp__destination_MultiSigWallet.Transaction, __tmp__value_MultiSigWallet.Transaction, __tmp__data_MultiSigWallet.Transaction, __tmp__executed_MultiSigWallet.Transaction, __tmp__dailyLimit_MultiSigWalletWithDailyLimit, __tmp__lastDay_MultiSigWalletWithDailyLimit, __tmp__spentToday_MultiSigWalletWithDailyLimit, revert, gas;



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
    ownerCount_s219: int, 
    _required_s219: int);
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
    gas := gas - 16;
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
    gas := gas - 16;
    assume msgvalue_MSG >= 0;
    if (msgvalue_MSG > 0)
    {
        assert {:EventEmitted "Deposit_MultiSigWallet"} true;
    }
}



implementation MultiSigWallet_MultiSigWallet_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int)
{
  var i_s285: int;
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
    call validRequirement_pre__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[_owners_s295], _required_s295);
    if (revert)
    {
        return;
    }

    assume i_s285 >= 0;
    assume __tmp__Length[_owners_s295] >= 0;
    assume i_s285 >= 0;
    i_s285 := 0;
    while (i_s285 < __tmp__Length[_owners_s295])
    {
        assume i_s285 >= 0;
        assume i_s285 >= 0;
        __var_6 := null;
        if (__tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][__tmp__M_int_Ref[_owners_s295][i_s285]]
           || __tmp__M_int_Ref[_owners_s295][i_s285] == null)
        {
            revert := true;
            return;
        }

        assume i_s285 >= 0;
        __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][__tmp__M_int_Ref[_owners_s295][i_s285]] := true;
        assume i_s285 >= 0;
        i_s285 := i_s285 + 1;
        assume i_s285 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    __tmp__owners_MultiSigWallet[this] := _owners_s295;
    assume __tmp__required_MultiSigWallet[this] >= 0;
    assume _required_s295 >= 0;
    __tmp__required_MultiSigWallet[this] := _required_s295;
}



implementation MultiSigWallet_MultiSigWallet_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int)
{
  var i_s285: int;
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
    call validRequirement_pre__success(this, msgsender_MSG, msgvalue_MSG, Length[_owners_s295], _required_s295);
    if (revert)
    {
        return;
    }

    assume i_s285 >= 0;
    assume Length[_owners_s295] >= 0;
    assume i_s285 >= 0;
    i_s285 := 0;
    while (i_s285 < Length[_owners_s295])
    {
        assume i_s285 >= 0;
        assume i_s285 >= 0;
        __var_6 := null;
        if (M_Ref_bool[isOwner_MultiSigWallet[this]][M_int_Ref[_owners_s295][i_s285]]
           || M_int_Ref[_owners_s295][i_s285] == null)
        {
            revert := true;
            return;
        }

        assume i_s285 >= 0;
        M_Ref_bool[isOwner_MultiSigWallet[this]][M_int_Ref[_owners_s295][i_s285]] := true;
        assume i_s285 >= 0;
        i_s285 := i_s285 + 1;
        assume i_s285 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    owners_MultiSigWallet[this] := _owners_s295;
    assume required_MultiSigWallet[this] >= 0;
    assume _required_s295 >= 0;
    required_MultiSigWallet[this] := _required_s295;
}



implementation MultiSigWallet_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int)
{
  var i_s285: int;
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: Ref;
  var __var_10: Ref;

    call MultiSigWallet_MultiSigWallet_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s295, _required_s295);
    if (revert)
    {
        return;
    }
}



implementation MultiSigWallet_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s295: Ref, 
    _required_s295: int)
{
  var i_s285: int;
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: Ref;
  var __var_10: Ref;

    call MultiSigWallet_MultiSigWallet_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _owners_s295, _required_s295);
    if (revert)
    {
        return;
    }
}



implementation addOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s332: Ref)
{
  var __var_11: int;

    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s332);
    if (revert)
    {
        return;
    }

    call notNull_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s332);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[__tmp__owners_MultiSigWallet[this]] + 1, __tmp__required_MultiSigWallet[this]);
    if (revert)
    {
        return;
    }

    gas := gas - 40726;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s332] := true;
    gas := gas - 40724;
    __var_11 := __tmp__Length[__tmp__owners_MultiSigWallet[this]];
    __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][__var_11] := owner_s332;
    __tmp__Length[__tmp__owners_MultiSigWallet[this]] := __var_11 + 1;
}



implementation addOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s332: Ref)
{
  var __var_11: int;

    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s332);
    if (revert)
    {
        return;
    }

    call notNull_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s332);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__success(this, msgsender_MSG, msgvalue_MSG, Length[owners_MultiSigWallet[this]] + 1, required_MultiSigWallet[this]);
    if (revert)
    {
        return;
    }

    gas := gas - 40726;
    M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s332] := true;
    gas := gas - 40724;
    __var_11 := Length[owners_MultiSigWallet[this]];
    M_int_Ref[owners_MultiSigWallet[this]][__var_11] := owner_s332;
    Length[owners_MultiSigWallet[this]] := __var_11 + 1;
    assert {:EventEmitted "OwnerAddition_MultiSigWallet"} true;
}



implementation removeOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s402: Ref)
{
  var i_s380: int;

    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s402);
    if (revert)
    {
        return;
    }

    gas := gas - 40726;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s402] := false;
    gas := gas - 446;
    assume i_s380 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1 >= 0;
    gas := gas - 22;
    assume i_s380 >= 0;
    i_s380 := 0;
    while (i_s380 < __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1)
    {
        gas := gas - 1080;
        assume i_s380 >= 0;
        if (__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s380] == owner_s402)
        {
            gas := gas - 42566;
            assume i_s380 >= 0;
            assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
            assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1 >= 0;
            __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s380] := __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][__tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1];
            break;
        }

        gas := gas - 38;
        assume i_s380 >= 0;
        i_s380 := i_s380 + 1;
        assume i_s380 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 486;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    __tmp__Length[__tmp__owners_MultiSigWallet[this]] := __tmp__Length[__tmp__owners_MultiSigWallet[this]] - 1;
    gas := gas - 834;
    assume __tmp__required_MultiSigWallet[this] >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    if (__tmp__required_MultiSigWallet[this]
       > __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 452;
        assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
        if (__tmp__DType[this] == MultiSigWalletWithDailyLimit)
        {
            call changeRequirement_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[__tmp__owners_MultiSigWallet[this]]);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[this] == MultiSigWallet)
        {
            call changeRequirement_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[__tmp__owners_MultiSigWallet[this]]);
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
}



implementation removeOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s402: Ref)
{
  var i_s380: int;

    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s402);
    if (revert)
    {
        return;
    }

    gas := gas - 40726;
    M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s402] := false;
    gas := gas - 446;
    assume i_s380 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    assume Length[owners_MultiSigWallet[this]] - 1 >= 0;
    gas := gas - 22;
    assume i_s380 >= 0;
    i_s380 := 0;
    while (i_s380 < Length[owners_MultiSigWallet[this]] - 1)
    {
        gas := gas - 1080;
        assume i_s380 >= 0;
        if (M_int_Ref[owners_MultiSigWallet[this]][i_s380] == owner_s402)
        {
            gas := gas - 42566;
            assume i_s380 >= 0;
            assume Length[owners_MultiSigWallet[this]] >= 0;
            assume Length[owners_MultiSigWallet[this]] - 1 >= 0;
            M_int_Ref[owners_MultiSigWallet[this]][i_s380] := M_int_Ref[owners_MultiSigWallet[this]][Length[owners_MultiSigWallet[this]] - 1];
            break;
        }

        gas := gas - 38;
        assume i_s380 >= 0;
        i_s380 := i_s380 + 1;
        assume i_s380 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 486;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    Length[owners_MultiSigWallet[this]] := Length[owners_MultiSigWallet[this]] - 1;
    gas := gas - 834;
    assume required_MultiSigWallet[this] >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    if (required_MultiSigWallet[this] > Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 452;
        assume Length[owners_MultiSigWallet[this]] >= 0;
        if (DType[this] == MultiSigWalletWithDailyLimit)
        {
            call changeRequirement_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, Length[owners_MultiSigWallet[this]]);
            if (revert)
            {
                return;
            }
        }
        else if (DType[this] == MultiSigWallet)
        {
            call changeRequirement_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, Length[owners_MultiSigWallet[this]]);
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

    assert {:EventEmitted "OwnerRemoval_MultiSigWallet"} true;
}



implementation replaceOwner_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s464: Ref, 
    newOwner_s464: Ref)
{
  var i_s442: int;

    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, owner_s464);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s464);
    if (revert)
    {
        return;
    }

    gas := gas - 434;
    assume i_s442 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 22;
    assume i_s442 >= 0;
    i_s442 := 0;
    while (i_s442 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 1080;
        assume i_s442 >= 0;
        if (__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s442] == owner_s464)
        {
            gas := gas - 41100;
            assume i_s442 >= 0;
            __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s442] := newOwner_s464;
            break;
        }

        gas := gas - 38;
        assume i_s442 >= 0;
        i_s442 := i_s442 + 1;
        assume i_s442 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 40726;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s464] := false;
    gas := gas - 40714;
    __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][newOwner_s464] := true;
}



implementation replaceOwner_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s464: Ref, 
    newOwner_s464: Ref)
{
  var i_s442: int;

    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, owner_s464);
    if (revert)
    {
        return;
    }

    call ownerDoesNotExist_pre__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s464);
    if (revert)
    {
        return;
    }

    gas := gas - 434;
    assume i_s442 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 22;
    assume i_s442 >= 0;
    i_s442 := 0;
    while (i_s442 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 1080;
        assume i_s442 >= 0;
        if (M_int_Ref[owners_MultiSigWallet[this]][i_s442] == owner_s464)
        {
            gas := gas - 41100;
            assume i_s442 >= 0;
            M_int_Ref[owners_MultiSigWallet[this]][i_s442] := newOwner_s464;
            break;
        }

        gas := gas - 38;
        assume i_s442 >= 0;
        i_s442 := i_s442 + 1;
        assume i_s442 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 40726;
    M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s464] := false;
    gas := gas - 40714;
    M_Ref_bool[isOwner_MultiSigWallet[this]][newOwner_s464] := true;
    assert {:EventEmitted "OwnerRemoval_MultiSigWallet"} true;
    assert {:EventEmitted "OwnerAddition_MultiSigWallet"} true;
}



implementation changeRequirement_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s485: int)
{
    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Length[__tmp__owners_MultiSigWallet[this]], _required_s485);
    if (revert)
    {
        return;
    }

    gas := gas - 40028;
    assume __tmp__required_MultiSigWallet[this] >= 0;
    assume _required_s485 >= 0;
    __tmp__required_MultiSigWallet[this] := _required_s485;
}



implementation changeRequirement_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _required_s485: int)
{
    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call validRequirement_pre__success(this, msgsender_MSG, msgvalue_MSG, Length[owners_MultiSigWallet[this]], _required_s485);
    if (revert)
    {
        return;
    }

    gas := gas - 40028;
    assume required_MultiSigWallet[this] >= 0;
    assume _required_s485 >= 0;
    required_MultiSigWallet[this] := _required_s485;
    assert {:EventEmitted "RequirementChange_MultiSigWallet"} true;
}



implementation submitTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s509: Ref, 
    value_s509: int, 
    data_s509: int)
   returns (transactionId_s509: int)
{
    gas := gas - 6;
    gas := gas - 36;
    assume transactionId_s509 >= 0;
    assume value_s509 >= 0;
    if (__tmp__DType[this] == MultiSigWalletWithDailyLimit)
    {
        call transactionId_s509 := addTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MultiSigWallet)
    {
        call transactionId_s509 := addTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    transactionId_s509 := transactionId_s509;
    gas := gas - 36;
    assume transactionId_s509 >= 0;
    if (__tmp__DType[this] == MultiSigWalletWithDailyLimit)
    {
        call confirmTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s509);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MultiSigWallet)
    {
        call confirmTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s509);
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



implementation submitTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s509: Ref, 
    value_s509: int, 
    data_s509: int)
   returns (transactionId_s509: int)
{
    gas := gas - 6;
    gas := gas - 36;
    assume transactionId_s509 >= 0;
    assume value_s509 >= 0;
    if (DType[this] == MultiSigWalletWithDailyLimit)
    {
        call transactionId_s509 := addTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MultiSigWallet)
    {
        call transactionId_s509 := addTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    transactionId_s509 := transactionId_s509;
    gas := gas - 36;
    assume transactionId_s509 >= 0;
    if (DType[this] == MultiSigWalletWithDailyLimit)
    {
        call confirmTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s509);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MultiSigWallet)
    {
        call confirmTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s509);
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



implementation confirmTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s546: int)
{
  var __var_12: Ref;

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call transactionExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
    if (revert)
    {
        return;
    }

    call notConfirmed_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s546, msgsender_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40880;
    assume transactionId_s546 >= 0;
    if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s546]
       == null)
    {
        call __var_12 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s546] := __var_12;
        __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s546]] := zeroRefBoolArr();
    }

    __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s546]][msgsender_MSG] := true;
    gas := gas - 36;
    assume transactionId_s546 >= 0;
    if (__tmp__DType[this] == MultiSigWalletWithDailyLimit)
    {
        call executeTransaction_MultiSigWalletWithDailyLimit__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MultiSigWallet)
    {
        call executeTransaction_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
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



implementation confirmTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s546: int)
{
  var __var_12: Ref;

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call transactionExists_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
    if (revert)
    {
        return;
    }

    call notConfirmed_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s546, msgsender_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40880;
    assume transactionId_s546 >= 0;
    if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s546] == null)
    {
        call __var_12 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s546] := __var_12;
        M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s546]] := zeroRefBoolArr();
    }

    M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s546]][msgsender_MSG] := true;
    assert {:EventEmitted "Confirmation_MultiSigWallet"} true;
    gas := gas - 36;
    assume transactionId_s546 >= 0;
    if (DType[this] == MultiSigWalletWithDailyLimit)
    {
        call executeTransaction_MultiSigWalletWithDailyLimit__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MultiSigWallet)
    {
        call executeTransaction_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
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



implementation revokeConfirmation_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s579: int)
{
  var __var_13: Ref;

    call ownerExists_pre__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call confirmed_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s579, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call notExecuted_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s579);
    if (revert)
    {
        return;
    }

    gas := gas - 40880;
    assume transactionId_s579 >= 0;
    if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s579]
       == null)
    {
        call __var_13 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s579] := __var_13;
        __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s579]] := zeroRefBoolArr();
    }

    __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s579]][msgsender_MSG] := false;
}



implementation revokeConfirmation_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s579: int)
{
  var __var_13: Ref;

    call ownerExists_pre__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call confirmed_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s579, msgsender_MSG);
    if (revert)
    {
        return;
    }

    call notExecuted_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s579);
    if (revert)
    {
        return;
    }

    gas := gas - 40880;
    assume transactionId_s579 >= 0;
    if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s579] == null)
    {
        call __var_13 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s579] := __var_13;
        M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s579]] := zeroRefBoolArr();
    }

    M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s579]][msgsender_MSG] := false;
    assert {:EventEmitted "Revocation_MultiSigWallet"} true;
}



implementation executeTransaction_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s646: int)
{
  var __var_14: bool;
  var txn_s643: Ref;
  var destination_s643: Ref;
  var success_s643: bool;
  var data_s643: int;
  var __var_15: bool;
  var __var_16: int;
  var __var_17: int;

    call notExecuted_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume transactionId_s646 >= 0;
    if (__tmp__DType[this] == MultiSigWalletWithDailyLimit)
    {
        call __var_14 := isConfirmed_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == MultiSigWallet)
    {
        call __var_14 := isConfirmed_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__var_14)
    {
        gas := gas - 95;
        assume transactionId_s646 >= 0;
        txn_s643 := __tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s646];
        gas := gas - 253;
        destination_s643 := __tmp__destination_MultiSigWallet.Transaction[txn_s643];
        gas := gas - 20273;
        __tmp__executed_MultiSigWallet.Transaction[txn_s643] := true;
        gas := gas - 3;
        havoc success_s643;
        gas := gas - 3;
        havoc data_s643;
        gas := gas - 36001;
        assume __tmp__value_MultiSigWallet.Transaction[txn_s643] >= 0;
        call __var_15 := send__fail(this, destination_s643, __tmp__value_MultiSigWallet.Transaction[txn_s643]);
        success_s643 := __var_15;
        data_s643 := __var_16;
        gas := gas - 3;
        if (success_s643)
        {
        }
        else
        {
            gas := gas - 20273;
            __tmp__executed_MultiSigWallet.Transaction[txn_s643] := false;
        }
    }
}



implementation executeTransaction_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s646: int)
{
  var __var_14: bool;
  var txn_s643: Ref;
  var destination_s643: Ref;
  var success_s643: bool;
  var data_s643: int;
  var __var_15: bool;
  var __var_16: int;
  var __var_17: int;

    call notExecuted_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume transactionId_s646 >= 0;
    if (DType[this] == MultiSigWalletWithDailyLimit)
    {
        call __var_14 := isConfirmed_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == MultiSigWallet)
    {
        call __var_14 := isConfirmed_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__var_14)
    {
        gas := gas - 95;
        assume transactionId_s646 >= 0;
        txn_s643 := M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s646];
        gas := gas - 253;
        destination_s643 := destination_MultiSigWallet.Transaction[txn_s643];
        gas := gas - 20273;
        executed_MultiSigWallet.Transaction[txn_s643] := true;
        gas := gas - 3;
        havoc success_s643;
        gas := gas - 3;
        havoc data_s643;
        gas := gas - 36001;
        assume value_MultiSigWallet.Transaction[txn_s643] >= 0;
        call __var_15 := send__success(this, destination_s643, value_MultiSigWallet.Transaction[txn_s643]);
        success_s643 := __var_15;
        data_s643 := __var_16;
        gas := gas - 3;
        if (success_s643)
        {
            assert {:EventEmitted "Execution_MultiSigWallet"} true;
        }
        else
        {
            assert {:EventEmitted "ExecutionFailure_MultiSigWallet"} true;
            gas := gas - 20273;
            executed_MultiSigWallet.Transaction[txn_s643] := false;
        }
    }
}



implementation isConfirmed_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s689: int)
   returns (__ret_0_: bool)
{
  var count_s688: int;
  var i_s687: int;
  var __var_18: Ref;

    gas := gas - 6;
    gas := gas - 22;
    assume count_s688 >= 0;
    count_s688 := 0;
    gas := gas - 434;
    assume i_s687 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 22;
    assume i_s687 >= 0;
    i_s687 := 0;
    while (i_s687 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 2822;
        assume i_s687 >= 0;
        assume transactionId_s689 >= 0;
        if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s689]
           == null)
        {
            call __var_18 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s689] := __var_18;
            __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s689]] := zeroRefBoolArr();
        }

        if (__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s689]][__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s687]])
        {
            gas := gas - 28;
            assume count_s688 >= 0;
            count_s688 := count_s688 + 1;
        }

        gas := gas - 418;
        assume count_s688 >= 0;
        assume __tmp__required_MultiSigWallet[this] >= 0;
        if (count_s688 == __tmp__required_MultiSigWallet[this])
        {
            gas := gas - 46;
            __ret_0_ := true;
            return;
        }

        gas := gas - 38;
        assume i_s687 >= 0;
        i_s687 := i_s687 + 1;
        assume i_s687 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation isConfirmed_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s689: int)
   returns (__ret_0_: bool)
{
  var count_s688: int;
  var i_s687: int;
  var __var_18: Ref;

    gas := gas - 6;
    gas := gas - 22;
    assume count_s688 >= 0;
    count_s688 := 0;
    gas := gas - 434;
    assume i_s687 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 22;
    assume i_s687 >= 0;
    i_s687 := 0;
    while (i_s687 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 2822;
        assume i_s687 >= 0;
        assume transactionId_s689 >= 0;
        if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s689] == null)
        {
            call __var_18 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s689] := __var_18;
            M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s689]] := zeroRefBoolArr();
        }

        if (M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s689]][M_int_Ref[owners_MultiSigWallet[this]][i_s687]])
        {
            gas := gas - 28;
            assume count_s688 >= 0;
            count_s688 := count_s688 + 1;
        }

        gas := gas - 418;
        assume count_s688 >= 0;
        assume required_MultiSigWallet[this] >= 0;
        if (count_s688 == required_MultiSigWallet[this])
        {
            gas := gas - 46;
            __ret_0_ := true;
            return;
        }

        gas := gas - 38;
        assume i_s687 >= 0;
        i_s687 := i_s687 + 1;
        assume i_s687 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation addTransaction_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s727: Ref, 
    value_s727: int, 
    data_s727: int)
   returns (transactionId_s727: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;

    gas := gas - 6;
    call notNull_pre__fail(this, msgsender_MSG, msgvalue_MSG, destination_s727);
    if (revert)
    {
        return;
    }

    gas := gas - 416;
    assume transactionId_s727 >= 0;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    transactionId_s727 := __tmp__transactionCount_MultiSigWallet[this];
    gas := gas - 123608;
    assume transactionId_s727 >= 0;
    call __var_20 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume value_s727 >= 0;
    assume __tmp__DType[__var_20] == MultiSigWallet.Transaction;
    call MultiSigWallet.Transaction_ctor__fail(__var_20, this, 0, destination_s727, value_s727, data_s727, false);
    if (revert)
    {
        return;
    }

    __var_19 := __var_20;
    __tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s727] := __var_19;
    gas := gas - 40466;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    __tmp__transactionCount_MultiSigWallet[this] := __tmp__transactionCount_MultiSigWallet[this] + 1;
}



implementation addTransaction_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    destination_s727: Ref, 
    value_s727: int, 
    data_s727: int)
   returns (transactionId_s727: int)
{
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;

    gas := gas - 6;
    call notNull_pre__success(this, msgsender_MSG, msgvalue_MSG, destination_s727);
    if (revert)
    {
        return;
    }

    gas := gas - 416;
    assume transactionId_s727 >= 0;
    assume transactionCount_MultiSigWallet[this] >= 0;
    transactionId_s727 := transactionCount_MultiSigWallet[this];
    gas := gas - 123608;
    assume transactionId_s727 >= 0;
    call __var_20 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume value_s727 >= 0;
    assume DType[__var_20] == MultiSigWallet.Transaction;
    call MultiSigWallet.Transaction_ctor__success(__var_20, this, 0, destination_s727, value_s727, data_s727, false);
    if (revert)
    {
        return;
    }

    __var_19 := __var_20;
    M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s727] := __var_19;
    gas := gas - 40466;
    assume transactionCount_MultiSigWallet[this] >= 0;
    transactionCount_MultiSigWallet[this] := transactionCount_MultiSigWallet[this] + 1;
    assert {:EventEmitted "Submission_MultiSigWallet"} true;
}



implementation getConfirmationCount_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s759: int)
   returns (count_s759: int)
{
  var i_s757: int;
  var __var_22: Ref;

    gas := gas - 6;
    gas := gas - 434;
    assume i_s757 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 22;
    assume i_s757 >= 0;
    i_s757 := 0;
    while (i_s757 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 2822;
        assume i_s757 >= 0;
        assume transactionId_s759 >= 0;
        if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s759]
           == null)
        {
            call __var_22 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s759] := __var_22;
            __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s759]] := zeroRefBoolArr();
        }

        if (__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s759]][__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s757]])
        {
            gas := gas - 28;
            assume count_s759 >= 0;
            count_s759 := count_s759 + 1;
        }

        gas := gas - 38;
        assume i_s757 >= 0;
        i_s757 := i_s757 + 1;
        assume i_s757 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getConfirmationCount_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s759: int)
   returns (count_s759: int)
{
  var i_s757: int;
  var __var_22: Ref;

    gas := gas - 6;
    gas := gas - 434;
    assume i_s757 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 22;
    assume i_s757 >= 0;
    i_s757 := 0;
    while (i_s757 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 2822;
        assume i_s757 >= 0;
        assume transactionId_s759 >= 0;
        if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s759] == null)
        {
            call __var_22 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s759] := __var_22;
            M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s759]] := zeroRefBoolArr();
        }

        if (M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s759]][M_int_Ref[owners_MultiSigWallet[this]][i_s757]])
        {
            gas := gas - 28;
            assume count_s759 >= 0;
            count_s759 := count_s759 + 1;
        }

        gas := gas - 38;
        assume i_s757 >= 0;
        i_s757 := i_s757 + 1;
        assume i_s757 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionCount_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s799: bool, 
    executed_s799: bool)
   returns (count_s799: int)
{
  var i_s797: int;

    gas := gas - 6;
    gas := gas - 418;
    assume i_s797 >= 0;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 22;
    assume i_s797 >= 0;
    i_s797 := 0;
    while (i_s797 < __tmp__transactionCount_MultiSigWallet[this])
    {
        gas := gas - 1460;
        assume i_s797 >= 0;
        assume i_s797 >= 0;
        if ((pending_s799
             && !__tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s797]])
           || (executed_s799
             && __tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s797]]))
        {
            gas := gas - 28;
            assume count_s799 >= 0;
            count_s799 := count_s799 + 1;
        }

        gas := gas - 38;
        assume i_s797 >= 0;
        i_s797 := i_s797 + 1;
        assume i_s797 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionCount_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    pending_s799: bool, 
    executed_s799: bool)
   returns (count_s799: int)
{
  var i_s797: int;

    gas := gas - 6;
    gas := gas - 418;
    assume i_s797 >= 0;
    assume transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 22;
    assume i_s797 >= 0;
    i_s797 := 0;
    while (i_s797 < transactionCount_MultiSigWallet[this])
    {
        gas := gas - 1460;
        assume i_s797 >= 0;
        assume i_s797 >= 0;
        if ((pending_s799
             && !executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s797]])
           || (executed_s799
             && executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s797]]))
        {
            gas := gas - 28;
            assume count_s799 >= 0;
            count_s799 := count_s799 + 1;
        }

        gas := gas - 38;
        assume i_s797 >= 0;
        i_s797 := i_s797 + 1;
        assume i_s797 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getOwners_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 2166;
    __ret_0_ := __tmp__owners_MultiSigWallet[this];
    return;
}



implementation getOwners_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 2166;
    __ret_0_ := owners_MultiSigWallet[this];
    return;
}



implementation getConfirmations_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s895: int)
   returns (_confirmations_s895: Ref)
{
  var confirmationsTemp_s894: Ref;
  var __var_23: Ref;
  var count_s894: int;
  var i_s894: int;
  var __var_24: Ref;
  var __var_25: Ref;

    gas := gas - 6;
    gas := gas - 818;
    call __var_23 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    __tmp__Length[__var_23] := __tmp__Length[__tmp__owners_MultiSigWallet[this]];
    confirmationsTemp_s894 := __var_23;
    confirmationsTemp_s894 := confirmationsTemp_s894;
    gas := gas - 22;
    assume count_s894 >= 0;
    count_s894 := 0;
    gas := gas - 6;
    havoc i_s894;
    gas := gas - 434;
    assume i_s894 >= 0;
    assume __tmp__Length[__tmp__owners_MultiSigWallet[this]] >= 0;
    gas := gas - 16;
    assume i_s894 >= 0;
    i_s894 := 0;
    while (i_s894 < __tmp__Length[__tmp__owners_MultiSigWallet[this]])
    {
        gas := gas - 2822;
        assume i_s894 >= 0;
        assume transactionId_s895 >= 0;
        if (__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s895]
           == null)
        {
            call __var_24 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s895] := __var_24;
            __tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s895]] := zeroRefBoolArr();
        }

        if (__tmp__M_Ref_bool[__tmp__M_int_Ref[__tmp__confirmations_MultiSigWallet[this]][transactionId_s895]][__tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s894]])
        {
            gas := gas - 1596;
            assume count_s894 >= 0;
            assume i_s894 >= 0;
            __tmp__M_int_Ref[confirmationsTemp_s894][count_s894] := __tmp__M_int_Ref[__tmp__owners_MultiSigWallet[this]][i_s894];
            gas := gas - 28;
            assume count_s894 >= 0;
            count_s894 := count_s894 + 1;
        }

        gas := gas - 38;
        assume i_s894 >= 0;
        i_s894 := i_s894 + 1;
        assume i_s894 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 396;
    call __var_25 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume count_s894 >= 0;
    __tmp__Length[__var_25] := count_s894;
    _confirmations_s895 := __var_25;
    _confirmations_s895 := _confirmations_s895;
    gas := gas - 18;
    assume i_s894 >= 0;
    assume count_s894 >= 0;
    gas := gas - 16;
    assume i_s894 >= 0;
    i_s894 := 0;
    while (i_s894 < count_s894)
    {
        gas := gas - 1048;
        assume i_s894 >= 0;
        assume i_s894 >= 0;
        __tmp__M_int_Ref[_confirmations_s895][i_s894] := __tmp__M_int_Ref[confirmationsTemp_s894][i_s894];
        gas := gas - 38;
        assume i_s894 >= 0;
        i_s894 := i_s894 + 1;
        assume i_s894 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getConfirmations_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s895: int)
   returns (_confirmations_s895: Ref)
{
  var confirmationsTemp_s894: Ref;
  var __var_23: Ref;
  var count_s894: int;
  var i_s894: int;
  var __var_24: Ref;
  var __var_25: Ref;

    gas := gas - 6;
    gas := gas - 818;
    call __var_23 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume Length[owners_MultiSigWallet[this]] >= 0;
    Length[__var_23] := Length[owners_MultiSigWallet[this]];
    confirmationsTemp_s894 := __var_23;
    confirmationsTemp_s894 := confirmationsTemp_s894;
    gas := gas - 22;
    assume count_s894 >= 0;
    count_s894 := 0;
    gas := gas - 6;
    havoc i_s894;
    gas := gas - 434;
    assume i_s894 >= 0;
    assume Length[owners_MultiSigWallet[this]] >= 0;
    gas := gas - 16;
    assume i_s894 >= 0;
    i_s894 := 0;
    while (i_s894 < Length[owners_MultiSigWallet[this]])
    {
        gas := gas - 2822;
        assume i_s894 >= 0;
        assume transactionId_s895 >= 0;
        if (M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s895] == null)
        {
            call __var_24 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s895] := __var_24;
            M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s895]] := zeroRefBoolArr();
        }

        if (M_Ref_bool[M_int_Ref[confirmations_MultiSigWallet[this]][transactionId_s895]][M_int_Ref[owners_MultiSigWallet[this]][i_s894]])
        {
            gas := gas - 1596;
            assume count_s894 >= 0;
            assume i_s894 >= 0;
            M_int_Ref[confirmationsTemp_s894][count_s894] := M_int_Ref[owners_MultiSigWallet[this]][i_s894];
            gas := gas - 28;
            assume count_s894 >= 0;
            count_s894 := count_s894 + 1;
        }

        gas := gas - 38;
        assume i_s894 >= 0;
        i_s894 := i_s894 + 1;
        assume i_s894 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 396;
    call __var_25 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume count_s894 >= 0;
    Length[__var_25] := count_s894;
    _confirmations_s895 := __var_25;
    _confirmations_s895 := _confirmations_s895;
    gas := gas - 18;
    assume i_s894 >= 0;
    assume count_s894 >= 0;
    gas := gas - 16;
    assume i_s894 >= 0;
    i_s894 := 0;
    while (i_s894 < count_s894)
    {
        gas := gas - 1048;
        assume i_s894 >= 0;
        assume i_s894 >= 0;
        M_int_Ref[_confirmations_s895][i_s894] := M_int_Ref[confirmationsTemp_s894][i_s894];
        gas := gas - 38;
        assume i_s894 >= 0;
        i_s894 := i_s894 + 1;
        assume i_s894 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionIds_MultiSigWallet__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s995: int, 
    to_s995: int, 
    pending_s995: bool, 
    executed_s995: bool)
   returns (_transactionIds_s995: Ref)
{
  var transactionIdsTemp_s994: Ref;
  var __var_26: Ref;
  var count_s994: int;
  var i_s994: int;
  var __var_27: Ref;

    gas := gas - 6;
    gas := gas - 802;
    call __var_26 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    __tmp__Length[__var_26] := __tmp__transactionCount_MultiSigWallet[this];
    transactionIdsTemp_s994 := __var_26;
    transactionIdsTemp_s994 := transactionIdsTemp_s994;
    gas := gas - 22;
    assume count_s994 >= 0;
    count_s994 := 0;
    gas := gas - 6;
    havoc i_s994;
    gas := gas - 418;
    assume i_s994 >= 0;
    assume __tmp__transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 16;
    assume i_s994 >= 0;
    i_s994 := 0;
    while (i_s994 < __tmp__transactionCount_MultiSigWallet[this])
    {
        gas := gas - 1460;
        assume i_s994 >= 0;
        assume i_s994 >= 0;
        if ((pending_s995
             && !__tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s994]])
           || (executed_s995
             && __tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][i_s994]]))
        {
            gas := gas - 522;
            assume count_s994 >= 0;
            assume __tmp__M_int_int[transactionIdsTemp_s994][count_s994] >= 0;
            assume i_s994 >= 0;
            __tmp__sum[transactionIdsTemp_s994] := __tmp__sum[transactionIdsTemp_s994]
               - __tmp__M_int_int[transactionIdsTemp_s994][count_s994];
            __tmp__M_int_int[transactionIdsTemp_s994][count_s994] := i_s994;
            __tmp__sum[transactionIdsTemp_s994] := __tmp__sum[transactionIdsTemp_s994]
               + __tmp__M_int_int[transactionIdsTemp_s994][count_s994];
            gas := gas - 28;
            assume count_s994 >= 0;
            count_s994 := count_s994 + 1;
        }

        gas := gas - 38;
        assume i_s994 >= 0;
        i_s994 := i_s994 + 1;
        assume i_s994 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 408;
    call __var_27 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume to_s995 >= 0;
    assume from_s995 >= 0;
    assume to_s995 - from_s995 >= 0;
    __tmp__Length[__var_27] := to_s995 - from_s995;
    _transactionIds_s995 := __var_27;
    _transactionIds_s995 := _transactionIds_s995;
    gas := gas - 18;
    assume i_s994 >= 0;
    assume to_s995 >= 0;
    gas := gas - 16;
    assume i_s994 >= 0;
    assume from_s995 >= 0;
    i_s994 := from_s995;
    while (i_s994 < to_s995)
    {
        gas := gas - 1024;
        assume i_s994 >= 0;
        assume from_s995 >= 0;
        assume i_s994 - from_s995 >= 0;
        assume __tmp__M_int_int[_transactionIds_s995][i_s994 - from_s995] >= 0;
        assume i_s994 >= 0;
        assume __tmp__M_int_int[transactionIdsTemp_s994][i_s994] >= 0;
        __tmp__sum[_transactionIds_s995] := __tmp__sum[_transactionIds_s995]
           - __tmp__M_int_int[_transactionIds_s995][
          i_s994
           - from_s995];
        __tmp__M_int_int[_transactionIds_s995][i_s994 - from_s995] := __tmp__M_int_int[transactionIdsTemp_s994][i_s994];
        __tmp__sum[_transactionIds_s995] := __tmp__sum[_transactionIds_s995]
           + __tmp__M_int_int[_transactionIds_s995][i_s994 - from_s995];
        gas := gas - 38;
        assume i_s994 >= 0;
        i_s994 := i_s994 + 1;
        assume i_s994 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation getTransactionIds_MultiSigWallet__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s995: int, 
    to_s995: int, 
    pending_s995: bool, 
    executed_s995: bool)
   returns (_transactionIds_s995: Ref)
{
  var transactionIdsTemp_s994: Ref;
  var __var_26: Ref;
  var count_s994: int;
  var i_s994: int;
  var __var_27: Ref;

    gas := gas - 6;
    gas := gas - 802;
    call __var_26 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume transactionCount_MultiSigWallet[this] >= 0;
    Length[__var_26] := transactionCount_MultiSigWallet[this];
    transactionIdsTemp_s994 := __var_26;
    transactionIdsTemp_s994 := transactionIdsTemp_s994;
    gas := gas - 22;
    assume count_s994 >= 0;
    count_s994 := 0;
    gas := gas - 6;
    havoc i_s994;
    gas := gas - 418;
    assume i_s994 >= 0;
    assume transactionCount_MultiSigWallet[this] >= 0;
    gas := gas - 16;
    assume i_s994 >= 0;
    i_s994 := 0;
    while (i_s994 < transactionCount_MultiSigWallet[this])
    {
        gas := gas - 1460;
        assume i_s994 >= 0;
        assume i_s994 >= 0;
        if ((pending_s995
             && !executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s994]])
           || (executed_s995
             && executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][i_s994]]))
        {
            gas := gas - 522;
            assume count_s994 >= 0;
            assume M_int_int[transactionIdsTemp_s994][count_s994] >= 0;
            assume i_s994 >= 0;
            sum[transactionIdsTemp_s994] := sum[transactionIdsTemp_s994] - M_int_int[transactionIdsTemp_s994][count_s994];
            M_int_int[transactionIdsTemp_s994][count_s994] := i_s994;
            sum[transactionIdsTemp_s994] := sum[transactionIdsTemp_s994] + M_int_int[transactionIdsTemp_s994][count_s994];
            gas := gas - 28;
            assume count_s994 >= 0;
            count_s994 := count_s994 + 1;
        }

        gas := gas - 38;
        assume i_s994 >= 0;
        i_s994 := i_s994 + 1;
        assume i_s994 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 408;
    call __var_27 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume to_s995 >= 0;
    assume from_s995 >= 0;
    assume to_s995 - from_s995 >= 0;
    Length[__var_27] := to_s995 - from_s995;
    _transactionIds_s995 := __var_27;
    _transactionIds_s995 := _transactionIds_s995;
    gas := gas - 18;
    assume i_s994 >= 0;
    assume to_s995 >= 0;
    gas := gas - 16;
    assume i_s994 >= 0;
    assume from_s995 >= 0;
    i_s994 := from_s995;
    while (i_s994 < to_s995)
    {
        gas := gas - 1024;
        assume i_s994 >= 0;
        assume from_s995 >= 0;
        assume i_s994 - from_s995 >= 0;
        assume M_int_int[_transactionIds_s995][i_s994 - from_s995] >= 0;
        assume i_s994 >= 0;
        assume M_int_int[transactionIdsTemp_s994][i_s994] >= 0;
        sum[_transactionIds_s995] := sum[_transactionIds_s995] - M_int_int[_transactionIds_s995][i_s994 - from_s995];
        M_int_int[_transactionIds_s995][i_s994 - from_s995] := M_int_int[transactionIdsTemp_s994][i_s994];
        sum[_transactionIds_s995] := sum[_transactionIds_s995] + M_int_int[_transactionIds_s995][i_s994 - from_s995];
        gas := gas - 38;
        assume i_s994 >= 0;
        i_s994 := i_s994 + 1;
        assume i_s994 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation hasExecuted_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1008: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 668;
    assume transactionId_s1008 >= 0;
    __ret_0_ := __tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s1008]];
    return;
}



implementation hasExecuted_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1008: int)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 668;
    assume transactionId_s1008 >= 0;
    __ret_0_ := executed_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s1008]];
    return;
}



implementation getDestination_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1021: int)
   returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 668;
    assume transactionId_s1021 >= 0;
    __ret_0_ := __tmp__destination_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s1021]];
    return;
}



implementation getDestination_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1021: int)
   returns (__ret_0_: Ref)
{
    gas := gas - 6;
    gas := gas - 668;
    assume transactionId_s1021 >= 0;
    __ret_0_ := destination_MultiSigWallet.Transaction[M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s1021]];
    return;
}



implementation isAOwner_MultiSigWallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1033: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 680;
    __ret_0_ := __tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][addr_s1033];
    return;
}



implementation isAOwner_MultiSigWallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s1033: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 680;
    __ret_0_ := M_Ref_bool[isOwner_MultiSigWallet[this]][addr_s1033];
    return;
}



implementation MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] := 0;
    __tmp__lastDay_MultiSigWalletWithDailyLimit[this] := 0;
    __tmp__spentToday_MultiSigWalletWithDailyLimit[this] := 0;
    assume __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume _dailyLimit_s1065 >= 0;
    __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] := _dailyLimit_s1065;
}



implementation MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    dailyLimit_MultiSigWalletWithDailyLimit[this] := 0;
    lastDay_MultiSigWalletWithDailyLimit[this] := 0;
    spentToday_MultiSigWalletWithDailyLimit[this] := 0;
    assume dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume _dailyLimit_s1065 >= 0;
    dailyLimit_MultiSigWalletWithDailyLimit[this] := _dailyLimit_s1065;
}



implementation MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int)
{
    assume _required_s1065 >= 0;
    call MultiSigWallet_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s1065, _required_s1065);
    if (revert)
    {
        return;
    }

    call MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _owners_s1065, _required_s1065, _dailyLimit_s1065);
    if (revert)
    {
        return;
    }
}



implementation MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owners_s1065: Ref, 
    _required_s1065: int, 
    _dailyLimit_s1065: int)
{
    assume _required_s1065 >= 0;
    call MultiSigWallet_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, _owners_s1065, _required_s1065);
    if (revert)
    {
        return;
    }

    call MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _owners_s1065, _required_s1065, _dailyLimit_s1065);
    if (revert)
    {
        return;
    }
}



implementation changeDailyLimit_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _dailyLimit_s1081: int)
{
    call onlyWallet_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume _dailyLimit_s1081 >= 0;
    __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] := _dailyLimit_s1081;
}



implementation changeDailyLimit_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _dailyLimit_s1081: int)
{
    call onlyWallet_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume _dailyLimit_s1081 >= 0;
    dailyLimit_MultiSigWalletWithDailyLimit[this] := _dailyLimit_s1081;
    assert {:EventEmitted "DailyLimitChange_MultiSigWalletWithDailyLimit"} true;
}



implementation executeTransaction_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1179: int)
{
  var txn_s1178: Ref;
  var confirmed_s1178: bool;
  var __var_28: bool;
  var destination_s1176: Ref;
  var success_s1176: bool;
  var data_s1176: int;
  var __var_29: bool;
  var __var_30: int;
  var __var_31: int;

    call notExecuted_pre__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s1179);
    if (revert)
    {
        return;
    }

    gas := gas - 95;
    assume transactionId_s1179 >= 0;
    txn_s1178 := __tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s1179];
    gas := gas - 26;
    assume transactionId_s1179 >= 0;
    if (__tmp__DType[this] == MultiSigWalletWithDailyLimit)
    {
        call confirmed_s1178 := isConfirmed_MultiSigWallet__fail(this, msgsender_MSG, msgvalue_MSG, transactionId_s1179);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    confirmed_s1178 := confirmed_s1178;
    gas := gas - 520;
    assume __tmp__Length[__tmp__data_MultiSigWallet.Transaction[txn_s1178]] >= 0;
    assume __tmp__value_MultiSigWallet.Transaction[txn_s1178] >= 0;
    call __var_28 := isUnderLimit_MultiSigWalletWithDailyLimit__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__value_MultiSigWallet.Transaction[txn_s1178]);
    if (revert)
    {
        return;
    }

    if (confirmed_s1178
       || (__tmp__Length[__tmp__data_MultiSigWallet.Transaction[txn_s1178]] == 0
         && __var_28))
    {
        gas := gas - 20273;
        __tmp__executed_MultiSigWallet.Transaction[txn_s1178] := true;
        gas := gas - 3;
        if (!confirmed_s1178)
        {
            gas := gas - 20439;
            assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
            assume __tmp__value_MultiSigWallet.Transaction[txn_s1178] >= 0;
            __tmp__spentToday_MultiSigWalletWithDailyLimit[this] := __tmp__spentToday_MultiSigWalletWithDailyLimit[this]
               + __tmp__value_MultiSigWallet.Transaction[txn_s1178];
        }

        gas := gas - 253;
        destination_s1176 := __tmp__destination_MultiSigWallet.Transaction[txn_s1178];
        gas := gas - 3;
        havoc success_s1176;
        gas := gas - 3;
        havoc data_s1176;
        gas := gas - 36007;
        assume __tmp__value_MultiSigWallet.Transaction[txn_s1178] >= 0;
        call __var_29 := send__fail(this, destination_s1176, __tmp__value_MultiSigWallet.Transaction[txn_s1178]);
        success_s1176 := __var_29;
        data_s1176 := __var_30;
        gas := gas - 3;
        if (success_s1176)
        {
        }
        else
        {
            gas := gas - 20273;
            __tmp__executed_MultiSigWallet.Transaction[txn_s1178] := false;
            gas := gas - 3;
            if (!confirmed_s1178)
            {
                gas := gas - 20439;
                assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
                assume __tmp__value_MultiSigWallet.Transaction[txn_s1178] >= 0;
                __tmp__spentToday_MultiSigWalletWithDailyLimit[this] := __tmp__spentToday_MultiSigWalletWithDailyLimit[this]
                   - __tmp__value_MultiSigWallet.Transaction[txn_s1178];
            }
        }
    }
}



implementation executeTransaction_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s1179: int)
{
  var txn_s1178: Ref;
  var confirmed_s1178: bool;
  var __var_28: bool;
  var destination_s1176: Ref;
  var success_s1176: bool;
  var data_s1176: int;
  var __var_29: bool;
  var __var_30: int;
  var __var_31: int;

    call notExecuted_pre__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s1179);
    if (revert)
    {
        return;
    }

    gas := gas - 95;
    assume transactionId_s1179 >= 0;
    txn_s1178 := M_int_Ref[transactions_MultiSigWallet[this]][transactionId_s1179];
    gas := gas - 26;
    assume transactionId_s1179 >= 0;
    if (DType[this] == MultiSigWalletWithDailyLimit)
    {
        call confirmed_s1178 := isConfirmed_MultiSigWallet__success(this, msgsender_MSG, msgvalue_MSG, transactionId_s1179);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    confirmed_s1178 := confirmed_s1178;
    gas := gas - 520;
    assume Length[data_MultiSigWallet.Transaction[txn_s1178]] >= 0;
    assume value_MultiSigWallet.Transaction[txn_s1178] >= 0;
    call __var_28 := isUnderLimit_MultiSigWalletWithDailyLimit__success(this, msgsender_MSG, msgvalue_MSG, value_MultiSigWallet.Transaction[txn_s1178]);
    if (revert)
    {
        return;
    }

    if (confirmed_s1178
       || (Length[data_MultiSigWallet.Transaction[txn_s1178]] == 0 && __var_28))
    {
        gas := gas - 20273;
        executed_MultiSigWallet.Transaction[txn_s1178] := true;
        gas := gas - 3;
        if (!confirmed_s1178)
        {
            gas := gas - 20439;
            assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
            assume value_MultiSigWallet.Transaction[txn_s1178] >= 0;
            spentToday_MultiSigWalletWithDailyLimit[this] := spentToday_MultiSigWalletWithDailyLimit[this]
               + value_MultiSigWallet.Transaction[txn_s1178];
        }

        gas := gas - 253;
        destination_s1176 := destination_MultiSigWallet.Transaction[txn_s1178];
        gas := gas - 3;
        havoc success_s1176;
        gas := gas - 3;
        havoc data_s1176;
        gas := gas - 36007;
        assume value_MultiSigWallet.Transaction[txn_s1178] >= 0;
        call __var_29 := send__success(this, destination_s1176, value_MultiSigWallet.Transaction[txn_s1178]);
        success_s1176 := __var_29;
        data_s1176 := __var_30;
        gas := gas - 3;
        if (success_s1176)
        {
            assert {:EventEmitted "Execution_MultiSigWalletWithDailyLimit"} true;
        }
        else
        {
            assert {:EventEmitted "ExecutionFailure_MultiSigWalletWithDailyLimit"} true;
            gas := gas - 20273;
            executed_MultiSigWallet.Transaction[txn_s1178] := false;
            gas := gas - 3;
            if (!confirmed_s1178)
            {
                gas := gas - 20439;
                assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
                assume value_MultiSigWallet.Transaction[txn_s1178] >= 0;
                spentToday_MultiSigWalletWithDailyLimit[this] := spentToday_MultiSigWalletWithDailyLimit[this]
                   - value_MultiSigWallet.Transaction[txn_s1178];
            }
        }
    }
}



implementation isUnderLimit_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s1218: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 214;
    assume __tmp__now >= 0;
    assume __tmp__lastDay_MultiSigWalletWithDailyLimit[this] >= 0;
    assume __tmp__lastDay_MultiSigWalletWithDailyLimit[this] + 24 >= 0;
    if (__tmp__now > __tmp__lastDay_MultiSigWalletWithDailyLimit[this] + 24)
    {
        gas := gas - 20013;
        assume __tmp__lastDay_MultiSigWalletWithDailyLimit[this] >= 0;
        assume __tmp__now >= 0;
        __tmp__lastDay_MultiSigWalletWithDailyLimit[this] := __tmp__now;
        gas := gas - 5014;
        assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
        __tmp__spentToday_MultiSigWalletWithDailyLimit[this] := 0;
    }

    gas := gas - 849;
    assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    assume amount_s1218 >= 0;
    assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218 >= 0;
    assume __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    assume amount_s1218 >= 0;
    assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218 >= 0;
    assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    if (__tmp__spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218
         > __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this]
       || __tmp__spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218
         < __tmp__spentToday_MultiSigWalletWithDailyLimit[this])
    {
        gas := gas - 19;
        __ret_0_ := false;
        return;
    }

    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation isUnderLimit_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s1218: int)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 214;
    assume now >= 0;
    assume lastDay_MultiSigWalletWithDailyLimit[this] >= 0;
    assume lastDay_MultiSigWalletWithDailyLimit[this] + 24 >= 0;
    if (now > lastDay_MultiSigWalletWithDailyLimit[this] + 24)
    {
        gas := gas - 20013;
        assume lastDay_MultiSigWalletWithDailyLimit[this] >= 0;
        assume now >= 0;
        lastDay_MultiSigWalletWithDailyLimit[this] := now;
        gas := gas - 5014;
        assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
        spentToday_MultiSigWalletWithDailyLimit[this] := 0;
    }

    gas := gas - 849;
    assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    assume amount_s1218 >= 0;
    assume spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218 >= 0;
    assume dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    assume amount_s1218 >= 0;
    assume spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218 >= 0;
    assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    if (spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218
         > dailyLimit_MultiSigWalletWithDailyLimit[this]
       || spentToday_MultiSigWalletWithDailyLimit[this] + amount_s1218
         < spentToday_MultiSigWalletWithDailyLimit[this])
    {
        gas := gas - 19;
        __ret_0_ := false;
        return;
    }

    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation calcMaxWithdraw_MultiSigWalletWithDailyLimit__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 214;
    assume __tmp__now >= 0;
    assume __tmp__lastDay_MultiSigWalletWithDailyLimit[this] >= 0;
    assume __tmp__lastDay_MultiSigWalletWithDailyLimit[this] + 24 >= 0;
    if (__tmp__now > __tmp__lastDay_MultiSigWalletWithDailyLimit[this] + 24)
    {
        gas := gas - 219;
        assume __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
        __ret_0_ := __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this];
        return;
    }

    gas := gas - 409;
    assume __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    if (__tmp__dailyLimit_MultiSigWalletWithDailyLimit[this]
       < __tmp__spentToday_MultiSigWalletWithDailyLimit[this])
    {
        gas := gas - 19;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 414;
    assume __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume __tmp__spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    assume __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this]
         - __tmp__spentToday_MultiSigWalletWithDailyLimit[this]
       >= 0;
    __ret_0_ := __tmp__dailyLimit_MultiSigWalletWithDailyLimit[this]
       - __tmp__spentToday_MultiSigWalletWithDailyLimit[this];
    return;
}



implementation calcMaxWithdraw_MultiSigWalletWithDailyLimit__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 3;
    gas := gas - 214;
    assume now >= 0;
    assume lastDay_MultiSigWalletWithDailyLimit[this] >= 0;
    assume lastDay_MultiSigWalletWithDailyLimit[this] + 24 >= 0;
    if (now > lastDay_MultiSigWalletWithDailyLimit[this] + 24)
    {
        gas := gas - 219;
        assume dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
        __ret_0_ := dailyLimit_MultiSigWalletWithDailyLimit[this];
        return;
    }

    gas := gas - 409;
    assume dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    if (dailyLimit_MultiSigWalletWithDailyLimit[this]
       < spentToday_MultiSigWalletWithDailyLimit[this])
    {
        gas := gas - 19;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 414;
    assume dailyLimit_MultiSigWalletWithDailyLimit[this] >= 0;
    assume spentToday_MultiSigWalletWithDailyLimit[this] >= 0;
    assume dailyLimit_MultiSigWalletWithDailyLimit[this]
         - spentToday_MultiSigWalletWithDailyLimit[this]
       >= 0;
    __ret_0_ := dailyLimit_MultiSigWalletWithDailyLimit[this]
       - spentToday_MultiSigWalletWithDailyLimit[this];
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == MultiSigWalletWithDailyLimit)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MultiSigWallet)
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
    if (DType[to] == MultiSigWalletWithDailyLimit)
    {
        assume amount == 0;
    }
    else if (DType[to] == MultiSigWallet)
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
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owners_s295: Ref;
  var _required_s295: int;
  var owner_s332: Ref;
  var owner_s402: Ref;
  var owner_s464: Ref;
  var newOwner_s464: Ref;
  var _required_s485: int;
  var destination_s509: Ref;
  var value_s509: int;
  var data_s509: int;
  var transactionId_s509: int;
  var transactionId_s546: int;
  var transactionId_s579: int;
  var transactionId_s646: int;
  var transactionId_s689: int;
  var __ret_0_isConfirmed: bool;
  var transactionId_s759: int;
  var count_s759: int;
  var pending_s799: bool;
  var executed_s799: bool;
  var count_s799: int;
  var __ret_0_getOwners: Ref;
  var transactionId_s895: int;
  var _confirmations_s895: Ref;
  var from_s995: int;
  var to_s995: int;
  var pending_s995: bool;
  var executed_s995: bool;
  var _transactionIds_s995: Ref;
  var transactionId_s1008: int;
  var __ret_0_hasExecuted: bool;
  var transactionId_s1021: int;
  var __ret_0_getDestination: Ref;
  var addr_s1033: Ref;
  var __ret_0_isAOwner: bool;
  var transactionId_s1179: int;
  var _owners_s1065: Ref;
  var _required_s1065: int;
  var _dailyLimit_s1065: int;
  var _dailyLimit_s1081: int;
  var __ret_0_calcMaxWithdraw: int;

    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
    if (choice == 36)
    {
        gas := gas - 21000;
        call addOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, owner_s332);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 35)
    {
        gas := gas - 21000;
        call removeOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, owner_s402);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 34)
    {
        gas := gas - 21000;
        call replaceOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, owner_s464, newOwner_s464);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 33)
    {
        gas := gas - 21000;
        call changeRequirement_MultiSigWallet__fail(from, to, msgvalue_MSG, _required_s485);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 32)
    {
        gas := gas - 21000;
        call transactionId_s509 := submitTransaction_MultiSigWallet__fail(from, to, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 31)
    {
        gas := gas - 21000;
        call confirmTransaction_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s546);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 30)
    {
        gas := gas - 21000;
        call revokeConfirmation_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s579);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 29)
    {
        gas := gas - 21000;
        call executeTransaction_MultiSigWalletWithDailyLimit__fail(from, to, msgvalue_MSG, transactionId_s1179);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 28)
    {
        gas := gas - 21000;
        call __ret_0_isConfirmed := isConfirmed_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s689);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 27)
    {
        gas := gas - 21000;
        call count_s759 := getConfirmationCount_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s759);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 26)
    {
        gas := gas - 21000;
        call count_s799 := getTransactionCount_MultiSigWallet__fail(from, to, msgvalue_MSG, pending_s799, executed_s799);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 25)
    {
        gas := gas - 21000;
        call __ret_0_getOwners := getOwners_MultiSigWallet__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 24)
    {
        gas := gas - 21000;
        call _confirmations_s895 := getConfirmations_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s895);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet__fail(from, to, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        call __ret_0_hasExecuted := hasExecuted_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s1008);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        call __ret_0_getDestination := getDestination_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s1021);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        call __ret_0_isAOwner := isAOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, addr_s1033);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        call changeDailyLimit_MultiSigWalletWithDailyLimit__fail(from, to, msgvalue_MSG, _dailyLimit_s1081);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        call __ret_0_calcMaxWithdraw := calcMaxWithdraw_MultiSigWalletWithDailyLimit__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        call addOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, owner_s332);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        call removeOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, owner_s402);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        call replaceOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, owner_s464, newOwner_s464);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call changeRequirement_MultiSigWallet__fail(from, to, msgvalue_MSG, _required_s485);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call transactionId_s509 := submitTransaction_MultiSigWallet__fail(from, to, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call confirmTransaction_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s546);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call revokeConfirmation_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s579);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call executeTransaction_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s646);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_isConfirmed := isConfirmed_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s689);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call count_s759 := getConfirmationCount_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s759);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call count_s799 := getTransactionCount_MultiSigWallet__fail(from, to, msgvalue_MSG, pending_s799, executed_s799);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_getOwners := getOwners_MultiSigWallet__fail(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call _confirmations_s895 := getConfirmations_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s895);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet__fail(from, to, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_hasExecuted := hasExecuted_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s1008);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_getDestination := getDestination_MultiSigWallet__fail(from, to, msgvalue_MSG, transactionId_s1021);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_isAOwner := isAOwner_MultiSigWallet__fail(from, to, msgvalue_MSG, addr_s1033);
        if (revert)
        {
            return;
        }
    }
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owners_s295: Ref;
  var _required_s295: int;
  var owner_s332: Ref;
  var owner_s402: Ref;
  var owner_s464: Ref;
  var newOwner_s464: Ref;
  var _required_s485: int;
  var destination_s509: Ref;
  var value_s509: int;
  var data_s509: int;
  var transactionId_s509: int;
  var transactionId_s546: int;
  var transactionId_s579: int;
  var transactionId_s646: int;
  var transactionId_s689: int;
  var __ret_0_isConfirmed: bool;
  var transactionId_s759: int;
  var count_s759: int;
  var pending_s799: bool;
  var executed_s799: bool;
  var count_s799: int;
  var __ret_0_getOwners: Ref;
  var transactionId_s895: int;
  var _confirmations_s895: Ref;
  var from_s995: int;
  var to_s995: int;
  var pending_s995: bool;
  var executed_s995: bool;
  var _transactionIds_s995: Ref;
  var transactionId_s1008: int;
  var __ret_0_hasExecuted: bool;
  var transactionId_s1021: int;
  var __ret_0_getDestination: Ref;
  var addr_s1033: Ref;
  var __ret_0_isAOwner: bool;
  var transactionId_s1179: int;
  var _owners_s1065: Ref;
  var _required_s1065: int;
  var _dailyLimit_s1065: int;
  var _dailyLimit_s1081: int;
  var __ret_0_calcMaxWithdraw: int;

    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    if (choice == 36)
    {
        gas := gas - 21000;
        call addOwner_MultiSigWallet__success(from, to, msgvalue_MSG, owner_s332);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 35)
    {
        gas := gas - 21000;
        call removeOwner_MultiSigWallet__success(from, to, msgvalue_MSG, owner_s402);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 34)
    {
        gas := gas - 21000;
        call replaceOwner_MultiSigWallet__success(from, to, msgvalue_MSG, owner_s464, newOwner_s464);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 33)
    {
        gas := gas - 21000;
        call changeRequirement_MultiSigWallet__success(from, to, msgvalue_MSG, _required_s485);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 32)
    {
        gas := gas - 21000;
        call transactionId_s509 := submitTransaction_MultiSigWallet__success(from, to, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 31)
    {
        gas := gas - 21000;
        call confirmTransaction_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s546);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 30)
    {
        gas := gas - 21000;
        call revokeConfirmation_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s579);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 29)
    {
        gas := gas - 21000;
        call executeTransaction_MultiSigWalletWithDailyLimit__success(from, to, msgvalue_MSG, transactionId_s1179);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 28)
    {
        gas := gas - 21000;
        call __ret_0_isConfirmed := isConfirmed_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s689);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 27)
    {
        gas := gas - 21000;
        call count_s759 := getConfirmationCount_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s759);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 26)
    {
        gas := gas - 21000;
        call count_s799 := getTransactionCount_MultiSigWallet__success(from, to, msgvalue_MSG, pending_s799, executed_s799);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 25)
    {
        gas := gas - 21000;
        call __ret_0_getOwners := getOwners_MultiSigWallet__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 24)
    {
        gas := gas - 21000;
        call _confirmations_s895 := getConfirmations_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s895);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet__success(from, to, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        call __ret_0_hasExecuted := hasExecuted_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s1008);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        call __ret_0_getDestination := getDestination_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s1021);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        call __ret_0_isAOwner := isAOwner_MultiSigWallet__success(from, to, msgvalue_MSG, addr_s1033);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        call changeDailyLimit_MultiSigWalletWithDailyLimit__success(from, to, msgvalue_MSG, _dailyLimit_s1081);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        call __ret_0_calcMaxWithdraw := calcMaxWithdraw_MultiSigWalletWithDailyLimit__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        call addOwner_MultiSigWallet__success(from, to, msgvalue_MSG, owner_s332);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        call removeOwner_MultiSigWallet__success(from, to, msgvalue_MSG, owner_s402);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        call replaceOwner_MultiSigWallet__success(from, to, msgvalue_MSG, owner_s464, newOwner_s464);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call changeRequirement_MultiSigWallet__success(from, to, msgvalue_MSG, _required_s485);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call transactionId_s509 := submitTransaction_MultiSigWallet__success(from, to, msgvalue_MSG, destination_s509, value_s509, data_s509);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call confirmTransaction_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s546);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call revokeConfirmation_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s579);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call executeTransaction_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s646);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_isConfirmed := isConfirmed_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s689);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call count_s759 := getConfirmationCount_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s759);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call count_s799 := getTransactionCount_MultiSigWallet__success(from, to, msgvalue_MSG, pending_s799, executed_s799);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_getOwners := getOwners_MultiSigWallet__success(from, to, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call _confirmations_s895 := getConfirmations_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s895);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet__success(from, to, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_hasExecuted := hasExecuted_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s1008);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_getDestination := getDestination_MultiSigWallet__success(from, to, msgvalue_MSG, transactionId_s1021);
        if (revert)
        {
            return;
        }
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_isAOwner := isAOwner_MultiSigWallet__success(from, to, msgvalue_MSG, addr_s1033);
        if (revert)
        {
            return;
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
  var __snap___tmp__dailyLimit_MultiSigWalletWithDailyLimit: [Ref]int;
  var __snap___tmp__lastDay_MultiSigWalletWithDailyLimit: [Ref]int;
  var __snap___tmp__spentToday_MultiSigWalletWithDailyLimit: [Ref]int;

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
        __snap___tmp__dailyLimit_MultiSigWalletWithDailyLimit := __tmp__dailyLimit_MultiSigWalletWithDailyLimit;
        __snap___tmp__lastDay_MultiSigWalletWithDailyLimit := __tmp__lastDay_MultiSigWalletWithDailyLimit;
        __snap___tmp__spentToday_MultiSigWalletWithDailyLimit := __tmp__spentToday_MultiSigWalletWithDailyLimit;
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := __snap___tmp__dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := __snap___tmp__lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := __snap___tmp__spentToday_MultiSigWalletWithDailyLimit;
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
        __tmp__dailyLimit_MultiSigWalletWithDailyLimit := dailyLimit_MultiSigWalletWithDailyLimit;
        __tmp__lastDay_MultiSigWalletWithDailyLimit := lastDay_MultiSigWalletWithDailyLimit;
        __tmp__spentToday_MultiSigWalletWithDailyLimit := spentToday_MultiSigWalletWithDailyLimit;
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

    gas := gas - 351;
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

    gas := gas - 351;
    __var_1 := this;
    if (!(msgsender_MSG == this))
    {
        revert := true;
        return;
    }
}



implementation ownerDoesNotExist_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s102: Ref)
{
    gas := gas - 1432;
    if (!!__tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s102])
    {
        revert := true;
        return;
    }
}



implementation ownerDoesNotExist_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s102: Ref)
{
    gas := gas - 1432;
    if (!!M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s102])
    {
        revert := true;
        return;
    }
}



implementation ownerExists_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s114: Ref)
{
    gas := gas - 2840;
    if (!__tmp__M_Ref_bool[__tmp__isOwner_MultiSigWallet[this]][owner_s114])
    {
        revert := true;
        return;
    }
}



implementation ownerExists_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s114: Ref)
{
    gas := gas - 2840;
    if (!M_Ref_bool[isOwner_MultiSigWallet[this]][owner_s114])
    {
        revert := true;
        return;
    }
}



implementation transactionExists_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s131: int)
{
  var __var_2: Ref;

    gas := gas - 740;
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

    gas := gas - 740;
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

    gas := gas - 872;
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

    gas := gas - 872;
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
    gas := gas - 1408;
    assume transactionId_s178 >= 0;
    if (!!__tmp__executed_MultiSigWallet.Transaction[__tmp__M_int_Ref[__tmp__transactions_MultiSigWallet[this]][transactionId_s178]])
    {
        revert := true;
        return;
    }
}



implementation notExecuted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, transactionId_s178: int)
{
    gas := gas - 1408;
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

    gas := gas - 176;
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

    gas := gas - 176;
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
    ownerCount_s219: int, 
    _required_s219: int)
{
    gas := gas - 360;
    assume ownerCount_s219 >= 0;
    assume __tmp__MAX_OWNER_COUNT_MultiSigWallet[this] >= 0;
    assume _required_s219 >= 0;
    assume ownerCount_s219 >= 0;
    assume _required_s219 >= 0;
    assume ownerCount_s219 >= 0;
    if (ownerCount_s219 > __tmp__MAX_OWNER_COUNT_MultiSigWallet[this]
       || _required_s219 > ownerCount_s219
       || _required_s219 == 0
       || ownerCount_s219 == 0)
    {
        gas := gas - 24;
        revert := true;
        return;
    }
}



implementation validRequirement_pre__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    ownerCount_s219: int, 
    _required_s219: int)
{
    gas := gas - 360;
    assume ownerCount_s219 >= 0;
    assume MAX_OWNER_COUNT_MultiSigWallet[this] >= 0;
    assume _required_s219 >= 0;
    assume ownerCount_s219 >= 0;
    assume _required_s219 >= 0;
    assume ownerCount_s219 >= 0;
    if (ownerCount_s219 > MAX_OWNER_COUNT_MultiSigWallet[this]
       || _required_s219 > ownerCount_s219
       || _required_s219 == 0
       || ownerCount_s219 == 0)
    {
        gas := gas - 24;
        revert := true;
        return;
    }
}



implementation CorralChoice_MultiSigWallet(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owners_s295: Ref;
  var _required_s295: int;
  var owner_s332: Ref;
  var owner_s402: Ref;
  var owner_s464: Ref;
  var newOwner_s464: Ref;
  var _required_s485: int;
  var destination_s509: Ref;
  var value_s509: int;
  var data_s509: int;
  var transactionId_s509: int;
  var transactionId_s546: int;
  var transactionId_s579: int;
  var transactionId_s646: int;
  var transactionId_s689: int;
  var __ret_0_isConfirmed: bool;
  var transactionId_s759: int;
  var count_s759: int;
  var pending_s799: bool;
  var executed_s799: bool;
  var count_s799: int;
  var __ret_0_getOwners: Ref;
  var transactionId_s895: int;
  var _confirmations_s895: Ref;
  var from_s995: int;
  var to_s995: int;
  var pending_s995: bool;
  var executed_s995: bool;
  var _transactionIds_s995: Ref;
  var transactionId_s1008: int;
  var __ret_0_hasExecuted: bool;
  var transactionId_s1021: int;
  var __ret_0_getDestination: Ref;
  var addr_s1033: Ref;
  var __ret_0_isAOwner: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owners_s295;
    havoc _required_s295;
    havoc owner_s332;
    havoc owner_s402;
    havoc owner_s464;
    havoc newOwner_s464;
    havoc _required_s485;
    havoc destination_s509;
    havoc value_s509;
    havoc data_s509;
    havoc transactionId_s509;
    havoc transactionId_s546;
    havoc transactionId_s579;
    havoc transactionId_s646;
    havoc transactionId_s689;
    havoc __ret_0_isConfirmed;
    havoc transactionId_s759;
    havoc count_s759;
    havoc pending_s799;
    havoc executed_s799;
    havoc count_s799;
    havoc __ret_0_getOwners;
    havoc transactionId_s895;
    havoc _confirmations_s895;
    havoc from_s995;
    havoc to_s995;
    havoc pending_s995;
    havoc executed_s995;
    havoc _transactionIds_s995;
    havoc transactionId_s1008;
    havoc __ret_0_hasExecuted;
    havoc transactionId_s1021;
    havoc __ret_0_getDestination;
    havoc addr_s1033;
    havoc __ret_0_isAOwner;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != MultiSigWallet;
    assume DType[msgsender_MSG] != MultiSigWalletWithDailyLimit;
    Alloc[msgsender_MSG] := true;
    if (choice == 17)
    {
        gas := gas - 21000;
        call addOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s332);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        call removeOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s402);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        call replaceOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s464, newOwner_s464);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call changeRequirement_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, _required_s485);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call transactionId_s509 := submitTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call confirmTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call revokeConfirmation_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s579);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call executeTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s646);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call __ret_0_isConfirmed := isConfirmed_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s689);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call count_s759 := getConfirmationCount_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s759);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call count_s799 := getTransactionCount_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, pending_s799, executed_s799);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call __ret_0_getOwners := getOwners_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call _confirmations_s895 := getConfirmations_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s895);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_hasExecuted := hasExecuted_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s1008);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_getDestination := getDestination_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s1021);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_isAOwner := isAOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, addr_s1033);
    }
}



implementation CorralEntry_MultiSigWallet()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _owners_s295: Ref;
  var _required_s295: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MultiSigWallet || DType[this] == MultiSigWalletWithDailyLimit;
    call _owners_s295 := FreshRefGenerator__success();
    gas := gas - 53000;
    call MultiSigWallet_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, _owners_s295, _required_s295);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MultiSigWallet(this);
    }
}



implementation CorralChoice_MultiSigWalletWithDailyLimit(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owners_s295: Ref;
  var _required_s295: int;
  var owner_s332: Ref;
  var owner_s402: Ref;
  var owner_s464: Ref;
  var newOwner_s464: Ref;
  var _required_s485: int;
  var destination_s509: Ref;
  var value_s509: int;
  var data_s509: int;
  var transactionId_s509: int;
  var transactionId_s546: int;
  var transactionId_s579: int;
  var transactionId_s1179: int;
  var transactionId_s689: int;
  var __ret_0_isConfirmed: bool;
  var transactionId_s759: int;
  var count_s759: int;
  var pending_s799: bool;
  var executed_s799: bool;
  var count_s799: int;
  var __ret_0_getOwners: Ref;
  var transactionId_s895: int;
  var _confirmations_s895: Ref;
  var from_s995: int;
  var to_s995: int;
  var pending_s995: bool;
  var executed_s995: bool;
  var _transactionIds_s995: Ref;
  var transactionId_s1008: int;
  var __ret_0_hasExecuted: bool;
  var transactionId_s1021: int;
  var __ret_0_getDestination: Ref;
  var addr_s1033: Ref;
  var __ret_0_isAOwner: bool;
  var _owners_s1065: Ref;
  var _required_s1065: int;
  var _dailyLimit_s1065: int;
  var _dailyLimit_s1081: int;
  var __ret_0_calcMaxWithdraw: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owners_s295;
    havoc _required_s295;
    havoc owner_s332;
    havoc owner_s402;
    havoc owner_s464;
    havoc newOwner_s464;
    havoc _required_s485;
    havoc destination_s509;
    havoc value_s509;
    havoc data_s509;
    havoc transactionId_s509;
    havoc transactionId_s546;
    havoc transactionId_s579;
    havoc transactionId_s1179;
    havoc transactionId_s689;
    havoc __ret_0_isConfirmed;
    havoc transactionId_s759;
    havoc count_s759;
    havoc pending_s799;
    havoc executed_s799;
    havoc count_s799;
    havoc __ret_0_getOwners;
    havoc transactionId_s895;
    havoc _confirmations_s895;
    havoc from_s995;
    havoc to_s995;
    havoc pending_s995;
    havoc executed_s995;
    havoc _transactionIds_s995;
    havoc transactionId_s1008;
    havoc __ret_0_hasExecuted;
    havoc transactionId_s1021;
    havoc __ret_0_getDestination;
    havoc addr_s1033;
    havoc __ret_0_isAOwner;
    havoc _owners_s1065;
    havoc _required_s1065;
    havoc _dailyLimit_s1065;
    havoc _dailyLimit_s1081;
    havoc __ret_0_calcMaxWithdraw;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != MultiSigWallet;
    assume DType[msgsender_MSG] != MultiSigWalletWithDailyLimit;
    Alloc[msgsender_MSG] := true;
    if (choice == 19)
    {
        gas := gas - 21000;
        call addOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s332);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        call removeOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s402);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        call replaceOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, owner_s464, newOwner_s464);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        call changeRequirement_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, _required_s485);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        call transactionId_s509 := submitTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, destination_s509, value_s509, data_s509);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        call confirmTransaction_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s546);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        call revokeConfirmation_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s579);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call executeTransaction_MultiSigWalletWithDailyLimit(this, msgsender_MSG, msgvalue_MSG, transactionId_s1179);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        call __ret_0_isConfirmed := isConfirmed_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s689);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        call count_s759 := getConfirmationCount_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s759);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        call count_s799 := getTransactionCount_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, pending_s799, executed_s799);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call __ret_0_getOwners := getOwners_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call _confirmations_s895 := getConfirmations_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s895);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call _transactionIds_s995 := getTransactionIds_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, from_s995, to_s995, pending_s995, executed_s995);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call __ret_0_hasExecuted := hasExecuted_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s1008);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call __ret_0_getDestination := getDestination_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, transactionId_s1021);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call __ret_0_isAOwner := isAOwner_MultiSigWallet(this, msgsender_MSG, msgvalue_MSG, addr_s1033);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call changeDailyLimit_MultiSigWalletWithDailyLimit(this, msgsender_MSG, msgvalue_MSG, _dailyLimit_s1081);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call __ret_0_calcMaxWithdraw := calcMaxWithdraw_MultiSigWalletWithDailyLimit(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _owners_s1065: Ref;
  var _required_s1065: int;
  var _dailyLimit_s1065: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MultiSigWalletWithDailyLimit;
    call _owners_s1065 := FreshRefGenerator__success();
    gas := gas - 53000;
    call MultiSigWalletWithDailyLimit_MultiSigWalletWithDailyLimit(this, msgsender_MSG, msgvalue_MSG, _owners_s1065, _required_s1065, _dailyLimit_s1065);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MultiSigWalletWithDailyLimit(this);
    }
}


