// Global declarations and definitions related to the address type
// #LTLProperty: <>[]AP(__now==0)
type address_t;
const unique __zero__address: address_t;
var __balance: [address_t]int;
type string_t;
var __now: int;
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
    modifies __balance;
{
  assume (__balance[__msg_sender] >= amount);
  // TODO: call fallback
  if (*) {
  __balance := __balance[__this := (__balance[__this] + amount)];
  __balance := __balance[__msg_sender := (__balance[__msg_sender] - amount)];
  __result := true;
  }
  else {
  __result := false;
  }

}

// 
// Function: withdraw : function (uint256)
procedure {:sourceloc "test.sol", 11, 5} {:message "SimpleTest::withdraw"} withdraw#46(__this: address_t, __msg_sender: address_t, __msg_value: int, amt#19: int)
    modifies __balance, balance#5;
{
  var __send#41: bool;
  if ((balance#5[__this][__msg_sender] >= amt#19)) {
  balance#5 := balance#5[__this := balance#5[__this][__msg_sender := (balance#5[__this][__msg_sender] - amt#19)]];
  assume {:sourceloc "test.sol", 14, 13} {:message ""} true;
  call __send#41 := __send(__msg_sender, __this, 0, amt#19);
  }

  $return1:
}

// 
// Default constructor
procedure {:sourceloc "test.sol", 4, 1} {:message "SimpleTest::[implicit_constructor]"} __constructor#47(__this: address_t, __msg_sender: address_t, __msg_value: int)
    modifies __balance, balance#5, __now;
{
  __balance := __balance[__this := 0];
  balance#5 := balance#5[__this := balance#5[__this][__msg_sender := 0]];
  __now := 0;
}

procedure rnd()
    returns (rnd : int)
{
    
}

procedure ULTIMATE.start()
    modifies __balance, balance#5, __now;
{
    var owner : address_t;
    var contract : address_t;
    var user : address_t;
    var amt : int;

    assume(owner != contract);
    assume(user != owner);
    assume(user != contract);
    
    call __constructor#47(contract, owner, 5);

    amt := 2;

    assume(amt >= 0);

    //call deposit#17(contract, user, amt);
    //call withdraw#46(contract, user, 0, amt);

    while (*) {
        //call amt := rnd();
        amt := 1;

        assume(amt >= 0);

        call deposit#17(contract, user, amt);
        call withdraw#46(contract, user, 0, amt);
    }
}
