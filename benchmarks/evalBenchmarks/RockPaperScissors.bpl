// Prop 1
// LTLProperty: [](!finished(send(from, to, amt), to != owner_RockPaperScissors[from] && to != player1_RockPaperScissors[from] && to != player2_RockPaperScissors[from] || amt != old(Balance[from])))

// Prop 2
// LTLProperty: [](!finished(RockPaperScissors.choicePlayer1(choice), choice < 0 || choice > 2 || msg.sender != this.player1)) && [](finished(RockPaperScissors.choicePlayer1) ==> [](!willSucceed(RockPaperScissors.choicePlayer1)))
// #LTLProperty: [](!finished(RockPaperScissors.choicePlayer2(choice), choice < 0 || choice > 2 || msg.sender != this.player2)) && [](finished(RockPaperScissors.choicePlayer2) ==> [](!willSucceed(RockPaperScissors.choicePlayer2)))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique RockPaperScissors: ContractName;
function {:smtdefined "x"} ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefIntArr() returns (ret: [Ref]int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntIntArr() returns (ret: [int]int);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroRefBoolArr() returns (ret: [Ref]bool);
function {:smtdefined "((as const (Array Int Bool)) false)"} zeroIntBoolArr() returns (ret: [int]bool);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefRefArr() returns (ret: [Ref]Ref);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntRefArr() returns (ret: [int]Ref);
function nonlinearMul(x: int, y: int) returns (ret: int);
function nonlinearDiv(x: int, y: int) returns (ret: int);
function nonlinearPow(x: int, y: int) returns (ret: int);
function nonlinearMod(x: int, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
function {:smtdefined "((as const (Array Int Int)) 0)"} zerointintArr() returns (ret: [int]int);
var M_int_int_payoffMatrix0: [Ref][int]int;
function {:smtdefined "((as const (Array Int Int)) 0)"} zerointRefArr() returns (ret: [int]Ref);
var M_int_Ref_payoffMatrix0: [Ref][int]Ref;
var sum_payoffMatrix0: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var gas: int;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
var {:access "this.player1=player1_RockPaperScissors[this]"} player1_RockPaperScissors: [Ref]Ref;
var {:access "this.player2=player2_RockPaperScissors[this]"} player2_RockPaperScissors: [Ref]Ref;
var {:access "this.owner=owner_RockPaperScissors[this]"} owner_RockPaperScissors: [Ref]Ref;
var {:access "this.p1Choice=p1Choice_RockPaperScissors[this]"} p1Choice_RockPaperScissors: [Ref]int;
var {:access "this.p2Choice=p2Choice_RockPaperScissors[this]"} p2Choice_RockPaperScissors: [Ref]int;
var {:access "this.payoffMatrix[i1][i2]=M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][i1]][i2]"} {:sum "sum(this.payoffMatrix)=sum_payoffMatrix0[payoffMatrix_RockPaperScissors[this]]"} payoffMatrix_RockPaperScissors: [Ref]Ref;
procedure {:inline 1} RockPaperScissors_RockPaperScissors_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref);
modifies Balance;
modifies player1_RockPaperScissors;
modifies player2_RockPaperScissors;
modifies owner_RockPaperScissors;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies payoffMatrix_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Alloc;
procedure {:constructor} {:public} {:inline 1} RockPaperScissors_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies Balance;
modifies player1_RockPaperScissors;
modifies player2_RockPaperScissors;
modifies owner_RockPaperScissors;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies payoffMatrix_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Alloc;
implementation RockPaperScissors_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_int_int_payoffMatrix0 := M_int_int_payoffMatrix0;
__tmp__M_int_Ref_payoffMatrix0 := M_int_Ref_payoffMatrix0;
__tmp__sum_payoffMatrix0 := sum_payoffMatrix0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__player1_RockPaperScissors := player1_RockPaperScissors;
__tmp__player2_RockPaperScissors := player2_RockPaperScissors;
__tmp__owner_RockPaperScissors := owner_RockPaperScissors;
__tmp__p1Choice_RockPaperScissors := p1Choice_RockPaperScissors;
__tmp__p2Choice_RockPaperScissors := p2Choice_RockPaperScissors;
__tmp__payoffMatrix_RockPaperScissors := payoffMatrix_RockPaperScissors;
call RockPaperScissors_RockPaperScissors__fail(this, msgsender_MSG, msgvalue_MSG, _player1_s115, _player2_s115, _owner_s115);
assume ((revert) || ((gas) < (0)));
} else {
call RockPaperScissors_RockPaperScissors__success(this, msgsender_MSG, msgvalue_MSG, _player1_s115, _player2_s115, _owner_s115);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} choicePlayer1~int256_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s153: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies p1Choice_RockPaperScissors;
implementation choicePlayer1~int256_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s153: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_int_int_payoffMatrix0 := M_int_int_payoffMatrix0;
__tmp__M_int_Ref_payoffMatrix0 := M_int_Ref_payoffMatrix0;
__tmp__sum_payoffMatrix0 := sum_payoffMatrix0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__player1_RockPaperScissors := player1_RockPaperScissors;
__tmp__player2_RockPaperScissors := player2_RockPaperScissors;
__tmp__owner_RockPaperScissors := owner_RockPaperScissors;
__tmp__p1Choice_RockPaperScissors := p1Choice_RockPaperScissors;
__tmp__p2Choice_RockPaperScissors := p2Choice_RockPaperScissors;
__tmp__payoffMatrix_RockPaperScissors := payoffMatrix_RockPaperScissors;
call choicePlayer1~int256_RockPaperScissors__fail(this, msgsender_MSG, msgvalue_MSG, choice_s153);
assume ((revert) || ((gas) < (0)));
} else {
call choicePlayer1~int256_RockPaperScissors__success(this, msgsender_MSG, msgvalue_MSG, choice_s153);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} choicePlayer2~int256_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s191: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
implementation choicePlayer2~int256_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s191: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_int_int_payoffMatrix0 := M_int_int_payoffMatrix0;
__tmp__M_int_Ref_payoffMatrix0 := M_int_Ref_payoffMatrix0;
__tmp__sum_payoffMatrix0 := sum_payoffMatrix0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__player1_RockPaperScissors := player1_RockPaperScissors;
__tmp__player2_RockPaperScissors := player2_RockPaperScissors;
__tmp__owner_RockPaperScissors := owner_RockPaperScissors;
__tmp__p1Choice_RockPaperScissors := p1Choice_RockPaperScissors;
__tmp__p2Choice_RockPaperScissors := p2Choice_RockPaperScissors;
__tmp__payoffMatrix_RockPaperScissors := payoffMatrix_RockPaperScissors;
call choicePlayer2~int256_RockPaperScissors__fail(this, msgsender_MSG, msgvalue_MSG, choice_s191);
assume ((revert) || ((gas) < (0)));
} else {
call choicePlayer2~int256_RockPaperScissors__success(this, msgsender_MSG, msgvalue_MSG, choice_s191);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:public} {:inline 1} determineWinner_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies gas;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Alloc;
modifies Balance;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
implementation determineWinner_RockPaperScissors(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_int_int_payoffMatrix0 := M_int_int_payoffMatrix0;
__tmp__M_int_Ref_payoffMatrix0 := M_int_Ref_payoffMatrix0;
__tmp__sum_payoffMatrix0 := sum_payoffMatrix0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__player1_RockPaperScissors := player1_RockPaperScissors;
__tmp__player2_RockPaperScissors := player2_RockPaperScissors;
__tmp__owner_RockPaperScissors := owner_RockPaperScissors;
__tmp__p1Choice_RockPaperScissors := p1Choice_RockPaperScissors;
__tmp__p2Choice_RockPaperScissors := p2Choice_RockPaperScissors;
__tmp__payoffMatrix_RockPaperScissors := payoffMatrix_RockPaperScissors;
call determineWinner_RockPaperScissors__fail(this, msgsender_MSG, msgvalue_MSG);
assume ((revert) || ((gas) < (0)));
} else {
call determineWinner_RockPaperScissors__success(this, msgsender_MSG, msgvalue_MSG);
assume ((!(revert)) && ((gas) >= (0)));
}
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Alloc;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
modifies Balance;
modifies revert;
modifies gas;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Alloc;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies revert;
modifies gas;
modifies Balance;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Alloc;
procedure CorralChoice_RockPaperScissors(this: Ref);
modifies gas;
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Balance;
procedure main();
modifies gas;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies now;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Balance;
modifies player1_RockPaperScissors;
modifies player2_RockPaperScissors;
modifies owner_RockPaperScissors;
modifies payoffMatrix_RockPaperScissors;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_int_int_payoffMatrix0: [Ref][int]int;
var __tmp__M_int_Ref_payoffMatrix0: [Ref][int]Ref;
var __tmp__sum_payoffMatrix0: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__player1_RockPaperScissors: [Ref]Ref;
var __tmp__player2_RockPaperScissors: [Ref]Ref;
var __tmp__owner_RockPaperScissors: [Ref]Ref;
var __tmp__p1Choice_RockPaperScissors: [Ref]int;
var __tmp__p2Choice_RockPaperScissors: [Ref]int;
var __tmp__payoffMatrix_RockPaperScissors: [Ref]Ref;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} RockPaperScissors_RockPaperScissors_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref);
modifies __tmp__Balance;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Alloc;
procedure {:constructor} {:inline 1} RockPaperScissors_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref);
modifies Balance;
modifies player1_RockPaperScissors;
modifies player2_RockPaperScissors;
modifies owner_RockPaperScissors;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
modifies payoffMatrix_RockPaperScissors;
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies Alloc;
procedure {:constructor} {:inline 1} RockPaperScissors_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref);
modifies __tmp__Balance;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Alloc;
procedure {:inline 1} choicePlayer1~int256_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s153: int);
modifies p1Choice_RockPaperScissors;
modifies revert;
procedure {:inline 1} choicePlayer1~int256_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s153: int);
modifies __tmp__p1Choice_RockPaperScissors;
modifies revert;
procedure {:inline 1} choicePlayer2~int256_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s191: int);
modifies p2Choice_RockPaperScissors;
modifies revert;
procedure {:inline 1} choicePlayer2~int256_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s191: int);
modifies __tmp__p2Choice_RockPaperScissors;
modifies revert;
procedure {:inline 1} determineWinner_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies M_int_Ref_payoffMatrix0;
modifies Length;
modifies M_int_int_payoffMatrix0;
modifies sum_payoffMatrix0;
modifies gas;
modifies revert;
modifies Alloc;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies Balance;
modifies p1Choice_RockPaperScissors;
modifies p2Choice_RockPaperScissors;
procedure {:inline 1} determineWinner_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies gas;
modifies revert;
modifies __tmp__Alloc;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__balance_ADDR;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Alloc;
modifies __tmp__DType;
modifies __tmp__balance_ADDR;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
modifies __tmp__Balance;
modifies revert;
modifies gas;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Alloc;
modifies __tmp__DType;
modifies __tmp__balance_ADDR;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_int_int_payoffMatrix0;
modifies __tmp__M_int_Ref_payoffMatrix0;
modifies __tmp__sum_payoffMatrix0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__player1_RockPaperScissors;
modifies __tmp__player2_RockPaperScissors;
modifies __tmp__owner_RockPaperScissors;
modifies __tmp__p1Choice_RockPaperScissors;
modifies __tmp__p2Choice_RockPaperScissors;
modifies __tmp__payoffMatrix_RockPaperScissors;
modifies revert;
modifies gas;
implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
havoc newRef;
assume ((__tmp__Alloc[newRef]) == (false));
__tmp__Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation FreshRefGenerator__success() returns (newRef: Ref)
{
havoc newRef;
assume ((Alloc[newRef]) == (false));
Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation RockPaperScissors_RockPaperScissors_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
var __var_6: Ref;
var __var_7: Ref;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: Ref;
var __var_11: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := 0;
__tmp__player1_RockPaperScissors[this] := null;
__tmp__player2_RockPaperScissors[this] := null;
__tmp__owner_RockPaperScissors[this] := null;
__tmp__p1Choice_RockPaperScissors[this] := -(1);
__tmp__p2Choice_RockPaperScissors[this] := -(1);
// Make array/mapping vars distinct for payoffMatrix
call __var_11 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__payoffMatrix_RockPaperScissors[this] := __var_11;
assume ((__tmp__Length[__tmp__payoffMatrix_RockPaperScissors[this]]) == (3));
// end of initialization
__tmp__player1_RockPaperScissors[this] := _player1_s115;
__tmp__player2_RockPaperScissors[this] := _player2_s115;
__tmp__owner_RockPaperScissors[this] := _owner_s115;
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]) == (null)) {
call __var_2 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0] := __var_2;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][0]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][0]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][0] := 0;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][0]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]) == (null)) {
call __var_3 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0] := __var_3;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][1]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][1]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][1] := 2;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][1]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]) == (null)) {
call __var_4 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0] := __var_4;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][2]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][2]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][2] := 1;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][0]][2]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]) == (null)) {
call __var_5 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1] := __var_5;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][0]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][0]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][0] := 1;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][0]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]) == (null)) {
call __var_6 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1] := __var_6;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][1]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][1]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][1] := 0;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][1]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]) == (null)) {
call __var_7 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1] := __var_7;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][2]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][2]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][2] := 2;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][1]][2]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]) == (null)) {
call __var_8 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2] := __var_8;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][0]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][0]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][0] := 2;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][0]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]) == (null)) {
call __var_9 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2] := __var_9;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][1]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][1]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][1] := 1;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][1]);
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]) == (null)) {
call __var_10 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2] := __var_10;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][2]) >= (0));
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]]) - (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][2]);
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][2] := 0;
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]] := (__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]]) + (__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][2]][2]);
}

