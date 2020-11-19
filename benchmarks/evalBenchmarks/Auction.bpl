// Prop 1
// LTLProperty: [](!finished(*, Balance[this] < this.highestBid + sum_pendingReturns0[pendingReturns_Auction[this]]))

// Prop 2
// LTLVariables: a:Ref
// LTLProperty: [](!finished(*, this.pendingReturns[a] != fsum(Auction.Bid, 2, msg.sender == a) - fsum(send(from, to, amt), 2, to == a))) 

// Prop 3
// 3a
// LTLVariables: a:Ref
// LTLFairness: <>(finished(Auction.Bid, msg.sender == a && msg.value != 0)) && [](<>(started(Auction.Withdraw, msg.sender == a))) && [](!reverted(send(from, to, amt), to == a )) && [](!started(Auction.Withdraw, msg.sender == a && a == this.highestBidder))
// LTLProperty: <>(finished(send(from, to, amt), to == a && amt == fsum(Auction.Bid, 2, msg.sender == a))) 

// 3b
// LTLVariables: a:Ref
// LTLFairness: <>(finished(Auction.Bid, msg.sender == a && msg.value != 0)) && [](<>(started(Auction.Withdraw, msg.sender == a))) && [](finished(Auction.Withdraw, msg.sender == a) ==> [](!started(Auction.Bid, msg.sender == a)))
// LTLProperty: [](finished(send(from, to, amt), to == a && amt == fsum(Auction.Bid, 2, msg.sender == a) && a != highestBidder_Auction[from]) ==> [](!started(send(from, to, amt), to == a)))

