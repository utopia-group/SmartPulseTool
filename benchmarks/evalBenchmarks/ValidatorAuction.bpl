// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:ValidatorAuction.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// LTLVariables: user:Ref
// LTLFairness: (<>(finished(ValidatorAuction.withdraw, (user == msg.sender))))
// LTLProperty: []((finished(ValidatorAuction.closeAuction)) ==> (<>(finished(send(from, to, amt), (to == user && amt == fsum(ValidatorAuction.bid, 2, (user == msg.sender)))))))

// LTLVariables: user:Ref,low:int
// LTLFairness: (<>(finished(ValidatorAuction.bid, (user == msg.sender)))) && (<>(finished(ValidatorAuction.withdraw, (user == msg.sender && this.auctionState == 3))))
// LTLProperty: []((finished(ValidatorAuction.closeAuction, (low == this.lowestSlotPrice))) ==> (<>(finished(send(from, to, amt), (to == user && amt == fsum(ValidatorAuction.bid, 2, (user == msg.sender)) - low)))))

// LTLVariables: user:Ref
// LTLFairness: (<>(finished(ValidatorAuction.bid, (user == msg.sender)))) && (<>(finished(ValidatorAuction.withdraw, (user == msg.sender && this.auctionState == 4))))
// LTLProperty: []((finished(ValidatorAuction.closeAuction)) ==> (<>(finished(send(from, to, amt), (to == user && amt == fsum(ValidatorAuction.bid, 2, (user == msg.sender)))))))

// Tmp Prop 1
// LTLProperty: [](!finished(*, Balance[this] < sum_bids2[bids_ValidatorAuction[this]]))

// Tmp Prop 2
// LTLVariables: a:Ref
// LTLProperty: [](!finished(*, this.bids[a] != fsum(ValidatorAuction.bid, 2, msg.sender == a) - fsum(send(from, to, amt), 2, to == a)))

// Tmp Prop 3
// #LTLVariables: a:Ref
// #LTLFairness: <>(finished(ValidatorAuction.bid, msg.sender == a && msg.value != 0)) && [](<>(started(ValidatorAuction.withdraw, msg.sender == a))) && [](!reverted(send(from, to, amt), to == a)) && <>(started(ValidatorAuction.depositBids, this.auctionState != 0 && this.auctionState != 1))
// #LTLProperty: <>(finished(send(from, to, amt), to == a && amt == fsum(ValidatorAuction.bid, 2, msg.sender == a))) && [](finished(send(from, to, amt), to == a && amt == fsum(ValidatorAuction.bid, 2, msg.sender == a)) ==> [](!started(send(from, to, amt), to == a && amt == fsum(ValidatorAuction.bid, 2, msg.sender == a))))


type Ref = int;

type ContractName = int;

const unique null: Ref;

const unique Ownable: ContractName;

const unique DepositLockerInterface: ContractName;

const unique DepositLocker: ContractName;

const unique ValidatorAuction: ContractName;

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

var M_Ref_bool_canWithdraw0: [Ref][Ref]bool;

var sum_canWithdraw0: [Ref]int;

var M_Ref_bool_whitelist1: [Ref][Ref]bool;

var sum_whitelist1: [Ref]int;

var M_Ref_int_bids2: [Ref][Ref]int;

var sum_bids2: [Ref]int;

var M_int_Ref: [Ref][int]Ref;

var sum: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, owner_Ownable;



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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} DepositLockerInterface_DepositLockerInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} DepositLockerInterface_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance;



implementation DepositLockerInterface_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call DepositLockerInterface_DepositLockerInterface__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call DepositLockerInterface_DepositLockerInterface__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} slash_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositorToBeSlashed_s49: Ref);



procedure {:inline 1} DepositLocker_DepositLocker_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, initialized_DepositLocker, deposited_DepositLocker, slasher_DepositLocker, depositorsProxy_DepositLocker, releaseTimestamp_DepositLocker, canWithdraw_DepositLocker, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, valuePerDepositor_DepositLocker, Alloc;



procedure {:inline 1} DepositLocker_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, owner_Ownable, initialized_DepositLocker, deposited_DepositLocker, slasher_DepositLocker, depositorsProxy_DepositLocker, releaseTimestamp_DepositLocker, canWithdraw_DepositLocker, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, valuePerDepositor_DepositLocker, Alloc;



implementation DepositLocker_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call DepositLocker_DepositLocker__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call DepositLocker_DepositLocker__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.initialized=initialized_DepositLocker[this]"} initialized_DepositLocker: [Ref]bool;

var {:access "this.deposited=deposited_DepositLocker[this]"} deposited_DepositLocker: [Ref]bool;

var {:access "this.slasher=slasher_DepositLocker[this]"} slasher_DepositLocker: [Ref]Ref;

var {:access "this.depositorsProxy=depositorsProxy_DepositLocker[this]"} depositorsProxy_DepositLocker: [Ref]Ref;

var {:access "this.releaseTimestamp=releaseTimestamp_DepositLocker[this]"} releaseTimestamp_DepositLocker: [Ref]int;

var {:access "this.canWithdraw[i0]=M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]][i0]"} {:sum "sum(this.canWithdraw)=sum_canWithdraw0[canWithdraw_DepositLocker[this]]"} canWithdraw_DepositLocker: [Ref]Ref;

var {:access "this.numberOfDepositors=numberOfDepositors_DepositLocker[this]"} numberOfDepositors_DepositLocker: [Ref]int;

var {:access "this.valuePerDepositor=valuePerDepositor_DepositLocker[this]"} valuePerDepositor_DepositLocker: [Ref]int;

procedure {:inline 1} FallbackMethod_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:public} {:inline 1} init_DepositLocker(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _releaseTimestamp_s192: int, 
    _slasher_s192: Ref, 
    _depositorsProxy_s192: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, releaseTimestamp_DepositLocker, slasher_DepositLocker, depositorsProxy_DepositLocker, initialized_DepositLocker, owner_Ownable;



implementation init_DepositLocker(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _releaseTimestamp_s192: int, 
    _slasher_s192: Ref, 
    _depositorsProxy_s192: Ref)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call init_DepositLocker__fail(this, msgsender_MSG, msgvalue_MSG, _releaseTimestamp_s192, _slasher_s192, _depositorsProxy_s192);
        assume revert || gas < 0;
    }
    else
    {
        call init_DepositLocker__success(this, msgsender_MSG, msgvalue_MSG, _releaseTimestamp_s192, _slasher_s192, _depositorsProxy_s192);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} registerDepositor_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker;



implementation registerDepositor_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call registerDepositor_DepositLocker__fail(this, msgsender_MSG, msgvalue_MSG, _depositor_s228);
        assume revert || gas < 0;
    }
    else
    {
        call registerDepositor_DepositLocker__success(this, msgsender_MSG, msgvalue_MSG, _depositor_s228);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} deposit_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, Balance, valuePerDepositor_DepositLocker, deposited_DepositLocker;



implementation deposit_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call deposit_DepositLocker__fail(this, msgsender_MSG, msgvalue_MSG, _valuePerDepositor_s292);
        assume revert || gas < 0;
    }
    else
    {
        call deposit_DepositLocker__success(this, msgsender_MSG, msgvalue_MSG, _valuePerDepositor_s292);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, M_Ref_bool_canWithdraw0, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation withdraw_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call withdraw_DepositLocker__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_DepositLocker__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} slash_DepositLocker(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _depositorToBeSlashed_s379: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, M_Ref_bool_canWithdraw0, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation slash_DepositLocker(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _depositorToBeSlashed_s379: Ref)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call slash_DepositLocker__fail(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s379);
        assume revert || gas < 0;
    }
    else
    {
        call slash_DepositLocker__success(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s379);
        assume !revert && gas >= 0;
    }
}



var {:access "this.auctionDurationInDays=auctionDurationInDays_ValidatorAuction[this]"} auctionDurationInDays_ValidatorAuction: [Ref]int;

var {:access "this.startPrice=startPrice_ValidatorAuction[this]"} startPrice_ValidatorAuction: [Ref]int;

var {:access "this.minimalNumberOfParticipants=minimalNumberOfParticipants_ValidatorAuction[this]"} minimalNumberOfParticipants_ValidatorAuction: [Ref]int;

var {:access "this.maximalNumberOfParticipants=maximalNumberOfParticipants_ValidatorAuction[this]"} maximalNumberOfParticipants_ValidatorAuction: [Ref]int;

var {:access "this.auctionState=auctionState_ValidatorAuction[this]"} auctionState_ValidatorAuction: [Ref]int;

var {:access "this.depositLocker=depositLocker_ValidatorAuction[this]"} depositLocker_ValidatorAuction: [Ref]Ref;

var {:access "this.whitelist[i0]=M_Ref_bool_whitelist1[whitelist_ValidatorAuction[this]][i0]"} {:sum "sum(this.whitelist)=sum_whitelist1[whitelist_ValidatorAuction[this]]"} whitelist_ValidatorAuction: [Ref]Ref;

var {:access "this.bids[i0]=M_Ref_int_bids2[bids_ValidatorAuction[this]][i0]"} {:sum "sum(this.bids)=sum_bids2[bids_ValidatorAuction[this]]"} bids_ValidatorAuction: [Ref]Ref;

var {:access "this.bidders[i0]=M_int_Ref[bidders_ValidatorAuction[this]][i0]"} {:sum "sum(this.bidders)=sum[bidders_ValidatorAuction[this]]"} bidders_ValidatorAuction: [Ref]Ref;

var {:access "this.startTime=startTime_ValidatorAuction[this]"} startTime_ValidatorAuction: [Ref]int;

var {:access "this.closeTime=closeTime_ValidatorAuction[this]"} closeTime_ValidatorAuction: [Ref]int;

var {:access "this.lowestSlotPrice=lowestSlotPrice_ValidatorAuction[this]"} lowestSlotPrice_ValidatorAuction: [Ref]int;

procedure {:inline 1} ValidatorAuction_ValidatorAuction_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref);
  modifies Balance, auctionDurationInDays_ValidatorAuction, startPrice_ValidatorAuction, minimalNumberOfParticipants_ValidatorAuction, maximalNumberOfParticipants_ValidatorAuction, whitelist_ValidatorAuction, M_Ref_bool_whitelist1, bids_ValidatorAuction, M_Ref_int_bids2, sum_bids2, bidders_ValidatorAuction, startTime_ValidatorAuction, closeTime_ValidatorAuction, lowestSlotPrice_ValidatorAuction, revert, depositLocker_ValidatorAuction, auctionState_ValidatorAuction, Alloc;



procedure {:constructor} {:public} {:inline 1} ValidatorAuction_ValidatorAuction(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, owner_Ownable, auctionDurationInDays_ValidatorAuction, startPrice_ValidatorAuction, minimalNumberOfParticipants_ValidatorAuction, maximalNumberOfParticipants_ValidatorAuction, whitelist_ValidatorAuction, M_Ref_bool_whitelist1, bids_ValidatorAuction, M_Ref_int_bids2, sum_bids2, bidders_ValidatorAuction, startTime_ValidatorAuction, closeTime_ValidatorAuction, lowestSlotPrice_ValidatorAuction, depositLocker_ValidatorAuction, auctionState_ValidatorAuction, Alloc;



implementation ValidatorAuction_ValidatorAuction(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call ValidatorAuction_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s578, _auctionDurationInDays_s578, _minimalNumberOfParticipants_s578, _maximalNumberOfParticipants_s578, _depositLocker_s578);
        assume revert || gas < 0;
    }
    else
    {
        call ValidatorAuction_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s578, _auctionDurationInDays_s578, _minimalNumberOfParticipants_s578, _maximalNumberOfParticipants_s578, _depositLocker_s578);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:public} {:inline 1} bid_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation bid_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call bid_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call bid_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} startAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, auctionState_ValidatorAuction, startTime_ValidatorAuction;