implementation RockPaperScissors_RockPaperScissors_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
var __var_6: Ref;
var __var_7: Ref;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: Ref;
var __var_11: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
player1_RockPaperScissors[this] := null;
player2_RockPaperScissors[this] := null;
owner_RockPaperScissors[this] := null;
p1Choice_RockPaperScissors[this] := -(1);
p2Choice_RockPaperScissors[this] := -(1);
// Make array/mapping vars distinct for payoffMatrix
call __var_11 := FreshRefGenerator__success();
if (revert) {
return;
}
payoffMatrix_RockPaperScissors[this] := __var_11;
assume ((Length[payoffMatrix_RockPaperScissors[this]]) == (3));
// end of initialization
player1_RockPaperScissors[this] := _player1_s115;
player2_RockPaperScissors[this] := _player2_s115;
owner_RockPaperScissors[this] := _owner_s115;
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]) == (null)) {
call __var_2 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0] := __var_2;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][0]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][0]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][0] := 0;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][0]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]) == (null)) {
call __var_3 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0] := __var_3;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][1]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][1]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][1] := 2;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][1]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]) == (null)) {
call __var_4 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0] := __var_4;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][2]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][2]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][2] := 1;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][0]][2]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]) == (null)) {
call __var_5 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1] := __var_5;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][0]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][0]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][0] := 1;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][0]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]) == (null)) {
call __var_6 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1] := __var_6;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][1]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][1]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][1] := 0;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][1]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]) == (null)) {
call __var_7 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1] := __var_7;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][2]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][2]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][2] := 2;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][1]][2]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]) == (null)) {
call __var_8 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2] := __var_8;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][0]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][0]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][0] := 2;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][0]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]) == (null)) {
call __var_9 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2] := __var_9;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][1]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][1]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][1] := 1;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][1]);
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]) == (null)) {
call __var_10 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2] := __var_10;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][2]) >= (0));
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]]) - (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][2]);
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][2] := 0;
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]] := (sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]]) + (M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][2]][2]);
}

