// LTLProperty: []((AP(bidCalled) && AP(bidAmt > currentBid_SecureAuction[contract])) ==> <>(AP(currentFrontrunner_SecureAuction[contract] == bidAddr)))

// #LTLProperty: []((AP(withdrawAmt > 0) && AP(withdrawCalled)) ==> <>(AP(sendAmt == withdrawAmt) && AP(sendAddr == withdrawAddr) && AP(sendSuccess)))

type Ref = int;
type ContractName = int;
var null: Ref;
const unique SecureAuction: ContractName;
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
var M_Ref_int: [Ref][Ref]int;
var M_sum: [Ref]int;
var Length: [Ref]int;
var contract : Ref;
var currentFrontrunner_SecureAuction: [Ref]Ref;
var currentBid_SecureAuction: [Ref]int;
var refunds_SecureAuction: [Ref]Ref;

var bidCalled : bool;
var bidAmt : int;
var bidAddr : Ref;

var withdrawAmt : int;
var withdrawAddr : Ref;
var withdrawCalled : bool;
var sendAmt : int;
var sendAddr : Ref;
var sendSuccess : bool;

function { :smtdefined "((as const (Array Int Int)) 0)" } zero() returns (ret: [Ref]int);

procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref);
    modifies Alloc;
implementation FreshRefGenerator() returns (newRef: Ref)
{
    havoc newRef;
    assume ((Alloc[newRef]) == (false));
    Alloc[newRef] := true;
    assume ((newRef) != (null));
}

procedure {:inline 1} SecureAuction_SecureAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies Alloc, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int, balance_ADDR, M_sum;
implementation SecureAuction_SecureAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: Ref;
    // start of initialization
    assume ((msgsender_MSG) != (null));
    currentFrontrunner_SecureAuction[this] := null;
    currentBid_SecureAuction[this] := 0;
    // Make array/mapping vars distinct for refunds
    call __var_1 := FreshRefGenerator();
    refunds_SecureAuction[this] := __var_1;
    // Initialize Integer mapping refunds
    M_Ref_int[refunds_SecureAuction[this]] := zero();
    // end of initialization
    M_sum[refunds_SecureAuction[this]] := 0;
    balance_ADDR[this] := 0;
}

procedure {:inline 1} SecureAuction_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies Alloc, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int, balance_ADDR, M_sum;
implementation SecureAuction_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SecureAuction_SecureAuction_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} bid_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies M_Ref_int, currentFrontrunner_SecureAuction, currentBid_SecureAuction, balance_ADDR, M_sum;
implementation bid_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_2: Ref;
    assume ((msgvalue_MSG) > (currentBid_SecureAuction[this]));
    __var_2 := null;
    if ((currentFrontrunner_SecureAuction[this]) != (__var_2)) {
        M_sum[refunds_SecureAuction[this]] := M_sum[refunds_SecureAuction[this]] + currentBid_SecureAuction[this];
        M_Ref_int[refunds_SecureAuction[this]][currentFrontrunner_SecureAuction[this]] := (M_Ref_int[refunds_SecureAuction[this]][currentFrontrunner_SecureAuction[this]]) + (currentBid_SecureAuction[this]);
    }
    balance_ADDR := balance_ADDR[this := (balance_ADDR[this] + msgvalue_MSG)];
    balance_ADDR := balance_ADDR[msgsender_MSG := (balance_ADDR[msgsender_MSG] - msgvalue_MSG)];
    currentFrontrunner_SecureAuction[this] := msgsender_MSG;
    currentBid_SecureAuction[this] := msgvalue_MSG;
}

procedure {:public} {:inline 1} withdraw_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies M_Ref_int, currentFrontrunner_SecureAuction, currentBid_SecureAuction, balance_ADDR, sendAddr, sendAmt, sendSuccess, M_sum;
implementation withdraw_SecureAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var refund_s60: int;
    refund_s60 := M_Ref_int[refunds_SecureAuction[this]][msgsender_MSG];
    M_Ref_int[refunds_SecureAuction[this]][msgsender_MSG] := 0;
    M_sum[refunds_SecureAuction[this]] := M_sum[refunds_SecureAuction[this]] - refund_s60;
    call __transfer(msgsender_MSG, this, 0, refund_s60);
}

procedure __transfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt: int)
    modifies balance_ADDR, sendAddr, sendAmt, sendSuccess;
{
    if(balance_ADDR[msgsender_MSG] >= amt) {
        balance_ADDR := balance_ADDR[this := (balance_ADDR[this] + amt)];
        balance_ADDR := balance_ADDR[msgsender_MSG := (balance_ADDR[msgsender_MSG] - amt)];
        call fallback(this, msgsender_MSG, amt);
        sendAddr := this;
        sendAmt := amt;
        sendSuccess := true;
    }
    sendSuccess := false;
}

procedure fallback(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    /*var amt: int;

    havoc amt;
    assume(amt >= 0);

    if(*) {
        call bid_SecureAuction(msgsender_MSG, this, amt);
    }
    else if(*) {
        call withdraw_SecureAuction(msgsender_MSG, this, amt);
    }*/
}

procedure main()
    modifies Alloc, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int, balance_ADDR, sendAddr, sendAmt, sendSuccess, bidAmt, bidAddr, bidCalled, withdrawAddr, withdrawCalled, withdrawAmt, M_sum;
{
    var owner : Ref;
    var amt : int;
    var address : Ref;

    assume(owner != contract);
    havoc amt;

    call SecureAuction_SecureAuction(contract, owner, amt);

    while(*) {
        havoc amt;
        havoc address;

        assume(M_Ref_int[refunds_SecureAuction[contract]][address] <= M_sum[refunds_SecureAuction[contract]]);

        assume(amt >= 0);
        assume(address != contract);
        assume(address != null);

        if(*) {
            bidAmt := amt;
            bidAddr := address;
            bidCalled := true;
            bidCalled := false;
            call bid_SecureAuction(contract, address, amt);
        }
        else if(*) {
            withdrawAddr := address;
            withdrawAmt := M_Ref_int[refunds_SecureAuction[contract]][address];
            withdrawCalled := true;
            withdrawCalled := false;
            call withdraw_SecureAuction(contract, address, amt);
        }
    }
}

procedure ULTIMATE.start()
    modifies Alloc, currentFrontrunner_SecureAuction, currentBid_SecureAuction, refunds_SecureAuction, M_Ref_int, balance_ADDR, sendAddr, sendAmt, sendSuccess, bidAmt, bidAddr, bidCalled, withdrawAddr, withdrawCalled, withdrawAmt, M_sum;
{
    bidCalled := false;
    withdrawCalled := false;
    sendSuccess := false;
    call main();
}