// 3 combined
// #LTLVariables: a:Ref
// #LTLFairness: <>(finished(Auction.Bid, msg.sender == a && msg.value != 0)) && [](<>(started(Auction.Withdraw, msg.sender == a))) && [](!reverted(send(from, to, amt), to == a )) && [](!started(Auction.Withdraw, msg.sender == a && a == this.highestBidder))
// #LTLProperty: <>(finished(send(from, to, amt), to == a && amt == fsum(Auction.Bid, 2, msg.sender == a))) && [](finished(send(from, to, amt), to == a && amt == fsum(Auction.Bid, 2, msg.sender == a)) ==> [](!started(send(from, to, amt), to == a && amt == fsum(Auction.Bid, 2, msg.sender == a))))

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
function nonlinearMul(x: int, y: int) returns (ret: int);
function nonlinearDiv(x: int, y: int) returns (ret: int);
function nonlinearPow(x: int, y: int) returns (ret: int);
function nonlinearMod(x: int, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefintArr() returns (ret: [Ref]int);
var M_Ref_int_pendingReturns0: [Ref][Ref]int;
var sum_pendingReturns0: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
var {:access "this.auctionStart=auctionStart_Auction[this]"} auctionStart_Auction: [Ref]int;
var {:access "this.biddingTime=biddingTime_Auction[this]"} biddingTime_Auction: [Ref]int;
var {:access "this.beneficiary=beneficiary_Auction[this]"} beneficiary_Auction: [Ref]Ref;
var {:access "this.ended=ended_Auction[this]"} ended_Auction: [Ref]bool;
var {:access "this.highestBidder=highestBidder_Auction[this]"} highestBidder_Auction: [Ref]Ref;
var {:access "this.highestBid=highestBid_Auction[this]"} highestBid_Auction: [Ref]int;
var {:access "this.pendingReturns[i1]=M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][i1]"} {:sum "sum(this.pendingReturns)=sum_pendingReturns0[pendingReturns_Auction[this]]"} pendingReturns_Auction: [Ref]Ref;
procedure {:inline 1} Auction_Auction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref);
modifies Balance;
modifies auctionStart_Auction;
modifies biddingTime_Auction;
modifies beneficiary_Auction;
modifies ended_Auction;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies pendingReturns_Auction;
modifies M_Ref_int_pendingReturns0;
modifies sum_pendingReturns0;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} Auction_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies Balance;
modifies auctionStart_Auction;
modifies biddingTime_Auction;
modifies beneficiary_Auction;
modifies ended_Auction;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies pendingReturns_Auction;
modifies M_Ref_int_pendingReturns0;
modifies sum_pendingReturns0;
modifies Alloc;
implementation Auction_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
__tmp__sum_pendingReturns0 := sum_pendingReturns0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__auctionStart_Auction := auctionStart_Auction;
__tmp__biddingTime_Auction := biddingTime_Auction;
__tmp__beneficiary_Auction := beneficiary_Auction;
__tmp__ended_Auction := ended_Auction;
__tmp__highestBidder_Auction := highestBidder_Auction;
__tmp__highestBid_Auction := highestBid_Auction;
__tmp__pendingReturns_Auction := pendingReturns_Auction;
call Auction_Auction__fail(this, msgsender_MSG, msgvalue_MSG, _auctionStart_s44, _biddingTime_s44, _beneficiary_s44);
assume ((revert) || ((gas) < (0)));
} else {
call Auction_Auction__success(this, msgsender_MSG, msgvalue_MSG, _auctionStart_s44, _biddingTime_s44, _beneficiary_s44);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} Bid_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies Balance;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
implementation Bid_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
__tmp__sum_pendingReturns0 := sum_pendingReturns0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__auctionStart_Auction := auctionStart_Auction;
__tmp__biddingTime_Auction := biddingTime_Auction;
__tmp__beneficiary_Auction := beneficiary_Auction;
__tmp__ended_Auction := ended_Auction;
__tmp__highestBidder_Auction := highestBidder_Auction;
__tmp__highestBid_Auction := highestBid_Auction;
__tmp__pendingReturns_Auction := pendingReturns_Auction;
call Bid_Auction__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Bid_Auction__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} Withdraw_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies gas;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies Balance;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies ended_Auction;
implementation Withdraw_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
__tmp__sum_pendingReturns0 := sum_pendingReturns0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__auctionStart_Auction := auctionStart_Auction;
__tmp__biddingTime_Auction := biddingTime_Auction;
__tmp__beneficiary_Auction := beneficiary_Auction;
__tmp__ended_Auction := ended_Auction;
__tmp__highestBidder_Auction := highestBidder_Auction;
__tmp__highestBid_Auction := highestBid_Auction;
__tmp__pendingReturns_Auction := pendingReturns_Auction;
call Withdraw_Auction__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call Withdraw_Auction__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} AuctionEnd_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies gas;
modifies ended_Auction;
modifies Balance;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
implementation AuctionEnd_Auction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
__tmp__sum_pendingReturns0 := sum_pendingReturns0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__auctionStart_Auction := auctionStart_Auction;
__tmp__biddingTime_Auction := biddingTime_Auction;
__tmp__beneficiary_Auction := beneficiary_Auction;
__tmp__ended_Auction := ended_Auction;
__tmp__highestBidder_Auction := highestBidder_Auction;
__tmp__highestBid_Auction := highestBid_Auction;
__tmp__pendingReturns_Auction := pendingReturns_Auction;
call AuctionEnd_Auction__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call AuctionEnd_Auction__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies ended_Auction;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies ended_Auction;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies revert;
modifies gas;
modifies Balance;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies ended_Auction;
procedure CorralChoice_Auction(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies Balance;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies ended_Auction;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies now;
modifies Balance;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies ended_Auction;
modifies auctionStart_Auction;
modifies biddingTime_Auction;
modifies beneficiary_Auction;
modifies pendingReturns_Auction;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int_pendingReturns0: [Ref][Ref]int;
var __tmp__sum_pendingReturns0: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__auctionStart_Auction: [Ref]int;
var __tmp__biddingTime_Auction: [Ref]int;
var __tmp__beneficiary_Auction: [Ref]Ref;
var __tmp__ended_Auction: [Ref]bool;
var __tmp__highestBidder_Auction: [Ref]Ref;
var __tmp__highestBid_Auction: [Ref]int;
var __tmp__pendingReturns_Auction: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Auction_Auction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref);
modifies __tmp__Balance;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} Auction_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref);
modifies Balance;
modifies auctionStart_Auction;
modifies biddingTime_Auction;
modifies beneficiary_Auction;
modifies ended_Auction;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies pendingReturns_Auction;
modifies M_Ref_int_pendingReturns0;
modifies sum_pendingReturns0;
modifies Alloc;
procedure {:constructor} {:inline 1} Auction_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref);
modifies __tmp__Balance;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Alloc;
procedure {:inline 1} Bid_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies revert;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
procedure {:inline 1} Bid_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
procedure {:inline 1} Withdraw_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies Balance;
modifies highestBidder_Auction;
modifies highestBid_Auction;
modifies ended_Auction;
procedure {:inline 1} Withdraw_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__sum_pendingReturns0;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
procedure {:inline 1} AuctionEnd_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies ended_Auction;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
modifies Balance;
modifies sum_pendingReturns0;
modifies M_Ref_int_pendingReturns0;
modifies highestBidder_Auction;
modifies highestBid_Auction;
procedure {:inline 1} AuctionEnd_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__ended_Auction;
modifies gas;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__pendingReturns_Auction;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__pendingReturns_Auction;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int_pendingReturns0;
modifies __tmp__sum_pendingReturns0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__auctionStart_Auction;
modifies __tmp__biddingTime_Auction;
modifies __tmp__beneficiary_Auction;
modifies __tmp__ended_Auction;
modifies __tmp__highestBidder_Auction;
modifies __tmp__highestBid_Auction;
modifies __tmp__pendingReturns_Auction;
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

