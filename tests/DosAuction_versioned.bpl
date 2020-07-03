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

var exception : bool;
var reverted : bool;

var currentFrontrunner_DosAuction_ex: [Ref]Ref;
var currentBid_DosAuction_ex: [Ref]int;
var balance_ADDR_ex: [Ref]int;

var bidCalled : bool;
var bidAmt : int;
var bidAddr : Ref;

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
    modifies currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, reverted, exception, currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex;
{
    var amt : int;

    havoc amt;
    assume(amt >= 0);

    if(*) {
        if(exception) {
            currentFrontrunner_DosAuction_ex := currentFrontrunner_DosAuction;
            currentBid_DosAuction_ex := currentBid_DosAuction;
            balance_ADDR_ex := balance_ADDR;
            call bid_DosAuction_ex(msgsender_MSG, this, amt);
        }
        else {
            call bid_DosAuction(msgsender_MSG, this, amt);
        }
    }
    else if(*) {
        //revert
        reverted := true;
        return;
    }
}

procedure __send(this: Ref, msgsender_MSG: Ref, msgvalue: int, amt: int) returns(result: bool)
    modifies currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, exception, reverted, currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex;
{
    var old_exception : bool;
    var old_reverted : bool;

    old_reverted := reverted;
    old_exception := exception;
    havoc exception;

    if(balance_ADDR[msgsender_MSG] >= amt) {
        balance_ADDR := balance_ADDR[this := (balance_ADDR[this] + amt)];
        balance_ADDR := balance_ADDR[msgsender_MSG := (balance_ADDR[msgsender_MSG] - amt)];
        call fallback(this, msgsender_MSG, amt);
    }
    else {
        reverted := true;
    }

    result := !exception;
    assume(exception <==> (reverted));
    exception := old_exception;
    reverted := old_reverted;
}

procedure {:public} {:inline 1} bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, exception, reverted, currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex;
implementation bid_DosAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: Ref;
    var result : bool;
    balance_ADDR := balance_ADDR[this := (balance_ADDR[this] + msgvalue_MSG)];
    balance_ADDR := balance_ADDR[msgsender_MSG := (balance_ADDR[msgsender_MSG] - msgvalue_MSG)];

    assume ((msgvalue_MSG) > (currentBid_DosAuction[this]));
    __var_1 := null;
    if ((currentFrontrunner_DosAuction[this]) != (__var_1)) {
        call result := __send(msgsender_MSG, this, 0, currentBid_DosAuction[this]);
        assume(result);
    }

    currentFrontrunner_DosAuction[this] := msgsender_MSG;
    currentBid_DosAuction[this] := msgvalue_MSG;
}

procedure fallback_ex(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
    modifies currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex, exception, reverted;
{
    var amt : int;

    havoc amt;
    assume(amt >= 0);

    if(*) {
        call bid_DosAuction_ex(msgsender_MSG, this, amt);
    }
    else if(*) {
        //revert
        reverted := true;
        return;
    }
}

procedure __send_ex(this: Ref, msgsender_MSG: Ref, msgvalue: int, amt: int) returns(result: bool)
    modifies currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex, exception, reverted;
{
    var old_exception : bool;
    var old_reverted : bool;

    old_reverted := reverted;
    old_exception := exception;
    havoc exception;

    if(balance_ADDR_ex[msgsender_MSG] >= amt) {
        balance_ADDR_ex := balance_ADDR_ex[this := (balance_ADDR_ex[this] + amt)];
        balance_ADDR_ex := balance_ADDR_ex[msgsender_MSG := (balance_ADDR_ex[msgsender_MSG] - amt)];
        call fallback_ex(this, msgsender_MSG, amt);
    }
    else {
        reverted := true;
    }

    result := !exception;
    assume(exception <==> (reverted));
    exception := old_exception;
    reverted := old_reverted;
}

procedure {:public} {:inline 1} bid_DosAuction_ex(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex, exception, reverted;
implementation bid_DosAuction_ex(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: Ref;
    var result : bool;
    balance_ADDR_ex := balance_ADDR_ex[this := (balance_ADDR_ex[this] + msgvalue_MSG)];
    balance_ADDR_ex := balance_ADDR_ex[msgsender_MSG := (balance_ADDR_ex[msgsender_MSG] - msgvalue_MSG)];

    assume ((msgvalue_MSG) > (currentBid_DosAuction_ex[this]));
    __var_1 := null;
    if ((currentFrontrunner_DosAuction_ex[this]) != (__var_1)) {
        call result := __send_ex(msgsender_MSG, this, 0, currentBid_DosAuction_ex[this]);
        if(!result) {
            reverted := true;
            return;
        }
    }

    currentFrontrunner_DosAuction_ex[this] := msgsender_MSG;
    currentBid_DosAuction_ex[this] := msgvalue_MSG;
}

procedure main()
    modifies Alloc, currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, exception, reverted, currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex, bidAmt, bidAddr, bidCalled;
{
    var owner : Ref;
    var amt : int;
    var address : Ref;
    
    assume(owner != contract);
    havoc amt;

    call DosAuction_DosAuction(contract, owner, amt);

    while(*) {
        havoc amt;
        havoc address;

        havoc exception;
        reverted := false;

        assume(amt >= 0);
        assume(address != contract);
        assume(address != null);

        if(*) {
            bidAmt := amt;
            bidAddr := address;
            bidCalled := true;
            bidCalled := false;
            if(exception) {
                currentFrontrunner_DosAuction_ex := currentFrontrunner_DosAuction;
                currentBid_DosAuction_ex := currentBid_DosAuction;
                balance_ADDR_ex := balance_ADDR;
                call bid_DosAuction_ex(contract, address, amt);
            }
            else {
                call bid_DosAuction(contract, address, amt);
            }
        }

        assume(exception <==> (reverted));
    }
}

procedure ULTIMATE.start()
    modifies Alloc, currentFrontrunner_DosAuction, currentBid_DosAuction, balance_ADDR, exception, reverted, currentFrontrunner_DosAuction_ex, currentBid_DosAuction_ex, balance_ADDR_ex, bidAmt, bidAddr, bidCalled;
{
    call main();
}
