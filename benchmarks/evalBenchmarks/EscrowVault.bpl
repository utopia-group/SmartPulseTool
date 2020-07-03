// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:EscrowVault.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// Spec: L1
// LTLVariables: user:Ref
// LTLFairness: (<>(finished(EscrowVault.deposit(payee), (payee == user)))) && (<>(finished(EscrowVault.refund(payee), (payee == user))))
// LTLProperty: []((finished(EscrowVault.enableRefunds)) ==> (<>(finished(send(from, to, amt), (to == user && amt == fsum(EscrowVault.deposit(payee), 2, payee == user))))))

// Spec: L2 (Original) CEX
// LTLVariables: ben:Ref
// LTLFairness: <>(finished(EscrowVault.deposit)) && <>(finished(EscrowVault.close, (ben == this.beneficiary)))
// LTLProperty: (<>(finished(send(from, to, amt), (to == ben && amt == fsum(EscrowVault.deposit, 2)))))

// Spec: L2 (Modified) Verifies
// #LTLVariables: ben:Ref,val:int
// #LTLFairness: <>(finished(EscrowVault.close, (ben == this.beneficiary)))

// This property proves stability. I.e., once the two sums bemoces equal they would stay equal forever.
// Kostas: Takes more than an hour in my laptop 
// #LTLProperty: (<>(finished(*, (fsum(send(from, to, amt), 2, (to == ben)) == fsum(EscrowVault.deposit, 2))) && X([](!finished(send(from, to, amt), (to == ben))))))

// This property states that just eventually the two sums will be the same (no stability).
// Kostas: Terminates in a reasonalbe time
// LTLProperty: <>(finished(*,  (fsum(send(from, to, amt), 2, (to == ben)) == fsum(EscrowVault.deposit, 2))))

// This is a stronger version of stability (haven't managed to make it terminate).
// Kostas: Stopped it after an hour and a half on my laptop.
// LTLProperty: <>([](!finished(*, (fsum(send(from, to, amt), 2, (to == ben)) != fsum(EscrowVault.deposit, 2)))))

type Ref = int;

type ContractName = int;

const unique null: Ref;

const unique SafeMath: ContractName;

const unique Ownable: ContractName;

const unique EscrowVault: ContractName;

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

var M_Ref_int_deposited0: [Ref][Ref]int;

var sum_deposited0: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, Balance;



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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s52: int, b_s52: int)
   returns (__ret_0_: int);



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s96: int, b_s96: int)
   returns (__ret_0_: int);
  modifies gas, revert;



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, Balance, owner_Ownable;



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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
        assume !revert && gas >= 0;
    }
}



var {:access "this.deposited[i0]=M_Ref_int_deposited0[deposited_EscrowVault[this]][i0]"} {:sum "sum(this.deposited)=sum_deposited0[deposited_EscrowVault[this]]"} deposited_EscrowVault: [Ref]Ref;

var {:access "this.beneficiary=beneficiary_EscrowVault[this]"} beneficiary_EscrowVault: [Ref]Ref;

var {:access "this.superOwner=superOwner_EscrowVault[this]"} superOwner_EscrowVault: [Ref]Ref;

var {:access "this.state=state_EscrowVault[this]"} state_EscrowVault: [Ref]int;

procedure {:inline 1} EscrowVault_EscrowVault_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref);
  modifies Balance, deposited_EscrowVault, M_Ref_int_deposited0, sum_deposited0, beneficiary_EscrowVault, superOwner_EscrowVault, revert, state_EscrowVault, Alloc;



procedure {:constructor} {:public} {:inline 1} EscrowVault_EscrowVault(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, Balance, owner_Ownable, deposited_EscrowVault, M_Ref_int_deposited0, sum_deposited0, beneficiary_EscrowVault, superOwner_EscrowVault, state_EscrowVault, Alloc;



implementation EscrowVault_EscrowVault(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call EscrowVault_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG, _superOwner_s224, _beneficiary_s224);
        assume revert || gas < 0;
    }
    else
    {
        call EscrowVault_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG, _superOwner_s224, _beneficiary_s224);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s256: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, Balance, sum_deposited0, M_Ref_int_deposited0;



implementation deposit_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s256: Ref)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call deposit_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG, investor_s256);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG, investor_s256);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setGoalReached_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, state_EscrowVault;



implementation setGoalReached_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call setGoalReached_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call setGoalReached_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s320: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, Balance;