implementation RockPaperScissors_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
var __var_6: Ref;
var __var_7: Ref;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: Ref;
var __var_11: Ref;
call RockPaperScissors_RockPaperScissors_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _player1_s115, _player2_s115, _owner_s115);
if (revert) {
return;
}
}

implementation RockPaperScissors_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _player1_s115: Ref, _player2_s115: Ref, _owner_s115: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
var __var_5: Ref;
var __var_6: Ref;
var __var_7: Ref;
var __var_8: Ref;
var __var_9: Ref;
var __var_10: Ref;
var __var_11: Ref;
call RockPaperScissors_RockPaperScissors_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _player1_s115, _player2_s115, _owner_s115);
if (revert) {
return;
}
}

implementation choicePlayer1~int256_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s153: int)
{
if ((msgsender_MSG) == (__tmp__player1_RockPaperScissors[this])) {
if ((((__tmp__p1Choice_RockPaperScissors[this]) == (-(1))) && ((choice_s153) >= (0))) && ((choice_s153) <= (2))) {
__tmp__p1Choice_RockPaperScissors[this] := choice_s153;
} else {
revert := true;
return;
}
} else {
revert := true;
return;
}
}

implementation choicePlayer1~int256_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s153: int)
{
if ((msgsender_MSG) == (player1_RockPaperScissors[this])) {
if ((((p1Choice_RockPaperScissors[this]) == (-(1))) && ((choice_s153) >= (0))) && ((choice_s153) <= (2))) {
p1Choice_RockPaperScissors[this] := choice_s153;
} else {
revert := true;
return;
}
} else {
revert := true;
return;
}
}

