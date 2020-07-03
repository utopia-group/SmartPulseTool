type Ref;
type ContractName;
const unique null: Ref;
const unique ERC20: ContractName;
const unique IERC20: ContractName;
const unique VeriSol: ContractName;
const unique SafeMath: ContractName;
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
var M_Ref_Ref: [Ref][Ref]Ref;
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
var _balances_ERC20: [Ref]Ref;
var _allowances_ERC20: [Ref]Ref;
var _totalSupply_ERC20: [Ref]int;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
implementation ERC20_ERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
_totalSupply_ERC20[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_2 := FreshRefGenerator();
_balances_ERC20[this] := __var_2;
// Initialize Integer mapping _balances
assume (forall  __i__0_0:Ref ::  ((M_Ref_int[_balances_ERC20[this]][__i__0_0]) == (0)));
// Make array/mapping vars distinct for _allowances
call __var_3 := FreshRefGenerator();
_allowances_ERC20[this] := __var_3;
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 28} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 29} (true);
__var_1 := null;
assume ((msgsender_MSG) != (__var_1));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 30} (true);
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((totalSupply_s44) >= (0));
_totalSupply_ERC20[this] := totalSupply_s44;
call  {:cexpr "_totalSupply"} boogie_si_record_sol2Bpl_int(_totalSupply_ERC20[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 31} (true);
assume ((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((totalSupply_s44) >= (0));
M_Ref_int[_balances_ERC20[this]][msgsender_MSG] := totalSupply_s44;
call  {:cexpr "_balances[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[_balances_ERC20[this]][msgsender_MSG]);
}

procedure {:constructor} {:public} {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
call IERC20_IERC20_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
call ERC20_ERC20_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
}

procedure {:public} {:inline 1} totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
implementation totalSupply_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 37} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 38} (true);
assume ((_totalSupply_ERC20[this]) >= (0));
__ret_0_ := _totalSupply_ERC20[this];
return;
}

procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int);
implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 44} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 45} (true);
assume ((M_Ref_int[_balances_ERC20[this]][account_s64]) >= (0));
__ret_0_ := M_Ref_int[_balances_ERC20[this]][account_s64];
return;
}

procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool);
implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool)
{
var dbgRecipient_s118: Ref;
var dbgSender_s118: Ref;
var dbgAmount_s118: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 56} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 59} (true);
dbgRecipient_s118 := recipient_s119;
call  {:cexpr "dbgRecipient"} boogie_si_record_sol2Bpl_ref(dbgRecipient_s118);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 60} (true);
dbgSender_s118 := msgsender_MSG;
call  {:cexpr "dbgSender"} boogie_si_record_sol2Bpl_ref(dbgSender_s118);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 61} (true);
assume ((amount_s119) >= (0));
dbgAmount_s118 := amount_s119;
call  {:cexpr "dbgAmount"} boogie_si_record_sol2Bpl_int(dbgAmount_s118);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 63} (true);
assume ((amount_s119) >= (0));
call _transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s119, amount_s119);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 65} (true);
assume ((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[_balances_ERC20[this]][recipient_s119]) >= (0));
assume (((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int[_balances_ERC20[this]][recipient_s119])) >= (0));
assume ((old((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int[_balances_ERC20[this]][recipient_s119]))) >= (0));
assume ((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[_balances_ERC20[this]][recipient_s119]) >= (0));
assume (((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int[_balances_ERC20[this]][recipient_s119])) >= (0));
assert ((old((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int[_balances_ERC20[this]][recipient_s119]))) == ((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int[_balances_ERC20[this]][recipient_s119])));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 69} (true);
__ret_0_ := true;
return;
}

