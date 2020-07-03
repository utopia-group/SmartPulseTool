type Ref;
type ContractName;
const unique null: Ref;
const unique SimpleAuction: ContractName;
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
var owner_SimpleAuction: [Ref]Ref;
var highestBidder_SimpleAuction: [Ref]Ref;
var highestBid_SimpleAuction: [Ref]int;
var ended_SimpleAuction: [Ref]bool;
procedure {:inline 1} SimpleAuction_SimpleAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SimpleAuction_SimpleAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
owner_SimpleAuction[this] := null;
highestBidder_SimpleAuction[this] := null;
highestBid_SimpleAuction[this] := 0;
ended_SimpleAuction[this] := false;
// end of initialization
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 11} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 12} (true);
owner_SimpleAuction[this] := msgsender_MSG;
call  {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_SimpleAuction[this]);
}

procedure {:constructor} {:public} {:inline 1} SimpleAuction_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SimpleAuction_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call SimpleAuction_SimpleAuction_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} bid_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation bid_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 15} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 16} (true);
if (!(ended_SimpleAuction[this])) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 16} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 17} (true);
assume ((msgvalue_MSG) >= (0));
assume ((highestBid_SimpleAuction[this]) >= (0));
assume ((msgvalue_MSG) > (highestBid_SimpleAuction[this]));
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 21} (true);
highestBidder_SimpleAuction[this] := msgsender_MSG;
call  {:cexpr "highestBidder"} boogie_si_record_sol2Bpl_ref(highestBidder_SimpleAuction[this]);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 22} (true);
assume ((highestBid_SimpleAuction[this]) >= (0));
assume ((msgvalue_MSG) >= (0));
highestBid_SimpleAuction[this] := msgvalue_MSG;
call  {:cexpr "highestBid"} boogie_si_record_sol2Bpl_int(highestBid_SimpleAuction[this]);
}
}

procedure {:public} {:inline 1} auctionEnd_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation auctionEnd_SimpleAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 26} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 27} (true);
if ((!(ended_SimpleAuction[this])) && ((msgsender_MSG) == (owner_SimpleAuction[this]))) {
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 27} (true);
assert {:first} {:sourceFile "C:\Users\Jon\Research\verisol\SolidityTests\.\simpleAuction.sol"} {:sourceLine 28} (true);
ended_SimpleAuction[this] := true;
call  {:cexpr "ended"} boogie_si_record_sol2Bpl_bool(ended_SimpleAuction[this]);
}
}

const {:existential true} HoudiniB1_SimpleAuction: bool;
const {:existential true} HoudiniB2_SimpleAuction: bool;
const {:existential true} HoudiniB3_SimpleAuction: bool;
const {:existential true} HoudiniB4_SimpleAuction: bool;
const {:existential true} HoudiniB5_SimpleAuction: bool;
const {:existential true} HoudiniB6_SimpleAuction: bool;
procedure BoogieEntry_SimpleAuction();
implementation BoogieEntry_SimpleAuction()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
assume ((DType[this]) == (SimpleAuction));
call SimpleAuction_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
while (true)
  invariant (HoudiniB1_SimpleAuction) ==> ((owner_SimpleAuction[this]) == (null));
  invariant (HoudiniB2_SimpleAuction) ==> ((owner_SimpleAuction[this]) != (null));
  invariant (HoudiniB3_SimpleAuction) ==> ((highestBidder_SimpleAuction[this]) == (null));
  invariant (HoudiniB4_SimpleAuction) ==> ((highestBidder_SimpleAuction[this]) != (null));
  invariant (HoudiniB5_SimpleAuction) ==> ((owner_SimpleAuction[this]) == (highestBidder_SimpleAuction[this]));
  invariant (HoudiniB6_SimpleAuction) ==> ((owner_SimpleAuction[this]) != (highestBidder_SimpleAuction[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
if ((choice) == (1)) {
call bid_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call auctionEnd_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure CorralChoice_SimpleAuction(this: Ref);
implementation CorralChoice_SimpleAuction(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
if ((choice) == (1)) {
call bid_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call auctionEnd_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_SimpleAuction();
implementation CorralEntry_SimpleAuction()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((DType[this]) == (SimpleAuction));
call SimpleAuction_SimpleAuction(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_SimpleAuction(this);
}
}


