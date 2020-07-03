type Ref = int;
type ContractName = int;
var null: Ref;
var ICrowdsaleReservationFund: ContractName;
var ISimpleCrowdsale: ContractName;
var Ownable: ContractName;
var ReservationFund: ContractName;
var SafeMath: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefIntArr() returns (ret: [Ref]int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntIntArr() returns (ret: [int]int);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroRefBoolArr() returns (ret: [Ref]bool);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroIntBoolArr() returns (ret: [int]bool);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefRefArr() returns (ret: [Ref]Ref);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntRefArr() returns (ret: [int]Ref);
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
procedure {:inline 1} ICrowdsaleReservationFund_ICrowdsaleReservationFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ICrowdsaleReservationFund_ICrowdsaleReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
implementation ICrowdsaleReservationFund_ICrowdsaleReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call ICrowdsaleReservationFund_ICrowdsaleReservationFund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ICrowdsaleReservationFund_ICrowdsaleReservationFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} canCompleteContribution_ICrowdsaleReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s340: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} completeContribution_ICrowdsaleReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s345: Ref);
procedure {:public} {:inline 1} processContribution_ICrowdsaleReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s354: Ref, _tokensToIssue_s354: int, _bonusTokensToIssue_s354: int);
procedure {:public} {:inline 1} contributionsOf_ICrowdsaleReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s361: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} onCrowdsaleEnd_ICrowdsaleReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
implementation ISimpleCrowdsale_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call ISimpleCrowdsale_ISimpleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call ISimpleCrowdsale_ISimpleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} getSoftCap_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} isContributorInLists_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributorAddress_s379: Ref) returns (__ret_0_: bool);
procedure {:public} {:inline 1} processReservationFundContribution_ISimpleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s388: Ref, tokenAmount_s388: int, tokenBonusAmount_s388: int);
var owner_Ownable: [Ref]Ref;
var newOwner_Ownable: [Ref]Ref;
procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref);
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies owner_Ownable;
modifies newOwner_Ownable;
implementation Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s419);
assume ((revert) || ((gas) < (0)));
} else {
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG, _owner_s419);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s448: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies newOwner_Ownable;
implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s448: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, _newOwner_s448);
assume ((revert) || ((gas) < (0)));
} else {
call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, _newOwner_s448);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} confirmOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies owner_Ownable;
modifies newOwner_Ownable;
implementation confirmOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call confirmOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call confirmOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

