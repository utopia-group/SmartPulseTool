// []((success(bid) {msg.sender == bidder && ended == false} && X(!success(bid) {} U success(auctionEnd) {ended == true})) ==> <>(success(send) {success == true && amount == highestBid && to == owner}))
// #LTLProperty: []((AP(bidSuccess1) && (AP(!bidSuccess2) U AP(auctionEnd1))) ==> <>(AP(send1)))
type Ref=int;
type ContractName=int;

/////////////////////////////
// Instrumentation Vars
/////////////////////////////
var bidder: Ref;
var bidSuccess1:bool;
var bidSuccess2:bool;
var auctionEnd1:bool;
var send1:bool;

const unique null: Ref;
const unique SimpleAuction: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
var owner_SimpleAuction: [Ref]Ref;
var highestBidder_SimpleAuction: [Ref]Ref;
var highestBid_SimpleAuction: [Ref]int;
var ended_SimpleAuction: [Ref]bool;
procedure {:inline 1} SimpleAuction_SimpleAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies owner_SimpleAuction;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
modifies ended_SimpleAuction;
procedure {:constructor} {:public} {:inline 1} SimpleAuction_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies owner_SimpleAuction;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
modifies ended_SimpleAuction;
implementation SimpleAuction_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __exception: bool;
    havoc __exception;
    revert := false;
    if (__exception) {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__Length := Length;
        __tmp__owner_SimpleAuction := owner_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        call SimpleAuction_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume ((revert) || ((gas) < (0)));
    } else {
        call SimpleAuction_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume ((!(revert)) && ((gas) >= (0)));
    }
}

procedure {:public} {:inline 1} bid_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies send1;
modifies bidSuccess1;
modifies bidSuccess2;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies Balance;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
implementation bid_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __exception: bool;
    havoc __exception;
    revert := false;
    if (__exception) {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__Length := Length;
        __tmp__owner_SimpleAuction := owner_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        call bid_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume ((revert) || ((gas) < (0)));
    } else {
        call bid_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume ((!(revert)) && ((gas) >= (0)));

        /////////////////////////////
        // Setting bid flags
        /////////////////////////////
        bidSuccess2 := true;
        bidSuccess2 := false;

        if(msgsender_MSG == bidder && ended_SimpleAuction[this] == false) {
            bidSuccess1 := true;
            bidSuccess1 := false;
        }
    }
}

procedure {:public} {:inline 1} auctionEnd_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies send1;
modifies auctionEnd1;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies ended_SimpleAuction;
modifies Balance;
implementation auctionEnd_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __exception: bool;
    havoc __exception;
    revert := false;
    if (__exception) {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__Length := Length;
        __tmp__owner_SimpleAuction := owner_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
        call auctionEnd_SimpleAuction__fail(this, msgsender_MSG, msgvalue_MSG);
        assume ((revert) || ((gas) < (0)));
    } else {
        call auctionEnd_SimpleAuction__success(this, msgsender_MSG, msgvalue_MSG);
        assume ((!(revert)) && ((gas) >= (0)));

        /////////////////////////////
        // Setting auctionEnd flags
        /////////////////////////////
        if(ended_SimpleAuction[this] == true) {
            auctionEnd1 := true;
            auctionEnd1 := false;
        }
    }
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies send1;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies revert;
modifies Balance;
procedure CorralChoice_SimpleAuction(this: Ref);
modifies bidSuccess1;
modifies bidSuccess2;
modifies auctionEnd1;
modifies send1;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies Balance;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
modifies ended_SimpleAuction;
modifies owner_SimpleAuction;
procedure ULTIMATE.start();
modifies bidSuccess1;
modifies bidSuccess2;
modifies auctionEnd1;
modifies send1;
modifies bidder;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies Balance;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
modifies ended_SimpleAuction;
modifies owner_SimpleAuction;
procedure main();
modifies bidSuccess1;
modifies bidSuccess2;
modifies auctionEnd1;
modifies send1;
modifies bidder;
modifies gas;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies Balance;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
modifies ended_SimpleAuction;
modifies owner_SimpleAuction;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__owner_SimpleAuction: [Ref]Ref;
var __tmp__highestBidder_SimpleAuction: [Ref]Ref;
var __tmp__highestBid_SimpleAuction: [Ref]int;
var __tmp__ended_SimpleAuction: [Ref]bool;
procedure {:inline 1} SimpleAuction_SimpleAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
procedure {:constructor} {:inline 1} SimpleAuction_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies owner_SimpleAuction;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
modifies ended_SimpleAuction;
procedure {:constructor} {:inline 1} SimpleAuction_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
procedure {:inline 1} bid_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies send1;
modifies Balance;
modifies revert;
modifies highestBidder_SimpleAuction;
modifies highestBid_SimpleAuction;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
procedure {:inline 1} bid_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies revert;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
procedure {:inline 1} auctionEnd_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies send1;
modifies ended_SimpleAuction;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
modifies Balance;
procedure {:inline 1} auctionEnd_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__ended_SimpleAuction;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__Length;
modifies __tmp__owner_SimpleAuction;
modifies __tmp__highestBidder_SimpleAuction;
modifies __tmp__highestBid_SimpleAuction;
modifies __tmp__ended_SimpleAuction;
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

