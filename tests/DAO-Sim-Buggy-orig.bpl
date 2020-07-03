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
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var Length: [Ref]int;
procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref);
implementation FreshRefGenerator() returns (newRef: Ref)
{
havoc newRef;
assume ((Alloc[newRef]) == (false));
Alloc[newRef] := true;
assume ((newRef) != (null));
}

procedure {:inline 1} HavocAllocMany();
implementation HavocAllocMany()
{
var oldAlloc: [Ref]bool;
oldAlloc := Alloc;
havoc Alloc;
assume (forall  __i__0_0:Ref ::  ((oldAlloc[__i__0_0]) ==> (Alloc[__i__0_0])));
}

procedure boogie_si_record_sol2Bpl_int(x: int);
procedure boogie_si_record_sol2Bpl_ref(x: Ref);
procedure boogie_si_record_sol2Bpl_bool(x: bool);

axiom(forall  __i__0_0:int, __i__0_1:int :: {ConstantToRef(__i__0_0), ConstantToRef(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((ConstantToRef(__i__0_0)) != (ConstantToRef(__i__0_1)))));

axiom(forall  __i__0_0:int, __i__0_1:int :: {keccak256(__i__0_0), keccak256(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((keccak256(__i__0_0)) != (keccak256(__i__0_1)))));

axiom(forall  __i__0_0:int, __i__0_1:int :: {abiEncodePacked1(__i__0_0), abiEncodePacked1(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((abiEncodePacked1(__i__0_0)) != (abiEncodePacked1(__i__0_1)))));

axiom(forall  __i__0_0:[Ref]int ::  ((exists __i__0_1:Ref ::  ((__i__0_0[__i__0_1]) != (0))) || ((_SumMapping_VeriSol(__i__0_0)) == (0))));

axiom(forall  __i__0_0:[Ref]int, __i__0_1:Ref, __i__0_2:int ::  ((_SumMapping_VeriSol(__i__0_0[__i__0_1 := __i__0_2])) == (((_SumMapping_VeriSol(__i__0_0)) - (__i__0_0[__i__0_1])) + (__i__0_2))));

axiom(forall  __i__0_0:int, __i__0_1:int, __i__1_0:int, __i__1_1:int :: {abiEncodePacked2(__i__0_0, __i__1_0), abiEncodePacked2(__i__0_1, __i__1_1)} ((((__i__0_0) == (__i__0_1)) && ((__i__1_0) == (__i__1_1))) || ((abiEncodePacked2(__i__0_0, __i__1_0)) != (abiEncodePacked2(__i__0_1, __i__1_1)))));

axiom(forall  __i__0_0:Ref, __i__0_1:Ref :: {abiEncodePacked1R(__i__0_0), abiEncodePacked1R(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((abiEncodePacked1R(__i__0_0)) != (abiEncodePacked1R(__i__0_1)))));

axiom(forall  __i__0_0:Ref, __i__0_1:Ref, __i__1_0:int, __i__1_1:int :: {abiEncodePacked2R(__i__0_0, __i__1_0), abiEncodePacked2R(__i__0_1, __i__1_1)} ((((__i__0_0) == (__i__0_1)) && ((__i__1_0) == (__i__1_1))) || ((abiEncodePacked2R(__i__0_0, __i__1_0)) != (abiEncodePacked2R(__i__0_1, __i__1_1)))));
var balance_SimpleDAO: [Ref]int;
var credit_SimpleDAO: [Ref]Ref;
procedure {:inline 1} SimpleDAO_SimpleDAO_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SimpleDAO_SimpleDAO_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
balance_SimpleDAO[this] := 0;
// Make array/mapping vars distinct for credit
call __var_1 := FreshRefGenerator();
credit_SimpleDAO[this] := __var_1;
// Initialize Integer mapping credit
assume (forall  __i__0_0:Ref ::  ((M_Ref_int[credit_SimpleDAO[this]][__i__0_0]) == (0)));
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 7} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 8} (true);
assume ((balance_SimpleDAO[this]) >= (0));
balance_SimpleDAO[this] := 100;
call  {:cexpr "balance"} boogie_si_record_sol2Bpl_int(balance_SimpleDAO[this]);
}

procedure {:constructor} {:public} {:inline 1} SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SimpleDAO_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
call SimpleDAO_SimpleDAO_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s34: Ref, amount_s34: int);
implementation donate_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s34: Ref, amount_s34: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 10} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 11} (true);
assume ((M_Ref_int[credit_SimpleDAO[this]][to_s34]) >= (0));
assume ((amount_s34) >= (0));
M_Ref_int[credit_SimpleDAO[this]][to_s34] := (M_Ref_int[credit_SimpleDAO[this]][to_s34]) + (amount_s34);
call  {:cexpr "credit[to]"} boogie_si_record_sol2Bpl_int(M_Ref_int[credit_SimpleDAO[this]][to_s34]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 12} (true);
assume ((balance_SimpleDAO[this]) >= (0));
assume ((amount_s34) >= (0));
balance_SimpleDAO[this] := (balance_SimpleDAO[this]) + (amount_s34);
call  {:cexpr "balance"} boogie_si_record_sol2Bpl_int(balance_SimpleDAO[this]);
}