var crowdsaleFinished_ReservationFund: [Ref]bool;
var contributions_ReservationFund: [Ref]Ref;
var tokensToIssue_ReservationFund: [Ref]Ref;
var bonusTokensToIssue_ReservationFund: [Ref]Ref;
var crowdsale_ReservationFund: [Ref]Ref;
procedure {:inline 1} ReservationFund_ReservationFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref);
modifies crowdsaleFinished_ReservationFund;
modifies contributions_ReservationFund;
modifies M_Ref_int;
modifies tokensToIssue_ReservationFund;
modifies bonusTokensToIssue_ReservationFund;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} ReservationFund_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies crowdsaleFinished_ReservationFund;
modifies contributions_ReservationFund;
modifies M_Ref_int;
modifies tokensToIssue_ReservationFund;
modifies bonusTokensToIssue_ReservationFund;
modifies Alloc;
implementation ReservationFund_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call ReservationFund_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
assume ((revert) || ((gas) < (0)));
} else {
call ReservationFund_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} setCrowdsaleAddress_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, crowdsaleAddress_s88: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies crowdsale_ReservationFund;
implementation setCrowdsaleAddress_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, crowdsaleAddress_s88: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call setCrowdsaleAddress_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG, crowdsaleAddress_s88);
assume ((revert) || ((gas) < (0)));
} else {
call setCrowdsaleAddress_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG, crowdsaleAddress_s88);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} onCrowdsaleEnd_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies crowdsaleFinished_ReservationFund;
implementation onCrowdsaleEnd_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call onCrowdsaleEnd_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call onCrowdsaleEnd_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} canCompleteContribution_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s134: Ref) returns (__ret_0_: bool);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
implementation canCompleteContribution_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s134: Ref) returns (__ret_0_: bool)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call __ret_0_ := canCompleteContribution_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG, contributor_s134);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := canCompleteContribution_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG, contributor_s134);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} contributionsOf_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s146: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
implementation contributionsOf_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s146: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call __ret_0_ := contributionsOf_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG, contributor_s146);
assume ((revert) || ((gas) < (0)));
} else {
call __ret_0_ := contributionsOf_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG, contributor_s146);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} processContribution_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s192: Ref, _tokensToIssue_s192: int, _bonusTokensToIssue_s192: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies Balance;
modifies M_Ref_int;
implementation processContribution_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s192: Ref, _tokensToIssue_s192: int, _bonusTokensToIssue_s192: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call processContribution_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG, contributor_s192, _tokensToIssue_s192, _bonusTokensToIssue_s192);
assume ((revert) || ((gas) < (0)));
} else {
call processContribution_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG, contributor_s192, _tokensToIssue_s192, _bonusTokensToIssue_s192);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} completeContribution_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s271: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies M_Ref_int;
implementation completeContribution_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s271: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call completeContribution_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG, contributor_s271);
assume ((revert) || ((gas) < (0)));
} else {
call completeContribution_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG, contributor_s271);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} refundPayment_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s330: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies gas;
modifies M_Ref_int;
modifies Balance;
implementation refundPayment_ReservationFund(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s330: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call refundPayment_ReservationFund__fail(this, msgsender_MSG, msgvalue_MSG, contributor_s330);
assume ((revert) || ((gas) < (0)));
} else {
call refundPayment_ReservationFund__success(this, msgsender_MSG, msgvalue_MSG, contributor_s330);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:public} {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

// procedure {:inline 1} safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s511: int, b_s511: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s529: int, b_s529: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s549: int, b_s549: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s573: int, b_s573: int) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies revert;
modifies Balance;
procedure BoogieEntry_ICrowdsaleReservationFund();
modifies gas;
modifies now;
procedure BoogieEntry_ISimpleCrowdsale();
modifies gas;
modifies now;
// const {:existential true} HoudiniB1_Ownable: bool;
// const {:existential true} HoudiniB2_Ownable: bool;
// const {:existential true} HoudiniB3_Ownable: bool;
// const {:existential true} HoudiniB4_Ownable: bool;
// const {:existential true} HoudiniB5_Ownable: bool;
// const {:existential true} HoudiniB6_Ownable: bool;
procedure BoogieEntry_Ownable();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies newOwner_Ownable;
modifies owner_Ownable;
// const {:existential true} HoudiniB1_ReservationFund: bool;
// const {:existential true} HoudiniB2_ReservationFund: bool;
// const {:existential true} HoudiniB3_ReservationFund: bool;
// const {:existential true} HoudiniB4_ReservationFund: bool;
// const {:existential true} HoudiniB5_ReservationFund: bool;
// const {:existential true} HoudiniB6_ReservationFund: bool;
procedure main();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies M_Ref_int;
modifies Balance;
modifies crowdsaleFinished_ReservationFund;
modifies newOwner_Ownable;
modifies owner_Ownable;
modifies crowdsale_ReservationFund;
modifies contributions_ReservationFund;
modifies tokensToIssue_ReservationFund;
modifies bonusTokensToIssue_ReservationFund;
modifies Alloc;
procedure BoogieEntry_SafeMath();
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
procedure onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyCrowdsale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure CorralChoice_ICrowdsaleReservationFund(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_ICrowdsaleReservationFund();
modifies gas;
modifies now;
procedure CorralChoice_ISimpleCrowdsale(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_ISimpleCrowdsale();
modifies gas;
modifies now;
procedure CorralChoice_Ownable(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies newOwner_Ownable;
modifies owner_Ownable;
procedure CorralEntry_Ownable();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies now;
modifies newOwner_Ownable;
modifies owner_Ownable;
procedure CorralChoice_ReservationFund(this: Ref);
modifies gas;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies M_Ref_int;
modifies Balance;
modifies crowdsaleFinished_ReservationFund;
modifies newOwner_Ownable;
modifies owner_Ownable;
modifies crowdsale_ReservationFund;
procedure CorralEntry_ReservationFund();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies now;
modifies M_Ref_int;
modifies Balance;
modifies crowdsaleFinished_ReservationFund;
modifies newOwner_Ownable;
modifies owner_Ownable;
modifies crowdsale_ReservationFund;
modifies contributions_ReservationFund;
modifies tokensToIssue_ReservationFund;
modifies bonusTokensToIssue_ReservationFund;
modifies Alloc;
procedure CorralChoice_SafeMath(this: Ref);
modifies gas;
modifies now;
procedure CorralEntry_SafeMath();
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies now;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__owner_Ownable: [Ref]Ref;
var __tmp__newOwner_Ownable: [Ref]Ref;
var __tmp__crowdsaleFinished_ReservationFund: [Ref]bool;
var __tmp__contributions_ReservationFund: [Ref]Ref;
var __tmp__tokensToIssue_ReservationFund: [Ref]Ref;
var __tmp__bonusTokensToIssue_ReservationFund: [Ref]Ref;
var __tmp__crowdsale_ReservationFund: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} ICrowdsaleReservationFund_ICrowdsaleReservationFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ICrowdsaleReservationFund_ICrowdsaleReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ICrowdsaleReservationFund_ICrowdsaleReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} ISimpleCrowdsale_ISimpleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref);
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref);
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref);
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s448: Ref);
modifies revert;
modifies newOwner_Ownable;
procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s448: Ref);
modifies revert;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} confirmOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies owner_Ownable;
modifies newOwner_Ownable;
procedure {:inline 1} confirmOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
procedure {:inline 1} ReservationFund_ReservationFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref);
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__M_Ref_int;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} ReservationFund_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref);
modifies owner_Ownable;
modifies newOwner_Ownable;
modifies crowdsaleFinished_ReservationFund;
modifies contributions_ReservationFund;
modifies M_Ref_int;
modifies tokensToIssue_ReservationFund;
modifies bonusTokensToIssue_ReservationFund;
modifies Alloc;
procedure {:constructor} {:inline 1} ReservationFund_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref);
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__M_Ref_int;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__Alloc;
procedure {:inline 1} setCrowdsaleAddress_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, crowdsaleAddress_s88: Ref);
modifies revert;
modifies crowdsale_ReservationFund;
procedure {:inline 1} setCrowdsaleAddress_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, crowdsaleAddress_s88: Ref);
modifies revert;
modifies __tmp__crowdsale_ReservationFund;
procedure {:inline 1} onCrowdsaleEnd_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies crowdsaleFinished_ReservationFund;
modifies revert;
procedure {:inline 1} onCrowdsaleEnd_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies revert;
procedure {:inline 1} canCompleteContribution_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s134: Ref) returns (__ret_0_: bool);
procedure {:inline 1} canCompleteContribution_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s134: Ref) returns (__ret_0_: bool);
procedure {:inline 1} contributionsOf_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s146: Ref) returns (__ret_0_: int);
procedure {:inline 1} contributionsOf_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s146: Ref) returns (__ret_0_: int);
procedure {:inline 1} processContribution_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s192: Ref, _tokensToIssue_s192: int, _bonusTokensToIssue_s192: int);
modifies Balance;
modifies M_Ref_int;
modifies revert;
procedure {:inline 1} processContribution_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s192: Ref, _tokensToIssue_s192: int, _bonusTokensToIssue_s192: int);
modifies __tmp__Balance;
modifies __tmp__M_Ref_int;
modifies revert;
procedure {:inline 1} completeContribution_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s271: Ref);
modifies revert;
modifies M_Ref_int;
procedure {:inline 1} completeContribution_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s271: Ref);
modifies revert;
modifies __tmp__M_Ref_int;
procedure {:inline 1} refundPayment_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s330: Ref);
modifies revert;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies Balance;
procedure {:inline 1} refundPayment_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s330: Ref);
modifies revert;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:constructor} {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
// procedure {:inline 1} safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s511: int, b_s511: int) returns (__ret_0_: int);
// procedure {:inline 1} safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s529: int, b_s529: int) returns (__ret_0_: int);
procedure {:inline 1} safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s549: int, b_s549: int) returns (__ret_0_: int);
procedure {:inline 1} safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s573: int, b_s573: int) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__owner_Ownable;
modifies __tmp__newOwner_Ownable;
modifies __tmp__crowdsaleFinished_ReservationFund;
modifies __tmp__contributions_ReservationFund;
modifies __tmp__tokensToIssue_ReservationFund;
modifies __tmp__bonusTokensToIssue_ReservationFund;
modifies __tmp__crowdsale_ReservationFund;
modifies revert;
procedure onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
procedure onlyCrowdsale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
havoc newRef;
assume ((__tmp__Alloc[newRef]) == (false));
__tmp__Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation FreshRefGenerator__success() returns (newRef: Ref)
{
havoc newRef;
assume ((Alloc[newRef]) == (false));
Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation ICrowdsaleReservationFund_ICrowdsaleReservationFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ICrowdsaleReservationFund_ICrowdsaleReservationFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ICrowdsaleReservationFund_ICrowdsaleReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ICrowdsaleReservationFund_ICrowdsaleReservationFund_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ICrowdsaleReservationFund_ICrowdsaleReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ICrowdsaleReservationFund_ICrowdsaleReservationFund_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation ISimpleCrowdsale_ISimpleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation ISimpleCrowdsale_ISimpleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call ISimpleCrowdsale_ISimpleCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__owner_Ownable[this] := null;
__tmp__newOwner_Ownable[this] := null;
// end of initialization
__var_1 := null;
__tmp__owner_Ownable[this] := if (_owner_s419) == (null) then (msgsender_MSG) else (_owner_s419);
}

implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
owner_Ownable[this] := null;
newOwner_Ownable[this] := null;
// end of initialization
__var_1 := null;
owner_Ownable[this] := if (_owner_s419) == (null) then (msgsender_MSG) else (_owner_s419);
}

implementation Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref)
{
var __var_1: Ref;
call Ownable_Ownable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s419);
if (revert) {
return;
}
}

implementation Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s419: Ref)
{
var __var_1: Ref;
call Ownable_Ownable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _owner_s419);
if (revert) {
return;
}
}

implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s448: Ref)
{
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((_newOwner_s448) != (__tmp__owner_Ownable[this]))) {
revert := true;
return;
}
__tmp__newOwner_Ownable[this] := _newOwner_s448;
}

implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newOwner_s448: Ref)
{
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
if (!((_newOwner_s448) != (owner_Ownable[this]))) {
revert := true;
return;
}
newOwner_Ownable[this] := _newOwner_s448;
}

implementation confirmOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_2: Ref;
if (!((msgsender_MSG) == (__tmp__newOwner_Ownable[this]))) {
revert := true;
return;
}
__tmp__owner_Ownable[this] := __tmp__newOwner_Ownable[this];
__var_2 := null;
__tmp__newOwner_Ownable[this] := __var_2;
}

implementation confirmOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_2: Ref;
if (!((msgsender_MSG) == (newOwner_Ownable[this]))) {
revert := true;
return;
}
assert {:EventEmitted "OwnershipTransferred_Ownable"} (true);
owner_Ownable[this] := newOwner_Ownable[this];
__var_2 := null;
newOwner_Ownable[this] := __var_2;
}

implementation ReservationFund_ReservationFund_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref)
{
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__crowdsaleFinished_ReservationFund[this] := false;
// Make array/mapping vars distinct for contributions
call __var_3 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__contributions_ReservationFund[this] := __var_3;
// Initialize Integer mapping contributions
__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for tokensToIssue
call __var_4 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__tokensToIssue_ReservationFund[this] := __var_4;
// Initialize Integer mapping tokensToIssue
__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for bonusTokensToIssue
call __var_5 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__bonusTokensToIssue_ReservationFund[this] := __var_5;
// Initialize Integer mapping bonusTokensToIssue
__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]] := zeroRefIntArr();
// end of initialization
}

