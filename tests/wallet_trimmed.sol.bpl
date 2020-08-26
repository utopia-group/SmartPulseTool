// Global declarations and definitions related to the address type
// LTLProperty: []((AP(withdrawCalled == true) && AP(withdrawAddr == user) && AP(withdrawAmt <= userBal)) ==> <>(AP(fallbackSucceeded == true) && AP(fallbackAmt == withdrawAmt) && AP(fallbackAddr == user))) 
// #LTLProperty: []((AP(a == true)) ==> <>(AP(b == true)))
//  <>[]AP(__now==0)
type address_t = int;
const unique __zero__address: address_t;
var __balance: [address_t]int;
type string_t;
var __now: int;

//LTL helper vars
var userBal: int;
var user: address_t;
var withdrawCalled: bool;
var withdrawAddr: address_t;
var withdrawAmt: int;
var fallbackSucceeded: bool;
var fallbackAddr: address_t;
var fallbackAmt: int;
var a : bool;
var b : bool;
// A: withdrawCalled == true && withdrawAddr == user && withdrawAmt <= userBal
// B: fallbackSucceeded == true && fallbackAmt == withdrawAmt && fallbackAddr == user
// assume(!(withdrawCalled == true && withdrawAddr == user && withdrawAmt <= userBal))
// 
// ------- Source: test.sol -------
// Pragma: solidity^0.4.24
// 
// ------- Contract: SimpleTest -------
// 
// State variable: balance : mapping(address => uint256)
var {:sourceloc "test.sol", 5, 5} {:message "balance"} balance#5: [address_t][address_t]int;
// 
// Function: deposit : function ()
procedure {:sourceloc "test.sol", 7, 5} {:message "SimpleTest::deposit"} deposit#17(__this: address_t, __msg_sender: address_t, __msg_value: int)
modifies __balance, balance#5;
{
  __balance := __balance[__this := (__balance[__this] + __msg_value)];
  balance#5 := balance#5[__this := balance#5[__this][__msg_sender := (balance#5[__this][__msg_sender] + __msg_value)]];
  $return0:
}

procedure {:inline 1} {:message "send"} __send(__this: address_t, __msg_sender: address_t, __msg_value: int, amount: int)
  returns (__result: bool)
    modifies __balance, fallbackAmt, fallbackSucceeded, fallbackAddr, b;
{
  //assume (__balance[__msg_sender] >= amount);
  // TODO: call fallback
  if (__balance[__msg_sender] >= amount) {
  __balance := __balance[__this := (__balance[__this] + amount)];
  __balance := __balance[__msg_sender := (__balance[__msg_sender] - amount)];
  __result := true;
  fallbackAmt := amount;
  fallbackAddr := __this;
  fallbackSucceeded := true;
  /*b := withdrawAmt == amount && withdrawAddr == __this;
  b := false;*/
  }
  else {
  __result := false;
  }

  fallbackSucceeded := false;
}

// 
// Function: withdraw : function (uint256)
procedure {:sourceloc "test.sol", 11, 5} {:message "SimpleTest::withdraw"} withdraw#46(__this: address_t, __msg_sender: address_t, __msg_value: int, amt#19: int)
    modifies __balance, balance#5, withdrawAddr, withdrawAmt, withdrawCalled, fallbackAmt, fallbackSucceeded, fallbackAddr, a, b;
{
  var __send#41: bool;
  withdrawAddr := __msg_sender;
  withdrawAmt := amt#19;
  withdrawCalled := true;
  withdrawCalled := false;
  if ((balance#5[__this][__msg_sender] >= amt#19)) {
  a := true;
  a := false;
  balance#5 := balance#5[__this := balance#5[__this][__msg_sender := (balance#5[__this][__msg_sender] - amt#19)]];
  assume {:sourceloc "test.sol", 14, 13} {:message ""} true;
  //b := __balance[__this] >= amt#19;
  b := true;
  b := false;
  call __send#41 := __send(__msg_sender, __this, 0, amt#19);
  }

  $return1:
}

procedure getBalance(__this: address_t, __msg_sender: address_t, __msg_value: int)
    returns (balance: int)
{
    balance := balance#5[__this][__msg_sender];
}

// 
// Default constructor
procedure {:sourceloc "test.sol", 4, 1} {:message "SimpleTest::[implicit_constructor]"} __constructor#47(__this: address_t, __msg_sender: address_t, __msg_value: int)
    modifies __balance, balance#5, __now;
{
  __balance := __balance[__this := 0];
  //balance#5 := balance#5[__this := balance#5[__this][__msg_sender := 0]];
  //assume (forall i:int :: balance#5[__this][i] == 0);
  //balance#5 := balance#5[__this := ~const~array~~LB~int~RB~int()];
  //balance#5 := balance#5[__this := balance#5[__this][user := 0]];
  balance#5[__this] := ~const~array~~LB~int~RB~int();
  __now := 0;
}

procedure main()
    modifies __balance, balance#5, __now, userBal, fallbackSucceeded, fallbackAmt, withdrawCalled, withdrawAddr, withdrawAmt, fallbackAddr, a, b;
{
    var owner : address_t;
    var contract : address_t;
    var amt : int;
    var action : int;
    var address : address_t;

    assume(owner != contract);
    assume(user != owner);
    assume(user != contract);
    assume(__balance[user] > 0);

    call __constructor#47(contract, owner, 0);

    while (*) {
        havoc amt;
        assume(amt >= 0);
        havoc address;
        assume(address != contract);

        call userBal := getBalance(contract, user, 0);

        if(*) {
            call deposit#17(contract, address, amt);
        }
        else {
            call withdraw#46(contract, address, 0, amt);
        }
    }
}

procedure ULTIMATE.start()
    modifies __balance, balance#5, __now, userBal, fallbackSucceeded, fallbackAmt, withdrawCalled, withdrawAddr, withdrawAmt, fallbackAddr, a, b;
{

    withdrawCalled := false;
    fallbackSucceeded := false;
    a := false;
    b := false;

    call main();
}

function { :smtdefined "((as const (Array Int Int)) 0)" } ~const~array~~LB~int~RB~int() returns (out : [int]int);