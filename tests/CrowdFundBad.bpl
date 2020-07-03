// #LTLProperty: [](AP(refundCalled) ==> <>(AP(refundSucceeded)))

type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique CrowdFundBad: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);

var DType: [Ref]ContractName;
var DType_snapshot: [Ref]ContractName;

var Alloc: [Ref]bool;
var Alloc_snapshot: [Ref]bool;

var balance_ADDR: [Ref]int;
var balance_ADDR_snapshot: [Ref]int;

var M_Ref_int: [Ref][Ref]int;
var M_Ref_int_snapshot: [Ref][Ref]int;

var M_int_Ref: [Ref][int]Ref;
var M_int_Ref_snapshot: [Ref][int]Ref;

var Length: [Ref]int;
var Length_snapshot: [Ref]int;

var exception : bool;
var exception_snapshot : bool;

var refundAddresses_CrowdFundBad: [Ref]Ref;
var refundAddresses_CrowdFundBad_snapshot: [Ref]Ref;

var refundAmount_CrowdFundBad: [Ref]Ref;
var refundAmount_CrowdFundBad_snapshot: [Ref]Ref;

var refundCalled : bool;
var refundSucceeded : bool;

procedure snapshot()
modifies DType_snapshot, Alloc_snapshot, balance_ADDR_snapshot, M_Ref_int_snapshot, M_int_Ref_snapshot, Length_snapshot, exception_snapshot, refundAmount_CrowdFundBad_snapshot, refundAddresses_CrowdFundBad_snapshot;
{
  DType_snapshot := DType;
  Alloc_snapshot := Alloc;
  balance_ADDR_snapshot := balance_ADDR;
  M_Ref_int_snapshot := M_Ref_int;
  M_int_Ref_snapshot := M_int_Ref;
  Length_snapshot := Length;
  exception_snapshot := exception;

  refundAmount_CrowdFundBad_snapshot := refundAmount_CrowdFundBad;
  refundAddresses_CrowdFundBad_snapshot := refundAddresses_CrowdFundBad;
}

procedure revert()
modifies DType, Alloc, balance_ADDR, M_Ref_int, M_int_Ref, Length, exception, refundAmount_CrowdFundBad, refundAddresses_CrowdFundBad;
{
  DType := DType_snapshot;
  Alloc := Alloc_snapshot;
  balance_ADDR := balance_ADDR_snapshot;
  M_Ref_int := M_Ref_int_snapshot;
  M_int_Ref := M_int_Ref_snapshot;
  Length := Length_snapshot;
  exception := exception_snapshot;

  refundAmount_CrowdFundBad := refundAmount_CrowdFundBad_snapshot;
  refundAddresses_CrowdFundBad := refundAddresses_CrowdFundBad_snapshot;
}

var gas : int;

function { :smtdefined "((as const (Array Int Int)) 0)" } zero() returns (ret: [Ref]int);

procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref)
modifies Alloc;
{
  havoc newRef;
  assume ((Alloc[newRef]) == (false));
  Alloc[newRef] := true;
  assume ((newRef) != (null));
}

procedure {:inline 1} CrowdFundBad_CrowdFundBad_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
modifies Alloc, refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad;
{
  var __var_1: Ref;
  var __var_2: Ref;
  // start of initialization
  assume ((msgsender_MSG) != (null));
  // Make array/mapping vars distinct for refundAddresses
  call __var_1 := FreshRefGenerator();
  refundAddresses_CrowdFundBad[this] := __var_1;
  assume ((Length[refundAddresses_CrowdFundBad[this]]) == (0));
  // Make array/mapping vars distinct for refundAmount
  call __var_2 := FreshRefGenerator();
  refundAmount_CrowdFundBad[this] := __var_2;
  // Initialize Integer mapping refundAmount
  assume ((M_Ref_int[refundAmount_CrowdFundBad[this]]) == zero());
  // end of initialization
}

procedure {:inline 1} CrowdFundBad_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
modifies Alloc, refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad;
{
  call CrowdFundBad_CrowdFundBad_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} donate_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
modifies exception, M_int_Ref, Length, M_Ref_int, gas;
{
  var __var_3: int;
  var foundEx: bool;

  foundEx := false;
  
  if (!((msgvalue_MSG) > (0)))
  {
    exception := true;
    return;
  }

  call foundEx := gasCheck(2);

  if ((M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG]) == (0)) {
    __var_3 := Length[refundAddresses_CrowdFundBad[this]];
    M_int_Ref[refundAddresses_CrowdFundBad[this]][__var_3] := msgsender_MSG;
    Length[refundAddresses_CrowdFundBad[this]] := (__var_3) + (1);
    call foundEx := gasCheck(5);
  }
  M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG] := (M_Ref_int[refundAmount_CrowdFundBad[this]][msgsender_MSG]) + (msgvalue_MSG);
  call foundEx := gasCheck(5);

  if (foundEx)
  {
    exception := true;
  }
  
}