implementation choicePlayer2~int256_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s191: int)
{
if ((msgsender_MSG) == (__tmp__player2_RockPaperScissors[this])) {
if ((((__tmp__p2Choice_RockPaperScissors[this]) == (-(1))) && ((choice_s191) >= (0))) && ((choice_s191) <= (2))) {
__tmp__p2Choice_RockPaperScissors[this] := choice_s191;
} else {
revert := true;
return;
}
} else {
revert := true;
return;
}
}

implementation choicePlayer2~int256_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, choice_s191: int)
{
if ((msgsender_MSG) == (player2_RockPaperScissors[this])) {
if ((((p2Choice_RockPaperScissors[this]) == (-(1))) && ((choice_s191) >= (0))) && ((choice_s191) <= (2))) {
p2Choice_RockPaperScissors[this] := choice_s191;
} else {
revert := true;
return;
}
} else {
revert := true;
return;
}
}

implementation determineWinner_RockPaperScissors__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var winner_s253: int;
var __var_12: int;
var __var_13: int;
var __var_14: Ref;
var __var_15: int;
var __var_16: Ref;
var __var_17: bool;
var __var_18: int;
var __var_19: Ref;
var __var_20: bool;
var __var_21: int;
var __var_22: Ref;
var __var_23: bool;
if (((__tmp__p1Choice_RockPaperScissors[this]) != (-(1))) && ((__tmp__p2Choice_RockPaperScissors[this]) != (-(1)))) {
assume ((winner_s253) >= (0));
assume ((__var_12) >= (0));
__var_12 := __tmp__p2Choice_RockPaperScissors[this];
assume ((__tmp__p2Choice_RockPaperScissors[this]) >= (0));
assume ((__var_13) >= (0));
__var_13 := __tmp__p1Choice_RockPaperScissors[this];
assume ((__tmp__p1Choice_RockPaperScissors[this]) >= (0));
if ((__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][__tmp__p1Choice_RockPaperScissors[this]]) == (null)) {
call __var_14 := FreshRefGenerator__fail();
if (revert) {
return;
}
__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][__tmp__p1Choice_RockPaperScissors[this]] := __var_14;
__tmp__Length[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][__tmp__p1Choice_RockPaperScissors[this]]] := 0;
__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][__tmp__p1Choice_RockPaperScissors[this]]] := zerointintArr();
__tmp__sum_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][__tmp__p1Choice_RockPaperScissors[this]]] := 0;
}
assume ((__tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][__tmp__p1Choice_RockPaperScissors[this]]][__tmp__p2Choice_RockPaperScissors[this]]) >= (0));
winner_s253 := __tmp__M_int_int_payoffMatrix0[__tmp__M_int_Ref_payoffMatrix0[__tmp__payoffMatrix_RockPaperScissors[this]][__tmp__p1Choice_RockPaperScissors[this]]][__tmp__p2Choice_RockPaperScissors[this]];
assume ((winner_s253) >= (0));
if ((winner_s253) == (1)) {
__var_15 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_15 := (__var_15) - (gas);
__var_16 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_17 := send__fail(this, __tmp__player1_RockPaperScissors[this], __tmp__Balance[this]);
if (!(__var_17)) {
revert := true;
return;
}
gas := (__var_15) + (gas);
} else {
assume ((winner_s253) >= (0));
if ((winner_s253) == (2)) {
__var_18 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_18 := (__var_18) - (gas);
__var_19 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_20 := send__fail(this, __tmp__player2_RockPaperScissors[this], __tmp__Balance[this]);
if (!(__var_20)) {
revert := true;
return;
}
gas := (__var_18) + (gas);
} else {
__var_21 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_21 := (__var_21) - (gas);
__var_22 := this;
assume ((__tmp__Balance[this]) >= (0));
call __var_23 := send__fail(this, __tmp__owner_RockPaperScissors[this], __tmp__Balance[this]);
if (!(__var_23)) {
revert := true;
return;
}
gas := (__var_21) + (gas);
}
}
} else {
revert := true;
return;
}
}