implementation SimpleAuction_SimpleAuction_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    // start of initialization
    assume ((msgsender_MSG) != (null));
    __tmp__owner_SimpleAuction[this] := null;
    __tmp__highestBidder_SimpleAuction[this] := null;
    __tmp__highestBid_SimpleAuction[this] := 0;
    __tmp__ended_SimpleAuction[this] := false;
    // end of initialization
    __tmp__owner_SimpleAuction[this] := msgsender_MSG;
}

implementation SimpleAuction_SimpleAuction_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    // start of initialization
    assume ((msgsender_MSG) != (null));
    owner_SimpleAuction[this] := null;
    highestBidder_SimpleAuction[this] := null;
    highestBid_SimpleAuction[this] := 0;
    ended_SimpleAuction[this] := false;
    // end of initialization
    owner_SimpleAuction[this] := msgsender_MSG;
}

implementation SimpleAuction_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SimpleAuction_SimpleAuction_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert) {
        return;
    }
}

implementation SimpleAuction_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SimpleAuction_SimpleAuction_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert) {
        return;
    }
}

implementation bid_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: bool;
    // ---- Logic for payable function START 
    assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
    __tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
    __tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
    // ---- Logic for payable function END 
    if (!(__tmp__ended_SimpleAuction[this])) {
        if (!((msgvalue_MSG) > (__tmp__highestBid_SimpleAuction[this]))) {
            revert := true;
            return;
        }
        call __var_1 := send__fail(this, __tmp__highestBidder_SimpleAuction[this], __tmp__highestBid_SimpleAuction[this]);
        if (!(__var_1)) {
            revert := true;
            return;
        }
        __tmp__highestBidder_SimpleAuction[this] := msgsender_MSG;
        __tmp__highestBid_SimpleAuction[this] := msgvalue_MSG;
    }
}

implementation bid_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: bool;
    // ---- Logic for payable function START 
    assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
    Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
    Balance[this] := (Balance[this]) + (msgvalue_MSG);
    // ---- Logic for payable function END 
    if (!(ended_SimpleAuction[this])) {
        if (!((msgvalue_MSG) > (highestBid_SimpleAuction[this]))) {
            revert := true;
            return;
        }
        call __var_1 := send__success(this, highestBidder_SimpleAuction[this], highestBid_SimpleAuction[this]);
        if (!(__var_1)) {
            revert := true;
            return;
        }
        highestBidder_SimpleAuction[this] := msgsender_MSG;
        highestBid_SimpleAuction[this] := msgvalue_MSG;
    }
}

implementation auctionEnd_SimpleAuction__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_2: bool;
    if ((!(__tmp__ended_SimpleAuction[this])) && ((msgsender_MSG) == (__tmp__owner_SimpleAuction[this]))) {
        __tmp__ended_SimpleAuction[this] := true;
        call __var_2 := send__fail(this, msgsender_MSG, __tmp__highestBid_SimpleAuction[this]);
        if (!(__var_2)) {
            revert := true;
            return;
        }
    }
}