implementation startAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call startAuction_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call startAuction_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} depositBids_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, auctionState_ValidatorAuction, Balance, valuePerDepositor_DepositLocker, deposited_DepositLocker;



implementation depositBids_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call depositBids_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call depositBids_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} closeAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation closeAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call closeAuction_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call closeAuction_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addToWhitelist_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, M_Ref_bool_whitelist1;



implementation addToWhitelist_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call addToWhitelist_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s852);
        assume revert || gas < 0;
    }
    else
    {
        call addToWhitelist_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s852);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdraw_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas, sum_bids2, M_Ref_int_bids2, Balance, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation withdraw_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call withdraw_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdraw_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} currentPrice_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas;



implementation currentPrice_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call __ret_0_ := currentPrice_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := currentPrice_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} priceAtElapsedTime_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s978: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, gas;



implementation priceAtElapsedTime_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s978: int)
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
        call __ret_0_ := priceAtElapsedTime_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s978);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := priceAtElapsedTime_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s978);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} withdrawAfterAuctionEnded_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, sum_bids2, M_Ref_int_bids2, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} withdrawAfterAuctionFailed_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, sum_bids2, M_Ref_int_bids2, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} transitionToDepositPending_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, auctionState_ValidatorAuction, closeTime_ValidatorAuction, revert;



procedure {:inline 1} transitionToAuctionFailed_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, auctionState_ValidatorAuction, closeTime_ValidatorAuction, revert;



procedure {:inline 1} isSenderContract_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (isContract_s1135: bool);
  modifies gas;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, revert, gas, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isInitialised_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isDeposited_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isNotDeposited_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyDepositorsProxy_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} stateIs_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s480: int);
  modifies gas, revert;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, now, owner_Ownable, Balance;



procedure CorralChoice_DepositLockerInterface(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_DepositLockerInterface();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_DepositLocker(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, owner_Ownable, M_Ref_bool_canWithdraw0, releaseTimestamp_DepositLocker, slasher_DepositLocker, depositorsProxy_DepositLocker, initialized_DepositLocker, numberOfDepositors_DepositLocker, Balance, valuePerDepositor_DepositLocker, deposited_DepositLocker, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure CorralEntry_DepositLocker();
  modifies gas, Alloc, Balance, owner_Ownable, initialized_DepositLocker, deposited_DepositLocker, slasher_DepositLocker, depositorsProxy_DepositLocker, releaseTimestamp_DepositLocker, canWithdraw_DepositLocker, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, valuePerDepositor_DepositLocker, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure CorralChoice_ValidatorAuction(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, owner_Ownable, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, auctionState_ValidatorAuction, startTime_ValidatorAuction, M_Ref_bool_whitelist1, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, closeTime_ValidatorAuction, valuePerDepositor_DepositLocker, deposited_DepositLocker;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, now, owner_Ownable, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, auctionState_ValidatorAuction, startTime_ValidatorAuction, M_Ref_bool_whitelist1, auctionDurationInDays_ValidatorAuction, startPrice_ValidatorAuction, minimalNumberOfParticipants_ValidatorAuction, maximalNumberOfParticipants_ValidatorAuction, whitelist_ValidatorAuction, bids_ValidatorAuction, bidders_ValidatorAuction, closeTime_ValidatorAuction, depositLocker_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, valuePerDepositor_DepositLocker, deposited_DepositLocker;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_bool_canWithdraw0: [Ref][Ref]bool;

var __tmp__sum_canWithdraw0: [Ref]int;

var __tmp__M_Ref_bool_whitelist1: [Ref][Ref]bool;

var __tmp__sum_whitelist1: [Ref]int;

var __tmp__M_Ref_int_bids2: [Ref][Ref]int;

var __tmp__sum_bids2: [Ref]int;

var __tmp__M_int_Ref: [Ref][int]Ref;

var __tmp__sum: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__owner_Ownable: [Ref]Ref;

var __tmp__initialized_DepositLocker: [Ref]bool;

var __tmp__deposited_DepositLocker: [Ref]bool;

var __tmp__slasher_DepositLocker: [Ref]Ref;

var __tmp__depositorsProxy_DepositLocker: [Ref]Ref;

var __tmp__releaseTimestamp_DepositLocker: [Ref]int;

var __tmp__canWithdraw_DepositLocker: [Ref]Ref;

var __tmp__numberOfDepositors_DepositLocker: [Ref]int;

var __tmp__valuePerDepositor_DepositLocker: [Ref]int;

var __tmp__auctionDurationInDays_ValidatorAuction: [Ref]int;

var __tmp__startPrice_ValidatorAuction: [Ref]int;

var __tmp__minimalNumberOfParticipants_ValidatorAuction: [Ref]int;

var __tmp__maximalNumberOfParticipants_ValidatorAuction: [Ref]int;

var __tmp__auctionState_ValidatorAuction: [Ref]int;

var __tmp__depositLocker_ValidatorAuction: [Ref]Ref;

var __tmp__whitelist_ValidatorAuction: [Ref]Ref;

var __tmp__bids_ValidatorAuction: [Ref]Ref;

var __tmp__bidders_ValidatorAuction: [Ref]Ref;

var __tmp__startTime_ValidatorAuction: [Ref]int;

var __tmp__closeTime_ValidatorAuction: [Ref]int;

var __tmp__lowestSlotPrice_ValidatorAuction: [Ref]int;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref);
  modifies gas, owner_Ownable, revert;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref);
  modifies gas, __tmp__owner_Ownable, revert;



procedure {:inline 1} DepositLockerInterface_DepositLockerInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} DepositLockerInterface_DepositLockerInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} DepositLockerInterface_DepositLockerInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} DepositLocker_DepositLocker_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__M_Ref_bool_canWithdraw0, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__Alloc;



procedure {:inline 1} DepositLocker_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable, initialized_DepositLocker, deposited_DepositLocker, slasher_DepositLocker, depositorsProxy_DepositLocker, releaseTimestamp_DepositLocker, canWithdraw_DepositLocker, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, valuePerDepositor_DepositLocker, Alloc;



procedure {:inline 1} DepositLocker_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__M_Ref_bool_canWithdraw0, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__Alloc;



procedure {:inline 1} FallbackMethod_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} init_DepositLocker__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _releaseTimestamp_s192: int, 
    _slasher_s192: Ref, 
    _depositorsProxy_s192: Ref);
  modifies gas, revert, releaseTimestamp_DepositLocker, slasher_DepositLocker, depositorsProxy_DepositLocker, initialized_DepositLocker, owner_Ownable;



procedure {:inline 1} init_DepositLocker__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _releaseTimestamp_s192: int, 
    _slasher_s192: Ref, 
    _depositorsProxy_s192: Ref);
  modifies gas, revert, __tmp__releaseTimestamp_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__initialized_DepositLocker, __tmp__owner_Ownable;



procedure {:inline 1} registerDepositor_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref);
  modifies gas, revert, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker;



procedure {:inline 1} registerDepositor_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref);
  modifies gas, revert, __tmp__M_Ref_bool_canWithdraw0, __tmp__numberOfDepositors_DepositLocker;



procedure {:inline 1} deposit_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int);
  modifies Balance, gas, revert, valuePerDepositor_DepositLocker, deposited_DepositLocker;



procedure {:inline 1} deposit_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int);
  modifies __tmp__Balance, gas, revert, __tmp__valuePerDepositor_DepositLocker, __tmp__deposited_DepositLocker;



procedure {:inline 1} withdraw_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, M_Ref_bool_canWithdraw0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} withdraw_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__M_Ref_bool_canWithdraw0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction;



procedure {:inline 1} slash_DepositLocker__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _depositorToBeSlashed_s379: Ref);
  modifies gas, revert, M_Ref_bool_canWithdraw0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} slash_DepositLocker__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _depositorToBeSlashed_s379: Ref);
  modifies gas, revert, __tmp__M_Ref_bool_canWithdraw0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction;



procedure {:inline 1} ValidatorAuction_ValidatorAuction_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref);
  modifies __tmp__Balance, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__M_Ref_bool_whitelist1, __tmp__bids_ValidatorAuction, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, revert, __tmp__depositLocker_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__Alloc;



procedure {:constructor} {:inline 1} ValidatorAuction_ValidatorAuction__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref);
  modifies Balance, owner_Ownable, auctionDurationInDays_ValidatorAuction, startPrice_ValidatorAuction, minimalNumberOfParticipants_ValidatorAuction, maximalNumberOfParticipants_ValidatorAuction, whitelist_ValidatorAuction, M_Ref_bool_whitelist1, bids_ValidatorAuction, M_Ref_int_bids2, sum_bids2, bidders_ValidatorAuction, startTime_ValidatorAuction, closeTime_ValidatorAuction, lowestSlotPrice_ValidatorAuction, revert, depositLocker_ValidatorAuction, auctionState_ValidatorAuction, Alloc;



procedure {:constructor} {:inline 1} ValidatorAuction_ValidatorAuction__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__M_Ref_bool_whitelist1, __tmp__bids_ValidatorAuction, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, revert, __tmp__depositLocker_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__Alloc;



procedure {:inline 1} FallbackMethod_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__sum_bids2, __tmp__M_Ref_int_bids2, __tmp__M_int_Ref, __tmp__Length, __tmp__lowestSlotPrice_ValidatorAuction, __tmp__M_Ref_bool_canWithdraw0, __tmp__numberOfDepositors_DepositLocker, __tmp__auctionState_ValidatorAuction, __tmp__closeTime_ValidatorAuction;



procedure {:inline 1} bid_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, sum_bids2, M_Ref_int_bids2, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} bid_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__sum_bids2, __tmp__M_Ref_int_bids2, __tmp__M_int_Ref, __tmp__Length, __tmp__lowestSlotPrice_ValidatorAuction, __tmp__M_Ref_bool_canWithdraw0, __tmp__numberOfDepositors_DepositLocker, __tmp__auctionState_ValidatorAuction, __tmp__closeTime_ValidatorAuction;



procedure {:inline 1} startAuction_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, auctionState_ValidatorAuction, startTime_ValidatorAuction;



procedure {:inline 1} startAuction_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__auctionState_ValidatorAuction, __tmp__startTime_ValidatorAuction;



procedure {:inline 1} depositBids_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, auctionState_ValidatorAuction, revert, Balance, valuePerDepositor_DepositLocker, deposited_DepositLocker;



procedure {:inline 1} depositBids_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__auctionState_ValidatorAuction, revert, __tmp__Balance, __tmp__valuePerDepositor_DepositLocker, __tmp__deposited_DepositLocker;