implementation withdraw_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s320: int)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call withdraw_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG, _amount_s320);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG, _amount_s320);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawAll_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, Balance;



implementation withdrawAll_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call withdrawAll_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdrawAll_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} close_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, state_EscrowVault, Balance;



implementation close_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call close_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call close_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} enableRefunds_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, state_EscrowVault;



implementation enableRefunds_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call enableRefunds_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call enableRefunds_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} refund_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s431: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, gas, sum_deposited0, M_Ref_int_deposited0, Balance;



implementation refund_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s431: Ref)
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
        call refund_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG, investor_s431);
        assume revert || gas < 0;
    }
    else
    {
        call refund_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG, investor_s431);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, revert, Balance;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, now, owner_Ownable, Balance;



procedure CorralChoice_EscrowVault(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, owner_Ownable, Balance, sum_deposited0, M_Ref_int_deposited0, state_EscrowVault;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, now, owner_Ownable, Balance, sum_deposited0, M_Ref_int_deposited0, state_EscrowVault, deposited_EscrowVault, beneficiary_EscrowVault, superOwner_EscrowVault;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_deposited0: [Ref][Ref]int;

var __tmp__sum_deposited0: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__owner_Ownable: [Ref]Ref;

var __tmp__deposited_EscrowVault: [Ref]Ref;

var __tmp__beneficiary_EscrowVault: [Ref]Ref;

var __tmp__superOwner_EscrowVault: [Ref]Ref;

var __tmp__state_EscrowVault: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s52: int, b_s52: int)
   returns (__ret_0_: int);



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int);
  modifies revert;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s96: int, b_s96: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref);
  modifies gas, revert, owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref);
  modifies gas, revert, __tmp__owner_Ownable;



procedure {:inline 1} EscrowVault_EscrowVault_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref);
  modifies __tmp__Balance, __tmp__deposited_EscrowVault, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, revert, __tmp__state_EscrowVault, __tmp__Alloc;



procedure {:constructor} {:inline 1} EscrowVault_EscrowVault__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref);
  modifies Balance, owner_Ownable, deposited_EscrowVault, M_Ref_int_deposited0, sum_deposited0, beneficiary_EscrowVault, superOwner_EscrowVault, revert, state_EscrowVault, Alloc;



procedure {:constructor} {:inline 1} EscrowVault_EscrowVault__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, revert, __tmp__state_EscrowVault, __tmp__Alloc;



procedure {:inline 1} deposit_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s256: Ref);
  modifies Balance, gas, revert, sum_deposited0, M_Ref_int_deposited0;



procedure {:inline 1} deposit_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s256: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__sum_deposited0, __tmp__M_Ref_int_deposited0;



procedure {:inline 1} setGoalReached_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, state_EscrowVault;



procedure {:inline 1} setGoalReached_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__state_EscrowVault;



procedure {:inline 1} withdraw_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s320: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, Balance;



procedure {:inline 1} withdraw_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s320: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault;



procedure {:inline 1} withdrawAll_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, Balance;



procedure {:inline 1} withdrawAll_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault;



procedure {:inline 1} close_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, state_EscrowVault, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, Balance;



procedure {:inline 1} close_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__state_EscrowVault, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault;



procedure {:inline 1} enableRefunds_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, state_EscrowVault;



procedure {:inline 1} enableRefunds_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__state_EscrowVault;



procedure {:inline 1} refund_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s431: Ref);
  modifies gas, revert, sum_deposited0, M_Ref_int_deposited0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, Balance;