implementation auctionEnd_SimpleAuction__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_2: bool;
    if ((!(ended_SimpleAuction[this])) && ((msgsender_MSG) == (owner_SimpleAuction[this]))) {
        ended_SimpleAuction[this] := true;
        call __var_2 := send__success(this, msgsender_MSG, highestBid_SimpleAuction[this]);
        if (!(__var_2)) {
            revert := true;
            return;
        }
    }
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if ((__tmp__DType[to]) == (SimpleAuction)) {
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
    if ((DType[to]) == (SimpleAuction)) {
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
    var __snap___tmp__Length: [Ref]int;
    var __snap___tmp__owner_SimpleAuction: [Ref]Ref;
    var __snap___tmp__highestBidder_SimpleAuction: [Ref]Ref;
    var __snap___tmp__highestBid_SimpleAuction: [Ref]int;
    var __snap___tmp__ended_SimpleAuction: [Ref]bool;
    havoc __exception;
    if (__exception) {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__owner_SimpleAuction := __tmp__owner_SimpleAuction;
        __snap___tmp__highestBidder_SimpleAuction := __tmp__highestBidder_SimpleAuction;
        __snap___tmp__highestBid_SimpleAuction := __tmp__highestBid_SimpleAuction;
        __snap___tmp__ended_SimpleAuction := __tmp__ended_SimpleAuction;
        if ((__tmp__Balance[from]) >= (amount)) {
            call FallbackDispatch__fail(from, to, amount);
        }
        success := false;
        assume ((revert) || ((gas) < (0)));
        __tmp__Balance := __snap___tmp__Balance;
        __tmp__DType := __snap___tmp__DType;
        __tmp__Alloc := __snap___tmp__Alloc;
        __tmp__balance_ADDR := __snap___tmp__balance_ADDR;
        __tmp__Length := __snap___tmp__Length;
        __tmp__owner_SimpleAuction := __snap___tmp__owner_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := __snap___tmp__highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := __snap___tmp__highestBid_SimpleAuction;
        __tmp__ended_SimpleAuction := __snap___tmp__ended_SimpleAuction;
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
        __tmp__Length := Length;
        __tmp__owner_SimpleAuction := owner_SimpleAuction;
        __tmp__highestBidder_SimpleAuction := highestBidder_SimpleAuction;
        __tmp__highestBid_SimpleAuction := highestBid_SimpleAuction;
        __tmp__ended_SimpleAuction := ended_SimpleAuction;
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

    /////////////////////////////
    // Setting Send flags
    /////////////////////////////
    if(success == true && amount == highestBid_SimpleAuction[from] && to == owner_SimpleAuction[from]) {
        send1 := true;
        send1 := false;
    }
}

implementation CorralChoice_SimpleAuction(this: Ref)
{
    var msgsender_MSG: Ref;
    var msgvalue_MSG: int;
    var choice: int;
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    if ((choice) == (2)) {
        havoc gas;
        assume (((gas) > (4000000)) && ((gas) <= (8000000)));
        call bid_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    } else if ((choice) == (1)) {
        havoc gas;
        assume (((gas) > (4000000)) && ((gas) <= (8000000)));
        call auctionEnd_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    }
}

implementation main()
{
    var this: Ref;
    var msgsender_MSG: Ref;
    var msgvalue_MSG: int;
    assume ((DType[this]) == (SimpleAuction));
    havoc gas;
    assume (((gas) > (4000000)) && ((gas) <= (8000000)));
    call SimpleAuction_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
    assume ((!(revert)) && ((gas) >= (0)));

    /////////////////////////////
    // Havoc instrumentation vars
    /////////////////////////////
    havoc bidder;
    while (true)
    {
        call CorralChoice_SimpleAuction(this);
    }
}

implementation ULTIMATE.start()
{
    bidSuccess1 := false;
    bidSuccess2 := false;
    auctionEnd1 := false;
    send1 := false;
    call main();
}