procedure {:public} {:inline 1} queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s46: Ref) returns (__ret_0_: int);
implementation queryCredit_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s46: Ref) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 14} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 15} (true);
assume ((M_Ref_int[credit_SimpleDAO[this]][to_s46]) >= (0));
__ret_0_ := M_Ref_int[credit_SimpleDAO[this]][to_s46];
return;
}

procedure {:public} {:inline 1} queryBalance_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
implementation queryBalance_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 17} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 18} (true);
assume ((balance_SimpleDAO[this]) >= (0));
__ret_0_ := balance_SimpleDAO[this];
return;
}

procedure {:public} {:inline 1} withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation withdraw_SimpleDAO(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var amount_s94: int;
var mallory_s94: Ref;
var __var_2: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 20} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 21} (true);
assume ((M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) >= (0));
if ((M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) > (0)) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 21} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 22} (true);
assume ((M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) >= (0));
amount_s94 := M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG];
call  {:cexpr "amount"} boogie_si_record_sol2Bpl_int(amount_s94);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 23} (true);
assume ((balance_SimpleDAO[this]) >= (0));
assume ((amount_s94) >= (0));
balance_SimpleDAO[this] := (balance_SimpleDAO[this]) - (amount_s94);
call  {:cexpr "balance"} boogie_si_record_sol2Bpl_int(balance_SimpleDAO[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 24} (true);
assume ((DType[msgsender_MSG]) == (Mallory));
mallory_s94 := msgsender_MSG;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 25} (true);
assume ((amount_s94) >= (0));
call fallback_Mallory(mallory_s94, this, __var_2, amount_s94);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 26} (true);
assume ((M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) >= (0));
M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG] := 0;
call  {:cexpr "credit[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]);
}
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 28} (true);
assume ((balance_SimpleDAO[this]) >= (0));
assume ((balance_SimpleDAO[this]) >= (0));
assume ((M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]) >= (0));
assume (((balance_SimpleDAO[this]) - (M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG])) >= (0));
assume ((old((balance_SimpleDAO[this]) - (M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]))) >= (0));
assert ((balance_SimpleDAO[this]) == (old((balance_SimpleDAO[this]) - (M_Ref_int[credit_SimpleDAO[this]][msgsender_MSG]))));
}

var dao_Mallory: [Ref]Ref;
var count_Mallory: [Ref]int;
var balance_Mallory: [Ref]int;
procedure {:inline 1} Mallory_Mallory_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref);
implementation Mallory_Mallory_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref)
{
var __var_3: Ref;
var __var_4: int;
var __var_5: int;
var __var_6: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
count_Mallory[this] := 0;
balance_Mallory[this] := 0;
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 36} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 37} (true);
assume ((count_Mallory[this]) >= (0));
count_Mallory[this] := 0;
call  {:cexpr "count"} boogie_si_record_sol2Bpl_int(count_Mallory[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 38} (true);
assume ((DType[daoAddr_s149]) == (SimpleDAO));
__var_3 := daoAddr_s149;
dao_Mallory[this] := __var_3;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 39} (true);
assume ((__var_4) >= (0));
__var_6 := this;
call __var_4 := queryCredit_SimpleDAO(dao_Mallory[this], this, __var_5, __var_6);
assume ((__var_4) >= (0));
assume ((__var_4) == (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 40} (true);
assume ((balance_Mallory[this]) >= (0));
balance_Mallory[this] := 1;
call  {:cexpr "balance"} boogie_si_record_sol2Bpl_int(balance_Mallory[this]);
}

procedure {:constructor} {:public} {:inline 1} Mallory_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref);
implementation Mallory_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, daoAddr_s149: Ref)
{
var __var_3: Ref;
var __var_4: int;
var __var_5: int;
var __var_6: Ref;
call Mallory_Mallory_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, daoAddr_s149);
}