procedure {:inline 1} refund_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s431: Ref);
  modifies gas, revert, __tmp__sum_deposited0, __tmp__M_Ref_int_deposited0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_deposited0, __tmp__sum_deposited0, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__deposited_EscrowVault, __tmp__beneficiary_EscrowVault, __tmp__superOwner_EscrowVault, __tmp__state_EscrowVault, revert;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int)
   returns (__ret_0_: int)
{
  var c_s33: int;

    assume a_s34 >= 0;
    if (a_s34 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    assume c_s33 >= 0;
    assume a_s34 >= 0;
    assume b_s34 >= 0;
    assume nonlinearMul(a_s34, b_s34) >= 0;
    c_s33 := nonlinearMul(a_s34, b_s34);
    assume c_s33 >= 0;
    assume a_s34 >= 0;
    assume nonlinearDiv(c_s33, a_s34) >= 0;
    assume b_s34 >= 0;
    if (!(nonlinearDiv(c_s33, a_s34) == b_s34))
    {
        revert := true;
        return;
    }

    assume c_s33 >= 0;
    __ret_0_ := c_s33;
    return;
}



implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int)
   returns (__ret_0_: int)
{
  var c_s33: int;

    assume a_s34 >= 0;
    if (a_s34 == 0)
    {
        __ret_0_ := 0;
        return;
    }

    assume c_s33 >= 0;
    assume a_s34 >= 0;
    assume b_s34 >= 0;
    assume nonlinearMul(a_s34, b_s34) >= 0;
    c_s33 := nonlinearMul(a_s34, b_s34);
    assume c_s33 >= 0;
    assume a_s34 >= 0;
    assume nonlinearDiv(c_s33, a_s34) >= 0;
    assume b_s34 >= 0;
    if (!(nonlinearDiv(c_s33, a_s34) == b_s34))
    {
        revert := true;
        return;
    }

    assume c_s33 >= 0;
    __ret_0_ := c_s33;
    return;
}



implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s52: int, b_s52: int)
   returns (__ret_0_: int)
{
  var c_s51: int;

    assume c_s51 >= 0;
    assume a_s52 >= 0;
    assume b_s52 >= 0;
    assume nonlinearDiv(a_s52, b_s52) >= 0;
    c_s51 := nonlinearDiv(a_s52, b_s52);
    assume c_s51 >= 0;
    __ret_0_ := c_s51;
    return;
}



implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s52: int, b_s52: int)
   returns (__ret_0_: int)
{
  var c_s51: int;

    assume c_s51 >= 0;
    assume a_s52 >= 0;
    assume b_s52 >= 0;
    assume nonlinearDiv(a_s52, b_s52) >= 0;
    c_s51 := nonlinearDiv(a_s52, b_s52);
    assume c_s51 >= 0;
    __ret_0_ := c_s51;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int)
{
    assume b_s72 >= 0;
    assume a_s72 >= 0;
    if (!(b_s72 <= a_s72))
    {
        revert := true;
        return;
    }

    assume a_s72 >= 0;
    assume b_s72 >= 0;
    assume a_s72 - b_s72 >= 0;
    __ret_0_ := a_s72 - b_s72;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int)
   returns (__ret_0_: int)
{
    assume b_s72 >= 0;
    assume a_s72 >= 0;
    if (!(b_s72 <= a_s72))
    {
        revert := true;
        return;
    }

    assume a_s72 >= 0;
    assume b_s72 >= 0;
    assume a_s72 - b_s72 >= 0;
    __ret_0_ := a_s72 - b_s72;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s96: int, b_s96: int)
   returns (__ret_0_: int)
{
  var c_s95: int;

    gas := gas - 3;
    gas := gas - 17;
    assume c_s95 >= 0;
    assume a_s96 >= 0;
    assume b_s96 >= 0;
    assume a_s96 + b_s96 >= 0;
    c_s95 := a_s96 + b_s96;
    gas := gas - 32;
    assume c_s95 >= 0;
    assume a_s96 >= 0;
    if (!(c_s95 >= a_s96))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume c_s95 >= 0;
    __ret_0_ := c_s95;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s96: int, b_s96: int)
   returns (__ret_0_: int)
{
  var c_s95: int;

    gas := gas - 3;
    gas := gas - 17;
    assume c_s95 >= 0;
    assume a_s96 >= 0;
    assume b_s96 >= 0;
    assume a_s96 + b_s96 >= 0;
    c_s95 := a_s96 + b_s96;
    gas := gas - 32;
    assume c_s95 >= 0;
    assume a_s96 >= 0;
    if (!(c_s95 >= a_s96))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume c_s95 >= 0;
    __ret_0_ := c_s95;
    return;
}



implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__owner_Ownable[this] := null;
    __tmp__owner_Ownable[this] := msgsender_MSG;
}



implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    owner_Ownable[this] := null;
    owner_Ownable[this] := msgsender_MSG;
}



