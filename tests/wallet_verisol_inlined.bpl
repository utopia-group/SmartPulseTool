// #LTLProperty: []((AP(withdrawCalled == true) && AP(amt_s50 <= M_Ref_int[balance_SimpleTest[this]][msgsender_MSG])) ==> <>(AP(withdrawSuccess == true)))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique SimpleTest: ContractName;
// function ConstantToRef(x: int) returns (ret: Ref);
// function keccak256(x: int) returns (ret: int);
// function abiEncodePacked1(x: int) returns (ret: int);
// function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
// function abiEncodePacked2(x: int, y: int) returns (ret: int);
// function abiEncodePacked1R(x: Ref) returns (ret: int);
// function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var Length: [Ref]int;

function { :smtdefined "((as const (Array Int Int)) 0)" } ~Ref_int_init() returns (out : [Ref]int);

procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref)
  modifies Alloc;
{
  havoc newRef;
  assume ((Alloc[newRef]) == (false));
  Alloc[newRef] := true;
  assume ((newRef) != (null));
}

// procedure {:inline 1} HavocAllocMany();
// implementation HavocAllocMany()
// {
//   var oldAlloc: [Ref]bool;
//   oldAlloc := Alloc;
//   havoc Alloc;
//   assume (forall  __i__0_0:Ref ::  ((oldAlloc[__i__0_0]) ==> (Alloc[__i__0_0])));
// }

// procedure boogie_si_record_sol2Bpl_int(x: int);
// procedure boogie_si_record_sol2Bpl_ref(x: Ref);
// procedure boogie_si_record_sol2Bpl_bool(x: bool);

// axiom(forall  __i__0_0:int, __i__0_1:int :: {ConstantToRef(__i__0_0), ConstantToRef(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((ConstantToRef(__i__0_0)) != (ConstantToRef(__i__0_1)))));

// axiom(forall  __i__0_0:int, __i__0_1:int :: {keccak256(__i__0_0), keccak256(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((keccak256(__i__0_0)) != (keccak256(__i__0_1)))));

// axiom(forall  __i__0_0:int, __i__0_1:int :: {abiEncodePacked1(__i__0_0), abiEncodePacked1(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((abiEncodePacked1(__i__0_0)) != (abiEncodePacked1(__i__0_1)))));

// axiom(forall  __i__0_0:[Ref]int ::  ((exists __i__0_1:Ref ::  ((__i__0_0[__i__0_1]) != (0))) || ((_SumMapping_VeriSol(__i__0_0)) == (0))));

// axiom(forall  __i__0_0:[Ref]int, __i__0_1:Ref, __i__0_2:int ::  ((_SumMapping_VeriSol(__i__0_0[__i__0_1 := __i__0_2])) == (((_SumMapping_VeriSol(__i__0_0)) - (__i__0_0[__i__0_1])) + (__i__0_2))));

// axiom(forall  __i__0_0:int, __i__0_1:int, __i__1_0:int, __i__1_1:int :: {abiEncodePacked2(__i__0_0, __i__1_0), abiEncodePacked2(__i__0_1, __i__1_1)} ((((__i__0_0) == (__i__0_1)) && ((__i__1_0) == (__i__1_1))) || ((abiEncodePacked2(__i__0_0, __i__1_0)) != (abiEncodePacked2(__i__0_1, __i__1_1)))));

// axiom(forall  __i__0_0:Ref, __i__0_1:Ref :: {abiEncodePacked1R(__i__0_0), abiEncodePacked1R(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((abiEncodePacked1R(__i__0_0)) != (abiEncodePacked1R(__i__0_1)))));

// axiom(forall  __i__0_0:Ref, __i__0_1:Ref, __i__1_0:int, __i__1_1:int :: {abiEncodePacked2R(__i__0_0, __i__1_0), abiEncodePacked2R(__i__0_1, __i__1_1)} ((((__i__0_0) == (__i__0_1)) && ((__i__1_0) == (__i__1_1))) || ((abiEncodePacked2R(__i__0_0, __i__1_0)) != (abiEncodePacked2R(__i__0_1, __i__1_1)))));

procedure {:inline 1} SimpleTest_SimpleTest_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
  modifies balance_SimpleTest, Alloc;
{
  var __var_1: Ref;
  // start of initialization
  assume ((msgsender_MSG) != (null));
  // Make array/mapping vars distinct for balance
  call __var_1 := FreshRefGenerator();
  balance_SimpleTest[this] := __var_1;
  // Initialize Integer mapping balance
  assume (M_Ref_int[balance_SimpleTest[this]] == ~Ref_int_init());
  // assume (forall  __i__0_0:Ref ::  ((M_Ref_int[balance_SimpleTest[this]][__i__0_0]) == (0)));
  // end of initialization
}