procedure {:inline 1} _transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s179: Ref, recipient_s179: Ref, amount_s179: int);
implementation _transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s179: Ref, recipient_s179: Ref, amount_s179: int)
{
var __var_4: Ref;
var __var_5: Ref;
var __var_6: int;
var __var_7: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 86} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 87} (true);
__var_4 := null;
assume ((sender_s179) != (__var_4));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 88} (true);
__var_5 := null;
assume ((recipient_s179) != (__var_5));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 89} (true);
assume ((M_Ref_int[_balances_ERC20[this]][sender_s179]) >= (0));
assume ((amount_s179) >= (0));
assume ((M_Ref_int[_balances_ERC20[this]][sender_s179]) >= (amount_s179));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 91} (true);
assume ((M_Ref_int[_balances_ERC20[this]][sender_s179]) >= (0));
assume ((M_Ref_int[_balances_ERC20[this]][sender_s179]) >= (0));
assume ((amount_s179) >= (0));
call __var_6 := sub_SafeMath(this, this, msgvalue_MSG, M_Ref_int[_balances_ERC20[this]][sender_s179], amount_s179);
M_Ref_int[_balances_ERC20[this]][sender_s179] := __var_6;
assume ((__var_6) >= (0));
call  {:cexpr "_balances[sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[_balances_ERC20[this]][sender_s179]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 92} (true);
assume ((M_Ref_int[_balances_ERC20[this]][recipient_s179]) >= (0));
assume ((M_Ref_int[_balances_ERC20[this]][recipient_s179]) >= (0));
assume ((amount_s179) >= (0));
call __var_7 := add_SafeMath(this, this, msgvalue_MSG, M_Ref_int[_balances_ERC20[this]][recipient_s179], amount_s179);
M_Ref_int[_balances_ERC20[this]][recipient_s179] := __var_7;
assume ((__var_7) >= (0));
call  {:cexpr "_balances[recipient]"} boogie_si_record_sol2Bpl_int(M_Ref_int[_balances_ERC20[this]][recipient_s179]);
}

procedure {:public} {:inline 1} checkInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation checkInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 96} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 97} (true);
assume ((_totalSupply_ERC20[this]) >= (0));
assume ((_SumMapping_VeriSol(M_Ref_int[_balances_ERC20[this]])) >= (0));
assert ((_totalSupply_ERC20[this]) == (_SumMapping_VeriSol(M_Ref_int[_balances_ERC20[this]])));
}

procedure {:inline 1} contractInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation IERC20_IERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

procedure {:inline 1} IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call IERC20_IERC20_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
procedure {:public} {:inline 1} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s222: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s231: Ref, amount_s231: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s240: Ref, spender_s240: Ref) returns (__ret_0_: int);
procedure {:public} {:inline 1} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s249: Ref, amount_s249: int) returns (__ret_0_: bool);
procedure {:public} {:inline 1} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s260: Ref, recipient_s260: Ref, amount_s260: int) returns (__ret_0_: bool);
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SafeMath_SafeMath_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
// end of initialization
}

procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SafeMath_SafeMath_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:inline 1} add_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s340: int, b_s340: int) returns (__ret_0_: int);
implementation add_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s340: int, b_s340: int) returns (__ret_0_: int)
{
var c_s339: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 26} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 27} (true);
assume ((a_s340) >= (0));
assume ((b_s340) >= (0));
assume (((a_s340) + (b_s340)) >= (0));
c_s339 := (a_s340) + (b_s340);
call  {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s339);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 28} (true);
assume ((c_s339) >= (0));
assume ((a_s340) >= (0));
assume ((c_s339) >= (a_s340));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 30} (true);
assume ((c_s339) >= (0));
__ret_0_ := c_s339;
return;
}

procedure {:inline 1} sub_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s365: int, b_s365: int) returns (__ret_0_: int);
implementation sub_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s365: int, b_s365: int) returns (__ret_0_: int)
{
var c_s364: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 42} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 43} (true);
assume ((b_s365) >= (0));
assume ((a_s365) >= (0));
assume ((b_s365) <= (a_s365));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 44} (true);
assume ((a_s365) >= (0));
assume ((b_s365) >= (0));
assume (((a_s365) - (b_s365)) >= (0));
c_s364 := (a_s365) - (b_s365);
call  {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s364);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 46} (true);
assume ((c_s364) >= (0));
__ret_0_ := c_s364;
return;
}

procedure {:inline 1} mul_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s399: int, b_s399: int) returns (__ret_0_: int);
implementation mul_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s399: int, b_s399: int) returns (__ret_0_: int)
{
var c_s398: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 58} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 62} (true);
assume ((a_s399) >= (0));
if ((a_s399) == (0)) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 62} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 63} (true);
__ret_0_ := 0;
return;
}
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 66} (true);
assume ((a_s399) >= (0));
assume ((b_s399) >= (0));
assume (((a_s399) * (b_s399)) >= (0));
c_s398 := (a_s399) * (b_s399);
call  {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s398);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 67} (true);
assume ((c_s398) >= (0));
assume ((a_s399) >= (0));
assume (((c_s398) div (a_s399)) >= (0));
assume ((b_s399) >= (0));
assume (((c_s398) div (a_s399)) == (b_s399));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 69} (true);
assume ((c_s398) >= (0));
__ret_0_ := c_s398;
return;
}