implementation Auction_Auction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__auctionStart_Auction[this] := 0;
__tmp__biddingTime_Auction[this] := 0;
__tmp__beneficiary_Auction[this] := null;
__tmp__ended_Auction[this] := false;
__var_1 := null;
__tmp__highestBidder_Auction[this] := null;
__tmp__highestBid_Auction[this] := 0;
// Make array/mapping vars distinct for pendingReturns
call __var_2 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__pendingReturns_Auction[this] := __var_2;
// Initialize Integer mapping pendingReturns
__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]] := zeroRefintArr();
__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]] := 0;
// end of initialization
assume ((__tmp__auctionStart_Auction[this]) >= (0));
assume ((_auctionStart_s44) >= (0));
__tmp__auctionStart_Auction[this] := _auctionStart_s44;
assume ((__tmp__biddingTime_Auction[this]) >= (0));
assume ((_biddingTime_s44) >= (0));
__tmp__biddingTime_Auction[this] := _biddingTime_s44;
__tmp__beneficiary_Auction[this] := _beneficiary_s44;
}

implementation Auction_Auction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
auctionStart_Auction[this] := 0;
biddingTime_Auction[this] := 0;
beneficiary_Auction[this] := null;
ended_Auction[this] := false;
__var_1 := null;
highestBidder_Auction[this] := null;
highestBid_Auction[this] := 0;
// Make array/mapping vars distinct for pendingReturns
call __var_2 := FreshRefGenerator__success();
if (revert) {
return;
}
pendingReturns_Auction[this] := __var_2;
// Initialize Integer mapping pendingReturns
M_Ref_int_pendingReturns0[pendingReturns_Auction[this]] := zeroRefintArr();
sum_pendingReturns0[pendingReturns_Auction[this]] := 0;
// end of initialization
assume ((auctionStart_Auction[this]) >= (0));
assume ((_auctionStart_s44) >= (0));
auctionStart_Auction[this] := _auctionStart_s44;
assume ((biddingTime_Auction[this]) >= (0));
assume ((_biddingTime_s44) >= (0));
biddingTime_Auction[this] := _biddingTime_s44;
beneficiary_Auction[this] := _beneficiary_s44;
}

