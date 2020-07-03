// If I bid amount X and I am not the highest bidder, I will get my money back
// #LTLVariables: L:Ref,X:int
// #LTLFairness: <>(started(Auction.refund, this.closed == true && L != this.winner && this.owner == msg.sender))
// #LTLProperty: [](finished(Auction.bid, msg.value == X && msg.sender == L) ==> <>(started(send(from, to, amt), to == L && amt == X)))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique Auction: ContractName;
function {:smtdefined "x"} ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
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
var sum: [Ref]int;
var M_int_Ref: [Ref][int]Ref;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
var {:access "this.bidders[i0]=M_int_Ref[bidders_Auction[this]][i0]"} {:sum "sum(this.bidders)=sum[bidders_Auction[this]]"} bidders_Auction: [Ref]Ref;
var {:access "this.refunds[i0]=M_Ref_int[refunds_Auction[this]][i0]"} {:sum "sum(this.refunds)=sum[refunds_Auction[this]]"} refunds_Auction: [Ref]Ref;
var {:access "this.closed=closed_Auction[this]"} closed_Auction: [Ref]bool;
var {:access "this.winner=winner_Auction[this]"} winner_Auction: [Ref]Ref;
var {:access "this.currentBid=currentBid_Auction[this]"} currentBid_Auction: [Ref]int;
var {:access "this.owner=owner_Auction[this]"} owner_Auction: [Ref]Ref;
procedure {:inline 1} Auction_Auction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref);
modifies Balance;
modifies bidders_Auction;
modifies refunds_Auction;
modifies M_Ref_int;
modifies sum;
modifies closed_Auction;
modifies winner_Auction;
modifies currentBid_Auction;
modifies owner_Auction;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} Auction_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies Balance;
modifies bidders_Auction;
modifies refunds_Auction;
modifies M_Ref_int;
modifies sum;
modifies closed_Auction;
modifies winner_Auction;
modifies currentBid_Auction;
modifies owner_Auction;
modifies Alloc;
implementation Auction_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref)
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
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__bidders_Auction := bidders_Auction;
__tmp__refunds_Auction := refunds_Auction;
__tmp__closed_Auction := closed_Auction;
__tmp__winner_Auction := winner_Auction;
__tmp__currentBid_Auction := currentBid_Auction;
__tmp__owner_Auction := owner_Auction;
call Auction_Auction__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s27);
assume ((revert) || ((gas) < (0)));
} else {
call Auction_Auction__success(this, msgsender_MSG, msgvalue_MSG, _owner_s27);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} bid_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies Balance;
modifies M_int_Ref;
modifies Length;
modifies sum;
modifies M_Ref_int;
modifies winner_Auction;
modifies currentBid_Auction;
implementation bid_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__bidders_Auction := bidders_Auction;
__tmp__refunds_Auction := refunds_Auction;
__tmp__closed_Auction := closed_Auction;
__tmp__winner_Auction := winner_Auction;
__tmp__currentBid_Auction := currentBid_Auction;
__tmp__owner_Auction := owner_Auction;
call bid_Auction__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call bid_Auction__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} close_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies closed_Auction;
implementation close_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__bidders_Auction := bidders_Auction;
__tmp__refunds_Auction := refunds_Auction;
__tmp__closed_Auction := closed_Auction;
__tmp__winner_Auction := winner_Auction;
__tmp__currentBid_Auction := currentBid_Auction;
__tmp__owner_Auction := owner_Auction;
call close_Auction__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call close_Auction__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} refund_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies gas;
modifies sum;
modifies M_Ref_int;
modifies Balance;
modifies M_int_Ref;
modifies Length;
modifies winner_Auction;
modifies currentBid_Auction;
modifies closed_Auction;
implementation refund_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__bidders_Auction := bidders_Auction;
__tmp__refunds_Auction := refunds_Auction;
__tmp__closed_Auction := closed_Auction;
__tmp__winner_Auction := winner_Auction;
__tmp__currentBid_Auction := currentBid_Auction;
__tmp__owner_Auction := owner_Auction;
call refund_Auction__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call refund_Auction__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies M_int_Ref;
modifies Length;
modifies sum;
modifies M_Ref_int;
modifies winner_Auction;
modifies currentBid_Auction;
modifies closed_Auction;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies M_int_Ref;
modifies Length;
modifies sum;
modifies M_Ref_int;
modifies winner_Auction;
modifies currentBid_Auction;
modifies closed_Auction;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies revert;
modifies gas;
modifies Balance;
modifies M_int_Ref;
modifies Length;
modifies sum;
modifies M_Ref_int;
modifies winner_Auction;
modifies currentBid_Auction;
modifies closed_Auction;
procedure CorralChoice_Auction(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies Balance;
modifies M_int_Ref;
modifies Length;
modifies sum;
modifies M_Ref_int;
modifies winner_Auction;
modifies currentBid_Auction;
modifies closed_Auction;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies now;
modifies Balance;
modifies M_int_Ref;
modifies Length;
modifies sum;
modifies M_Ref_int;
modifies winner_Auction;
modifies currentBid_Auction;
modifies closed_Auction;
modifies bidders_Auction;
modifies refunds_Auction;
modifies owner_Auction;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__sum: [Ref]int;
var __tmp__M_int_Ref: [Ref][int]Ref;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__bidders_Auction: [Ref]Ref;
var __tmp__refunds_Auction: [Ref]Ref;
var __tmp__closed_Auction: [Ref]bool;
var __tmp__winner_Auction: [Ref]Ref;
var __tmp__currentBid_Auction: [Ref]int;
var __tmp__owner_Auction: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Auction_Auction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref);
modifies __tmp__Balance;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} Auction_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref);
modifies Balance;
modifies bidders_Auction;
modifies refunds_Auction;
modifies M_Ref_int;
modifies sum;
modifies closed_Auction;
modifies winner_Auction;
modifies currentBid_Auction;
modifies owner_Auction;
modifies Alloc;
procedure {:constructor} {:inline 1} Auction_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref);
modifies __tmp__Balance;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies __tmp__Alloc;
procedure {:inline 1} bid_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies M_int_Ref;
modifies Length;
modifies sum;
modifies M_Ref_int;
modifies winner_Auction;
modifies currentBid_Auction;
procedure {:inline 1} bid_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
procedure {:inline 1} close_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies closed_Auction;
procedure {:inline 1} close_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__closed_Auction;
procedure {:inline 1} refund_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies sum;
modifies M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies Balance;
modifies M_int_Ref;
modifies Length;
modifies winner_Auction;
modifies currentBid_Auction;
modifies closed_Auction;
procedure {:inline 1} refund_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__owner_Auction;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__sum;
modifies __tmp__M_Ref_int;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__owner_Auction;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum;
modifies __tmp__M_int_Ref;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__bidders_Auction;
modifies __tmp__refunds_Auction;
modifies __tmp__closed_Auction;
modifies __tmp__winner_Auction;
modifies __tmp__currentBid_Auction;
modifies __tmp__owner_Auction;
modifies revert;
modifies gas;
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

