type Ref;
type ContractName;
const unique null: Ref;
const unique SimpleDAO: ContractName;
const unique Mallory: ContractName;
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

procedure {:inline 1} HavocAllocMany();
modifies Alloc;
/*implementation HavocAllocMany()
{
var oldAlloc: [Ref]bool;
oldAlloc := Alloc;
havoc Alloc;
assume (forall  __i__0_0:Ref ::  ((oldAlloc[__i__0_0]) ==> (Alloc[__i__0_0])));
}*/

var balance_SimpleDAO: [Ref]int;
var credit_SimpleDAO: [Ref]Ref;
procedure {:inline 1} SimpleDAO_SimpleDAO_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Alloc, M_Ref_int, credit_SimpleDAO, balance_SimpleDAO;
implementation SimpleDAO_SimpleDAO_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
// start of initialization
balance_SimpleDAO[this] := 0;
// Make array/mapping vars distinct for credit
call __var_1 := FreshRefGenerator();
credit_SimpleDAO[this] := __var_1;
// Initialize Integer mapping credit
M_Ref_int[credit_SimpleDAO[this]] := zero();
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 7} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 8} (true);
balance_SimpleDAO[this] := 100;
}

procedure {:constructor} {:public} {:inline 1} SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Alloc, M_Ref_int, credit_SimpleDAO, balance_SimpleDAO;
implementation SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
call SimpleDAO_SimpleDAO_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s34: Ref, amount_s34: int);
modifies M_Ref_int, balance_SimpleDAO;
implementation donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s34: Ref, amount_s34: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 10} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 11} (true);
M_Ref_int[credit_SimpleDAO[this]][to_s34] := (M_Ref_int[credit_SimpleDAO[this]][to_s34]) + (amount_s34);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 12} (true);
balance_SimpleDAO[this] := (balance_SimpleDAO[this]) + (amount_s34);
}

procedure {:public} {:inline 1} queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s46: Ref) returns (__ret_0_: int);
implementation queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s46: Ref) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 14} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 15} (true);
__ret_0_ := M_Ref_int[credit_SimpleDAO[this]][to_s46];
return;
}

procedure {:public} {:inline 1} queryBalance_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
implementation queryBalance_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 17} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 18} (true);
__ret_0_ := balance_SimpleDAO[this];
return;
}

procedure {:public} {:inline 1} withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies M_Ref_int, balance_SimpleDAO, balance_Mallory, count_Mallory;
implementation withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var amount_s94: int;
var mallory_s94: Ref;
var __var_2: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 20} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 21} (true);
if ((M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) > (0)) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 21} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 22} (true);
amount_s94 := M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG];
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 23} (true);
balance_SimpleDAO[this] := (balance_SimpleDAO[this]) - (amount_s94);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 24} (true);
assume ((DType[msgsender_MSG]) == (Mallory));
mallory_s94 := msgsender_MSG;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 25} (true);
call fallback_Mallory(mallory_s94, this, __var_2, amount_s94);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 26} (true);
M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG] := 0;
}
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 28} (true);
assert ((balance_SimpleDAO[this]) == (old((balance_SimpleDAO[this]) - (M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]))));
}

var dao_Mallory: [Ref]Ref;
var count_Mallory: [Ref]int;
var balance_Mallory: [Ref]int;
procedure {:inline 1} Mallory_Mallory_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref);
modifies count_Mallory, balance_Mallory, dao_Mallory;
implementation Mallory_Mallory_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref)
{
var __var_3: Ref;
var __var_4: int;
var __var_5: int;
var __var_6: Ref;
// start of initialization
count_Mallory[this] := 0;
balance_Mallory[this] := 0;
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 36} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 37} (true);
count_Mallory[this] := 0;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 38} (true);
assume ((DType[daoAddr_s149]) == (SimpleDAO));
__var_3 := daoAddr_s149;
dao_Mallory[this] := __var_3;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 39} (true);
__var_6 := this;
call __var_4 := queryCredit_SimpleDAO(dao_Mallory[this], this, __var_5, __var_6);
assume ((__var_4) == (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 40} (true);
balance_Mallory[this] := 1;
}

procedure {:constructor} {:public} {:inline 1} Mallory_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref);
modifies count_Mallory, balance_Mallory, dao_Mallory;
implementation Mallory_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref)
{
var __var_3: Ref;
var __var_4: int;
var __var_5: int;
var __var_6: Ref;
call Mallory_Mallory_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, daoAddr_s149);
}

procedure {:public} {:inline 1} fallback_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s178: int);
modifies M_Ref_int, balance_SimpleDAO, balance_Mallory, count_Mallory;
implementation fallback_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s178: int)
{
var __var_7: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 42} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 43} (true);
assume ((amount_s178) >= (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 44} (true);
balance_Mallory[this] := (balance_Mallory[this]) + (amount_s178);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 45} (true);
if ((count_Mallory[this]) < (3)) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 45} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 46} (true);
count_Mallory[this] := (count_Mallory[this]) + (1);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 47} (true);
call withdraw_SimpleDAO(dao_Mallory[this], this, __var_7);
}
}

procedure {:public} {:inline 1} donate_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies balance_Mallory;
modifies M_Ref_int, balance_SimpleDAO;
implementation donate_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_8: int;
var __var_9: Ref;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 50} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 51} (true);
__var_9 := this;
call donate_SimpleDAO(dao_Mallory[this], this, __var_8, __var_9, balance_Mallory[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 52} (true);
balance_Mallory[this] := (balance_Mallory[this]) - (balance_Mallory[this]);
}

procedure {:public} {:inline 1} getJackpot_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies M_Ref_int, balance_SimpleDAO, balance_Mallory, count_Mallory;
implementation getJackpot_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_10: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 54} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 55} (true);
call withdraw_SimpleDAO(dao_Mallory[this], this, __var_10);
}

procedure {:public} {:inline 1} queryBalance_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
implementation queryBalance_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 57} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 58} (true);
__ret_0_ := balance_Mallory[this];
return;
}