implementation Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 88;
    __var_1 := null;
    if (!(newOwner_s150 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    __tmp__owner_Ownable[this] := newOwner_s150;
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 88;
    __var_1 := null;
    if (!(newOwner_s150 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 40534;
    owner_Ownable[this] := newOwner_s150;
}



implementation EscrowVault_EscrowVault_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref)
{
  var __var_2: Ref;
  var __var_3: Ref;
  var __var_4: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_4 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__deposited_EscrowVault[this] := __var_4;
    __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]] := zeroRefIntArr();
    __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]] := 0;
    __tmp__beneficiary_EscrowVault[this] := null;
    __tmp__superOwner_EscrowVault[this] := null;
    __var_2 := null;
    if (!(_beneficiary_s224 != null))
    {
        revert := true;
        return;
    }

    __var_3 := null;
    if (!(_superOwner_s224 != null))
    {
        revert := true;
        return;
    }

    __tmp__beneficiary_EscrowVault[this] := _beneficiary_s224;
    __tmp__superOwner_EscrowVault[this] := _superOwner_s224;
    __tmp__state_EscrowVault[this] := 0;
}



implementation EscrowVault_EscrowVault_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref)
{
  var __var_2: Ref;
  var __var_3: Ref;
  var __var_4: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_4 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    deposited_EscrowVault[this] := __var_4;
    M_Ref_int_deposited0[deposited_EscrowVault[this]] := zeroRefIntArr();
    sum_deposited0[deposited_EscrowVault[this]] := 0;
    beneficiary_EscrowVault[this] := null;
    superOwner_EscrowVault[this] := null;
    __var_2 := null;
    if (!(_beneficiary_s224 != null))
    {
        revert := true;
        return;
    }

    __var_3 := null;
    if (!(_superOwner_s224 != null))
    {
        revert := true;
        return;
    }

    beneficiary_EscrowVault[this] := _beneficiary_s224;
    superOwner_EscrowVault[this] := _superOwner_s224;
    state_EscrowVault[this] := 0;
}



implementation EscrowVault_EscrowVault__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref)
{
  var __var_2: Ref;
  var __var_3: Ref;
  var __var_4: Ref;

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call EscrowVault_EscrowVault_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _superOwner_s224, _beneficiary_s224);
    if (revert)
    {
        return;
    }
}



implementation EscrowVault_EscrowVault__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _superOwner_s224: Ref, 
    _beneficiary_s224: Ref)
{
  var __var_2: Ref;
  var __var_3: Ref;
  var __var_4: Ref;

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call EscrowVault_EscrowVault_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _superOwner_s224, _beneficiary_s224);
    if (revert)
    {
        return;
    }
}



implementation deposit_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s256: Ref)
{
  var __var_5: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 733;
    if (!(__tmp__state_EscrowVault[this] == 0 || __tmp__state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 20438;
    assume __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s256]
       >= 0;
    assume __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s256]
       >= 0;
    assume msgvalue_MSG >= 0;
    call __var_5 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s256], msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]] := __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]]
       - __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s256];
    __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s256] := __var_5;
    __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]] := __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]]
       + __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s256];
    assume __var_5 >= 0;
}



implementation deposit_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s256: Ref)
{
  var __var_5: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 733;
    if (!(state_EscrowVault[this] == 0 || state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 20438;
    assume M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s256] >= 0;
    assume M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s256] >= 0;
    assume msgvalue_MSG >= 0;
    call __var_5 := add_SafeMath__success(this, this, 0, M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s256], msgvalue_MSG);
    if (revert)
    {
        return;
    }

    sum_deposited0[deposited_EscrowVault[this]] := sum_deposited0[deposited_EscrowVault[this]]
       - M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s256];
    M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s256] := __var_5;
    sum_deposited0[deposited_EscrowVault[this]] := sum_deposited0[deposited_EscrowVault[this]]
       + M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s256];
    assume __var_5 >= 0;
}



implementation setGoalReached_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__state_EscrowVault[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    __tmp__state_EscrowVault[this] := 2;
}