implementation ReservationFund_ReservationFund_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref)
{
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
crowdsaleFinished_ReservationFund[this] := false;
// Make array/mapping vars distinct for contributions
call __var_3 := FreshRefGenerator__success();
if (revert) {
return;
}
contributions_ReservationFund[this] := __var_3;
// Initialize Integer mapping contributions
M_Ref_int[contributions_ReservationFund[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for tokensToIssue
call __var_4 := FreshRefGenerator__success();
if (revert) {
return;
}
tokensToIssue_ReservationFund[this] := __var_4;
// Initialize Integer mapping tokensToIssue
M_Ref_int[tokensToIssue_ReservationFund[this]] := zeroRefIntArr();
// Make array/mapping vars distinct for bonusTokensToIssue
call __var_5 := FreshRefGenerator__success();
if (revert) {
return;
}
bonusTokensToIssue_ReservationFund[this] := __var_5;
// Initialize Integer mapping bonusTokensToIssue
M_Ref_int[bonusTokensToIssue_ReservationFund[this]] := zeroRefIntArr();
// end of initialization
}

implementation ReservationFund_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref)
{
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
call ICrowdsaleReservationFund_ICrowdsaleReservationFund__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
if (revert) {
return;
}
call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReservationFund_ReservationFund_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
if (revert) {
return;
}
}

implementation ReservationFund_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s51: Ref)
{
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
call ICrowdsaleReservationFund_ICrowdsaleReservationFund__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
if (revert) {
return;
}
call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
call ReservationFund_ReservationFund_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
if (revert) {
return;
}
}

implementation setCrowdsaleAddress_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, crowdsaleAddress_s88: Ref)
{
var __var_7: Ref;
var __var_8: Ref;
var __var_9: Ref;
call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_7 := __tmp__crowdsale_ReservationFund[this];
__var_8 := null;
if (!((__tmp__crowdsale_ReservationFund[this]) == (null))) {
revert := true;
return;
}
assume ((__tmp__DType[crowdsaleAddress_s88]) == (ISimpleCrowdsale));
__var_9 := crowdsaleAddress_s88;
__tmp__crowdsale_ReservationFund[this] := __var_9;
}

implementation setCrowdsaleAddress_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, crowdsaleAddress_s88: Ref)
{
var __var_7: Ref;
var __var_8: Ref;
var __var_9: Ref;
call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__var_7 := crowdsale_ReservationFund[this];
__var_8 := null;
if (!((crowdsale_ReservationFund[this]) == (null))) {
revert := true;
return;
}
assume ((DType[crowdsaleAddress_s88]) == (ISimpleCrowdsale));
__var_9 := crowdsaleAddress_s88;
crowdsale_ReservationFund[this] := __var_9;
}

implementation onCrowdsaleEnd_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
__tmp__crowdsaleFinished_ReservationFund[this] := true;
}

implementation onCrowdsaleEnd_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call onlyCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
crowdsaleFinished_ReservationFund[this] := true;
assert {:EventEmitted "FinishCrowdsale_ReservationFund"} (true);
}

implementation canCompleteContribution_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s134: Ref) returns (__ret_0_: bool)
{
var __var_10: bool;
var __var_11: int;
if (__tmp__crowdsaleFinished_ReservationFund[this]) {
__ret_0_ := false;
return;
}
call __var_10 := isContributorInLists_ISimpleCrowdsale(__tmp__crowdsale_ReservationFund[this], this, __var_11, contributor_s134);
if (!(__var_10)) {
__ret_0_ := false;
return;
}
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s134]) >= (0));
if ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s134]) == (0)) {
__ret_0_ := false;
return;
}
__ret_0_ := true;
return;
}

implementation canCompleteContribution_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s134: Ref) returns (__ret_0_: bool)
{
var __var_10: bool;
var __var_11: int;
if (crowdsaleFinished_ReservationFund[this]) {
__ret_0_ := false;
return;
}
call __var_10 := isContributorInLists_ISimpleCrowdsale(crowdsale_ReservationFund[this], this, __var_11, contributor_s134);
if (!(__var_10)) {
__ret_0_ := false;
return;
}
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s134]) >= (0));
if ((M_Ref_int[contributions_ReservationFund[this]][contributor_s134]) == (0)) {
__ret_0_ := false;
return;
}
__ret_0_ := true;
return;
}

implementation contributionsOf_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s146: Ref) returns (__ret_0_: int)
{
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s146]) >= (0));
__ret_0_ := __tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s146];
return;
}

implementation contributionsOf_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s146: Ref) returns (__ret_0_: int)
{
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s146]) >= (0));
__ret_0_ := M_Ref_int[contributions_ReservationFund[this]][contributor_s146];
return;
}

implementation processContribution_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s192: Ref, _tokensToIssue_s192: int, _bonusTokensToIssue_s192: int)
{
var __var_12: int;
var __var_13: int;
var __var_14: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call onlyCrowdsale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s192]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s192]) >= (0));
assume ((msgvalue_MSG) >= (0));
if ((__tmp__DType[this]) == (ReservationFund)) {
call __var_12 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s192], msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s192] := __var_12;
assume ((__var_12) >= (0));
assume ((__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((_tokensToIssue_s192) >= (0));
if ((__tmp__DType[this]) == (ReservationFund)) {
call __var_13 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s192], _tokensToIssue_s192);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s192] := __var_13;
assume ((__var_13) >= (0));
assume ((__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((_bonusTokensToIssue_s192) >= (0));
if ((__tmp__DType[this]) == (ReservationFund)) {
call __var_14 := safeAdd_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s192], _bonusTokensToIssue_s192);
if (revert) {
return;
}
} else {
assume (false);
}
__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s192] := __var_14;
assume ((__var_14) >= (0));
}