procedure {:public} {:inline 1} fallback_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s178: int);
implementation fallback_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amount_s178: int)
{
var __var_7: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 42} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 43} (true);
assume ((amount_s178) >= (0));
assume ((amount_s178) >= (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 44} (true);
assume ((balance_Mallory[this]) >= (0));
assume ((amount_s178) >= (0));
balance_Mallory[this] := (balance_Mallory[this]) + (amount_s178);
call  {:cexpr "balance"} boogie_si_record_sol2Bpl_int(balance_Mallory[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 45} (true);
assume ((count_Mallory[this]) >= (0));
if ((count_Mallory[this]) < (3)) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 45} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 46} (true);
assume ((count_Mallory[this]) >= (0));
count_Mallory[this] := (count_Mallory[this]) + (1);
call  {:cexpr "count"} boogie_si_record_sol2Bpl_int(count_Mallory[this]);
assume ((count_Mallory[this]) >= (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 47} (true);
call withdraw_SimpleDAO(dao_Mallory[this], this, __var_7);
}
}

procedure {:public} {:inline 1} donate_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation donate_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_8: int;
var __var_9: Ref;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 50} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 51} (true);
__var_9 := this;
assume ((balance_Mallory[this]) >= (0));
call donate_SimpleDAO(dao_Mallory[this], this, __var_8, __var_9, balance_Mallory[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\DAO-Sim-Buggy.sol"} {:sourceLine 52} (true);
assume ((balance_Mallory[this]) >= (0));
assume ((balance_Mallory[this]) >= (0));
balance_Mallory[this] := (balance_Mallory[this]) - (balance_Mallory[this]);
call  {:cexpr "balance"} boogie_si_record_sol2Bpl_int(balance_Mallory[this]);
}

procedure {:public} {:inline 1} getJackpot_Mallory(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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
assume ((balance_Mallory[this]) >= (0));
__ret_0_ := balance_Mallory[this];
return;
}

procedure BoogieEntry_SimpleDAO();
implementation BoogieEntry_SimpleDAO()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s34: Ref;
var amount_s34: int;
var to_s46: Ref;
var __ret_0_queryCredit: int;
var __ret_0_queryBalance: int;
assume ((DType[this]) == (SimpleDAO));
call SimpleDAO_SimpleDAO(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s34;
havoc amount_s34;
havoc to_s46;
havoc __ret_0_queryCredit;
havoc __ret_0_queryBalance;
if ((choice) == (1)) {
call donate_SimpleDAO(this, msgsender_MSG, msgvalue_MSG, to_s34, amount_s34);
} else if ((choice) == (2)) {
call __ret_0_queryCredit := queryCredit_SimpleDAO(this, msgsender_MSG, msgvalue_MSG, to_s46);
} else if ((choice) == (3)) {
call __ret_0_queryBalance := queryBalance_SimpleDAO(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call withdraw_SimpleDAO(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure BoogieEntry_Mallory();
implementation BoogieEntry_Mallory()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_queryBalance: int;
var daoAddr_s149: Ref;
var amount_s178: int;
assume ((DType[this]) == (Mallory));
call Mallory_Mallory(this, msgsender_MSG, msgvalue_MSG, daoAddr_s149);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_queryBalance;
havoc daoAddr_s149;
havoc amount_s178;
if ((choice) == (1)) {
call __ret_0_queryBalance := queryBalance_Mallory(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call donate_Mallory(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call getJackpot_Mallory(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure CorralChoice_SimpleDAO(this: Ref);
implementation CorralChoice_SimpleDAO(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var to_s34: Ref;
var amount_s34: int;
var to_s46: Ref;
var __ret_0_queryCredit: int;
var __ret_0_queryBalance: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc to_s34;
havoc amount_s34;
havoc to_s46;
havoc __ret_0_queryCredit;
havoc __ret_0_queryBalance;
if ((choice) == (1)) {
call donate_SimpleDAO(this, msgsender_MSG, msgvalue_MSG, to_s34, amount_s34);
} else if ((choice) == (2)) {
call __ret_0_queryCredit := queryCredit_SimpleDAO(this, msgsender_MSG, msgvalue_MSG, to_s46);
} else if ((choice) == (3)) {
call __ret_0_queryBalance := queryBalance_SimpleDAO(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call withdraw_SimpleDAO(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_SimpleDAO();
implementation CorralEntry_SimpleDAO()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((DType[this]) == (SimpleDAO));
call SimpleDAO_SimpleDAO(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_SimpleDAO(this);
}
}

procedure CorralChoice_Mallory(this: Ref);
implementation CorralChoice_Mallory(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_queryBalance: int;
var daoAddr_s149: Ref;
var amount_s178: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_queryBalance;
havoc daoAddr_s149;
havoc amount_s178;
if ((choice) == (1)) {
call __ret_0_queryBalance := queryBalance_Mallory(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call donate_Mallory(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call getJackpot_Mallory(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_Mallory();
implementation CorralEntry_Mallory()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var daoAddr_s149: Ref;
assume ((DType[this]) == (Mallory));
call Mallory_Mallory(this, msgsender_MSG, msgvalue_MSG, daoAddr_s149);
while (true)
{
call CorralChoice_Mallory(this);
}
}