procedure {:inline 1} closeAuction_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} closeAuction_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__auctionState_ValidatorAuction, __tmp__closeTime_ValidatorAuction;



procedure {:inline 1} addToWhitelist_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref);
  modifies gas, M_Ref_bool_whitelist1, revert;



procedure {:inline 1} addToWhitelist_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref);
  modifies gas, __tmp__M_Ref_bool_whitelist1, revert;



procedure {:inline 1} withdraw_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, sum_bids2, M_Ref_int_bids2, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, Balance, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool_canWithdraw0, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



procedure {:inline 1} withdraw_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__sum_bids2, __tmp__M_Ref_int_bids2, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction;



procedure {:inline 1} currentPrice_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} currentPrice_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} priceAtElapsedTime_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s978: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} priceAtElapsedTime_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s978: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} withdrawAfterAuctionEnded_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__sum_bids2, __tmp__M_Ref_int_bids2, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction;



procedure {:inline 1} withdrawAfterAuctionFailed_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__sum_bids2, __tmp__M_Ref_int_bids2, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction;



procedure {:inline 1} transitionToDepositPending_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__auctionState_ValidatorAuction, __tmp__closeTime_ValidatorAuction, revert;



procedure {:inline 1} transitionToAuctionFailed_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__auctionState_ValidatorAuction, __tmp__closeTime_ValidatorAuction, revert;



procedure {:inline 1} isSenderContract_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (isContract_s1135: bool);
  modifies gas;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__sum_bids2, __tmp__M_Ref_int_bids2, __tmp__M_int_Ref, __tmp__Length, __tmp__lowestSlotPrice_ValidatorAuction, __tmp__M_Ref_bool_canWithdraw0, __tmp__numberOfDepositors_DepositLocker, __tmp__auctionState_ValidatorAuction, __tmp__closeTime_ValidatorAuction;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_canWithdraw0, __tmp__sum_canWithdraw0, __tmp__M_Ref_bool_whitelist1, __tmp__sum_whitelist1, __tmp__M_Ref_int_bids2, __tmp__sum_bids2, __tmp__M_int_Ref, __tmp__sum, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__initialized_DepositLocker, __tmp__deposited_DepositLocker, __tmp__slasher_DepositLocker, __tmp__depositorsProxy_DepositLocker, __tmp__releaseTimestamp_DepositLocker, __tmp__canWithdraw_DepositLocker, __tmp__numberOfDepositors_DepositLocker, __tmp__valuePerDepositor_DepositLocker, __tmp__auctionDurationInDays_ValidatorAuction, __tmp__startPrice_ValidatorAuction, __tmp__minimalNumberOfParticipants_ValidatorAuction, __tmp__maximalNumberOfParticipants_ValidatorAuction, __tmp__auctionState_ValidatorAuction, __tmp__depositLocker_ValidatorAuction, __tmp__whitelist_ValidatorAuction, __tmp__bids_ValidatorAuction, __tmp__bidders_ValidatorAuction, __tmp__startTime_ValidatorAuction, __tmp__closeTime_ValidatorAuction, __tmp__lowestSlotPrice_ValidatorAuction, revert, gas;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isInitialised_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isDeposited_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isNotDeposited_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyDepositorsProxy_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} stateIs_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s480: int);
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



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 63;
    __var_1 := null;
    if (newOwner_s43 != null)
    {
        gas := gas - 60801;
        __tmp__owner_Ownable[this] := newOwner_s43;
    }
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 63;
    __var_1 := null;
    if (newOwner_s43 != null)
    {
        gas := gas - 60801;
        owner_Ownable[this] := newOwner_s43;
    }
}



implementation DepositLockerInterface_DepositLockerInterface_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation DepositLockerInterface_DepositLockerInterface_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation DepositLockerInterface_DepositLockerInterface__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call DepositLockerInterface_DepositLockerInterface_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation DepositLockerInterface_DepositLockerInterface__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call DepositLockerInterface_DepositLockerInterface_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation DepositLocker_DepositLocker_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__initialized_DepositLocker[this] := false;
    __tmp__deposited_DepositLocker[this] := false;
    __tmp__slasher_DepositLocker[this] := null;
    __tmp__depositorsProxy_DepositLocker[this] := null;
    __tmp__releaseTimestamp_DepositLocker[this] := 0;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__canWithdraw_DepositLocker[this] := __var_2;
    __tmp__M_Ref_bool_canWithdraw0[__tmp__canWithdraw_DepositLocker[this]] := zeroRefBoolArr();
    __tmp__numberOfDepositors_DepositLocker[this] := 0;
    __tmp__valuePerDepositor_DepositLocker[this] := 0;
}



implementation DepositLocker_DepositLocker_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    initialized_DepositLocker[this] := false;
    deposited_DepositLocker[this] := false;
    slasher_DepositLocker[this] := null;
    depositorsProxy_DepositLocker[this] := null;
    releaseTimestamp_DepositLocker[this] := 0;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    canWithdraw_DepositLocker[this] := __var_2;
    M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]] := zeroRefBoolArr();
    numberOfDepositors_DepositLocker[this] := 0;
    valuePerDepositor_DepositLocker[this] := 0;
}



implementation DepositLocker_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call DepositLockerInterface_DepositLockerInterface__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call DepositLocker_DepositLocker_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation DepositLocker_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call DepositLockerInterface_DepositLockerInterface__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call DepositLocker_DepositLocker_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation FallbackMethod_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation init_DepositLocker__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _releaseTimestamp_s192: int, 
    _slasher_s192: Ref, 
    _depositorsProxy_s192: Ref)
{
  var __var_3: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 540;
    if (!!__tmp__initialized_DepositLocker[this])
    {
        revert := true;
        return;
    }

    gas := gas - 256;
    assume _releaseTimestamp_s192 >= 0;
    assume __tmp__now >= 0;
    if (!(_releaseTimestamp_s192 > __tmp__now))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume __tmp__releaseTimestamp_DepositLocker[this] >= 0;
    assume _releaseTimestamp_s192 >= 0;
    __tmp__releaseTimestamp_DepositLocker[this] := _releaseTimestamp_s192;
    gas := gas - 20267;
    __tmp__slasher_DepositLocker[this] := _slasher_s192;
    gas := gas - 20267;
    __tmp__depositorsProxy_DepositLocker[this] := _depositorsProxy_s192;
    gas := gas - 20317;
    __tmp__initialized_DepositLocker[this] := true;
    gas := gas - 20267;
    __var_3 := null;
    __tmp__owner_Ownable[this] := __var_3;
}



implementation init_DepositLocker__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _releaseTimestamp_s192: int, 
    _slasher_s192: Ref, 
    _depositorsProxy_s192: Ref)
{
  var __var_3: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 540;
    if (!!initialized_DepositLocker[this])
    {
        revert := true;
        return;
    }

    gas := gas - 256;
    assume _releaseTimestamp_s192 >= 0;
    assume now >= 0;
    if (!(_releaseTimestamp_s192 > now))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume releaseTimestamp_DepositLocker[this] >= 0;
    assume _releaseTimestamp_s192 >= 0;
    releaseTimestamp_DepositLocker[this] := _releaseTimestamp_s192;
    gas := gas - 20267;
    slasher_DepositLocker[this] := _slasher_s192;
    gas := gas - 20267;
    depositorsProxy_DepositLocker[this] := _depositorsProxy_s192;
    gas := gas - 20317;
    initialized_DepositLocker[this] := true;
    gas := gas - 20267;
    __var_3 := null;
    owner_Ownable[this] := __var_3;
}



implementation registerDepositor_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref)
{
    call isInitialised_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isNotDeposited_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyDepositorsProxy_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 499;
    if (!(__tmp__M_Ref_bool_canWithdraw0[__tmp__canWithdraw_DepositLocker[this]][_depositor_s228]
       == false))
    {
        revert := true;
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool_canWithdraw0[__tmp__canWithdraw_DepositLocker[this]][_depositor_s228] := true;
    gas := gas - 20233;
    assume __tmp__numberOfDepositors_DepositLocker[this] >= 0;
    __tmp__numberOfDepositors_DepositLocker[this] := __tmp__numberOfDepositors_DepositLocker[this] + 1;
}



implementation registerDepositor_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref)
{
    call isInitialised_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isNotDeposited_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyDepositorsProxy_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 499;
    if (!(M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]][_depositor_s228]
       == false))
    {
        revert := true;
        return;
    }

    gas := gas - 20363;
    M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]][_depositor_s228] := true;
    gas := gas - 20233;
    assume numberOfDepositors_DepositLocker[this] >= 0;
    numberOfDepositors_DepositLocker[this] := numberOfDepositors_DepositLocker[this] + 1;
    assert {:EventEmitted "DepositorRegistered_DepositLocker"} true;
}



