// #LTLProperty: []((AP(withdrawCalled == true) && AP(withdrawAddr == owner) && AP(withdrawAmt <= ownerBal)) ==> <>(AP(fallbackSucceeded == true) && AP(fallbackAmt == withdrawAmt) && AP(fallbackAddr == owner)))
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
var Length: [Ref]int;


var withdrawCalled: bool;
var withdrawAddr: Ref;
var withdrawAmt: int;
var ownerBal: int;
var owner: Ref;
var fallbackSucceeded: bool;
var fallbackAmt: int;
var fallbackAddr: Ref;


procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref);
    modifies Alloc;
implementation FreshRefGenerator() returns (newRef: Ref)
{
    havoc newRef;
    assume ((Alloc[newRef]) == (false));
    Alloc[newRef] := true;
    assume ((newRef) != (null));
}

var __balance: [Ref]int;
var bal_SimpleTest: [Ref]int;
var owner_SimpleTest: [Ref]Ref;
procedure {:inline 1} SimpleTest_SimpleTest_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies bal_SimpleTest, owner_SimpleTest, __balance;
implementation SimpleTest_SimpleTest_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume ((msgsender_MSG) != (null));
    __balance := __balance[this := 0];
    bal_SimpleTest[this] := 0;
    owner_SimpleTest[this] := msgsender_MSG;
    bal_SimpleTest[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} SimpleTest_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies bal_SimpleTest, owner_SimpleTest, __balance;
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

procedure {:public} {:inline 1} deposit_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
    modifies __balance, bal_SimpleTest;
implementation deposit_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    __balance := __balance[this := (__balance[this] + msgvalue_MSG)];
    bal_SimpleTest[this] := (bal_SimpleTest[this]) + (msgvalue_MSG);
}

procedure {:public} {:inline 1} withdraw_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s59: int);
    modifies withdrawAddr, withdrawAmt, withdrawCalled, bal_SimpleTest, __balance, fallbackSucceeded, fallbackAddr, fallbackAmt;
implementation withdraw_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s59: int)
{
    var sendResult: bool;
    withdrawAddr := msgsender_MSG;
    withdrawAmt := amt_s59;
    withdrawCalled := true;
    withdrawCalled := false;
    if (((msgsender_MSG) == (owner_SimpleTest[this])) && ((bal_SimpleTest[this]) >= (amt_s59))) {
        bal_SimpleTest[this] := (bal_SimpleTest[this]) - (amt_s59);
        call sendResult := __send(msgsender_MSG, this, 0, amt_s59);
    }
}

procedure getBal(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (amt: int)
{
    amt := bal_SimpleTest[this];
}

procedure main()
    modifies withdrawAddr, withdrawAmt, withdrawCalled, bal_SimpleTest, __balance, owner_SimpleTest, fallbackSucceeded, fallbackAddr, fallbackAmt, ownerBal;
{
    var contract : Ref;
    var addr : Ref;
    var amt : int;

    assume(owner != contract);

    call SimpleTest_SimpleTest(contract, owner, 0);

    while(*) {
        call ownerBal := getBal(contract, owner, 0);

        havoc addr;
        havoc amt;

        if(*) {
            call deposit_SimpleTest(contract, owner, amt);
        }
        else {
            call withdraw_SimpleTest(contract, owner, 0, amt);
        }
    }
}

procedure ULTIMATE.start()
    modifies withdrawAddr, withdrawAmt, withdrawCalled, bal_SimpleTest, __balance, owner_SimpleTest, fallbackSucceeded, fallbackAddr, fallbackAmt, ownerBal;
{
    withdrawCalled := false;
    fallbackSucceeded := false;
    call main();
}
