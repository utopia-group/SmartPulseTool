// #LTLProperty: []((AP(userCredit != 0) && AP(withdrawCalled)) ==> <>(AP(fallbackSucceeded) && AP(fallbackAddr == address) && AP(fallbackAmt == userCredit)))
type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique SimpleDAO: ContractName;
const unique VeriSol: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function { :smtdefined "((as const (Array Int Int)) 0)" } zero() returns (ret: [Ref]int);
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var M_sum : [Ref]int;
var Length: [Ref]int;
procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref);
modifies Alloc;
implementation FreshRefGenerator() returns (newRef: Ref)
{
    havoc newRef;
    assume ((Alloc[newRef]) == (false));
    Alloc[newRef] := true;
    assume ((newRef) != (null));
}

var userCredit : int;
var fallbackSucceeded : bool;
var fallbackAddr : Ref;
var fallbackAmt : int;
var withdrawCalled : bool;
var address : Ref;
var contract : Ref;
var numCalled : int;

var __balance: [Ref]int;
var credit_SimpleDAO: [Ref]Ref;
procedure {:inline 1} SimpleDAO_SimpleDAO_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies Alloc, M_Ref_int, credit_SimpleDAO, __balance, M_sum;
implementation SimpleDAO_SimpleDAO_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: Ref;
    // start of initialization
    // Make array/mapping vars distinct for credit
    call __var_1 := FreshRefGenerator();
    credit_SimpleDAO[this] := __var_1;
    // Initialize Integer mapping credit
    M_Ref_int[credit_SimpleDAO[this]] := zero();
    M_sum[credit_SimpleDAO[this]] := 0;
    // end of initialization
    __balance[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies Alloc, M_Ref_int, credit_SimpleDAO, __balance, M_sum;
implementation SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var __var_1: Ref;
    call SimpleDAO_SimpleDAO_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies M_Ref_int, __balance, M_sum;
implementation donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    __balance := __balance[this := (__balance[this] + msgvalue_MSG)];
    __balance := __balance[msgsender_MSG := (__balance[msgsender_MSG] - msgvalue_MSG)];
    M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG] := (M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) + (msgvalue_MSG);
    M_sum[credit_SimpleDAO[this]] := M_sum[credit_SimpleDAO[this]] + msgvalue_MSG;
}

procedure {:public} {:inline 1} queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s46: Ref) returns (__ret_0_: int);
implementation queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s46: Ref) returns (__ret_0_: int)
{
    __ret_0_ := M_Ref_int[credit_SimpleDAO[this]][to_s46];
    return;
}

procedure {:public} {:inline 1} queryBalance_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
implementation queryBalance_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    __ret_0_ := __balance[this];
    return;
}

procedure test_fallback(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) 
    modifies __balance, M_Ref_int, fallbackSucceeded, fallbackAmt, fallbackAddr, withdrawCalled, M_sum, numCalled;
{
    var amt: int;
    var result: int;

    while(*) {
        havoc amt;

        assume(amt >= 0);
        if(*) {
            call donate_SimpleDAO(msgsender_MSG, address, amt);
        }
        else if(*) {
            //numCalled := numCalled + 1;
            call withdraw_SimpleDAO(msgsender_MSG, this, 0); 
        }
        else if(*) {
            call result := queryCredit_SimpleDAO(msgsender_MSG, address, 0, address);
        }
        else {
            call result := queryBalance_SimpleDAO(msgsender_MSG, address, 0);
        }
    }
}

procedure __send(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt: int) returns(result: bool)
    modifies __balance, M_Ref_int, fallbackSucceeded, fallbackAmt, fallbackAddr, withdrawCalled, M_sum, numCalled;
{
    if(__balance[msgsender_MSG] >= amt) {
        __balance := __balance[this := (__balance[this] + amt)];
        __balance := __balance[msgsender_MSG := (__balance[msgsender_MSG] - amt)];
        call test_fallback(this, msgsender_MSG, amt);
        result := true;
        fallbackAmt := amt;
        fallbackAddr := this;
        fallbackSucceeded := true;
    }
    else {
        result := false;
    }
    fallbackSucceeded := false;
}

procedure {:public} {:inline 1} withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies M_Ref_int, __balance, withdrawCalled, fallbackSucceeded, fallbackAmt, fallbackAddr, M_sum, numCalled;
implementation withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    var amount_s94: int;
    var result: bool;
    var __var_2: int;

    if ((M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) > (0)) {
        amount_s94 := M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG];
        call result := __send(msgsender_MSG, this, 0, amount_s94);
        M_sum[credit_SimpleDAO[this]] := M_sum[credit_SimpleDAO[this]] - M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG];
        M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG] := 0;
    }
}

procedure main() 
    modifies M_Ref_int, __balance, Alloc, credit_SimpleDAO, userCredit, fallbackSucceeded, fallbackAmt, fallbackAddr, address, withdrawCalled, M_sum, numCalled;
{
    var owner : Ref;
    var amt : int;
    var result : int;

    assume(owner != contract);

    call SimpleDAO_SimpleDAO(contract, owner, 0);

    /*call donate_SimpleDAO(contract, other, 10);

    call donate_SimpleDAO(contract, other1, 10);

    //numCalled := 0;

    address := other1;
    call userCredit := queryCredit_SimpleDAO(contract, address, 0, address);
    withdrawCalled := true;
    withdrawCalled := false;
    call withdraw_SimpleDAO(contract, address, 0);

    numCalled := 0;

    address := other;
    call userCredit := queryCredit_SimpleDAO(contract, address, 0, address);
    withdrawCalled := true;
    withdrawCalled := false;
    call withdraw_SimpleDAO(contract, address, 0);

    while(true) {}*/

    while(*) {
        havoc amt;
        havoc address;

        assume(M_Ref_int[credit_SimpleDAO[contract]][address] <= M_sum[credit_SimpleDAO[contract]]);

        numCalled := 0;

        call userCredit := queryCredit_SimpleDAO(contract, address, 0, address);

        assume(amt >= 0);
        assume(address != contract);

        if(*) {
            call donate_SimpleDAO(contract, address, amt);
        }
        else if(*) {
            withdrawCalled := true;
            withdrawCalled := false;
            call withdraw_SimpleDAO(contract, address, 0); 
        }
        else if(*) {
            call result := queryCredit_SimpleDAO(contract, address, 0, address);
        }
        else {
            call result := queryBalance_SimpleDAO(contract, address, 0);
        }
    }
}

procedure ULTIMATE.start()
    modifies M_Ref_int, __balance, Alloc, credit_SimpleDAO, userCredit, fallbackSucceeded, fallbackAmt, fallbackAddr, address, withdrawCalled, M_sum, numCalled;
{
    fallbackSucceeded := false;
    withdrawCalled := false;
    call main();
}