implementation deposit_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int)
{
  var depositAmount_s291: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call isInitialised_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isNotDeposited_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyDepositorsProxy_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 355;
    assume __tmp__numberOfDepositors_DepositLocker[this] >= 0;
    if (!(__tmp__numberOfDepositors_DepositLocker[this] > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    assume _valuePerDepositor_s292 >= 0;
    if (!(_valuePerDepositor_s292 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 219;
    assume depositAmount_s291 >= 0;
    assume __tmp__numberOfDepositors_DepositLocker[this] >= 0;
    assume _valuePerDepositor_s292 >= 0;
    assume nonlinearMul(__tmp__numberOfDepositors_DepositLocker[this], _valuePerDepositor_s292)
       >= 0;
    depositAmount_s291 := nonlinearMul(__tmp__numberOfDepositors_DepositLocker[this], _valuePerDepositor_s292);
    gas := gas - 482;
    assume _valuePerDepositor_s292 >= 0;
    assume depositAmount_s291 >= 0;
    assume __tmp__numberOfDepositors_DepositLocker[this] >= 0;
    assume nonlinearDiv(depositAmount_s291, __tmp__numberOfDepositors_DepositLocker[this])
       >= 0;
    if (!(_valuePerDepositor_s292
       == nonlinearDiv(depositAmount_s291, __tmp__numberOfDepositors_DepositLocker[this])))
    {
        revert := true;
        return;
    }

    gas := gas - 256;
    assume msgvalue_MSG >= 0;
    assume depositAmount_s291 >= 0;
    if (!(msgvalue_MSG == depositAmount_s291))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume __tmp__valuePerDepositor_DepositLocker[this] >= 0;
    assume _valuePerDepositor_s292 >= 0;
    __tmp__valuePerDepositor_DepositLocker[this] := _valuePerDepositor_s292;
    gas := gas - 20317;
    __tmp__deposited_DepositLocker[this] := true;
}



implementation deposit_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int)
{
  var depositAmount_s291: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call isInitialised_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isNotDeposited_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call onlyDepositorsProxy_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 355;
    assume numberOfDepositors_DepositLocker[this] >= 0;
    if (!(numberOfDepositors_DepositLocker[this] > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 257;
    assume _valuePerDepositor_s292 >= 0;
    if (!(_valuePerDepositor_s292 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 219;
    assume depositAmount_s291 >= 0;
    assume numberOfDepositors_DepositLocker[this] >= 0;
    assume _valuePerDepositor_s292 >= 0;
    assume nonlinearMul(numberOfDepositors_DepositLocker[this], _valuePerDepositor_s292)
       >= 0;
    depositAmount_s291 := nonlinearMul(numberOfDepositors_DepositLocker[this], _valuePerDepositor_s292);
    gas := gas - 482;
    assume _valuePerDepositor_s292 >= 0;
    assume depositAmount_s291 >= 0;
    assume numberOfDepositors_DepositLocker[this] >= 0;
    assume nonlinearDiv(depositAmount_s291, numberOfDepositors_DepositLocker[this]) >= 0;
    if (!(_valuePerDepositor_s292
       == nonlinearDiv(depositAmount_s291, numberOfDepositors_DepositLocker[this])))
    {
        revert := true;
        return;
    }

    gas := gas - 256;
    assume msgvalue_MSG >= 0;
    assume depositAmount_s291 >= 0;
    if (!(msgvalue_MSG == depositAmount_s291))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume valuePerDepositor_DepositLocker[this] >= 0;
    assume _valuePerDepositor_s292 >= 0;
    valuePerDepositor_DepositLocker[this] := _valuePerDepositor_s292;
    gas := gas - 20317;
    deposited_DepositLocker[this] := true;
    assert {:EventEmitted "Deposit_DepositLocker"} true;
}



implementation withdraw_DepositLocker__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_4: int;
  var __var_5: bool;

    call isInitialised_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isDeposited_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 459;
    assume __tmp__now >= 0;
    assume __tmp__releaseTimestamp_DepositLocker[this] >= 0;
    if (!(__tmp__now >= __tmp__releaseTimestamp_DepositLocker[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 480;
    if (!__tmp__M_Ref_bool_canWithdraw0[__tmp__canWithdraw_DepositLocker[this]][msgsender_MSG])
    {
        revert := true;
        return;
    }

    gas := gas - 20362;
    __tmp__M_Ref_bool_canWithdraw0[__tmp__canWithdraw_DepositLocker[this]][msgsender_MSG] := false;
    gas := gas - 35986;
    __var_4 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_4 := __var_4 - gas;
    assume __tmp__valuePerDepositor_DepositLocker[this] >= 0;
    call __var_5 := send__fail(this, msgsender_MSG, __tmp__valuePerDepositor_DepositLocker[this]);
    if (!__var_5)
    {
        revert := true;
        return;
    }

    gas := __var_4 + gas;
}



implementation withdraw_DepositLocker__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_4: int;
  var __var_5: bool;

    call isInitialised_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isDeposited_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 459;
    assume now >= 0;
    assume releaseTimestamp_DepositLocker[this] >= 0;
    if (!(now >= releaseTimestamp_DepositLocker[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 480;
    if (!M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]][msgsender_MSG])
    {
        revert := true;
        return;
    }

    gas := gas - 20362;
    M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]][msgsender_MSG] := false;
    gas := gas - 35986;
    __var_4 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_4 := __var_4 - gas;
    assume valuePerDepositor_DepositLocker[this] >= 0;
    call __var_5 := send__success(this, msgsender_MSG, valuePerDepositor_DepositLocker[this]);
    if (!__var_5)
    {
        revert := true;
        return;
    }

    gas := __var_4 + gas;
    assert {:EventEmitted "Withdraw_DepositLocker"} true;
}



implementation slash_DepositLocker__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _depositorToBeSlashed_s379: Ref)
{
  var __var_6: int;
  var __var_7: bool;
  var __var_8: Ref;

    call isInitialised_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isDeposited_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 504;
    if (!(msgsender_MSG == __tmp__slasher_DepositLocker[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 481;
    if (!__tmp__M_Ref_bool_canWithdraw0[__tmp__canWithdraw_DepositLocker[this]][_depositorToBeSlashed_s379])
    {
        revert := true;
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool_canWithdraw0[__tmp__canWithdraw_DepositLocker[this]][_depositorToBeSlashed_s379] := false;
    gas := gas - 35987;
    __var_6 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_6 := __var_6 - gas;
    assume __tmp__valuePerDepositor_DepositLocker[this] >= 0;
    __var_8 := null;
    call __var_7 := send__fail(this, null, __tmp__valuePerDepositor_DepositLocker[this]);
    if (!__var_7)
    {
        revert := true;
        return;
    }

    gas := __var_6 + gas;
}



implementation slash_DepositLocker__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _depositorToBeSlashed_s379: Ref)
{
  var __var_6: int;
  var __var_7: bool;
  var __var_8: Ref;

    call isInitialised_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isDeposited_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 504;
    if (!(msgsender_MSG == slasher_DepositLocker[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 481;
    if (!M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]][_depositorToBeSlashed_s379])
    {
        revert := true;
        return;
    }

    gas := gas - 20363;
    M_Ref_bool_canWithdraw0[canWithdraw_DepositLocker[this]][_depositorToBeSlashed_s379] := false;
    gas := gas - 35987;
    __var_6 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_6 := __var_6 - gas;
    assume valuePerDepositor_DepositLocker[this] >= 0;
    __var_8 := null;
    call __var_7 := send__success(this, null, valuePerDepositor_DepositLocker[this]);
    if (!__var_7)
    {
        revert := true;
        return;
    }

    gas := __var_6 + gas;
    assert {:EventEmitted "Slash_DepositLocker"} true;
}



implementation ValidatorAuction_ValidatorAuction_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref)
{
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__auctionDurationInDays_ValidatorAuction[this] := 0;
    __tmp__startPrice_ValidatorAuction[this] := 0;
    __tmp__minimalNumberOfParticipants_ValidatorAuction[this] := 0;
    __tmp__maximalNumberOfParticipants_ValidatorAuction[this] := 0;
    call __var_10 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__whitelist_ValidatorAuction[this] := __var_10;
    __tmp__M_Ref_bool_whitelist1[__tmp__whitelist_ValidatorAuction[this]] := zeroRefBoolArr();
    call __var_11 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__bids_ValidatorAuction[this] := __var_11;
    __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]] := zeroRefIntArr();
    __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]] := 0;
    call __var_12 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__bidders_ValidatorAuction[this] := __var_12;
    assume __tmp__Length[__tmp__bidders_ValidatorAuction[this]] == 0;
    __tmp__startTime_ValidatorAuction[this] := 0;
    __tmp__closeTime_ValidatorAuction[this] := 0;
    __tmp__lowestSlotPrice_ValidatorAuction[this] := 0;
    assume _auctionDurationInDays_s578 >= 0;
    if (!(_auctionDurationInDays_s578 > 0))
    {
        revert := true;
        return;
    }

    assume _auctionDurationInDays_s578 >= 0;
    if (!(_auctionDurationInDays_s578 < 100 * 365))
    {
        revert := true;
        return;
    }

    assume _minimalNumberOfParticipants_s578 >= 0;
    if (!(_minimalNumberOfParticipants_s578 > 0))
    {
        revert := true;
        return;
    }

    assume _maximalNumberOfParticipants_s578 >= 0;
    if (!(_maximalNumberOfParticipants_s578 > 0))
    {
        revert := true;
        return;
    }

    assume _minimalNumberOfParticipants_s578 >= 0;
    assume _maximalNumberOfParticipants_s578 >= 0;
    if (!(_minimalNumberOfParticipants_s578 <= _maximalNumberOfParticipants_s578))
    {
        revert := true;
        return;
    }

    assume _startPriceInWei_s578 >= 0;
    if (!(_startPriceInWei_s578 < 1000000000000000019884624838656))
    {
        revert := true;
        return;
    }

    assume __tmp__startPrice_ValidatorAuction[this] >= 0;
    assume _startPriceInWei_s578 >= 0;
    __tmp__startPrice_ValidatorAuction[this] := _startPriceInWei_s578;
    assume __tmp__auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume _auctionDurationInDays_s578 >= 0;
    __tmp__auctionDurationInDays_ValidatorAuction[this] := _auctionDurationInDays_s578;
    assume __tmp__maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume _maximalNumberOfParticipants_s578 >= 0;
    __tmp__maximalNumberOfParticipants_ValidatorAuction[this] := _maximalNumberOfParticipants_s578;
    assume __tmp__minimalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume _minimalNumberOfParticipants_s578 >= 0;
    __tmp__minimalNumberOfParticipants_ValidatorAuction[this] := _minimalNumberOfParticipants_s578;
    __tmp__depositLocker_ValidatorAuction[this] := _depositLocker_s578;
    assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
    __var_9 := 115792089237316195423570985008687907853269984665640564039457584007913129639935;
    __tmp__lowestSlotPrice_ValidatorAuction[this] := __var_9;
    assume __var_9 >= 0;
    __tmp__auctionState_ValidatorAuction[this] := 0;
}



implementation ValidatorAuction_ValidatorAuction_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref)
{
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    auctionDurationInDays_ValidatorAuction[this] := 0;
    startPrice_ValidatorAuction[this] := 0;
    minimalNumberOfParticipants_ValidatorAuction[this] := 0;
    maximalNumberOfParticipants_ValidatorAuction[this] := 0;
    call __var_10 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    whitelist_ValidatorAuction[this] := __var_10;
    M_Ref_bool_whitelist1[whitelist_ValidatorAuction[this]] := zeroRefBoolArr();
    call __var_11 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    bids_ValidatorAuction[this] := __var_11;
    M_Ref_int_bids2[bids_ValidatorAuction[this]] := zeroRefIntArr();
    sum_bids2[bids_ValidatorAuction[this]] := 0;
    call __var_12 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    bidders_ValidatorAuction[this] := __var_12;
    assume Length[bidders_ValidatorAuction[this]] == 0;
    startTime_ValidatorAuction[this] := 0;
    closeTime_ValidatorAuction[this] := 0;
    lowestSlotPrice_ValidatorAuction[this] := 0;
    assume _auctionDurationInDays_s578 >= 0;
    if (!(_auctionDurationInDays_s578 > 0))
    {
        revert := true;
        return;
    }

    assume _auctionDurationInDays_s578 >= 0;
    if (!(_auctionDurationInDays_s578 < 100 * 365))
    {
        revert := true;
        return;
    }

    assume _minimalNumberOfParticipants_s578 >= 0;
    if (!(_minimalNumberOfParticipants_s578 > 0))
    {
        revert := true;
        return;
    }

    assume _maximalNumberOfParticipants_s578 >= 0;
    if (!(_maximalNumberOfParticipants_s578 > 0))
    {
        revert := true;
        return;
    }

    assume _minimalNumberOfParticipants_s578 >= 0;
    assume _maximalNumberOfParticipants_s578 >= 0;
    if (!(_minimalNumberOfParticipants_s578 <= _maximalNumberOfParticipants_s578))
    {
        revert := true;
        return;
    }

    assume _startPriceInWei_s578 >= 0;
    if (!(_startPriceInWei_s578 < 1000000000000000019884624838656))
    {
        revert := true;
        return;
    }

    assume startPrice_ValidatorAuction[this] >= 0;
    assume _startPriceInWei_s578 >= 0;
    startPrice_ValidatorAuction[this] := _startPriceInWei_s578;
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume _auctionDurationInDays_s578 >= 0;
    auctionDurationInDays_ValidatorAuction[this] := _auctionDurationInDays_s578;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume _maximalNumberOfParticipants_s578 >= 0;
    maximalNumberOfParticipants_ValidatorAuction[this] := _maximalNumberOfParticipants_s578;
    assume minimalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume _minimalNumberOfParticipants_s578 >= 0;
    minimalNumberOfParticipants_ValidatorAuction[this] := _minimalNumberOfParticipants_s578;
    depositLocker_ValidatorAuction[this] := _depositLocker_s578;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    __var_9 := 115792089237316195423570985008687907853269984665640564039457584007913129639935;
    lowestSlotPrice_ValidatorAuction[this] := __var_9;
    assume __var_9 >= 0;
    assert {:EventEmitted "AuctionDeployed_ValidatorAuction"} true;
    auctionState_ValidatorAuction[this] := 0;
}



implementation ValidatorAuction_ValidatorAuction__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref)
{
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: Ref;

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ValidatorAuction_ValidatorAuction_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s578, _auctionDurationInDays_s578, _minimalNumberOfParticipants_s578, _maximalNumberOfParticipants_s578, _depositLocker_s578);
    if (revert)
    {
        return;
    }
}



implementation ValidatorAuction_ValidatorAuction__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startPriceInWei_s578: int, 
    _auctionDurationInDays_s578: int, 
    _minimalNumberOfParticipants_s578: int, 
    _maximalNumberOfParticipants_s578: int, 
    _depositLocker_s578: Ref)
{
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: Ref;

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ValidatorAuction_ValidatorAuction_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s578, _auctionDurationInDays_s578, _minimalNumberOfParticipants_s578, _maximalNumberOfParticipants_s578, _depositLocker_s578);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 15;
    call bid_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 15;
    call bid_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation bid_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var slotPrice_s709: int;
  var __var_13: bool;
  var __var_14: int;
  var __var_15: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 860;
    assume __tmp__now >= 0;
    assume __tmp__startTime_ValidatorAuction[this] >= 0;
    if (!(__tmp__now > __tmp__startTime_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 1077;
    assume __tmp__now >= 0;
    assume __tmp__startTime_ValidatorAuction[this] >= 0;
    assume __tmp__auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume __tmp__auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume __tmp__startTime_ValidatorAuction[this]
         + __tmp__auctionDurationInDays_ValidatorAuction[this] * 1
       >= 0;
    if (!(__tmp__now
       <= __tmp__startTime_ValidatorAuction[this]
         + __tmp__auctionDurationInDays_ValidatorAuction[this] * 1))
    {
        revert := true;
        return;
    }

    gas := gas - 23;
    assume slotPrice_s709 >= 0;
    call slotPrice_s709 := currentPrice_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    slotPrice_s709 := slotPrice_s709;
    gas := gas - 670;
    assume msgvalue_MSG >= 0;
    assume slotPrice_s709 >= 0;
    if (!(msgvalue_MSG >= slotPrice_s709))
    {
        revert := true;
        return;
    }

    gas := gas - 986;
    if (!__tmp__M_Ref_bool_whitelist1[__tmp__whitelist_ValidatorAuction[this]][msgsender_MSG])
    {
        revert := true;
        return;
    }

    gas := gas - 659;
    call __var_13 := isSenderContract_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!!__var_13)
    {
        revert := true;
        return;
    }

    gas := gas - 1076;
    assume __tmp__Length[__tmp__bidders_ValidatorAuction[this]] >= 0;
    assume __tmp__maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (!(__tmp__Length[__tmp__bidders_ValidatorAuction[this]]
       < __tmp__maximalNumberOfParticipants_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 956;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    if (!(__tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20108;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume msgvalue_MSG >= 0;
    __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]] := __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]]
       - __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG];
    __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] := msgvalue_MSG;
    __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]] := __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]]
       + __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 20361;
    __var_14 := __tmp__Length[__tmp__bidders_ValidatorAuction[this]];
    __tmp__M_int_Ref[__tmp__bidders_ValidatorAuction[this]][__var_14] := msgsender_MSG;
    __tmp__Length[__tmp__bidders_ValidatorAuction[this]] := __var_14 + 1;
    gas := gas - 209;
    assume slotPrice_s709 >= 0;
    assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
    if (slotPrice_s709 < __tmp__lowestSlotPrice_ValidatorAuction[this])
    {
        gas := gas - 20014;
        assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
        assume slotPrice_s709 >= 0;
        __tmp__lowestSlotPrice_ValidatorAuction[this] := slotPrice_s709;
    }

    gas := gas - 37222;
    call registerDepositor_DepositLocker__fail(__tmp__depositLocker_ValidatorAuction[this], this, __var_15, msgsender_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 417;
    assume __tmp__Length[__tmp__bidders_ValidatorAuction[this]] >= 0;
    assume __tmp__maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (__tmp__Length[__tmp__bidders_ValidatorAuction[this]]
       == __tmp__maximalNumberOfParticipants_ValidatorAuction[this])
    {
        gas := gas - 4;
        call transitionToDepositPending_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
}



implementation bid_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var slotPrice_s709: int;
  var __var_13: bool;
  var __var_14: int;
  var __var_15: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 860;
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    if (!(now > startTime_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 1077;
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume startTime_ValidatorAuction[this]
         + auctionDurationInDays_ValidatorAuction[this] * 1
       >= 0;
    if (!(now
       <= startTime_ValidatorAuction[this]
         + auctionDurationInDays_ValidatorAuction[this] * 1))
    {
        revert := true;
        return;
    }

    gas := gas - 23;
    assume slotPrice_s709 >= 0;
    call slotPrice_s709 := currentPrice_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    slotPrice_s709 := slotPrice_s709;
    gas := gas - 670;
    assume msgvalue_MSG >= 0;
    assume slotPrice_s709 >= 0;
    if (!(msgvalue_MSG >= slotPrice_s709))
    {
        revert := true;
        return;
    }

    gas := gas - 986;
    if (!M_Ref_bool_whitelist1[whitelist_ValidatorAuction[this]][msgsender_MSG])
    {
        revert := true;
        return;
    }

    gas := gas - 659;
    call __var_13 := isSenderContract_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    if (!!__var_13)
    {
        revert := true;
        return;
    }

    gas := gas - 1076;
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (!(Length[bidders_ValidatorAuction[this]]
       < maximalNumberOfParticipants_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 956;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    if (!(M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20108;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume msgvalue_MSG >= 0;
    sum_bids2[bids_ValidatorAuction[this]] := sum_bids2[bids_ValidatorAuction[this]]
       - M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG];
    M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] := msgvalue_MSG;
    sum_bids2[bids_ValidatorAuction[this]] := sum_bids2[bids_ValidatorAuction[this]]
       + M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 20361;
    __var_14 := Length[bidders_ValidatorAuction[this]];
    M_int_Ref[bidders_ValidatorAuction[this]][__var_14] := msgsender_MSG;
    Length[bidders_ValidatorAuction[this]] := __var_14 + 1;
    gas := gas - 209;
    assume slotPrice_s709 >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    if (slotPrice_s709 < lowestSlotPrice_ValidatorAuction[this])
    {
        gas := gas - 20014;
        assume lowestSlotPrice_ValidatorAuction[this] >= 0;
        assume slotPrice_s709 >= 0;
        lowestSlotPrice_ValidatorAuction[this] := slotPrice_s709;
    }

    gas := gas - 37222;
    call registerDepositor_DepositLocker__success(depositLocker_ValidatorAuction[this], this, __var_15, msgsender_MSG);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "BidSubmitted_ValidatorAuction"} true;
    gas := gas - 417;
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (Length[bidders_ValidatorAuction[this]]
       == maximalNumberOfParticipants_ValidatorAuction[this])
    {
        gas := gas - 4;
        call transitionToDepositPending_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
}



implementation startAuction_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_16: bool;
  var __var_17: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 0);
    if (revert)
    {
        return;
    }

    gas := gas - 3900;
    assume __tmp__DType[__tmp__depositLocker_ValidatorAuction[this]] == DepositLocker;
    __var_16 := __tmp__initialized_DepositLocker[__tmp__depositLocker_ValidatorAuction[this]];
    if (!__var_16)
    {
        revert := true;
        return;
    }

    gas := gas - 20287;
    __tmp__auctionState_ValidatorAuction[this] := 1;
    gas := gas - 20013;
    assume __tmp__startTime_ValidatorAuction[this] >= 0;
    assume __tmp__now >= 0;
    __tmp__startTime_ValidatorAuction[this] := __tmp__now;
}



implementation startAuction_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_16: bool;
  var __var_17: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 0);
    if (revert)
    {
        return;
    }

    gas := gas - 3900;
    assume DType[depositLocker_ValidatorAuction[this]] == DepositLocker;
    __var_16 := initialized_DepositLocker[depositLocker_ValidatorAuction[this]];
    if (!__var_16)
    {
        revert := true;
        return;
    }

    gas := gas - 20287;
    auctionState_ValidatorAuction[this] := 1;
    gas := gas - 20013;
    assume startTime_ValidatorAuction[this] >= 0;
    assume now >= 0;
    startTime_ValidatorAuction[this] := now;
    assert {:EventEmitted "AuctionStarted_ValidatorAuction"} true;
}