implementation processContribution_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s192: Ref, _tokensToIssue_s192: int, _bonusTokensToIssue_s192: int)
{
var __var_12: int;
var __var_13: int;
var __var_14: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call onlyCrowdsale_pre__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s192]) >= (0));
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s192]) >= (0));
assume ((msgvalue_MSG) >= (0));
if ((DType[this]) == (ReservationFund)) {
call __var_12 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[contributions_ReservationFund[this]][contributor_s192], msgvalue_MSG);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[contributions_ReservationFund[this]][contributor_s192] := __var_12;
assume ((__var_12) >= (0));
assume ((M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((_tokensToIssue_s192) >= (0));
if ((DType[this]) == (ReservationFund)) {
call __var_13 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s192], _tokensToIssue_s192);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s192] := __var_13;
assume ((__var_13) >= (0));
assume ((M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s192]) >= (0));
assume ((_bonusTokensToIssue_s192) >= (0));
if ((DType[this]) == (ReservationFund)) {
call __var_14 := safeAdd_SafeMath__success(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s192], _bonusTokensToIssue_s192);
if (revert) {
return;
}
} else {
assume (false);
}
M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s192] := __var_14;
assume ((__var_14) >= (0));
}

implementation completeContribution_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s271: Ref)
{
var __var_15: bool;
var __var_16: int;
var etherAmount_s270: int;
var tokenAmount_s270: int;
var tokenBonusAmount_s270: int;
if (!(!(__tmp__crowdsaleFinished_ReservationFund[this]))) {
revert := true;
return;
}
call __var_15 := isContributorInLists_ISimpleCrowdsale(__tmp__crowdsale_ReservationFund[this], this, __var_16, contributor_s271);
if (!(__var_15)) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s271]) >= (0));
if (!((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s271]) > (0))) {
revert := true;
return;
}
assume ((etherAmount_s270) >= (0));
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s271]) >= (0));
etherAmount_s270 := __tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s271];
assume ((tokenAmount_s270) >= (0));
assume ((__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
tokenAmount_s270 := __tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s271];
assume ((tokenBonusAmount_s270) >= (0));
assume ((__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
tokenBonusAmount_s270 := __tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s271];
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s271]) >= (0));
__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s271] := 0;
assume ((__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s271] := 0;
assume ((__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s271] := 0;
assume ((etherAmount_s270) >= (0));
assume ((tokenAmount_s270) >= (0));
assume ((tokenBonusAmount_s270) >= (0));
call processReservationFundContribution_ISimpleCrowdsale(__tmp__crowdsale_ReservationFund[this], this, etherAmount_s270, contributor_s271, tokenAmount_s270, tokenBonusAmount_s270);
}

implementation completeContribution_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s271: Ref)
{
var __var_15: bool;
var __var_16: int;
var etherAmount_s270: int;
var tokenAmount_s270: int;
var tokenBonusAmount_s270: int;
if (!(!(crowdsaleFinished_ReservationFund[this]))) {
revert := true;
return;
}
call __var_15 := isContributorInLists_ISimpleCrowdsale(crowdsale_ReservationFund[this], this, __var_16, contributor_s271);
if (!(__var_15)) {
revert := true;
return;
}
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s271]) >= (0));
if (!((M_Ref_int[contributions_ReservationFund[this]][contributor_s271]) > (0))) {
revert := true;
return;
}
assume ((etherAmount_s270) >= (0));
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s271]) >= (0));
etherAmount_s270 := M_Ref_int[contributions_ReservationFund[this]][contributor_s271];
assume ((tokenAmount_s270) >= (0));
assume ((M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
tokenAmount_s270 := M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s271];
assume ((tokenBonusAmount_s270) >= (0));
assume ((M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
tokenBonusAmount_s270 := M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s271];
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s271]) >= (0));
M_Ref_int[contributions_ReservationFund[this]][contributor_s271] := 0;
assume ((M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s271] := 0;
assume ((M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s271]) >= (0));
M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s271] := 0;
assume ((etherAmount_s270) >= (0));
assume ((tokenAmount_s270) >= (0));
assume ((tokenBonusAmount_s270) >= (0));
call processReservationFundContribution_ISimpleCrowdsale(crowdsale_ReservationFund[this], this, etherAmount_s270, contributor_s271, tokenAmount_s270, tokenBonusAmount_s270);
assert {:EventEmitted "TransferToFund_ReservationFund"} (true);
}

implementation refundPayment_ReservationFund__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s330: Ref)
{
var amountToRefund_s329: int;
var __var_17: int;
var __var_18: bool;
if (!(__tmp__crowdsaleFinished_ReservationFund[this])) {
revert := true;
return;
}
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s330]) >= (0));
assume ((__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s330]) >= (0));
if (!(((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s330]) > (0)) || ((__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s330]) > (0)))) {
revert := true;
return;
}
assume ((amountToRefund_s329) >= (0));
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s330]) >= (0));
amountToRefund_s329 := __tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s330];
assume ((__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s330]) >= (0));
__tmp__M_Ref_int[__tmp__contributions_ReservationFund[this]][contributor_s330] := 0;
assume ((__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s330]) >= (0));
__tmp__M_Ref_int[__tmp__tokensToIssue_ReservationFund[this]][contributor_s330] := 0;
assume ((__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s330]) >= (0));
__tmp__M_Ref_int[__tmp__bonusTokensToIssue_ReservationFund[this]][contributor_s330] := 0;
__var_17 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_17 := (__var_17) - (gas);
assume ((amountToRefund_s329) >= (0));
call __var_18 := send__fail(this, contributor_s330, amountToRefund_s329);
if (!(__var_18)) {
revert := true;
return;
}
gas := (__var_17) + (gas);
}