procedure {:inline 1} div_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s424: int, b_s424: int) returns (__ret_0_: int);
implementation div_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s424: int, b_s424: int) returns (__ret_0_: int)
{
var c_s423: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 83} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 85} (true);
assume ((b_s424) >= (0));
assume ((b_s424) > (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 86} (true);
assume ((a_s424) >= (0));
assume ((b_s424) >= (0));
assume (((a_s424) div (b_s424)) >= (0));
c_s423 := (a_s424) div (b_s424);
call  {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s423);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 89} (true);
assume ((c_s423) >= (0));
__ret_0_ := c_s423;
return;
}

procedure {:inline 1} mod_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s445: int, b_s445: int) returns (__ret_0_: int);
implementation mod_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s445: int, b_s445: int) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 103} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 104} (true);
assume ((b_s445) >= (0));
assume ((b_s445) != (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 105} (true);
assume ((a_s445) >= (0));
assume ((b_s445) >= (0));
assume (((a_s445) mod (b_s445)) >= (0));
__ret_0_ := (a_s445) mod (b_s445);
return;
}

procedure BoogieEntry_ERC20();
implementation BoogieEntry_ERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s64: Ref;
var __ret_0_balanceOf: int;
var recipient_s119: Ref;
var amount_s119: int;
var __ret_0_transfer: bool;
var owner_s240: Ref;
var spender_s240: Ref;
var __ret_0_allowance: int;
var spender_s249: Ref;
var amount_s249: int;
var __ret_0_approve: bool;
var sender_s260: Ref;
var recipient_s260: Ref;
var amount_s260: int;
var __ret_0_transferFrom: bool;
var totalSupply_s44: int;
assume ((DType[this]) == (ERC20));
call ERC20_ERC20(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
while (true)
  invariant (_totalSupply_ERC20[this]) == (_SumMapping_VeriSol(M_Ref_int[_balances_ERC20[this]]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s64;
havoc __ret_0_balanceOf;
havoc recipient_s119;
havoc amount_s119;
havoc __ret_0_transfer;
havoc owner_s240;
havoc spender_s240;
havoc __ret_0_allowance;
havoc spender_s249;
havoc amount_s249;
havoc __ret_0_approve;
havoc sender_s260;
havoc recipient_s260;
havoc amount_s260;
havoc __ret_0_transferFrom;
havoc totalSupply_s44;
if ((choice) == (1)) {
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s64);
} else if ((choice) == (3)) {
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s119, amount_s119);
} else if ((choice) == (4)) {
call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s240, spender_s240);
} else if ((choice) == (5)) {
call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s249, amount_s249);
} else if ((choice) == (6)) {
call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s260, recipient_s260, amount_s260);
} else if ((choice) == (7)) {
call checkInvariant_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure BoogieEntry_IERC20();
implementation BoogieEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s222: Ref;
var __ret_0_balanceOf: int;
var recipient_s231: Ref;
var amount_s231: int;
var __ret_0_transfer: bool;
var owner_s240: Ref;
var spender_s240: Ref;
var __ret_0_allowance: int;
var spender_s249: Ref;
var amount_s249: int;
var __ret_0_approve: bool;
var sender_s260: Ref;
var recipient_s260: Ref;
var amount_s260: int;
var __ret_0_transferFrom: bool;
assume (((DType[this]) == (ERC20)) || ((DType[this]) == (IERC20)));
call IERC20_IERC20(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s222;
havoc __ret_0_balanceOf;
havoc recipient_s231;
havoc amount_s231;
havoc __ret_0_transfer;
havoc owner_s240;
havoc spender_s240;
havoc __ret_0_allowance;
havoc spender_s249;
havoc amount_s249;
havoc __ret_0_approve;
havoc sender_s260;
havoc recipient_s260;
havoc amount_s260;
havoc __ret_0_transferFrom;
if ((choice) == (1)) {
call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, account_s222);
} else if ((choice) == (3)) {
call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s231, amount_s231);
} else if ((choice) == (4)) {
call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s240, spender_s240);
} else if ((choice) == (5)) {
call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s249, amount_s249);
} else if ((choice) == (6)) {
call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s260, recipient_s260, amount_s260);
}
}
}

procedure BoogieEntry_SafeMath();
implementation BoogieEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((DType[this]) == (SafeMath));
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
}
}