implementation depositBids_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 2);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    __tmp__auctionState_ValidatorAuction[this] := 3;
    gas := gas - 37832;
    assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume __tmp__Length[__tmp__bidders_ValidatorAuction[this]] >= 0;
    assume nonlinearMul(__tmp__lowestSlotPrice_ValidatorAuction[this], 
        __tmp__Length[__tmp__bidders_ValidatorAuction[this]])
       >= 0;
    assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
    call deposit_DepositLocker__fail(__tmp__depositLocker_ValidatorAuction[this], this, nonlinearMul(__tmp__lowestSlotPrice_ValidatorAuction[this], 
      __tmp__Length[__tmp__bidders_ValidatorAuction[this]]), __tmp__lowestSlotPrice_ValidatorAuction[this]);
    if (revert)
    {
        return;
    }
}



implementation depositBids_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 2);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    auctionState_ValidatorAuction[this] := 3;
    gas := gas - 37832;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume nonlinearMul(lowestSlotPrice_ValidatorAuction[this], Length[bidders_ValidatorAuction[this]])
       >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    call deposit_DepositLocker__success(depositLocker_ValidatorAuction[this], this, nonlinearMul(lowestSlotPrice_ValidatorAuction[this], Length[bidders_ValidatorAuction[this]]), lowestSlotPrice_ValidatorAuction[this]);
    if (revert)
    {
        return;
    }

    assert {:EventEmitted "AuctionEnded_ValidatorAuction"} true;
}



