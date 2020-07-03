type Ref;
type ContractName;
const unique null: Ref;
const unique SimpleTest: ContractName;
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
var bal_SimpleTest: [Ref]int;
var owner_SimpleTest: [Ref]Ref;
procedure {:inline 1} SimpleTest_SimpleTest_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SimpleTest_SimpleTest_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
bal_SimpleTest[this] := 0;
owner_SimpleTest[this] := null;
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 10} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 11} (true);
owner_SimpleTest[this] := msgsender_MSG;
call  {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_SimpleTest[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 12} (true);
assume ((bal_SimpleTest[this]) >= (0));
bal_SimpleTest[this] := 0;
call  {:cexpr "bal"} boogie_si_record_sol2Bpl_int(bal_SimpleTest[this]);
}

procedure {:constructor} {:public} {:inline 1} SimpleTest_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SimpleTest_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SimpleTest_SimpleTest_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} deposit_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation deposit_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 15} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 16} (true);
assume ((bal_SimpleTest[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
bal_SimpleTest[this] := (bal_SimpleTest[this]) + (msgvalue_MSG);
call  {:cexpr "bal"} boogie_si_record_sol2Bpl_int(bal_SimpleTest[this]);
}

procedure {:public} {:inline 1} withdraw_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s59: int);
implementation withdraw_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s59: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 19} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 20} (true);
assume ((bal_SimpleTest[this]) >= (0));
assume ((amt_s59) >= (0));
if (((msgsender_MSG) == (owner_SimpleTest[this])) && ((bal_SimpleTest[this]) >= (amt_s59))) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 20} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 21} (true);
assume ((bal_SimpleTest[this]) >= (0));
assume ((amt_s59) >= (0));
bal_SimpleTest[this] := (bal_SimpleTest[this]) - (amt_s59);
call  {:cexpr "bal"} boogie_si_record_sol2Bpl_int(bal_SimpleTest[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\myWallet.sol"} {:sourceLine 22} (true);
}
}

const {:existential true} HoudiniB1_SimpleTest: bool;
const {:existential true} HoudiniB2_SimpleTest: bool;
procedure BoogieEntry_SimpleTest();
implementation BoogieEntry_SimpleTest()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var amt_s59: int;
assume ((DType[this]) == (SimpleTest));
call SimpleTest_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
while (true)
  invariant (HoudiniB1_SimpleTest) ==> ((owner_SimpleTest[this]) == (null));
  invariant (HoudiniB2_SimpleTest) ==> ((owner_SimpleTest[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc amt_s59;
if ((choice) == (1)) {
call deposit_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call withdraw_SimpleTest(this, msgsender_MSG, msgvalue_MSG, amt_s59);
}
}
}

procedure CorralChoice_SimpleTest(this: Ref);
implementation CorralChoice_SimpleTest(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var amt_s59: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc amt_s59;
if ((choice) == (1)) {
call deposit_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call withdraw_SimpleTest(this, msgsender_MSG, msgvalue_MSG, amt_s59);
}
}

procedure CorralEntry_SimpleTest();
implementation CorralEntry_SimpleTest()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((DType[this]) == (SimpleTest));
call SimpleTest_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_SimpleTest(this);
}
}