implementation Auction_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
call Auction_Auction_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _auctionStart_s44, _biddingTime_s44, _beneficiary_s44);
if (revert) {
return;
}
}

implementation Auction_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _auctionStart_s44: int, _biddingTime_s44: int, _beneficiary_s44: Ref)
{
var __var_1: Ref;
var __var_2: Ref;
call Auction_Auction_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _auctionStart_s44, _biddingTime_s44, _beneficiary_s44);
if (revert) {
return;
}
}

implementation Bid_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var end_s91: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assume ((end_s91) >= (0));
assume ((__tmp__auctionStart_Auction[this]) >= (0));
assume ((__tmp__biddingTime_Auction[this]) >= (0));
assume ((((__tmp__auctionStart_Auction[this]) + (__tmp__biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936)) >= (0));
end_s91 := ((__tmp__auctionStart_Auction[this]) + (__tmp__biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
assume ((end_s91) >= (0));
assume ((__tmp__now) >= (0));
if (((end_s91) < (__tmp__now)) || (__tmp__ended_Auction[this])) {
revert := true;
return;
} else {
assume ((msgvalue_MSG) >= (0));
assume ((__tmp__highestBid_Auction[this]) >= (0));
if ((msgvalue_MSG) <= (__tmp__highestBid_Auction[this])) {
revert := true;
return;
} else {
assume ((__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][__tmp__highestBidder_Auction[this]]) >= (0));
assume ((__tmp__highestBid_Auction[this]) >= (0));
__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]] := (__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]]) - (__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][__tmp__highestBidder_Auction[this]]);
__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][__tmp__highestBidder_Auction[this]] := ((__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][__tmp__highestBidder_Auction[this]]) + (__tmp__highestBid_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]] := (__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]]) + (__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][__tmp__highestBidder_Auction[this]]);
__tmp__highestBidder_Auction[this] := msgsender_MSG;
assume ((__tmp__highestBid_Auction[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
__tmp__highestBid_Auction[this] := msgvalue_MSG;
}
}
}

implementation Bid_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var end_s91: int;
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assume ((end_s91) >= (0));
assume ((auctionStart_Auction[this]) >= (0));
assume ((biddingTime_Auction[this]) >= (0));
assume ((((auctionStart_Auction[this]) + (biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936)) >= (0));
end_s91 := ((auctionStart_Auction[this]) + (biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
assume ((end_s91) >= (0));
assume ((now) >= (0));
if (((end_s91) < (now)) || (ended_Auction[this])) {
revert := true;
return;
} else {
assume ((msgvalue_MSG) >= (0));
assume ((highestBid_Auction[this]) >= (0));
if ((msgvalue_MSG) <= (highestBid_Auction[this])) {
revert := true;
return;
} else {
assume ((M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][highestBidder_Auction[this]]) >= (0));
assume ((highestBid_Auction[this]) >= (0));
sum_pendingReturns0[pendingReturns_Auction[this]] := (sum_pendingReturns0[pendingReturns_Auction[this]]) - (M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][highestBidder_Auction[this]]);
M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][highestBidder_Auction[this]] := ((M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][highestBidder_Auction[this]]) + (highestBid_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
sum_pendingReturns0[pendingReturns_Auction[this]] := (sum_pendingReturns0[pendingReturns_Auction[this]]) + (M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][highestBidder_Auction[this]]);
highestBidder_Auction[this] := msgsender_MSG;
assume ((highestBid_Auction[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
highestBid_Auction[this] := msgvalue_MSG;
}
}
}

implementation Withdraw_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var pr_s123: int;
var __var_3: int;
var __var_4: bool;
assume ((__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG]) >= (0));
if ((__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG]) != (0)) {
assume ((pr_s123) >= (0));
assume ((__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG]) >= (0));
pr_s123 := __tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG];
assume ((__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG]) >= (0));
__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]] := (__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]]) - (__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG]);
__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG] := 0;
__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]] := (__tmp__sum_pendingReturns0[__tmp__pendingReturns_Auction[this]]) + (__tmp__M_Ref_int_pendingReturns0[__tmp__pendingReturns_Auction[this]][msgsender_MSG]);
__var_3 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_3 := (__var_3) - (gas);
assume ((pr_s123) >= (0));
call __var_4 := send__fail(this, msgsender_MSG, pr_s123);
if (!(__var_4)) {
revert := true;
return;
}
gas := (__var_3) + (gas);
} else {
revert := true;
return;
}
}