implementation closeAuction_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 1081;
    assume __tmp__now >= 0;
    assume __tmp__startTime_ValidatorAuction[this] >= 0;
    assume __tmp__auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume __tmp__auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume __tmp__startTime_ValidatorAuction[this]
         + __tmp__auctionDurationInDays_ValidatorAuction[this] * 1
       >= 0;
    if (!(__tmp__now
       > __tmp__startTime_ValidatorAuction[this]
         + __tmp__auctionDurationInDays_ValidatorAuction[this] * 1))
    {
        revert := true;
        return;
    }

    gas := gas - 437;
    assume __tmp__Length[__tmp__bidders_ValidatorAuction[this]] >= 0;
    assume __tmp__maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (!(__tmp__Length[__tmp__bidders_ValidatorAuction[this]]
       < __tmp__maximalNumberOfParticipants_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 417;
    assume __tmp__Length[__tmp__bidders_ValidatorAuction[this]] >= 0;
    assume __tmp__minimalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (__tmp__Length[__tmp__bidders_ValidatorAuction[this]]
       >= __tmp__minimalNumberOfParticipants_ValidatorAuction[this])
    {
        gas := gas - 15;
        call transitionToDepositPending_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        gas := gas - 4;
        call transitionToAuctionFailed_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
}



implementation closeAuction_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 1081;
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume startTime_ValidatorAuction[this]
         + auctionDurationInDays_ValidatorAuction[this] * 1
       >= 0;
    if (!(now
       > startTime_ValidatorAuction[this]
         + auctionDurationInDays_ValidatorAuction[this] * 1))
    {
        revert := true;
        return;
    }

    gas := gas - 437;
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (!(Length[bidders_ValidatorAuction[this]]
       < maximalNumberOfParticipants_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 417;
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume minimalNumberOfParticipants_ValidatorAuction[this] >= 0;
    if (Length[bidders_ValidatorAuction[this]]
       >= minimalNumberOfParticipants_ValidatorAuction[this])
    {
        gas := gas - 15;
        call transitionToDepositPending_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        gas := gas - 4;
        call transitionToAuctionFailed_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
}



implementation addToWhitelist_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref)
{
  var i_s850: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 0);
    if (revert)
    {
        return;
    }

    gas := gas - 116;
    assume i_s850 >= 0;
    assume __tmp__Length[addressesToWhitelist_s852] >= 0;
    gas := gas - 11;
    assume i_s850 >= 0;
    i_s850 := 0;
    while (i_s850 < __tmp__Length[addressesToWhitelist_s852])
    {
        gas := gas - 21095;
        assume i_s850 >= 0;
        __tmp__M_Ref_bool_whitelist1[__tmp__whitelist_ValidatorAuction[this]][__tmp__M_int_Ref[addressesToWhitelist_s852][i_s850]] := true;
        gas := gas - 19;
        assume i_s850 >= 0;
        i_s850 := i_s850 + 1;
        assume i_s850 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation addToWhitelist_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref)
{
  var i_s850: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 0);
    if (revert)
    {
        return;
    }

    gas := gas - 116;
    assume i_s850 >= 0;
    assume Length[addressesToWhitelist_s852] >= 0;
    gas := gas - 11;
    assume i_s850 >= 0;
    i_s850 := 0;
    while (i_s850 < Length[addressesToWhitelist_s852])
    {
        gas := gas - 21095;
        assume i_s850 >= 0;
        M_Ref_bool_whitelist1[whitelist_ValidatorAuction[this]][M_int_Ref[addressesToWhitelist_s852][i_s850]] := true;
        assert {:EventEmitted "AddressWhitelisted_ValidatorAuction"} true;
        gas := gas - 19;
        assume i_s850 >= 0;
        i_s850 := i_s850 + 1;
        assume i_s850 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation withdraw_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1272;
    if (!(__tmp__auctionState_ValidatorAuction[this] == 3
       || __tmp__auctionState_ValidatorAuction[this] == 4))
    {
        revert := true;
        return;
    }

    gas := gas - 297;
    if (__tmp__auctionState_ValidatorAuction[this] == 3)
    {
        gas := gas - 4;
        call withdrawAfterAuctionEnded_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        gas := gas - 297;
        if (__tmp__auctionState_ValidatorAuction[this] == 4)
        {
            gas := gas - 4;
            call withdrawAfterAuctionFailed_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG);
            if (revert)
            {
                return;
            }
        }
        else
        {
            gas := gas - 23;
            if (!false)
            {
                revert := true;
                return;
            }
        }
    }
}



implementation withdraw_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1272;
    if (!(auctionState_ValidatorAuction[this] == 3
       || auctionState_ValidatorAuction[this] == 4))
    {
        revert := true;
        return;
    }

    gas := gas - 297;
    if (auctionState_ValidatorAuction[this] == 3)
    {
        gas := gas - 4;
        call withdrawAfterAuctionEnded_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        gas := gas - 297;
        if (auctionState_ValidatorAuction[this] == 4)
        {
            gas := gas - 4;
            call withdrawAfterAuctionFailed_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG);
            if (revert)
            {
                return;
            }
        }
        else
        {
            gas := gas - 23;
            if (!false)
            {
                revert := true;
                return;
            }
        }
    }
}



implementation currentPrice_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var secondsSinceStart_s918: int;
  var __var_18: int;

    gas := gas - 3;
    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 231;
    assume __tmp__now >= 0;
    assume __tmp__startTime_ValidatorAuction[this] >= 0;
    if (!(__tmp__now >= __tmp__startTime_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 216;
    assume secondsSinceStart_s918 >= 0;
    assume __tmp__now >= 0;
    assume __tmp__startTime_ValidatorAuction[this] >= 0;
    assume __tmp__now - __tmp__startTime_ValidatorAuction[this] >= 0;
    secondsSinceStart_s918 := __tmp__now - __tmp__startTime_ValidatorAuction[this];
    gas := gas - 25;
    assume __var_18 >= 0;
    assume secondsSinceStart_s918 >= 0;
    call __var_18 := priceAtElapsedTime_ValidatorAuction__fail(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s918);
    if (revert)
    {
        return;
    }

    assume __var_18 >= 0;
    __ret_0_ := __var_18;
    return;
}



implementation currentPrice_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var secondsSinceStart_s918: int;
  var __var_18: int;

    gas := gas - 3;
    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 231;
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    if (!(now >= startTime_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 216;
    assume secondsSinceStart_s918 >= 0;
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume now - startTime_ValidatorAuction[this] >= 0;
    secondsSinceStart_s918 := now - startTime_ValidatorAuction[this];
    gas := gas - 25;
    assume __var_18 >= 0;
    assume secondsSinceStart_s918 >= 0;
    call __var_18 := priceAtElapsedTime_ValidatorAuction__success(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s918);
    if (revert)
    {
        return;
    }

    assume __var_18 >= 0;
    __ret_0_ := __var_18;
    return;
}



implementation priceAtElapsedTime_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s978: int)
   returns (__ret_0_: int)
{
  var msSinceStart_s977: int;
  var relativeAuctionTime_s977: int;
  var decayDivisor_s977: int;
  var decay_s977: int;
  var price_s977: int;

    gas := gas - 3;
    gas := gas - 668;
    assume secondsSinceStart_s978 >= 0;
    if (!(secondsSinceStart_s978 < 100 * 365))
    {
        revert := true;
        return;
    }

    gas := gas - 19;
    assume msSinceStart_s977 >= 0;
    assume secondsSinceStart_s978 >= 0;
    assume 1000 * secondsSinceStart_s978 >= 0;
    msSinceStart_s977 := 1000 * secondsSinceStart_s978;
    gas := gas - 236;
    assume relativeAuctionTime_s977 >= 0;
    assume msSinceStart_s977 >= 0;
    assume __tmp__auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume nonlinearDiv(msSinceStart_s977, __tmp__auctionDurationInDays_ValidatorAuction[this])
       >= 0;
    relativeAuctionTime_s977 := nonlinearDiv(msSinceStart_s977, __tmp__auctionDurationInDays_ValidatorAuction[this]);
    gas := gas - 11;
    assume decayDivisor_s977 >= 0;
    decayDivisor_s977 := 746571428571;
    gas := gas - 99;
    assume decay_s977 >= 0;
    assume relativeAuctionTime_s977 >= 0;
    assume nonlinearPow(relativeAuctionTime_s977, 3) >= 0;
    assume decayDivisor_s977 >= 0;
    assume nonlinearDiv(nonlinearPow(relativeAuctionTime_s977, 3), decayDivisor_s977) >= 0;
    decay_s977 := nonlinearDiv(nonlinearPow(relativeAuctionTime_s977, 3), decayDivisor_s977);
    gas := gas - 262;
    assume price_s977 >= 0;
    assume __tmp__startPrice_ValidatorAuction[this] >= 0;
    assume relativeAuctionTime_s977 >= 0;
    assume 1 + relativeAuctionTime_s977 >= 0;
    assume nonlinearMul(__tmp__startPrice_ValidatorAuction[this], 1 + relativeAuctionTime_s977)
       >= 0;
    assume relativeAuctionTime_s977 >= 0;
    assume 1 + relativeAuctionTime_s977 >= 0;
    assume decay_s977 >= 0;
    assume 1 + relativeAuctionTime_s977 + decay_s977 >= 0;
    assume nonlinearDiv(nonlinearMul(__tmp__startPrice_ValidatorAuction[this], 1 + relativeAuctionTime_s977), 
        1 + relativeAuctionTime_s977 + decay_s977)
       >= 0;
    price_s977 := nonlinearDiv(nonlinearMul(__tmp__startPrice_ValidatorAuction[this], 1 + relativeAuctionTime_s977), 
      1 + relativeAuctionTime_s977 + decay_s977);
    gas := gas - 18;
    assume price_s977 >= 0;
    __ret_0_ := price_s977;
    return;
}



implementation priceAtElapsedTime_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s978: int)
   returns (__ret_0_: int)
{
  var msSinceStart_s977: int;
  var relativeAuctionTime_s977: int;
  var decayDivisor_s977: int;
  var decay_s977: int;
  var price_s977: int;

    gas := gas - 3;
    gas := gas - 668;
    assume secondsSinceStart_s978 >= 0;
    if (!(secondsSinceStart_s978 < 100 * 365))
    {
        revert := true;
        return;
    }

    gas := gas - 19;
    assume msSinceStart_s977 >= 0;
    assume secondsSinceStart_s978 >= 0;
    assume 1000 * secondsSinceStart_s978 >= 0;
    msSinceStart_s977 := 1000 * secondsSinceStart_s978;
    gas := gas - 236;
    assume relativeAuctionTime_s977 >= 0;
    assume msSinceStart_s977 >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume nonlinearDiv(msSinceStart_s977, auctionDurationInDays_ValidatorAuction[this])
       >= 0;
    relativeAuctionTime_s977 := nonlinearDiv(msSinceStart_s977, auctionDurationInDays_ValidatorAuction[this]);
    gas := gas - 11;
    assume decayDivisor_s977 >= 0;
    decayDivisor_s977 := 746571428571;
    gas := gas - 99;
    assume decay_s977 >= 0;
    assume relativeAuctionTime_s977 >= 0;
    assume nonlinearPow(relativeAuctionTime_s977, 3) >= 0;
    assume decayDivisor_s977 >= 0;
    assume nonlinearDiv(nonlinearPow(relativeAuctionTime_s977, 3), decayDivisor_s977) >= 0;
    decay_s977 := nonlinearDiv(nonlinearPow(relativeAuctionTime_s977, 3), decayDivisor_s977);
    gas := gas - 262;
    assume price_s977 >= 0;
    assume startPrice_ValidatorAuction[this] >= 0;
    assume relativeAuctionTime_s977 >= 0;
    assume 1 + relativeAuctionTime_s977 >= 0;
    assume nonlinearMul(startPrice_ValidatorAuction[this], 1 + relativeAuctionTime_s977)
       >= 0;
    assume relativeAuctionTime_s977 >= 0;
    assume 1 + relativeAuctionTime_s977 >= 0;
    assume decay_s977 >= 0;
    assume 1 + relativeAuctionTime_s977 + decay_s977 >= 0;
    assume nonlinearDiv(nonlinearMul(startPrice_ValidatorAuction[this], 1 + relativeAuctionTime_s977), 
        1 + relativeAuctionTime_s977 + decay_s977)
       >= 0;
    price_s977 := nonlinearDiv(nonlinearMul(startPrice_ValidatorAuction[this], 1 + relativeAuctionTime_s977), 
      1 + relativeAuctionTime_s977 + decay_s977);
    gas := gas - 18;
    assume price_s977 >= 0;
    __ret_0_ := price_s977;
    return;
}