procedure CorralChoice_ERC20(this: Ref);
implementation CorralChoice_ERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s64: Ref;
var __ret_0_balanceOf: int;
var recipient_s119: Ref;
var amount_s119: int;
var __ret_0_transfer: bool;
var owner_s240: Ref;
var spender_s240: Ref;
var __ret_0_allowance: int;
var spender_s249: Ref;
var amount_s249: int;
var __ret_0_approve: bool;
var sender_s260: Ref;
var recipient_s260: Ref;
var amount_s260: int;
var __ret_0_transferFrom: bool;
var totalSupply_s44: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s64;
havoc __ret_0_balanceOf;
havoc recipient_s119;
havoc amount_s119;
havoc __ret_0_transfer;
havoc owner_s240;
havoc spender_s240;
havoc __ret_0_allowance;
havoc spender_s249;
havoc amount_s249;
havoc __ret_0_approve;
havoc sender_s260;
havoc recipient_s260;
havoc amount_s260;
havoc __ret_0_transferFrom;
havoc totalSupply_s44;
if ((choice) == (1)) {
call __ret_0_totalSupply := totalSupply_ERC20(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call __ret_0_balanceOf := balanceOf_ERC20(this, msgsender_MSG, msgvalue_MSG, account_s64);
} else if ((choice) == (3)) {
call __ret_0_transfer := transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s119, amount_s119);
} else if ((choice) == (4)) {
call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s240, spender_s240);
} else if ((choice) == (5)) {
call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s249, amount_s249);
} else if ((choice) == (6)) {
call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s260, recipient_s260, amount_s260);
} else if ((choice) == (7)) {
call checkInvariant_ERC20(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_ERC20();
implementation CorralEntry_ERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var totalSupply_s44: int;
assume ((DType[this]) == (ERC20));
call ERC20_ERC20(this, msgsender_MSG, msgvalue_MSG, totalSupply_s44);
while (true)
{
call CorralChoice_ERC20(this);
}
}

procedure CorralChoice_IERC20(this: Ref);
implementation CorralChoice_IERC20(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var __ret_0_totalSupply: int;
var account_s222: Ref;
var __ret_0_balanceOf: int;
var recipient_s231: Ref;
var amount_s231: int;
var __ret_0_transfer: bool;
var owner_s240: Ref;
var spender_s240: Ref;
var __ret_0_allowance: int;
var spender_s249: Ref;
var amount_s249: int;
var __ret_0_approve: bool;
var sender_s260: Ref;
var recipient_s260: Ref;
var amount_s260: int;
var __ret_0_transferFrom: bool;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc __ret_0_totalSupply;
havoc account_s222;
havoc __ret_0_balanceOf;
havoc recipient_s231;
havoc amount_s231;
havoc __ret_0_transfer;
havoc owner_s240;
havoc spender_s240;
havoc __ret_0_allowance;
havoc spender_s249;
havoc amount_s249;
havoc __ret_0_approve;
havoc sender_s260;
havoc recipient_s260;
havoc amount_s260;
havoc __ret_0_transferFrom;
if ((choice) == (1)) {
call __ret_0_totalSupply := totalSupply_IERC20(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call __ret_0_balanceOf := balanceOf_IERC20(this, msgsender_MSG, msgvalue_MSG, account_s222);
} else if ((choice) == (3)) {
call __ret_0_transfer := transfer_IERC20(this, msgsender_MSG, msgvalue_MSG, recipient_s231, amount_s231);
} else if ((choice) == (4)) {
call __ret_0_allowance := allowance_IERC20(this, msgsender_MSG, msgvalue_MSG, owner_s240, spender_s240);
} else if ((choice) == (5)) {
call __ret_0_approve := approve_IERC20(this, msgsender_MSG, msgvalue_MSG, spender_s249, amount_s249);
} else if ((choice) == (6)) {
call __ret_0_transferFrom := transferFrom_IERC20(this, msgsender_MSG, msgvalue_MSG, sender_s260, recipient_s260, amount_s260);
}
}

procedure CorralEntry_IERC20();
implementation CorralEntry_IERC20()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume (((DType[this]) == (ERC20)) || ((DType[this]) == (IERC20)));
call IERC20_IERC20(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_IERC20(this);
}
}

procedure CorralChoice_SafeMath(this: Ref);
implementation CorralChoice_SafeMath(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
}

procedure CorralEntry_SafeMath();
implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((DType[this]) == (SafeMath));
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_SafeMath(this);
}
}