implementation setGoalReached_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(state_EscrowVault[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    state_EscrowVault[this] := 2;
    assert {:EventEmitted "GoalReached_EscrowVault"} true;
}



implementation withdraw_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s320: int)
{
  var __var_6: Ref;
  var __var_7: int;
  var __var_8: bool;

    gas := gas - 276;
    if (!(msgsender_MSG == __tmp__superOwner_EscrowVault[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 367;
    if (!(__tmp__state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 468;
    assume _amount_s320 >= 0;
    __var_6 := this;
    assume __tmp__Balance[this] >= 0;
    assume _amount_s320 >= 0;
    if (!(_amount_s320 <= __tmp__Balance[this] && _amount_s320 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 36029;
    __var_7 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_7 := __var_7 - gas;
    assume _amount_s320 >= 0;
    call __var_8 := send__fail(this, __tmp__beneficiary_EscrowVault[this], _amount_s320);
    if (!__var_8)
    {
        revert := true;
        return;
    }

    gas := __var_7 + gas;
}



implementation withdraw_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s320: int)
{
  var __var_6: Ref;
  var __var_7: int;
  var __var_8: bool;

    gas := gas - 276;
    if (!(msgsender_MSG == superOwner_EscrowVault[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 367;
    if (!(state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 468;
    assume _amount_s320 >= 0;
    __var_6 := this;
    assume Balance[this] >= 0;
    assume _amount_s320 >= 0;
    if (!(_amount_s320 <= Balance[this] && _amount_s320 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 36029;
    __var_7 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_7 := __var_7 - gas;
    assume _amount_s320 >= 0;
    call __var_8 := send__success(this, beneficiary_EscrowVault[this], _amount_s320);
    if (!__var_8)
    {
        revert := true;
        return;
    }

    gas := __var_7 + gas;
    assert {:EventEmitted "Withdrawal_EscrowVault"} true;
}



implementation withdrawAll_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var balance_s349: int;
  var __var_9: Ref;
  var __var_10: int;
  var __var_11: bool;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 416;
    assume balance_s349 >= 0;
    __var_9 := this;
    assume __tmp__Balance[this] >= 0;
    balance_s349 := __tmp__Balance[this];
    gas := gas - 36020;
    __var_10 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_10 := __var_10 - gas;
    assume balance_s349 >= 0;
    call __var_11 := send__fail(this, __tmp__beneficiary_EscrowVault[this], balance_s349);
    if (!__var_11)
    {
        revert := true;
        return;
    }

    gas := __var_10 + gas;
}



implementation withdrawAll_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var balance_s349: int;
  var __var_9: Ref;
  var __var_10: int;
  var __var_11: bool;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 416;
    assume balance_s349 >= 0;
    __var_9 := this;
    assume Balance[this] >= 0;
    balance_s349 := Balance[this];
    assert {:EventEmitted "Withdrawal_EscrowVault"} true;
    gas := gas - 36020;
    __var_10 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_10 := __var_10 - gas;
    assume balance_s349 >= 0;
    call __var_11 := send__success(this, beneficiary_EscrowVault[this], balance_s349);
    if (!__var_11)
    {
        revert := true;
        return;
    }

    gas := __var_10 + gas;
}



implementation close_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 15;
    call withdrawAll_EscrowVault__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20337;
    __tmp__state_EscrowVault[this] := 3;
}



implementation close_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(state_EscrowVault[this] == 2))
    {
        revert := true;
        return;
    }

    gas := gas - 15;
    call withdrawAll_EscrowVault__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20337;
    state_EscrowVault[this] := 3;
    assert {:EventEmitted "Close_EscrowVault"} true;
}



implementation enableRefunds_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(__tmp__state_EscrowVault[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    __tmp__state_EscrowVault[this] := 1;
}



implementation enableRefunds_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 367;
    if (!(state_EscrowVault[this] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20337;
    state_EscrowVault[this] := 1;
    assert {:EventEmitted "RefundsEnabled_EscrowVault"} true;
}



implementation refund_EscrowVault__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s431: Ref)
{
  var depositedValue_s430: int;
  var __var_12: int;
  var __var_13: bool;

    gas := gas - 367;
    if (!(__tmp__state_EscrowVault[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 307;
    assume depositedValue_s430 >= 0;
    assume __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s431]
       >= 0;
    depositedValue_s430 := __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s431];
    gas := gas - 5104;
    assume __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s431]
       >= 0;
    __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]] := __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]]
       - __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s431];
    __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s431] := 0;
    __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]] := __tmp__sum_deposited0[__tmp__deposited_EscrowVault[this]]
       + __tmp__M_Ref_int_deposited0[__tmp__deposited_EscrowVault[this]][investor_s431];
    gas := gas - 35787;
    __var_12 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_12 := __var_12 - gas;
    assume depositedValue_s430 >= 0;
    call __var_13 := send__fail(this, investor_s431, depositedValue_s430);
    if (!__var_13)
    {
        revert := true;
        return;
    }

    gas := __var_12 + gas;
}



implementation refund_EscrowVault__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s431: Ref)
{
  var depositedValue_s430: int;
  var __var_12: int;
  var __var_13: bool;

    gas := gas - 367;
    if (!(state_EscrowVault[this] == 1))
    {
        revert := true;
        return;
    }

    gas := gas - 307;
    assume depositedValue_s430 >= 0;
    assume M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s431] >= 0;
    depositedValue_s430 := M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s431];
    gas := gas - 5104;
    assume M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s431] >= 0;
    sum_deposited0[deposited_EscrowVault[this]] := sum_deposited0[deposited_EscrowVault[this]]
       - M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s431];
    M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s431] := 0;
    sum_deposited0[deposited_EscrowVault[this]] := sum_deposited0[deposited_EscrowVault[this]]
       + M_Ref_int_deposited0[deposited_EscrowVault[this]][investor_s431];
    gas := gas - 35787;
    __var_12 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_12 := __var_12 - gas;
    assume depositedValue_s430 >= 0;
    call __var_13 := send__success(this, investor_s431, depositedValue_s430);
    if (!__var_13)
    {
        revert := true;
        return;
    }

    gas := __var_12 + gas;
    assert {:EventEmitted "Refunded_EscrowVault"} true;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == EscrowVault)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Ownable)
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
    if (DType[to] == EscrowVault)
    {
        assume amount == 0;
    }
    else if (DType[to] == Ownable)
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
  var __snap___tmp__M_Ref_int_deposited0: [Ref][Ref]int;
  var __snap___tmp__sum_deposited0: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__deposited_EscrowVault: [Ref]Ref;
  var __snap___tmp__beneficiary_EscrowVault: [Ref]Ref;
  var __snap___tmp__superOwner_EscrowVault: [Ref]Ref;
  var __snap___tmp__state_EscrowVault: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_deposited0 := __tmp__M_Ref_int_deposited0;
        __snap___tmp__sum_deposited0 := __tmp__sum_deposited0;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__owner_Ownable := __tmp__owner_Ownable;
        __snap___tmp__deposited_EscrowVault := __tmp__deposited_EscrowVault;
        __snap___tmp__beneficiary_EscrowVault := __tmp__beneficiary_EscrowVault;
        __snap___tmp__superOwner_EscrowVault := __tmp__superOwner_EscrowVault;
        __snap___tmp__state_EscrowVault := __tmp__state_EscrowVault;
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
        __tmp__M_Ref_int_deposited0 := __snap___tmp__M_Ref_int_deposited0;
        __tmp__sum_deposited0 := __snap___tmp__sum_deposited0;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__owner_Ownable := __snap___tmp__owner_Ownable;
        __tmp__deposited_EscrowVault := __snap___tmp__deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := __snap___tmp__beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := __snap___tmp__superOwner_EscrowVault;
        __tmp__state_EscrowVault := __snap___tmp__state_EscrowVault;
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
        __tmp__M_Ref_int_deposited0 := M_Ref_int_deposited0;
        __tmp__sum_deposited0 := sum_deposited0;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__deposited_EscrowVault := deposited_EscrowVault;
        __tmp__beneficiary_EscrowVault := beneficiary_EscrowVault;
        __tmp__superOwner_EscrowVault := superOwner_EscrowVault;
        __tmp__state_EscrowVault := state_EscrowVault;
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
    gas := gas - 1932;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1932;
    if (!(msgsender_MSG == owner_Ownable[this]))
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != EscrowVault;
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



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s150: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s150;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != EscrowVault;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
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
    assume DType[this] == Ownable || DType[this] == EscrowVault;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_EscrowVault(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s150: Ref;
  var _superOwner_s224: Ref;
  var _beneficiary_s224: Ref;
  var investor_s256: Ref;
  var _amount_s320: int;
  var investor_s431: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s150;
    havoc _superOwner_s224;
    havoc _beneficiary_s224;
    havoc investor_s256;
    havoc _amount_s320;
    havoc investor_s431;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != EscrowVault;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call deposit_EscrowVault(this, msgsender_MSG, msgvalue_MSG, investor_s256);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setGoalReached_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _amount_s320);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdrawAll_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call close_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call enableRefunds_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call refund_EscrowVault(this, msgsender_MSG, msgvalue_MSG, investor_s431);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _superOwner_s224: Ref;
  var _beneficiary_s224: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == EscrowVault;
    gas := gas - 53000;
    call EscrowVault_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _superOwner_s224, _beneficiary_s224);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_EscrowVault(this);
    }
}