implementation determineWinner_RockPaperScissors__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var winner_s253: int;
var __var_12: int;
var __var_13: int;
var __var_14: Ref;
var __var_15: int;
var __var_16: Ref;
var __var_17: bool;
var __var_18: int;
var __var_19: Ref;
var __var_20: bool;
var __var_21: int;
var __var_22: Ref;
var __var_23: bool;
if (((p1Choice_RockPaperScissors[this]) != (-(1))) && ((p2Choice_RockPaperScissors[this]) != (-(1)))) {
assume ((winner_s253) >= (0));
assume ((__var_12) >= (0));
__var_12 := p2Choice_RockPaperScissors[this];
assume ((p2Choice_RockPaperScissors[this]) >= (0));
assume ((__var_13) >= (0));
__var_13 := p1Choice_RockPaperScissors[this];
assume ((p1Choice_RockPaperScissors[this]) >= (0));
if ((M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][p1Choice_RockPaperScissors[this]]) == (null)) {
call __var_14 := FreshRefGenerator__success();
if (revert) {
return;
}
M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][p1Choice_RockPaperScissors[this]] := __var_14;
Length[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][p1Choice_RockPaperScissors[this]]] := 0;
M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][p1Choice_RockPaperScissors[this]]] := zerointintArr();
sum_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][p1Choice_RockPaperScissors[this]]] := 0;
}
assume ((M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][p1Choice_RockPaperScissors[this]]][p2Choice_RockPaperScissors[this]]) >= (0));
winner_s253 := M_int_int_payoffMatrix0[M_int_Ref_payoffMatrix0[payoffMatrix_RockPaperScissors[this]][p1Choice_RockPaperScissors[this]]][p2Choice_RockPaperScissors[this]];
assume ((winner_s253) >= (0));
if ((winner_s253) == (1)) {
__var_15 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_15 := (__var_15) - (gas);
__var_16 := this;
assume ((Balance[this]) >= (0));
call __var_17 := send__success(this, player1_RockPaperScissors[this], Balance[this]);
if (!(__var_17)) {
revert := true;
return;
}
gas := (__var_15) + (gas);
} else {
assume ((winner_s253) >= (0));
if ((winner_s253) == (2)) {
__var_18 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_18 := (__var_18) - (gas);
__var_19 := this;
assume ((Balance[this]) >= (0));
call __var_20 := send__success(this, player2_RockPaperScissors[this], Balance[this]);
if (!(__var_20)) {
revert := true;
return;
}
gas := (__var_18) + (gas);
} else {
__var_21 := gas;
if ((gas) > (2300)) {
gas := 2300;
}
__var_21 := (__var_21) - (gas);
__var_22 := this;
assume ((Balance[this]) >= (0));
call __var_23 := send__success(this, owner_RockPaperScissors[this], Balance[this]);
if (!(__var_23)) {
revert := true;
return;
}
gas := (__var_21) + (gas);
}
}
} else {
revert := true;
return;
}
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (RockPaperScissors)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__fail(from, to, amount);
if (revert) {
return;
}
}
}

implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (RockPaperScissors)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__success(from, to, amount);
if (revert) {
return;
}
}
}

implementation Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int)
{
var iterate: bool;
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _player1_s115: Ref;
var _player2_s115: Ref;
var _owner_s115: Ref;
var choice_s153: int;
var choice_s191: int;
// ---- Logic for payable function START 
assume ((__tmp__Balance[from]) >= (amount));
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
while ((iterate) && ((gas) >= (21000)))
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _player1_s115;
havoc _player2_s115;
havoc _owner_s115;
havoc choice_s153;
havoc choice_s191;
havoc iterate;
if ((__tmp__DType[from]) == (RockPaperScissors)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call choicePlayer1~int256_RockPaperScissors__fail(from, to, msgvalue_MSG, choice_s153);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call choicePlayer2~int256_RockPaperScissors__fail(from, to, msgvalue_MSG, choice_s191);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call determineWinner_RockPaperScissors__fail(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
}
}
}

implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
var iterate: bool;
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _player1_s115: Ref;
var _player2_s115: Ref;
var _owner_s115: Ref;
var choice_s153: int;
var choice_s191: int;
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
if ((choice) == (0)) {
revert := true;
return;
}
if ((gas) < (21000)) {
return;
}
while ((iterate) && ((gas) >= (21000)))
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _player1_s115;
havoc _player2_s115;
havoc _owner_s115;
havoc choice_s153;
havoc choice_s191;
havoc iterate;
if ((DType[from]) == (RockPaperScissors)) {
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call choicePlayer1~int256_RockPaperScissors__success(from, to, msgvalue_MSG, choice_s153);
if (revert) {
return;
}
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call choicePlayer2~int256_RockPaperScissors__success(from, to, msgvalue_MSG, choice_s191);
if (revert) {
return;
}
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call determineWinner_RockPaperScissors__success(from, to, msgvalue_MSG);
if (revert) {
return;
}
}
}
}
}
}

implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
var __snap___tmp__Balance: [Ref]int;
var __snap___tmp__DType: [Ref]ContractName;
var __snap___tmp__Alloc: [Ref]bool;
var __snap___tmp__balance_ADDR: [Ref]int;
var __snap___tmp__M_int_int_payoffMatrix0: [Ref][int]int;
var __snap___tmp__M_int_Ref_payoffMatrix0: [Ref][int]Ref;
var __snap___tmp__sum_payoffMatrix0: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__player1_RockPaperScissors: [Ref]Ref;
var __snap___tmp__player2_RockPaperScissors: [Ref]Ref;
var __snap___tmp__owner_RockPaperScissors: [Ref]Ref;
var __snap___tmp__p1Choice_RockPaperScissors: [Ref]int;
var __snap___tmp__p2Choice_RockPaperScissors: [Ref]int;
var __snap___tmp__payoffMatrix_RockPaperScissors: [Ref]Ref;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_int_int_payoffMatrix0 := __tmp__M_int_int_payoffMatrix0;
__snap___tmp__M_int_Ref_payoffMatrix0 := __tmp__M_int_Ref_payoffMatrix0;
__snap___tmp__sum_payoffMatrix0 := __tmp__sum_payoffMatrix0;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__player1_RockPaperScissors := __tmp__player1_RockPaperScissors;
__snap___tmp__player2_RockPaperScissors := __tmp__player2_RockPaperScissors;
__snap___tmp__owner_RockPaperScissors := __tmp__owner_RockPaperScissors;
__snap___tmp__p1Choice_RockPaperScissors := __tmp__p1Choice_RockPaperScissors;
__snap___tmp__p2Choice_RockPaperScissors := __tmp__p2Choice_RockPaperScissors;
__snap___tmp__payoffMatrix_RockPaperScissors := __tmp__payoffMatrix_RockPaperScissors;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_int_int_payoffMatrix0 := __snap___tmp__M_int_int_payoffMatrix0;
__tmp__M_int_Ref_payoffMatrix0 := __snap___tmp__M_int_Ref_payoffMatrix0;
__tmp__sum_payoffMatrix0 := __snap___tmp__sum_payoffMatrix0;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__player1_RockPaperScissors := __snap___tmp__player1_RockPaperScissors;
__tmp__player2_RockPaperScissors := __snap___tmp__player2_RockPaperScissors;
__tmp__owner_RockPaperScissors := __snap___tmp__owner_RockPaperScissors;
__tmp__p1Choice_RockPaperScissors := __snap___tmp__p1Choice_RockPaperScissors;
__tmp__p2Choice_RockPaperScissors := __snap___tmp__p2Choice_RockPaperScissors;
__tmp__payoffMatrix_RockPaperScissors := __snap___tmp__payoffMatrix_RockPaperScissors;
revert := false;
} else {
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
havoc __exception;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_int_int_payoffMatrix0 := M_int_int_payoffMatrix0;
__tmp__M_int_Ref_payoffMatrix0 := M_int_Ref_payoffMatrix0;
__tmp__sum_payoffMatrix0 := sum_payoffMatrix0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__player1_RockPaperScissors := player1_RockPaperScissors;
__tmp__player2_RockPaperScissors := player2_RockPaperScissors;
__tmp__owner_RockPaperScissors := owner_RockPaperScissors;
__tmp__p1Choice_RockPaperScissors := p1Choice_RockPaperScissors;
__tmp__p2Choice_RockPaperScissors := p2Choice_RockPaperScissors;
__tmp__payoffMatrix_RockPaperScissors := payoffMatrix_RockPaperScissors;
if ((__tmp__Balance[from]) >= (amount)) {
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume ((revert) || ((gas) < (0)));
revert := false;
} else {
if ((Balance[from]) >= (amount)) {
call FallbackDispatch__success(from, to, amount);
success := true;
} else {
success := false;
}
assume ((!(revert)) && ((gas) >= (0)));
}
}