implementation withdrawAfterAuctionEnded_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var valueToWithdraw_s1028: int;
  var __var_19: int;
  var __var_20: bool;

    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 3);
    if (revert)
    {
        return;
    }

    gas := gas - 1163;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
    if (!(__tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG]
       > __tmp__lowestSlotPrice_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 512;
    assume valueToWithdraw_s1028 >= 0;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG]
         - __tmp__lowestSlotPrice_ValidatorAuction[this]
       >= 0;
    valueToWithdraw_s1028 := __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG]
       - __tmp__lowestSlotPrice_ValidatorAuction[this];
    gas := gas - 321;
    assume valueToWithdraw_s1028 >= 0;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    if (!(valueToWithdraw_s1028
       <= __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20309;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume __tmp__lowestSlotPrice_ValidatorAuction[this] >= 0;
    __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]] := __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]]
       - __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG];
    __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] := __tmp__lowestSlotPrice_ValidatorAuction[this];
    __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]] := __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]]
       + __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 35786;
    __var_19 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_19 := __var_19 - gas;
    assume valueToWithdraw_s1028 >= 0;
    call __var_20 := send__fail(this, msgsender_MSG, valueToWithdraw_s1028);
    if (!__var_20)
    {
        revert := true;
        return;
    }

    gas := __var_19 + gas;
}



implementation withdrawAfterAuctionEnded_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var valueToWithdraw_s1028: int;
  var __var_19: int;
  var __var_20: bool;

    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 3);
    if (revert)
    {
        return;
    }

    gas := gas - 1163;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    if (!(M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG]
       > lowestSlotPrice_ValidatorAuction[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 512;
    assume valueToWithdraw_s1028 >= 0;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG]
         - lowestSlotPrice_ValidatorAuction[this]
       >= 0;
    valueToWithdraw_s1028 := M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG]
       - lowestSlotPrice_ValidatorAuction[this];
    gas := gas - 321;
    assume valueToWithdraw_s1028 >= 0;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    if (!(valueToWithdraw_s1028
       <= M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20309;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    sum_bids2[bids_ValidatorAuction[this]] := sum_bids2[bids_ValidatorAuction[this]]
       - M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG];
    M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] := lowestSlotPrice_ValidatorAuction[this];
    sum_bids2[bids_ValidatorAuction[this]] := sum_bids2[bids_ValidatorAuction[this]]
       + M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 35786;
    __var_19 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_19 := __var_19 - gas;
    assume valueToWithdraw_s1028 >= 0;
    call __var_20 := send__success(this, msgsender_MSG, valueToWithdraw_s1028);
    if (!__var_20)
    {
        revert := true;
        return;
    }

    gas := __var_19 + gas;
}



implementation withdrawAfterAuctionFailed_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var valueToWithdraw_s1068: int;
  var __var_21: int;
  var __var_22: bool;

    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 4);
    if (revert)
    {
        return;
    }

    gas := gas - 963;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    if (!(__tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 306;
    assume valueToWithdraw_s1068 >= 0;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    valueToWithdraw_s1068 := __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 5103;
    assume __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]] := __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]]
       - __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG];
    __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG] := 0;
    __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]] := __tmp__sum_bids2[__tmp__bids_ValidatorAuction[this]]
       + __tmp__M_Ref_int_bids2[__tmp__bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 35786;
    __var_21 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_21 := __var_21 - gas;
    assume valueToWithdraw_s1068 >= 0;
    call __var_22 := send__fail(this, msgsender_MSG, valueToWithdraw_s1068);
    if (!__var_22)
    {
        revert := true;
        return;
    }

    gas := __var_21 + gas;
}



implementation withdrawAfterAuctionFailed_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var valueToWithdraw_s1068: int;
  var __var_21: int;
  var __var_22: bool;

    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 4);
    if (revert)
    {
        return;
    }

    gas := gas - 963;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    if (!(M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 306;
    assume valueToWithdraw_s1068 >= 0;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    valueToWithdraw_s1068 := M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 5103;
    assume M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    sum_bids2[bids_ValidatorAuction[this]] := sum_bids2[bids_ValidatorAuction[this]]
       - M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG];
    M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG] := 0;
    sum_bids2[bids_ValidatorAuction[this]] := sum_bids2[bids_ValidatorAuction[this]]
       + M_Ref_int_bids2[bids_ValidatorAuction[this]][msgsender_MSG];
    gas := gas - 35786;
    __var_21 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_21 := __var_21 - gas;
    assume valueToWithdraw_s1068 >= 0;
    call __var_22 := send__success(this, msgsender_MSG, valueToWithdraw_s1068);
    if (!__var_22)
    {
        revert := true;
        return;
    }

    gas := __var_21 + gas;
}



implementation transitionToDepositPending_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    __tmp__auctionState_ValidatorAuction[this] := 2;
    gas := gas - 20013;
    assume __tmp__closeTime_ValidatorAuction[this] >= 0;
    assume __tmp__now >= 0;
    __tmp__closeTime_ValidatorAuction[this] := __tmp__now;
}



implementation transitionToDepositPending_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    auctionState_ValidatorAuction[this] := 2;
    gas := gas - 20013;
    assume closeTime_ValidatorAuction[this] >= 0;
    assume now >= 0;
    closeTime_ValidatorAuction[this] := now;
    assert {:EventEmitted "AuctionDepositPending_ValidatorAuction"} true;
}



implementation transitionToAuctionFailed_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__fail(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    __tmp__auctionState_ValidatorAuction[this] := 4;
    gas := gas - 20013;
    assume __tmp__closeTime_ValidatorAuction[this] >= 0;
    assume __tmp__now >= 0;
    __tmp__closeTime_ValidatorAuction[this] := __tmp__now;
}



implementation transitionToAuctionFailed_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call stateIs_pre__success(this, msgsender_MSG, msgvalue_MSG, 1);
    if (revert)
    {
        return;
    }

    gas := gas - 20287;
    auctionState_ValidatorAuction[this] := 4;
    gas := gas - 20013;
    assume closeTime_ValidatorAuction[this] >= 0;
    assume now >= 0;
    closeTime_ValidatorAuction[this] := now;
    assert {:EventEmitted "AuctionFailed_ValidatorAuction"} true;
}



implementation isSenderContract_ValidatorAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (isContract_s1135: bool)
{
  var size_s1134: int;
  var sender_s1134: Ref;

    gas := gas - 3;
    gas := gas - 3;
    havoc size_s1134;
    gas := gas - 10;
    sender_s1134 := msgsender_MSG;
    gas := gas - 24;
    assume size_s1134 >= 0;
    isContract_s1135 := size_s1134 > 0;
    return;
}