implementation refundPayment_ReservationFund__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, contributor_s330: Ref)
{
var amountToRefund_s329: int;
var __var_17: int;
var __var_18: bool;
if (!(crowdsaleFinished_ReservationFund[this])) {
revert := true;
return;
}
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s330]) >= (0));
assume ((M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s330]) >= (0));
if (!(((M_Ref_int[contributions_ReservationFund[this]][contributor_s330]) > (0)) || ((M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s330]) > (0)))) {
revert := true;
return;
}
assume ((amountToRefund_s329) >= (0));
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s330]) >= (0));
amountToRefund_s329 := M_Ref_int[contributions_ReservationFund[this]][contributor_s330];
assume ((M_Ref_int[contributions_ReservationFund[this]][contributor_s330]) >= (0));
M_Ref_int[contributions_ReservationFund[this]][contributor_s330] := 0;
assume ((M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s330]) >= (0));
M_Ref_int[tokensToIssue_ReservationFund[this]][contributor_s330] := 0;
assume ((M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s330]) >= (0));
M_Ref_int[bonusTokensToIssue_ReservationFund[this]][contributor_s330] := 0;
__var_17 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_17 := (__var_17) - (gas);
assume ((amountToRefund_s329) >= (0));
call __var_18 := send__success(this, contributor_s330, amountToRefund_s329);
if (!(__var_18)) {
revert := true;
return;
}
gas := (__var_17) + (gas);
assert {:EventEmitted "RefundPayment_ReservationFund"} (true);
}

implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

implementation SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeMath_SafeMath_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeMath_SafeMath_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

// implementation safeMul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s511: int, b_s511: int) returns (__ret_0_: int)
// {
// var c_s510: int;
// assume ((c_s510) >= (0));
// assume ((a_s511) >= (0));
// assume ((b_s511) >= (0));
// assume (((a_s511) * (b_s511)) >= (0));
// c_s510 := (a_s511) * (b_s511);
// assume ((a_s511) >= (0));
// assume ((c_s510) >= (0));
// assume ((a_s511) >= (0));
// assume (((c_s510) div (a_s511)) >= (0));
// assume ((b_s511) >= (0));
// assume ((c_s510) >= (0));
// __ret_0_ := c_s510;
// return;
// }

// implementation safeMul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s511: int, b_s511: int) returns (__ret_0_: int)
// {
// var c_s510: int;
// assume ((c_s510) >= (0));
// assume ((a_s511) >= (0));
// assume ((b_s511) >= (0));
// assume (((a_s511) * (b_s511)) >= (0));
// c_s510 := (a_s511) * (b_s511);
// assume ((a_s511) >= (0));
// assume ((c_s510) >= (0));
// assume ((a_s511) >= (0));
// assume (((c_s510) div (a_s511)) >= (0));
// assume ((b_s511) >= (0));
// assert (((a_s511) == (0)) || (((c_s510) div (a_s511)) == (b_s511)));
// assume ((c_s510) >= (0));
// __ret_0_ := c_s510;
// return;
// }

// implementation safeDiv_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s529: int, b_s529: int) returns (__ret_0_: int)
// {
// var c_s528: int;
// assume ((c_s528) >= (0));
// assume ((a_s529) >= (0));
// assume ((b_s529) >= (0));
// assume (((a_s529) div (b_s529)) >= (0));
// c_s528 := (a_s529) div (b_s529);
// assume ((c_s528) >= (0));
// __ret_0_ := c_s528;
// return;
// }

// implementation safeDiv_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s529: int, b_s529: int) returns (__ret_0_: int)
// {
// var c_s528: int;
// assume ((c_s528) >= (0));
// assume ((a_s529) >= (0));
// assume ((b_s529) >= (0));
// assume (((a_s529) div (b_s529)) >= (0));
// c_s528 := (a_s529) div (b_s529);
// assume ((c_s528) >= (0));
// __ret_0_ := c_s528;
// return;
// }

implementation safeSub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s549: int, b_s549: int) returns (__ret_0_: int)
{
assume ((a_s549) >= (0));
assume ((b_s549) >= (0));
assume ((a_s549) >= (0));
assume ((b_s549) >= (0));
assume (((a_s549) - (b_s549)) >= (0));
__ret_0_ := (a_s549) - (b_s549);
return;
}

implementation safeSub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s549: int, b_s549: int) returns (__ret_0_: int)
{
assume ((a_s549) >= (0));
assume ((b_s549) >= (0));
assert ((a_s549) >= (b_s549));
assume ((a_s549) >= (0));
assume ((b_s549) >= (0));
assume (((a_s549) - (b_s549)) >= (0));
__ret_0_ := (a_s549) - (b_s549);
return;
}

implementation safeAdd_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s573: int, b_s573: int) returns (__ret_0_: int)
{
var c_s572: int;
assume ((c_s572) >= (0));
assume ((a_s573) >= (0));
assume ((b_s573) >= (0));
assume (((a_s573) + (b_s573)) >= (0));
c_s572 := (a_s573) + (b_s573);
assume ((c_s572) >= (0));
assume ((a_s573) >= (0));
assume ((c_s572) >= (0));
__ret_0_ := c_s572;
return;
}

implementation safeAdd_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s573: int, b_s573: int) returns (__ret_0_: int)
{
var c_s572: int;
assume ((c_s572) >= (0));
assume ((a_s573) >= (0));
assume ((b_s573) >= (0));
assume (((a_s573) + (b_s573)) >= (0));
c_s572 := (a_s573) + (b_s573);
assume ((c_s572) >= (0));
assume ((a_s573) >= (0));
assert ((c_s572) >= (a_s573));
assume ((c_s572) >= (0));
__ret_0_ := c_s572;
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (SafeMath)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ReservationFund)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (Ownable)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ISimpleCrowdsale)) {
assume ((amount) == (0));
} else if ((__tmp__DType[to]) == (ICrowdsaleReservationFund)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__fail(from, to, amount);
if (revert) {
return;
}
}
}

implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (SafeMath)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ReservationFund)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Ownable)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ISimpleCrowdsale)) {
assume ((amount) == (0));
} else if ((DType[to]) == (ICrowdsaleReservationFund)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__success(from, to, amount);
if (revert) {
return;
}
}
}

implementation Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int)
{
// ---- Logic for payable function START 
assume ((__tmp__Balance[from]) >= (amount));
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
}

implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
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
var __snap___tmp__owner_Ownable: [Ref]Ref;
var __snap___tmp__newOwner_Ownable: [Ref]Ref;
var __snap___tmp__crowdsaleFinished_ReservationFund: [Ref]bool;
var __snap___tmp__contributions_ReservationFund: [Ref]Ref;
var __snap___tmp__tokensToIssue_ReservationFund: [Ref]Ref;
var __snap___tmp__bonusTokensToIssue_ReservationFund: [Ref]Ref;
var __snap___tmp__crowdsale_ReservationFund: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__owner_Ownable := __tmp__owner_Ownable;
__snap___tmp__newOwner_Ownable := __tmp__newOwner_Ownable;
__snap___tmp__crowdsaleFinished_ReservationFund := __tmp__crowdsaleFinished_ReservationFund;
__snap___tmp__contributions_ReservationFund := __tmp__contributions_ReservationFund;
__snap___tmp__tokensToIssue_ReservationFund := __tmp__tokensToIssue_ReservationFund;
__snap___tmp__bonusTokensToIssue_ReservationFund := __tmp__bonusTokensToIssue_ReservationFund;
__snap___tmp__crowdsale_ReservationFund := __tmp__crowdsale_ReservationFund;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int := __snap___tmp__M_Ref_int;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__owner_Ownable := __snap___tmp__owner_Ownable;
__tmp__newOwner_Ownable := __snap___tmp__newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := __snap___tmp__crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := __snap___tmp__contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := __snap___tmp__tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := __snap___tmp__bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := __snap___tmp__crowdsale_ReservationFund;
revert := false;
} else {
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
havoc __exception;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__Length := Length;
__tmp__now := now;
__tmp__owner_Ownable := owner_Ownable;
__tmp__newOwner_Ownable := newOwner_Ownable;
__tmp__crowdsaleFinished_ReservationFund := crowdsaleFinished_ReservationFund;
__tmp__contributions_ReservationFund := contributions_ReservationFund;
__tmp__tokensToIssue_ReservationFund := tokensToIssue_ReservationFund;
__tmp__bonusTokensToIssue_ReservationFund := bonusTokensToIssue_ReservationFund;
__tmp__crowdsale_ReservationFund := crowdsale_ReservationFund;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
revert := false;
} else {
if ((Balance[from]) >= (amount)) {
call FallbackDispatch__success(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (__tmp__owner_Ownable[this]))) {
revert := true;
return;
}
}

implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
if (!((msgsender_MSG) == (owner_Ownable[this]))) {
revert := true;
return;
}
}

implementation onlyCrowdsale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_6: Ref;
__var_6 := __tmp__crowdsale_ReservationFund[this];
if (!((msgsender_MSG) == (__tmp__crowdsale_ReservationFund[this]))) {
revert := true;
return;
}
}

implementation onlyCrowdsale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_6: Ref;
__var_6 := crowdsale_ReservationFund[this];
if (!((msgsender_MSG) == (crowdsale_ReservationFund[this]))) {
revert := true;
return;
}
}

implementation BoogieEntry_ICrowdsaleReservationFund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (ICrowdsaleReservationFund)) || ((DType[this]) == (ReservationFund)));
gas := (gas) - (53000);
call ICrowdsaleReservationFund_ICrowdsaleReservationFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation BoogieEntry_ISimpleCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (ISimpleCrowdsale));
gas := (gas) - (53000);
call ISimpleCrowdsale_ISimpleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation BoogieEntry_Ownable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s419: Ref;
var _newOwner_s448: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (Ownable)) || ((DType[this]) == (ReservationFund)));
gas := (gas) - (53000);
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG, _owner_s419);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_Ownable) ==> ((owner_Ownable[this]) == (null));
  // invariant (HoudiniB2_Ownable) ==> ((owner_Ownable[this]) != (null));
  // invariant (HoudiniB3_Ownable) ==> ((newOwner_Ownable[this]) == (null));
  // invariant (HoudiniB4_Ownable) ==> ((newOwner_Ownable[this]) != (null));
  // invariant (HoudiniB5_Ownable) ==> ((owner_Ownable[this]) == (newOwner_Ownable[this]));
  // invariant (HoudiniB6_Ownable) ==> ((owner_Ownable[this]) != (newOwner_Ownable[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s419;
havoc _newOwner_s448;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
gas := (gas) - (21000);
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s448);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call confirmOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var contributor_s134: Ref;
var __ret_0_canCompleteContribution: bool;
var contributor_s271: Ref;
var contributor_s192: Ref;
var _tokensToIssue_s192: int;
var _bonusTokensToIssue_s192: int;
var contributor_s146: Ref;
var __ret_0_contributionsOf: int;
var _owner_s419: Ref;
var _newOwner_s448: Ref;
var _owner_s51: Ref;
var crowdsaleAddress_s88: Ref;
var contributor_s330: Ref;
var tmpNow: int;

assume (null == 0);