implementation CorralChoice_RockPaperScissors(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _player1_s115: Ref;
var _player2_s115: Ref;
var _owner_s115: Ref;
var choice_s153: int;
var choice_s191: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _player1_s115;
havoc _player2_s115;
havoc _owner_s115;
havoc choice_s153;
havoc choice_s191;
havoc tmpNow;
havoc gas;
assume (((gas) > (4000000)) && ((gas) <= (8000000)));
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (RockPaperScissors));
Alloc[msgsender_MSG] := true;
if ((choice) == (3)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call choicePlayer1~int256_RockPaperScissors(this, msgsender_MSG, msgvalue_MSG, choice_s153);
}
} else if ((choice) == (2)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call choicePlayer2~int256_RockPaperScissors(this, msgsender_MSG, msgvalue_MSG, choice_s191);
}
} else if ((choice) == (1)) {
gas := (gas) - (21000);
if ((gas) >= (0)) {
assume ((msgvalue_MSG) == (0));
call determineWinner_RockPaperScissors(this, msgsender_MSG, msgvalue_MSG);
}
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _player1_s115: Ref;
var _player2_s115: Ref;
var _owner_s115: Ref;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (RockPaperScissors));
assume ((msgvalue_MSG) == (0));
gas := (gas) - (53000);
call RockPaperScissors_RockPaperScissors(this, msgsender_MSG, msgvalue_MSG, _player1_s115, _player2_s115, _owner_s115);
assume ((!(revert)) && ((gas) >= (0)));
while (true)
{
call CorralChoice_RockPaperScissors(this);
}
}