procedure {:public} {:inline 1} refundDos_CrowdFundBad(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
modifies exception, gas, DType_snapshot, Alloc_snapshot, balance_ADDR_snapshot, M_Ref_int_snapshot, M_int_Ref_snapshot, Length_snapshot, exception_snapshot, refundAmount_CrowdFundBad_snapshot, refundAddresses_CrowdFundBad_snapshot, balance_ADDR, DType, Alloc, M_Ref_int, M_int_Ref, Length, refundAmount_CrowdFundBad, refundAddresses_CrowdFundBad, refundSucceeded;
{
  var i_s57: int;
  var foundEx: bool;
  var refundAddr: int;
  var refundAmt: int;
  var result: bool;

  foundEx := false;
  i_s57 := 0;

  call foundEx := gasCheck(1);
  while ((i_s57) < (Length[refundAddresses_CrowdFundBad[this]]))
  {
    refundAddr := M_int_Ref[refundAddresses_CrowdFundBad[this]][i_s57];
    refundAmt := M_Ref_int[refundAmount_CrowdFundBad[this]][refundAddr];
    call result := __send(msgsender_MSG, this, msgsender_MSG, refundAmt);
    i_s57 := (i_s57) + (1);
    call foundEx := gasCheck(6);
    if (foundEx) {
      return;
    }
  }

  call foundEx := gasCheck(1);
  if (foundEx) {
    return;
  }

  refundSucceeded := true;
  refundSucceeded := false;
}

procedure __send(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt: int) returns(result: bool)
modifies DType_snapshot, Alloc_snapshot, balance_ADDR_snapshot, M_Ref_int_snapshot, M_int_Ref_snapshot, Length_snapshot, exception_snapshot, refundAmount_CrowdFundBad_snapshot, refundAddresses_CrowdFundBad_snapshot, balance_ADDR, exception, DType, Alloc, M_Ref_int, M_int_Ref, Length, refundAmount_CrowdFundBad, refundAddresses_CrowdFundBad, gas, refundSucceeded;
{
    var _:bool;
    //call snapshot();
    result := true;
    if(balance_ADDR[msgsender_MSG] >= amt) {
        balance_ADDR := balance_ADDR[this := (balance_ADDR[this] + amt)];
        balance_ADDR := balance_ADDR[msgsender_MSG := (balance_ADDR[msgsender_MSG] - amt)];
        call _ := gasCheck(4);
        //call fallback(this, msgsender_MSG, amt);
    }
    else {
        result := false;
    }
}

procedure fallback(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
modifies exception, M_int_Ref, Length, M_Ref_int, gas, DType_snapshot, Alloc_snapshot, balance_ADDR_snapshot, M_Ref_int_snapshot, M_int_Ref_snapshot, Length_snapshot, exception_snapshot, refundAmount_CrowdFundBad_snapshot, refundAddresses_CrowdFundBad_snapshot, balance_ADDR, DType, Alloc, refundAmount_CrowdFundBad, refundAddresses_CrowdFundBad, refundSucceeded;
{
    var amt : int;
    var choice : int;
    var foundEx : bool;
    var newmsgvalue_MSG: int;

    havoc choice;
    havoc newmsgvalue_MSG;
    if ((choice) == (1)) {
      call donate_CrowdFundBad(this, msgsender_MSG, newmsgvalue_MSG);
    } else if ((choice) == (2)) {
      refundCalled := true;
      refundCalled := false;
      call refundDos_CrowdFundBad(this, msgsender_MSG, newmsgvalue_MSG);
    }
    else if((choice) == (3)) {
        //revert
        exception := true;
    }
}

procedure gasCheck(amt : int) returns (result: bool)
modifies gas, exception;
{
    gas := gas - amt;
    if(gas < 0) {
        exception := true;
    }
    result := exception;
}

procedure main()
modifies Alloc, refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad, gas, exception, M_int_Ref, Length, M_Ref_int, DType_snapshot, Alloc_snapshot, balance_ADDR_snapshot, M_Ref_int_snapshot, M_int_Ref_snapshot, Length_snapshot, exception_snapshot, refundAmount_CrowdFundBad_snapshot, refundAddresses_CrowdFundBad_snapshot, balance_ADDR, DType, refundCalled, refundSucceeded;
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  assume ((DType[this]) == (CrowdFundBad));
  call CrowdFundBad_CrowdFundBad(this, msgsender_MSG, msgvalue_MSG);
  while (true)
  {
    gas := 50;
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    exception := false;
    if ((choice) == (1)) {
      call donate_CrowdFundBad(this, msgsender_MSG, msgvalue_MSG);
    } else if ((choice) == (2)) {
      refundCalled := true;
      refundCalled := false;
      call refundDos_CrowdFundBad(this, msgsender_MSG, msgvalue_MSG);
    }
  }
}

procedure ULTIMATE.start()
modifies Alloc, refundAddresses_CrowdFundBad, refundAmount_CrowdFundBad, gas, exception, M_int_Ref, Length, M_Ref_int, DType_snapshot, Alloc_snapshot, balance_ADDR_snapshot, M_Ref_int_snapshot, M_int_Ref_snapshot, Length_snapshot, exception_snapshot, refundAmount_CrowdFundBad_snapshot, refundAddresses_CrowdFundBad_snapshot, balance_ADDR, DType, refundCalled, refundSucceeded;
{
  refundCalled := false;
  refundSucceeded := false;
  call main();
}