procedure {:inline 1} SimpleTest_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
  modifies balance_SimpleTest, Alloc;
{
  call SimpleTest_SimpleTest_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

var balance_SimpleTest: [Ref]Ref;
procedure {:public} {:inline 1} deposit_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
  modifies M_Ref_int;
{
  assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\wallet.sol"} {:sourceLine 8} (true);
  assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\wallet.sol"} {:sourceLine 9} (true);
  assume ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (0));
  assume ((msgvalue_MSG) >= (0));
  M_Ref_int[balance_SimpleTest[this]][msgsender_MSG] := (M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) + (msgvalue_MSG);
  // call  {:cexpr "balance[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]);
}

procedure {:public} {:inline 1} withdraw_SimpleTest(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s50: int)
  modifies M_Ref_int;
{
  assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\wallet.sol"} {:sourceLine 12} (true);
  assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\wallet.sol"} {:sourceLine 13} (true);
  assume ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (0));
  assume ((amt_s50) >= (0));
  if ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (amt_s50)) {
    assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\wallet.sol"} {:sourceLine 13} (true);
    assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\wallet.sol"} {:sourceLine 14} (true);
    assume ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (0));
    assume ((amt_s50) >= (0));
    M_Ref_int[balance_SimpleTest[this]][msgsender_MSG] := (M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) - (amt_s50);
    // call  {:cexpr "balance[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]);
    assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\wallet.sol"} {:sourceLine 15} (true);
  }
}

var withdrawCalled: bool;
var withdrawSuccess: bool;
var amt_s50: int;
var this: Ref;
var msgsender_MSG: Ref;

procedure ULTIMATE.start()
  modifies balance_SimpleTest, Alloc, M_Ref_int, withdrawCalled, amt_s50, withdrawSuccess, this, msgsender_MSG;
{
  withdrawCalled := false;
  withdrawSuccess := false;
    call main();
}

procedure main()
  modifies balance_SimpleTest, Alloc, M_Ref_int, withdrawCalled, amt_s50, withdrawSuccess, this, msgsender_MSG;
{
  var choice: int;
  var msgvalue_MSG: int;
  var __var_1: Ref;
  assume ((DType[this]) == (SimpleTest));

  havoc this;

  havoc msgsender_MSG;

  //call SimpleTest_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
  // start of initialization
  assume ((msgsender_MSG) != (null));
  // Make array/mapping vars distinct for balance
  //call __var_1 := FreshRefGenerator();
  havoc __var_1;
  assume ((Alloc[__var_1]) == (false));
  Alloc[__var_1] := true;
  assume ((__var_1) != (null));
  balance_SimpleTest[this] := __var_1;
  // Initialize Integer mapping balance
  assume (M_Ref_int[balance_SimpleTest[this]] == ~Ref_int_init());
  // assume (forall  __i__0_0:Ref ::  ((M_Ref_int[balance_SimpleTest[this]][__i__0_0]) == (0)));
  // end of initialization
  while (true)
  {
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc amt_s50;
    if ((choice) == (1)) {
      // call deposit_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
      assume ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (0));
      assume ((msgvalue_MSG) >= (0));
      M_Ref_int[balance_SimpleTest[this]][msgsender_MSG] := (M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) + (msgvalue_MSG);
    } else if ((choice) == (2)) {
      // call withdraw_SimpleTest(this, msgsender_MSG, msgvalue_MSG, amt_s50);
      withdrawCalled := true;
      withdrawCalled := false;
      assume ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (0));
      assume ((amt_s50) >= (0));
      if ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (amt_s50)) {
        assume ((M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) >= (0));
        assume ((amt_s50) >= (0));
        M_Ref_int[balance_SimpleTest[this]][msgsender_MSG] := (M_Ref_int[balance_SimpleTest[this]][msgsender_MSG]) - (amt_s50);
        withdrawSuccess :=true;
        withdrawSuccess := false;
      }
    }
  }
}

// procedure CorralChoice_SimpleTest(this: Ref);
// implementation CorralChoice_SimpleTest(this: Ref)
// {
//   var msgsender_MSG: Ref;
//   var msgvalue_MSG: int;
//   var choice: int;
//   var amt_s50: int;
//   havoc msgsender_MSG;
//   havoc msgvalue_MSG;
//   havoc choice;
//   havoc amt_s50;
//   if ((choice) == (1)) {
//     call deposit_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
//   } else if ((choice) == (2)) {
//     call withdraw_SimpleTest(this, msgsender_MSG, msgvalue_MSG, amt_s50);
//   }
// }

// procedure CorralEntry_SimpleTest();
// implementation CorralEntry_SimpleTest()
// {
//   var this: Ref;
//   var msgsender_MSG: Ref;
//   var msgvalue_MSG: int;
//   assume ((DType[this]) == (SimpleTest));
//   call SimpleTest_SimpleTest(this, msgsender_MSG, msgvalue_MSG);
//   while (true)
//   {
//     call CorralChoice_SimpleTest(this);
//   }
// }


