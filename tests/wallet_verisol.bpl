// #LTLProperty: []((AP(withdrawCalled == true) && AP(withdrawAddr == user) && AP(withdrawAmt <= userBal)) ==> <>(AP(fallbackSucceeded == true) && AP(fallbackAmt == withdrawAmt) && AP(fallbackAddr == user)))
type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique SimpleTest: ContractName;
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

var userBal : int;
var user : Ref;
var withdrawCalled : bool;
var withdrawAddr : Ref;
var withdrawAmt : int;
var fallbackSucceeded : bool;
var fallbackAddr : Ref;
var fallbackAmt : int;

procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref);
    modifies Alloc;
implementation FreshRefGenerator() returns (newRef: Ref)
{
    havoc newRef;
    assume ((Alloc[newRef]) == (false));
    Alloc[newRef] := true;
    assume ((newRef) != (null));
}

procedure {:inline 1} SimpleTest_SimpleTest_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies balance_SimpleTest, __balance, M_Ref_int, Alloc, M_sum;
implementation SimpleTest_SimpleTest_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
assume ((msgsender_MSG) != (null));
// Make array/mapping vars distinct for balance
call __var_1 := FreshRefGenerator();
balance_SimpleTest[this] := __var_1;
M_Ref_int[balance_SimpleTest[this]] := zero();
M_sum[balance_SimpleTest[this]] := 0;
__balance[this] := 0;
}

procedure {:inline 1} SimpleTest_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies balance_SimpleTest, M_Ref_int, __balance, Alloc, M_sum;
implementation SimpleTest_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SimpleTest_SimpleTest_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure __send(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt: int) returns(result: bool)
    modifies __balance, fallbackAmt, fallbackAddr, fallbackSucceeded;
{
    if(__balance[msgsender_MSG] >= amt) {
        __balance := __balance[this := (__balance[this] + amt)];
        __balance := __balance[msgsender_MSG := (__balance[msgsender_MSG] - amt)];
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

var balance_SimpleTest: [Ref]Ref;
var __balance: [Ref]int;
procedure {:public} {:inline 1} deposit_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies M_Ref_int, __balance, M_sum;
implementation deposit_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    __balance := __balance[this := (__balance[this] + msgvalue_MSG)];
    M_sum[balance_SimpleTest[this]] := M_sum[balance_SimpleTest[this]] + msgvalue_MSG;
    M_Ref_int[balance_SimpleTest[this]][msgsender_MSG] := (M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) + (msgvalue_MSG);
}

procedure {:public} {:inline 1} withdraw_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s50: int);
    modifies withdrawAddr, withdrawAmt, withdrawCalled, M_Ref_int, __balance, fallbackSucceeded, fallbackAddr, fallbackAmt, M_sum;
implementation withdraw_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s50: int)
{
    var sendResult: bool;
    withdrawAddr := msgsender_MSG;
    withdrawAmt := amt_s50;
    withdrawCalled := true;
    withdrawCalled := false;
    if ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (amt_s50)) {
        M_Ref_int[balance_SimpleTest[this]][msgsender_MSG] := (M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) - (amt_s50);
        M_sum[balance_SimpleTest[this]] := M_sum[balance_SimpleTest[this]] - amt_s50;
        call sendResult := __send(msgsender_MSG, this, 0, amt_s50);
    }
}

procedure getBal(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (amt: int)
{
    amt := M_Ref_int[balance_SimpleTest[this]][msgsender_MSG];
}

procedure main()
    modifies __balance, M_Ref_int, balance_SimpleTest, userBal, fallbackSucceeded, fallbackAmt, withdrawCalled, withdrawAddr, withdrawAmt, fallbackAddr, Alloc, M_sum;
{
    var owner : Ref;
    var contract : Ref;
    var amt : int;
    var action : int;
    var address : Ref;

    assume(owner != contract);
    assume(user != contract);
    assume(__balance[user] > 0);

    call SimpleTest_SimpleTest(contract, owner, 0);

    while(*) {
        havoc amt;
        havoc address;

        assume(amt >= 0);
        assume (address != contract);
        assume(M_Ref_int[balance_SimpleTest[contract]][address] <= M_sum[balance_SimpleTest[contract]]);

        call userBal := getBal(contract, user, 0);

        if(*) {
            call deposit_SimpleTest(contract, address, amt);
        }
        else {
            call withdraw_SimpleTest(contract, address, 0, amt);
        }
    }
}

procedure ULTIMATE.start()
    modifies __balance, M_Ref_int, balance_SimpleTest, userBal, fallbackSucceeded, fallbackAmt, withdrawCalled, withdrawAddr, withdrawAmt, fallbackAddr, Alloc, M_sum;
{
    withdrawCalled := false;
    fallbackSucceeded := false;

    call main();
}
