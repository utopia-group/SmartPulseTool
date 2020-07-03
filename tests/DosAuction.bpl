// #LTLProperty: []((AP(bidCalled) && AP(bidAmt > currentBid_DosAuction[contract])) ==> <>(AP(currentFrontrunner_DosAuction[contract] == bidAddr)))

type Ref = int;
type ContractName = int;
var null: Ref;
const unique DosAuction: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var Length: [Ref]int;
var currentFrontrunner_DosAuction: [Ref]Ref;
var currentBid_DosAuction: [Ref]int;

var contract : Ref;
var bidCalled : bool;
var bidAmt : int;
var bidAddr : Ref;

var exception : bool;
var gas : int;

procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref);
    modifies Alloc;
implementation FreshRefGenerator() returns (newRef: Ref)
{
    havoc newRef;
    assume ((Alloc[newRef]) == (false));
    Alloc[newRef] := true;
    assume ((newRef) != (null));
}

procedure {:inline 1} DosAuction_DosAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies Alloc, currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR;
implementation DosAuction_DosAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    // start of initialization
    assume ((msgsender_MSG) != (null));
    currentFrontrunner_DosAuction[this] := null;
    currentBid_DosAuction[this] := 0;
    balance_ADDR[this] := 0;
    // end of initialization
}

procedure {:inline 1} DosAuction_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies Alloc, currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR;
implementation DosAuction_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call DosAuction_DosAuction_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure fallback(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
    modifies currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, exception, gas;
{
    var amt : int;
    var foundEx : bool;

    havoc amt;
    assume(amt >= 0);

    if(*) {
        call foundEx := gasCheck(1);
        if(foundEx) {
            return;
        }
        call bid_DosAuction(msgsender_MSG, this, amt);
    }
    else if(*) {
        //revert
        exception := true;
    }
}

procedure __send(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt: int) returns(result: bool)
    modifies currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, exception, gas;
{
    var old_exception : bool;
    var oldFrontrunner : [Ref]Ref;
    var oldBid : [Ref]int;
    var oldBal : [Ref]int;
    old_exception := exception;
    exception := false;
    oldFrontrunner := currentFrontrunner_DosAuction;
    oldBid := currentBid_DosAuction;
    oldBal := balance_ADDR;

    if(balance_ADDR[msgsender_MSG] >= amt) {
        balance_ADDR := balance_ADDR[this := (balance_ADDR[this] + amt)];
        balance_ADDR := balance_ADDR[msgsender_MSG := (balance_ADDR[msgsender_MSG] - amt)];
        call fallback(this, msgsender_MSG, amt);
    }
    else {
        exception := true;
    }

    if(exception) {
        balance_ADDR := oldBal;
        currentBid_DosAuction := oldBid;
        currentFrontrunner_DosAuction := oldFrontrunner;
    }
    result := exception;
    exception := old_exception;
}

procedure gasCheck(amt : int) returns (result: bool) 
    modifies exception, gas;
{
    gas := gas - amt;
    if(gas < 0) {
        exception := true;
    }
    result := exception;
}

procedure {:public} {:inline 1} bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, exception, gas;
implementation bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: Ref;
    var result : bool;
    var foundEx : bool;

    balance_ADDR := balance_ADDR[this := (balance_ADDR[this] + msgvalue_MSG)];
    balance_ADDR := balance_ADDR[msgsender_MSG := (balance_ADDR[msgsender_MSG] - msgvalue_MSG)];

    assume ((msgvalue_MSG) > (currentBid_DosAuction[this]));
    __var_1 := null;

    call foundEx := gasCheck(1);
    if(foundEx) {
        return;
    }

    if ((currentFrontrunner_DosAuction[this]) != (__var_1)) {
        call foundEx := gasCheck(2);
        if(foundEx) {
            return;
        }
        call result := __send(msgsender_MSG, this, 0, currentBid_DosAuction[this]);
        if(exception) {
            return;
        }
        //we need to do something about assume statements
        //assume(result);
        if(result) {
            exception := true;
            return;
        }

        call foundEx := gasCheck(1);
        if(foundEx) {
            return;
        }
    }
    call foundEx := gasCheck(1);
    if(foundEx) {
        return;
    }
    currentFrontrunner_DosAuction[this] := msgsender_MSG;
    currentBid_DosAuction[this] := msgvalue_MSG;
}

procedure main()
    modifies Alloc, currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, bidAmt, bidAddr, bidCalled, exception, gas;
{
    var owner : Ref;
    var amt : int;
    var address : Ref;
    var oldFrontrunner : [Ref]Ref;
    var oldBid : [Ref]int;
    var oldBal : [Ref]int;

    assume(owner != contract);
    havoc amt;

    call DosAuction_DosAuction(contract, owner, amt);

    while(*) {
        havoc amt;
        havoc address;

        gas := 100;
        exception := false;
        oldFrontrunner := currentFrontrunner_DosAuction;
        oldBid := currentBid_DosAuction;
        oldBal := balance_ADDR;

        assume(amt >= 0);
        assume(address != contract);

        if(*) {
            bidAmt := amt;
            bidAddr := address;
            bidCalled := true;
            bidCalled := false;
            call bid_DosAuction(contract, address, amt);
        }
        if(exception) {
            balance_ADDR := oldBal;
            currentBid_DosAuction := oldBid;
            currentFrontrunner_DosAuction := oldFrontrunner;
        }
    }
}

procedure ULTIMATE.start()
    modifies Alloc, currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, bidAmt, bidAddr, bidCalled, exception, gas;
{
    call main();
}