implementation Auction_Auction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
// Make array/mapping vars distinct for bidders
call __var_1 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__bidders_Auction[this] := __var_1;
assume ((__tmp__Length[__tmp__bidders_Auction[this]]) == (0));
// Make array/mapping vars distinct for refunds
call __var_2 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__refunds_Auction[this] := __var_2;
// Initialize Integer mapping refunds
__tmp__M_Ref_int[__tmp__refunds_Auction[this]] := zeroRefIntArr();
__tmp__sum[__tmp__refunds_Auction[this]] := 0;
__tmp__closed_Auction[this] := false;
__tmp__winner_Auction[this] := null;
__tmp__currentBid_Auction[this] := 0;
__tmp__owner_Auction[this] := null;
// end of initialization
__tmp__owner_Auction[this] := _owner_s27;
}

implementation Auction_Auction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for bidders
call __var_1 := FreshRefGenerator__success();
if (revert) {
return;
}
bidders_Auction[this] := __var_1;
assume ((Length[bidders_Auction[this]]) == (0));
// Make array/mapping vars distinct for refunds
call __var_2 := FreshRefGenerator__success();
if (revert) {
return;
}
refunds_Auction[this] := __var_2;
// Initialize Integer mapping refunds
M_Ref_int[refunds_Auction[this]] := zeroRefIntArr();
sum[refunds_Auction[this]] := 0;
closed_Auction[this] := false;
winner_Auction[this] := null;
currentBid_Auction[this] := 0;
owner_Auction[this] := null;
// end of initialization
owner_Auction[this] := _owner_s27;
}