implementation isSenderContract_ValidatorAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
   returns (isContract_s1135: bool)
{
  var size_s1134: int;
  var sender_s1134: Ref;

    gas := gas - 3;
    gas := gas - 3;
    havoc size_s1134;
    gas := gas - 10;
    sender_s1134 := msgsender_MSG;
    gas := gas - 24;
    assume size_s1134 >= 0;
    isContract_s1135 := size_s1134 > 0;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == ValidatorAuction)
    {
        call FallbackMethod_ValidatorAuction__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == DepositLocker)
    {
        call FallbackMethod_DepositLocker__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == DepositLockerInterface)
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
    if (DType[to] == ValidatorAuction)
    {
        call FallbackMethod_ValidatorAuction__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == DepositLocker)
    {
        call FallbackMethod_DepositLocker__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == DepositLockerInterface)
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
  var __snap___tmp__M_Ref_bool_canWithdraw0: [Ref][Ref]bool;
  var __snap___tmp__sum_canWithdraw0: [Ref]int;
  var __snap___tmp__M_Ref_bool_whitelist1: [Ref][Ref]bool;
  var __snap___tmp__sum_whitelist1: [Ref]int;
  var __snap___tmp__M_Ref_int_bids2: [Ref][Ref]int;
  var __snap___tmp__sum_bids2: [Ref]int;
  var __snap___tmp__M_int_Ref: [Ref][int]Ref;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__initialized_DepositLocker: [Ref]bool;
  var __snap___tmp__deposited_DepositLocker: [Ref]bool;
  var __snap___tmp__slasher_DepositLocker: [Ref]Ref;
  var __snap___tmp__depositorsProxy_DepositLocker: [Ref]Ref;
  var __snap___tmp__releaseTimestamp_DepositLocker: [Ref]int;
  var __snap___tmp__canWithdraw_DepositLocker: [Ref]Ref;
  var __snap___tmp__numberOfDepositors_DepositLocker: [Ref]int;
  var __snap___tmp__valuePerDepositor_DepositLocker: [Ref]int;
  var __snap___tmp__auctionDurationInDays_ValidatorAuction: [Ref]int;
  var __snap___tmp__startPrice_ValidatorAuction: [Ref]int;
  var __snap___tmp__minimalNumberOfParticipants_ValidatorAuction: [Ref]int;
  var __snap___tmp__maximalNumberOfParticipants_ValidatorAuction: [Ref]int;
  var __snap___tmp__auctionState_ValidatorAuction: [Ref]int;
  var __snap___tmp__depositLocker_ValidatorAuction: [Ref]Ref;
  var __snap___tmp__whitelist_ValidatorAuction: [Ref]Ref;
  var __snap___tmp__bids_ValidatorAuction: [Ref]Ref;
  var __snap___tmp__bidders_ValidatorAuction: [Ref]Ref;
  var __snap___tmp__startTime_ValidatorAuction: [Ref]int;
  var __snap___tmp__closeTime_ValidatorAuction: [Ref]int;
  var __snap___tmp__lowestSlotPrice_ValidatorAuction: [Ref]int;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_bool_canWithdraw0 := __tmp__M_Ref_bool_canWithdraw0;
        __snap___tmp__sum_canWithdraw0 := __tmp__sum_canWithdraw0;
        __snap___tmp__M_Ref_bool_whitelist1 := __tmp__M_Ref_bool_whitelist1;
        __snap___tmp__sum_whitelist1 := __tmp__sum_whitelist1;
        __snap___tmp__M_Ref_int_bids2 := __tmp__M_Ref_int_bids2;
        __snap___tmp__sum_bids2 := __tmp__sum_bids2;
        __snap___tmp__M_int_Ref := __tmp__M_int_Ref;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__owner_Ownable := __tmp__owner_Ownable;
        __snap___tmp__initialized_DepositLocker := __tmp__initialized_DepositLocker;
        __snap___tmp__deposited_DepositLocker := __tmp__deposited_DepositLocker;
        __snap___tmp__slasher_DepositLocker := __tmp__slasher_DepositLocker;
        __snap___tmp__depositorsProxy_DepositLocker := __tmp__depositorsProxy_DepositLocker;
        __snap___tmp__releaseTimestamp_DepositLocker := __tmp__releaseTimestamp_DepositLocker;
        __snap___tmp__canWithdraw_DepositLocker := __tmp__canWithdraw_DepositLocker;
        __snap___tmp__numberOfDepositors_DepositLocker := __tmp__numberOfDepositors_DepositLocker;
        __snap___tmp__valuePerDepositor_DepositLocker := __tmp__valuePerDepositor_DepositLocker;
        __snap___tmp__auctionDurationInDays_ValidatorAuction := __tmp__auctionDurationInDays_ValidatorAuction;
        __snap___tmp__startPrice_ValidatorAuction := __tmp__startPrice_ValidatorAuction;
        __snap___tmp__minimalNumberOfParticipants_ValidatorAuction := __tmp__minimalNumberOfParticipants_ValidatorAuction;
        __snap___tmp__maximalNumberOfParticipants_ValidatorAuction := __tmp__maximalNumberOfParticipants_ValidatorAuction;
        __snap___tmp__auctionState_ValidatorAuction := __tmp__auctionState_ValidatorAuction;
        __snap___tmp__depositLocker_ValidatorAuction := __tmp__depositLocker_ValidatorAuction;
        __snap___tmp__whitelist_ValidatorAuction := __tmp__whitelist_ValidatorAuction;
        __snap___tmp__bids_ValidatorAuction := __tmp__bids_ValidatorAuction;
        __snap___tmp__bidders_ValidatorAuction := __tmp__bidders_ValidatorAuction;
        __snap___tmp__startTime_ValidatorAuction := __tmp__startTime_ValidatorAuction;
        __snap___tmp__closeTime_ValidatorAuction := __tmp__closeTime_ValidatorAuction;
        __snap___tmp__lowestSlotPrice_ValidatorAuction := __tmp__lowestSlotPrice_ValidatorAuction;
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
        __tmp__M_Ref_bool_canWithdraw0 := __snap___tmp__M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := __snap___tmp__sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := __snap___tmp__M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := __snap___tmp__sum_whitelist1;
        __tmp__M_Ref_int_bids2 := __snap___tmp__M_Ref_int_bids2;
        __tmp__sum_bids2 := __snap___tmp__sum_bids2;
        __tmp__M_int_Ref := __snap___tmp__M_int_Ref;
        __tmp__sum := __snap___tmp__sum;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__owner_Ownable := __snap___tmp__owner_Ownable;
        __tmp__initialized_DepositLocker := __snap___tmp__initialized_DepositLocker;
        __tmp__deposited_DepositLocker := __snap___tmp__deposited_DepositLocker;
        __tmp__slasher_DepositLocker := __snap___tmp__slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := __snap___tmp__depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := __snap___tmp__releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := __snap___tmp__canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := __snap___tmp__numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := __snap___tmp__valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := __snap___tmp__auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := __snap___tmp__startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := __snap___tmp__minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := __snap___tmp__maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := __snap___tmp__auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := __snap___tmp__depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := __snap___tmp__whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := __snap___tmp__bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := __snap___tmp__bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := __snap___tmp__startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := __snap___tmp__closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := __snap___tmp__lowestSlotPrice_ValidatorAuction;
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
        __tmp__M_Ref_bool_canWithdraw0 := M_Ref_bool_canWithdraw0;
        __tmp__sum_canWithdraw0 := sum_canWithdraw0;
        __tmp__M_Ref_bool_whitelist1 := M_Ref_bool_whitelist1;
        __tmp__sum_whitelist1 := sum_whitelist1;
        __tmp__M_Ref_int_bids2 := M_Ref_int_bids2;
        __tmp__sum_bids2 := sum_bids2;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__initialized_DepositLocker := initialized_DepositLocker;
        __tmp__deposited_DepositLocker := deposited_DepositLocker;
        __tmp__slasher_DepositLocker := slasher_DepositLocker;
        __tmp__depositorsProxy_DepositLocker := depositorsProxy_DepositLocker;
        __tmp__releaseTimestamp_DepositLocker := releaseTimestamp_DepositLocker;
        __tmp__canWithdraw_DepositLocker := canWithdraw_DepositLocker;
        __tmp__numberOfDepositors_DepositLocker := numberOfDepositors_DepositLocker;
        __tmp__valuePerDepositor_DepositLocker := valuePerDepositor_DepositLocker;
        __tmp__auctionDurationInDays_ValidatorAuction := auctionDurationInDays_ValidatorAuction;
        __tmp__startPrice_ValidatorAuction := startPrice_ValidatorAuction;
        __tmp__minimalNumberOfParticipants_ValidatorAuction := minimalNumberOfParticipants_ValidatorAuction;
        __tmp__maximalNumberOfParticipants_ValidatorAuction := maximalNumberOfParticipants_ValidatorAuction;
        __tmp__auctionState_ValidatorAuction := auctionState_ValidatorAuction;
        __tmp__depositLocker_ValidatorAuction := depositLocker_ValidatorAuction;
        __tmp__whitelist_ValidatorAuction := whitelist_ValidatorAuction;
        __tmp__bids_ValidatorAuction := bids_ValidatorAuction;
        __tmp__bidders_ValidatorAuction := bidders_ValidatorAuction;
        __tmp__startTime_ValidatorAuction := startTime_ValidatorAuction;
        __tmp__closeTime_ValidatorAuction := closeTime_ValidatorAuction;
        __tmp__lowestSlotPrice_ValidatorAuction := lowestSlotPrice_ValidatorAuction;
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
    gas := gas - 4257;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 4257;
    if (!(msgsender_MSG == owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation isInitialised_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2148;
    if (!__tmp__initialized_DepositLocker[this])
    {
        revert := true;
        return;
    }
}



implementation isInitialised_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2148;
    if (!initialized_DepositLocker[this])
    {
        revert := true;
        return;
    }
}



implementation isDeposited_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 870;
    if (!__tmp__deposited_DepositLocker[this])
    {
        revert := true;
        return;
    }
}



implementation isDeposited_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 870;
    if (!deposited_DepositLocker[this])
    {
        revert := true;
        return;
    }
}



implementation isNotDeposited_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 876;
    if (!!__tmp__deposited_DepositLocker[this])
    {
        revert := true;
        return;
    }
}



implementation isNotDeposited_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 876;
    if (!!deposited_DepositLocker[this])
    {
        revert := true;
        return;
    }
}



implementation onlyDepositorsProxy_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1008;
    if (!(msgsender_MSG == __tmp__depositorsProxy_DepositLocker[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyDepositorsProxy_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1008;
    if (!(msgsender_MSG == depositorsProxy_DepositLocker[this]))
    {
        revert := true;
        return;
    }
}



implementation stateIs_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s480: int)
{
    gas := gas - 10516;
    if (!(__tmp__auctionState_ValidatorAuction[this] == state_s480))
    {
        revert := true;
        return;
    }
}



implementation stateIs_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s480: int)
{
    gas := gas - 10516;
    if (!(auctionState_ValidatorAuction[this] == state_s480))
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s43: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s43;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != DepositLockerInterface;
    assume DType[msgsender_MSG] != DepositLocker;
    assume DType[msgsender_MSG] != ValidatorAuction;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
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
    assume DType[this] == Ownable
       || DType[this] == DepositLocker
       || DType[this] == ValidatorAuction;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_DepositLockerInterface(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _depositorToBeSlashed_s49: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _depositorToBeSlashed_s49;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != DepositLockerInterface;
    assume DType[msgsender_MSG] != DepositLocker;
    assume DType[msgsender_MSG] != ValidatorAuction;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call slash_DepositLockerInterface(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s49);
    }
}



implementation CorralEntry_DepositLockerInterface()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == DepositLockerInterface || DType[this] == DepositLocker;
    gas := gas - 53000;
    call DepositLockerInterface_DepositLockerInterface__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_DepositLockerInterface(this);
    }
}



implementation CorralChoice_DepositLocker(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s43: Ref;
  var _depositorToBeSlashed_s379: Ref;
  var _releaseTimestamp_s192: int;
  var _slasher_s192: Ref;
  var _depositorsProxy_s192: Ref;
  var _depositor_s228: Ref;
  var _valuePerDepositor_s292: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s43;
    havoc _depositorToBeSlashed_s379;
    havoc _releaseTimestamp_s192;
    havoc _slasher_s192;
    havoc _depositorsProxy_s192;
    havoc _depositor_s228;
    havoc _valuePerDepositor_s292;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != DepositLockerInterface;
    assume DType[msgsender_MSG] != DepositLocker;
    assume DType[msgsender_MSG] != ValidatorAuction;
    Alloc[msgsender_MSG] := true;
    if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call slash_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s379);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call init_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _releaseTimestamp_s192, _slasher_s192, _depositorsProxy_s192);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call registerDepositor_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _depositor_s228);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call deposit_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _valuePerDepositor_s292);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_DepositLocker(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_DepositLocker()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == DepositLocker;
    gas := gas - 53000;
    call DepositLocker_DepositLocker__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_DepositLocker(this);
    }
}



implementation CorralChoice_ValidatorAuction(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s43: Ref;
  var _startPriceInWei_s578: int;
  var _auctionDurationInDays_s578: int;
  var _minimalNumberOfParticipants_s578: int;
  var _maximalNumberOfParticipants_s578: int;
  var _depositLocker_s578: Ref;
  var addressesToWhitelist_s852: Ref;
  var __ret_0_currentPrice: int;
  var secondsSinceStart_s978: int;
  var __ret_0_priceAtElapsedTime: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s43;
    havoc _startPriceInWei_s578;
    havoc _auctionDurationInDays_s578;
    havoc _minimalNumberOfParticipants_s578;
    havoc _maximalNumberOfParticipants_s578;
    havoc _depositLocker_s578;
    havoc addressesToWhitelist_s852;
    havoc __ret_0_currentPrice;
    havoc secondsSinceStart_s978;
    havoc __ret_0_priceAtElapsedTime;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != DepositLockerInterface;
    assume DType[msgsender_MSG] != DepositLocker;
    assume DType[msgsender_MSG] != ValidatorAuction;
    Alloc[msgsender_MSG] := true;
    if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdraw_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        call bid_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call startAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call depositBids_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call closeAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        call addressesToWhitelist_s852 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addToWhitelist_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s852);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_currentPrice := currentPrice_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_priceAtElapsedTime := priceAtElapsedTime_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s978);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _startPriceInWei_s578: int;
  var _auctionDurationInDays_s578: int;
  var _minimalNumberOfParticipants_s578: int;
  var _maximalNumberOfParticipants_s578: int;
  var _depositLocker_s578: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ValidatorAuction;
    gas := gas - 53000;
    call ValidatorAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s578, _auctionDurationInDays_s578, _minimalNumberOfParticipants_s578, _maximalNumberOfParticipants_s578, _depositLocker_s578);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ValidatorAuction(this);
    }
}