assume ((now) >= (0));
assume ((DType[this]) == (ReservationFund));
gas := (gas) - (53000);
call ReservationFund_ReservationFund(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
  // invariant (HoudiniB1_ReservationFund) ==> ((owner_Ownable[this]) == (null));
  // invariant (HoudiniB2_ReservationFund) ==> ((owner_Ownable[this]) != (null));
  // invariant (HoudiniB3_ReservationFund) ==> ((newOwner_Ownable[this]) == (null));
  // invariant (HoudiniB4_ReservationFund) ==> ((newOwner_Ownable[this]) != (null));
  // invariant (HoudiniB5_ReservationFund) ==> ((owner_Ownable[this]) == (newOwner_Ownable[this]));
  // invariant (HoudiniB6_ReservationFund) ==> ((owner_Ownable[this]) != (newOwner_Ownable[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc contributor_s134;
havoc __ret_0_canCompleteContribution;
havoc contributor_s271;
havoc contributor_s192;
havoc _tokensToIssue_s192;
havoc _bonusTokensToIssue_s192;
havoc contributor_s146;
havoc __ret_0_contributionsOf;
havoc _owner_s419;
havoc _newOwner_s448;
havoc _owner_s51;
havoc crowdsaleAddress_s88;
havoc contributor_s330;
havoc tmpNow;
havoc gas;

assume(msgvalue_MSG >= 0);
assume(msgsender_MSG != null && msgsender_MSG != this);

assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_canCompleteContribution := canCompleteContribution_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s134);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call completeContribution_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s271);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call processContribution_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s192, _tokensToIssue_s192, _bonusTokensToIssue_s192);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_contributionsOf := contributionsOf_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s146);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call onCrowdsaleEnd_ReservationFund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s448);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call confirmOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call setCrowdsaleAddress_ReservationFund(this, msgsender_MSG, msgvalue_MSG, crowdsaleAddress_s88);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call refundPayment_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s330);
}
}
}

implementation BoogieEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (ReservationFund)) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}
}

implementation CorralChoice_ICrowdsaleReservationFund(this: Ref)
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}

implementation CorralEntry_ICrowdsaleReservationFund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (ICrowdsaleReservationFund)) || ((DType[this]) == (ReservationFund)));
gas := (gas) - (53000);
call ICrowdsaleReservationFund_ICrowdsaleReservationFund__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ICrowdsaleReservationFund(this);
}
}

implementation CorralChoice_ISimpleCrowdsale(this: Ref)
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}

implementation CorralEntry_ISimpleCrowdsale()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume ((DType[this]) == (ISimpleCrowdsale));
gas := (gas) - (53000);
call ISimpleCrowdsale_ISimpleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ISimpleCrowdsale(this);
}
}

implementation CorralChoice_Ownable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _owner_s419: Ref;
var _newOwner_s448: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _owner_s419;
havoc _newOwner_s448;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (2)) {
gas := (gas) - (21000);
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s448);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call confirmOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
}
}

implementation CorralEntry_Ownable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _owner_s419: Ref;
assume ((now) >= (0));
assume (((DType[this]) == (Ownable)) || ((DType[this]) == (ReservationFund)));
gas := (gas) - (53000);
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG, _owner_s419);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Ownable(this);
}
}

implementation CorralChoice_ReservationFund(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var contributor_s134: Ref;
var __ret_0_canCompleteContribution: bool;
var contributor_s271: Ref;
var contributor_s192: Ref;
var _tokensToIssue_s192: int;
var _bonusTokensToIssue_s192: int;
var contributor_s146: Ref;
var __ret_0_contributionsOf: int;
var _owner_s419: Ref;
var _newOwner_s448: Ref;
var _owner_s51: Ref;
var crowdsaleAddress_s88: Ref;
var contributor_s330: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc contributor_s134;
havoc __ret_0_canCompleteContribution;
havoc contributor_s271;
havoc contributor_s192;
havoc _tokensToIssue_s192;
havoc _bonusTokensToIssue_s192;
havoc contributor_s146;
havoc __ret_0_contributionsOf;
havoc _owner_s419;
havoc _newOwner_s448;
havoc _owner_s51;
havoc crowdsaleAddress_s88;
havoc contributor_s330;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
if ((choice) == (9)) {
gas := (gas) - (21000);
call __ret_0_canCompleteContribution := canCompleteContribution_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s134);
} else if ((choice) == (8)) {
gas := (gas) - (21000);
call completeContribution_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s271);
} else if ((choice) == (7)) {
gas := (gas) - (21000);
call processContribution_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s192, _tokensToIssue_s192, _bonusTokensToIssue_s192);
} else if ((choice) == (6)) {
gas := (gas) - (21000);
call __ret_0_contributionsOf := contributionsOf_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s146);
} else if ((choice) == (5)) {
gas := (gas) - (21000);
call onCrowdsaleEnd_ReservationFund(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
gas := (gas) - (21000);
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, _newOwner_s448);
} else if ((choice) == (3)) {
gas := (gas) - (21000);
call confirmOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
gas := (gas) - (21000);
call setCrowdsaleAddress_ReservationFund(this, msgsender_MSG, msgvalue_MSG, crowdsaleAddress_s88);
} else if ((choice) == (1)) {
gas := (gas) - (21000);
call refundPayment_ReservationFund(this, msgsender_MSG, msgvalue_MSG, contributor_s330);
}
}

implementation CorralEntry_ReservationFund()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _owner_s51: Ref;
assume ((now) >= (0));
assume ((DType[this]) == (ReservationFund));
gas := (gas) - (53000);
call ReservationFund_ReservationFund(this, msgsender_MSG, msgvalue_MSG, _owner_s51);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_ReservationFund(this);
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
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
}

implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((now) >= (0));
assume (((DType[this]) == (ReservationFund)) || ((DType[this]) == (SafeMath)));
gas := (gas) - (53000);
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_SafeMath(this);
}
}


