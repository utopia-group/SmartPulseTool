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
function { :smtdefined "((as const (Array Int Int)) 0)" } zero() returns (ret: [Ref]int);
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var M_Ref_Ref: [Ref][Ref]Ref;
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

/*procedure {:inline 1} HavocAllocMany();
implementation HavocAllocMany()
{
var oldAlloc: [Ref]bool;
oldAlloc := Alloc;
havoc Alloc;
assume (forall  __i__0_0:Ref ::  ((oldAlloc[__i__0_0]) ==> (Alloc[__i__0_0])));
}*/

var _balances_ERC20: [Ref]Ref;
var _allowances_ERC20: [Ref]Ref;
var _totalSupply_ERC20: [Ref]int;
procedure {:inline 1} ERC20_ERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
modifies Alloc, _allowances_ERC20, M_Ref_int, _totalSupply_ERC20, _balances_ERC20;
implementation ERC20_ERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int)
{
var __var_1: Ref;
var __var_2: Ref;
var __var_3: Ref;
// start of initialization
_totalSupply_ERC20[this] := 0;
// Make array/mapping vars distinct for _balances
call __var_2 := FreshRefGenerator();
_balances_ERC20[this] := __var_2;
// Initialize Integer mapping _balances
M_Ref_int[_balances_ERC20[this]] := zero();
// Make array/mapping vars distinct for _allowances
call __var_3 := FreshRefGenerator();
_allowances_ERC20[this] := __var_3;
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 28} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 29} (true);
__var_1 := null;
assume ((msgsender_MSG) != (__var_1));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 30} (true);
_totalSupply_ERC20[this] := totalSupply_s44;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 31} (true);
M_Ref_int[_balances_ERC20[this]][msgsender_MSG] := totalSupply_s44;
}

procedure {:constructor} {:public} {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, totalSupply_s44: int);
modifies Alloc, _allowances_ERC20, M_Ref_int, _totalSupply_ERC20, _balances_ERC20;
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
__ret_0_ := _totalSupply_ERC20[this];
return;
}

procedure {:public} {:inline 1} balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int);
implementation balanceOf_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s64: Ref) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 44} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 45} (true);
__ret_0_ := M_Ref_int[_balances_ERC20[this]][account_s64];
return;
}

procedure {:public} {:inline 1} transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool);
modifies M_Ref_int;
implementation transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s119: Ref, amount_s119: int) returns (__ret_0_: bool)
{
var dbgRecipient_s118: Ref;
var dbgSender_s118: Ref;
var dbgAmount_s118: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 56} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 59} (true);
dbgRecipient_s118 := recipient_s119;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 60} (true);
dbgSender_s118 := msgsender_MSG;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 61} (true);
dbgAmount_s118 := amount_s119;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 63} (true);
call _transfer_ERC20(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, recipient_s119, amount_s119);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 65} (true);
assert ((old((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int[_balances_ERC20[this]][recipient_s119]))) == ((M_Ref_int[_balances_ERC20[this]][msgsender_MSG]) + (M_Ref_int[_balances_ERC20[this]][recipient_s119])));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 69} (true);
__ret_0_ := true;
return;
}

procedure {:inline 1} _transfer_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s179: Ref, recipient_s179: Ref, amount_s179: int);
modifies M_Ref_int;
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
assume ((M_Ref_int[_balances_ERC20[this]][sender_s179]) >= (amount_s179));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 91} (true);
call __var_6 := sub_SafeMath(this, this, msgvalue_MSG, M_Ref_int[_balances_ERC20[this]][sender_s179], amount_s179);
M_Ref_int[_balances_ERC20[this]][sender_s179] := __var_6;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 92} (true);
call __var_7 := add_SafeMath(this, this, msgvalue_MSG, M_Ref_int[_balances_ERC20[this]][recipient_s179], amount_s179);
M_Ref_int[_balances_ERC20[this]][recipient_s179] := __var_7;
}

procedure {:public} {:inline 1} checkInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation checkInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 96} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\ERC20-simplified.sol"} {:sourceLine 97} (true);
assert ((_totalSupply_ERC20[this]) == (_SumMapping_VeriSol(M_Ref_int[_balances_ERC20[this]])));
}

procedure {:inline 1} contractInvariant_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
procedure {:inline 1} IERC20_IERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation IERC20_IERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
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
c_s339 := (a_s340) + (b_s340);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 28} (true);
assume ((c_s339) >= (a_s340));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 30} (true);
__ret_0_ := c_s339;
return;
}

procedure {:inline 1} sub_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s365: int, b_s365: int) returns (__ret_0_: int);
implementation sub_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s365: int, b_s365: int) returns (__ret_0_: int)
{
var c_s364: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 42} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 43} (true);
assume ((b_s365) <= (a_s365));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 44} (true);
c_s364 := (a_s365) - (b_s365);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 46} (true);
__ret_0_ := c_s364;
return;
}

procedure {:inline 1} mul_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s399: int, b_s399: int) returns (__ret_0_: int);
implementation mul_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s399: int, b_s399: int) returns (__ret_0_: int)
{
var c_s398: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 58} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 62} (true);
if ((a_s399) == (0)) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 62} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 63} (true);
__ret_0_ := 0;
return;
}
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 66} (true);
c_s398 := (a_s399) * (b_s399);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 67} (true);
assume (((c_s398) / (a_s399)) == (b_s399));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 69} (true);
__ret_0_ := c_s398;
return;
}

procedure {:inline 1} div_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s424: int, b_s424: int) returns (__ret_0_: int);
implementation div_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s424: int, b_s424: int) returns (__ret_0_: int)
{
var c_s423: int;
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 83} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 85} (true);
assume ((b_s424) > (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 86} (true);
c_s423 := (a_s424) / (b_s424);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 89} (true);
__ret_0_ := c_s423;
return;
}

procedure {:inline 1} mod_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s445: int, b_s445: int) returns (__ret_0_: int);
implementation mod_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s445: int, b_s445: int) returns (__ret_0_: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 103} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 104} (true);
assume ((b_s445) != (0));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\Test\regressions\.\SafeMath.sol"} {:sourceLine 105} (true);
__ret_0_ := (a_s445) % (b_s445);
return;
}