implementation Withdraw_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var pr_s123: int;
var __var_3: int;
var __var_4: bool;
assume ((M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG]) >= (0));
if ((M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG]) != (0)) {
assume ((pr_s123) >= (0));
assume ((M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG]) >= (0));
pr_s123 := M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG];
assume ((M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG]) >= (0));
sum_pendingReturns0[pendingReturns_Auction[this]] := (sum_pendingReturns0[pendingReturns_Auction[this]]) - (M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG]);
M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG] := 0;
sum_pendingReturns0[pendingReturns_Auction[this]] := (sum_pendingReturns0[pendingReturns_Auction[this]]) + (M_Ref_int_pendingReturns0[pendingReturns_Auction[this]][msgsender_MSG]);
__var_3 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_3 := (__var_3) - (gas);
assume ((pr_s123) >= (0));
call __var_4 := send__success(this, msgsender_MSG, pr_s123);
if (!(__var_4)) {
revert := true;
return;
}
gas := (__var_3) + (gas);
} else {
revert := true;
return;
}
}

implementation AuctionEnd_Auction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var end_s162: int;
var __var_5: int;
var __var_6: bool;
assume ((end_s162) >= (0));
assume ((__tmp__auctionStart_Auction[this]) >= (0));
assume ((__tmp__biddingTime_Auction[this]) >= (0));
assume ((((__tmp__auctionStart_Auction[this]) + (__tmp__biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936)) >= (0));
end_s162 := ((__tmp__auctionStart_Auction[this]) + (__tmp__biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
assume ((__tmp__now) >= (0));
assume ((end_s162) >= (0));
if (((__tmp__now) <= (end_s162)) || (!(__tmp__ended_Auction[this]))) {
revert := true;
return;
} else {
__tmp__ended_Auction[this] := true;
__var_5 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_5 := (__var_5) - (gas);
assume ((__tmp__highestBid_Auction[this]) >= (0));
call __var_6 := send__fail(this, __tmp__beneficiary_Auction[this], __tmp__highestBid_Auction[this]);
if (!(__var_6)) {
revert := true;
return;
}
gas := (__var_5) + (gas);
}
}

implementation AuctionEnd_Auction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var end_s162: int;
var __var_5: int;
var __var_6: bool;
assume ((end_s162) >= (0));
assume ((auctionStart_Auction[this]) >= (0));
assume ((biddingTime_Auction[this]) >= (0));
assume ((((auctionStart_Auction[this]) + (biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936)) >= (0));
end_s162 := ((auctionStart_Auction[this]) + (biddingTime_Auction[this])) % (115792089237316195423570985008687907853269984665640564039457584007913129639936);
assume ((now) >= (0));
assume ((end_s162) >= (0));
if (((now) <= (end_s162)) || (!(ended_Auction[this]))) {
revert := true;
return;
} else {
ended_Auction[this] := true;
__var_5 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_5 := (__var_5) - (gas);
assume ((highestBid_Auction[this]) >= (0));
call __var_6 := send__success(this, beneficiary_Auction[this], highestBid_Auction[this]);
if (!(__var_6)) {
revert := true;
return;
}
gas := (__var_5) + (gas);
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
var _auctionStart_s44: int;
var _biddingTime_s44: int;
var _beneficiary_s44: Ref;
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
havoc _auctionStart_s44;
havoc _biddingTime_s44;
havoc _beneficiary_s44;
havoc iterate;
if ((__tmp__DType[from]) == (Auction)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call Bid_Auction__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call Withdraw_Auction__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call AuctionEnd_Auction__fail(from, to, msgvalue_MSG);
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
var _auctionStart_s44: int;
var _biddingTime_s44: int;
var _beneficiary_s44: Ref;
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
havoc _auctionStart_s44;
havoc _biddingTime_s44;
havoc _beneficiary_s44;
havoc iterate;
if ((DType[from]) == (Auction)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) >= (0));
call Bid_Auction__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call Withdraw_Auction__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call AuctionEnd_Auction__success(from, to, msgvalue_MSG);
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
var __snap___tmp__M_Ref_int_pendingReturns0: [Ref][Ref]int;
var __snap___tmp__sum_pendingReturns0: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__auctionStart_Auction: [Ref]int;
var __snap___tmp__biddingTime_Auction: [Ref]int;
var __snap___tmp__beneficiary_Auction: [Ref]Ref;
var __snap___tmp__ended_Auction: [Ref]bool;
var __snap___tmp__highestBidder_Auction: [Ref]Ref;
var __snap___tmp__highestBid_Auction: [Ref]int;
var __snap___tmp__pendingReturns_Auction: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int_pendingReturns0 := __tmp__M_Ref_int_pendingReturns0;
__snap___tmp__sum_pendingReturns0 := __tmp__sum_pendingReturns0;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__auctionStart_Auction := __tmp__auctionStart_Auction;
__snap___tmp__biddingTime_Auction := __tmp__biddingTime_Auction;
__snap___tmp__beneficiary_Auction := __tmp__beneficiary_Auction;
__snap___tmp__ended_Auction := __tmp__ended_Auction;
__snap___tmp__highestBidder_Auction := __tmp__highestBidder_Auction;
__snap___tmp__highestBid_Auction := __tmp__highestBid_Auction;
__snap___tmp__pendingReturns_Auction := __tmp__pendingReturns_Auction;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int_pendingReturns0 := __snap___tmp__M_Ref_int_pendingReturns0;
__tmp__sum_pendingReturns0 := __snap___tmp__sum_pendingReturns0;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__auctionStart_Auction := __snap___tmp__auctionStart_Auction;
__tmp__biddingTime_Auction := __snap___tmp__biddingTime_Auction;
__tmp__beneficiary_Auction := __snap___tmp__beneficiary_Auction;
__tmp__ended_Auction := __snap___tmp__ended_Auction;
__tmp__highestBidder_Auction := __snap___tmp__highestBidder_Auction;
__tmp__highestBid_Auction := __snap___tmp__highestBid_Auction;
__tmp__pendingReturns_Auction := __snap___tmp__pendingReturns_Auction;
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
__tmp__M_Ref_int_pendingReturns0 := M_Ref_int_pendingReturns0;
__tmp__sum_pendingReturns0 := sum_pendingReturns0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__auctionStart_Auction := auctionStart_Auction;
__tmp__biddingTime_Auction := biddingTime_Auction;
__tmp__beneficiary_Auction := beneficiary_Auction;
__tmp__ended_Auction := ended_Auction;
__tmp__highestBidder_Auction := highestBidder_Auction;
__tmp__highestBid_Auction := highestBid_Auction;
__tmp__pendingReturns_Auction := pendingReturns_Auction;
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
var _auctionStart_s44: int;
var _biddingTime_s44: int;
var _beneficiary_s44: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _auctionStart_s44;
havoc _biddingTime_s44;
havoc _beneficiary_s44;
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
call Bid_Auction(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call Withdraw_Auction(this, msgsender_MSG, msgvalue_MSG);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call AuctionEnd_Auction(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _auctionStart_s44: int;
var _biddingTime_s44: int;
var _beneficiary_s44: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (Auction));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call Auction_Auction(this, msgsender_MSG, msgvalue_MSG, _auctionStart_s44, _biddingTime_s44, _beneficiary_s44);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_Auction(this);
}
}