implementation Auction_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
call Auction_Auction_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s27);
if (revert) {
return;
}
}

implementation Auction_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s27: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
call Auction_Auction_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _owner_s27);
if (revert) {
return;
}
}

implementation bid_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_3: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assume ((__tmp__M_Ref_int[__tmp__refunds_Auction[this]][msgsender_MSG]) >= (0));
if (!(((!(__tmp__closed_Auction[this])) && ((__tmp__M_Ref_int[__tmp__refunds_Auction[this]][msgsender_MSG]) == (0))) && ((msgsender_MSG) != (__tmp__winner_Auction[this])))) {
revert := true;
return;
}
assume ((msgvalue_MSG) >= (0));
assume ((__tmp__currentBid_Auction[this]) >= (0));
if (!((msgvalue_MSG) > (__tmp__currentBid_Auction[this]))) {
revert := true;
return;
}
__var_3 := __tmp__Length[__tmp__bidders_Auction[this]];
__tmp__M_int_Ref[__tmp__bidders_Auction[this]][__var_3] := msgsender_MSG;
__tmp__Length[__tmp__bidders_Auction[this]] := (__var_3) + (1);
assume ((__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__winner_Auction[this]]) >= (0));
assume ((__tmp__currentBid_Auction[this]) >= (0));
__tmp__sum[__tmp__refunds_Auction[this]] := (__tmp__sum[__tmp__refunds_Auction[this]]) - (__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__winner_Auction[this]]);
__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__winner_Auction[this]] := __tmp__currentBid_Auction[this];
__tmp__sum[__tmp__refunds_Auction[this]] := (__tmp__sum[__tmp__refunds_Auction[this]]) + (__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__winner_Auction[this]]);
__tmp__winner_Auction[this] := msgsender_MSG;
assume ((__tmp__currentBid_Auction[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
__tmp__currentBid_Auction[this] := msgvalue_MSG;
}

implementation bid_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_3: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assume ((M_Ref_int[refunds_Auction[this]][msgsender_MSG]) >= (0));
if (!(((!(closed_Auction[this])) && ((M_Ref_int[refunds_Auction[this]][msgsender_MSG]) == (0))) && ((msgsender_MSG) != (winner_Auction[this])))) {
revert := true;
return;
}
assume ((msgvalue_MSG) >= (0));
assume ((currentBid_Auction[this]) >= (0));
if (!((msgvalue_MSG) > (currentBid_Auction[this]))) {
revert := true;
return;
}
__var_3 := Length[bidders_Auction[this]];
M_int_Ref[bidders_Auction[this]][__var_3] := msgsender_MSG;
Length[bidders_Auction[this]] := (__var_3) + (1);
assume ((M_Ref_int[refunds_Auction[this]][winner_Auction[this]]) >= (0));
assume ((currentBid_Auction[this]) >= (0));
sum[refunds_Auction[this]] := (sum[refunds_Auction[this]]) - (M_Ref_int[refunds_Auction[this]][winner_Auction[this]]);
M_Ref_int[refunds_Auction[this]][winner_Auction[this]] := currentBid_Auction[this];
sum[refunds_Auction[this]] := (sum[refunds_Auction[this]]) + (M_Ref_int[refunds_Auction[this]][winner_Auction[this]]);
winner_Auction[this] := msgsender_MSG;
assume ((currentBid_Auction[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
currentBid_Auction[this] := msgvalue_MSG;
}

implementation close_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
__tmp__closed_Auction[this] := true;
}

implementation close_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
closed_Auction[this] := true;
}

implementation refund_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var i_s135: int;
var refundAmt_s134: int;
var __var_4: int;
var __var_5: bool;
if (!(__tmp__closed_Auction[this])) {
revert := true;
return;
}
if (!((msgsender_MSG) == (__tmp__owner_Auction[this]))) {
revert := true;
return;
}
assume ((i_s135) >= (0));
assume ((__tmp__Length[__tmp__bidders_Auction[this]]) >= (0));
assume ((i_s135) >= (0));
i_s135 := 0;
while ((i_s135) < (__tmp__Length[__tmp__bidders_Auction[this]]))
{
assume ((refundAmt_s134) >= (0));
assume ((i_s135) >= (0));
assume ((__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__M_int_Ref[__tmp__bidders_Auction[this]][i_s135]]) >= (0));
refundAmt_s134 := __tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__M_int_Ref[__tmp__bidders_Auction[this]][i_s135]];
assume ((i_s135) >= (0));
assume ((__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__M_int_Ref[__tmp__bidders_Auction[this]][i_s135]]) >= (0));
__tmp__sum[__tmp__refunds_Auction[this]] := (__tmp__sum[__tmp__refunds_Auction[this]]) - (__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__M_int_Ref[__tmp__bidders_Auction[this]][i_s135]]);
__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__M_int_Ref[__tmp__bidders_Auction[this]][i_s135]] := 0;
__tmp__sum[__tmp__refunds_Auction[this]] := (__tmp__sum[__tmp__refunds_Auction[this]]) + (__tmp__M_Ref_int[__tmp__refunds_Auction[this]][__tmp__M_int_Ref[__tmp__bidders_Auction[this]][i_s135]]);
__var_4 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_4 := (__var_4) - (gas);
assume ((refundAmt_s134) >= (0));
assume ((i_s135) >= (0));
call __var_5 := send__fail(this, __tmp__M_int_Ref[__tmp__bidders_Auction[this]][i_s135], refundAmt_s134);
if (!(__var_5)) {
revert := true;
return;
}
gas := (__var_4) + (gas);
assume ((i_s135) >= (0));
i_s135 := (i_s135) + (1);
assume ((i_s135) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation refund_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var i_s135: int;
var refundAmt_s134: int;
var __var_4: int;
var __var_5: bool;
if (!(closed_Auction[this])) {
revert := true;
return;
}
if (!((msgsender_MSG) == (owner_Auction[this]))) {
revert := true;
return;
}
assume ((i_s135) >= (0));
assume ((Length[bidders_Auction[this]]) >= (0));
assume ((i_s135) >= (0));
i_s135 := 0;
while ((i_s135) < (Length[bidders_Auction[this]]))
{
assume ((refundAmt_s134) >= (0));
assume ((i_s135) >= (0));
assume ((M_Ref_int[refunds_Auction[this]][M_int_Ref[bidders_Auction[this]][i_s135]]) >= (0));
refundAmt_s134 := M_Ref_int[refunds_Auction[this]][M_int_Ref[bidders_Auction[this]][i_s135]];
assume ((i_s135) >= (0));
assume ((M_Ref_int[refunds_Auction[this]][M_int_Ref[bidders_Auction[this]][i_s135]]) >= (0));
sum[refunds_Auction[this]] := (sum[refunds_Auction[this]]) - (M_Ref_int[refunds_Auction[this]][M_int_Ref[bidders_Auction[this]][i_s135]]);
M_Ref_int[refunds_Auction[this]][M_int_Ref[bidders_Auction[this]][i_s135]] := 0;
sum[refunds_Auction[this]] := (sum[refunds_Auction[this]]) + (M_Ref_int[refunds_Auction[this]][M_int_Ref[bidders_Auction[this]][i_s135]]);
__var_4 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_4 := (__var_4) - (gas);
assume ((refundAmt_s134) >= (0));
assume ((i_s135) >= (0));
call __var_5 := send__success(this, M_int_Ref[bidders_Auction[this]][i_s135], refundAmt_s134);
if (!(__var_5)) {
revert := true;
return;
}
gas := (__var_4) + (gas);
assume ((i_s135) >= (0));
i_s135 := (i_s135) + (1);
assume ((i_s135) >= (0));
if ((gas) < (0)) {
return;
}
}
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (Auction)) {
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
if ((DType[to]) == (Auction)) {
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
var iterate: bool;
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[from]) >= (amount));
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
while ((iterate) && ((gas) >= (21000)))
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc iterate;
if ((__tmp__DType[from]) == (Auction)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call bid_Auction__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call close_Auction__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call refund_Auction__fail(from, to, msgvalue_MSG);
if (revert) {
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
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
while ((iterate) && ((gas) >= (21000)))
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc iterate;
if ((DType[from]) == (Auction)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call bid_Auction__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call close_Auction__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call refund_Auction__success(from, to, msgvalue_MSG);
if (revert) {
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
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__sum: [Ref]int;
var __snap___tmp__M_int_Ref: [Ref][int]Ref;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__bidders_Auction: [Ref]Ref;
var __snap___tmp__refunds_Auction: [Ref]Ref;
var __snap___tmp__closed_Auction: [Ref]bool;
var __snap___tmp__winner_Auction: [Ref]Ref;
var __snap___tmp__currentBid_Auction: [Ref]int;
var __snap___tmp__owner_Auction: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__sum := __tmp__sum;
__snap___tmp__M_int_Ref := __tmp__M_int_Ref;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__bidders_Auction := __tmp__bidders_Auction;
__snap___tmp__refunds_Auction := __tmp__refunds_Auction;
__snap___tmp__closed_Auction := __tmp__closed_Auction;
__snap___tmp__winner_Auction := __tmp__winner_Auction;
__snap___tmp__currentBid_Auction := __tmp__currentBid_Auction;
__snap___tmp__owner_Auction := __tmp__owner_Auction;
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
__tmp__sum := __snap___tmp__sum;
__tmp__M_int_Ref := __snap___tmp__M_int_Ref;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__bidders_Auction := __snap___tmp__bidders_Auction;
__tmp__refunds_Auction := __snap___tmp__refunds_Auction;
__tmp__closed_Auction := __snap___tmp__closed_Auction;
__tmp__winner_Auction := __snap___tmp__winner_Auction;
__tmp__currentBid_Auction := __snap___tmp__currentBid_Auction;
__tmp__owner_Auction := __snap___tmp__owner_Auction;
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
__tmp__sum := sum;
__tmp__M_int_Ref := M_int_Ref;
__tmp__Length := Length;
__tmp__now := now;
__tmp__bidders_Auction := bidders_Auction;
__tmp__refunds_Auction := refunds_Auction;
__tmp__closed_Auction := closed_Auction;
__tmp__winner_Auction := winner_Auction;
__tmp__currentBid_Auction := currentBid_Auction;
__tmp__owner_Auction := owner_Auction;
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

implementation CorralChoice_Auction(this: Ref)
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
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Auction));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call bid_Auction(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call close_Auction(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call refund_Auction(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _owner_s27: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (Auction));
gas := (gas) - (53000);
call Auction_Auction(this, msgsender_MSG, msgvalue_MSG, _owner_s27);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Auction(this);
}
}


