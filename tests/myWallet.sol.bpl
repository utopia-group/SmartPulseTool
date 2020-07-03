// Global declarations and definitions related to the address type
// #LTLProperty: []((AP(withdrawCalled == true) && AP(withdrawAddr == owner) && AP(withdrawAmt <= ownerBal)) ==> <>(AP(fallbackSucceeded == true) && AP(fallbackAmt == withdrawAmt) && AP(fallbackAddr == owner))) 
type address_t = int;
const unique __zero__address: address_t;
var __balance: [address_t]int;
type string_t;
var __now: int;

var withdrawCalled: bool;
var withdrawAddr: address_t;
var withdrawAmt: int;
var ownerBal: int;
var owner: address_t;
var fallbackSucceeded: bool;
var fallbackAmt: int;
var fallbackAddr: address_t;

// 
// ------- Source: myWallet.sol -------
// Pragma: solidity^0.4.24
// 
// ------- Contract: SimpleTest -------
// 
// State variable: bal : uint256
var {:sourceloc "myWallet.sol", 5, 5} {:message "bal"} bal#3: [address_t]int;
// 
// State variable: owner : address
var {:sourceloc "myWallet.sol", 6, 5} {:message "owner"} owner#5: [address_t]address_t;
// 
// Function:  : function ()
procedure {:sourceloc "myWallet.sol", 8, 5} {:message "SimpleTest::[constructor]"} __constructor#18(__this: address_t, __msg_sender: address_t, __msg_value: int)
    modifies __balance, owner#5, bal#3;
{
  __balance := __balance[__this := 0];
  owner#5 := owner#5[__this := __msg_sender];
  bal#3 := bal#3[__this := 0];
  $return0:
}

// 
// Function: deposit : function ()
procedure {:sourceloc "myWallet.sol", 13, 5} {:message "SimpleTest::deposit"} deposit#27(__this: address_t, __msg_sender: address_t, __msg_value: int)
    modifies __balance, bal#3;
{
  __balance := __balance[__this := (__balance[__this] + __msg_value)];
  bal#3 := bal#3[__this := (bal#3[__this] + __msg_value)];
  $return1:
}

procedure {:inline 1} {:message "send"} __send(__this: address_t, __msg_sender: address_t, __msg_value: int, amount: int)
  returns (__result: bool)
    modifies __balance, fallbackAmt, fallbackSucceeded, fallbackAddr;
{
  /*assume (__balance[__msg_sender] >= amount);
  // TODO: call fallback
  if (*) {*/
  if(__balance[__msg_sender] >= amount) {
  __balance := __balance[__this := (__balance[__this] + amount)];
  __balance := __balance[__msg_sender := (__balance[__msg_sender] - amount)];
  __result := true;
  fallbackAmt := amount;
  fallbackAddr := __this;
  fallbackSucceeded := true;
  }
  else {
  __result := false;
  }
  fallbackSucceeded := false;
}

procedure getBal(__this: address_t, __msg_sender: address_t, __msg_value: int)
  returns (amt: int)
{
  amt := bal#3[__this];
}

// 
// Function: withdraw : function (uint256)
procedure {:sourceloc "myWallet.sol", 17, 5} {:message "SimpleTest::withdraw"} withdraw#55(__this: address_t, __msg_sender: address_t, __msg_value: int, amt#29: int)
    modifies __balance, bal#3, fallbackSucceeded, fallbackAmt, withdrawAddr, withdrawCalled, withdrawAmt, fallbackAddr;
{
  var __send#50: bool;
  withdrawAddr := __msg_sender;
  withdrawAmt := amt#29;
  withdrawCalled := true;
  withdrawCalled := false;
  if (((__msg_sender == owner#5[__this]) && (bal#3[__this] >= amt#29))) {
  bal#3 := bal#3[__this := (bal#3[__this] - amt#29)];
  assume {:sourceloc "myWallet.sol", 20, 13} {:message ""} true;
  call __send#50 := __send(__msg_sender, __this, 0, amt#29);
  }

  $return2:
}

procedure main()
    modifies __balance, bal#3, owner#5, owner, ownerBal, withdrawCalled, withdrawAddr, withdrawAmt, fallbackSucceeded, fallbackAddr, fallbackAmt;
{
    var contract : address_t;
    var addr : address_t;
    var amt : int;

    assume(owner != contract);

    call __constructor#18(contract, owner, 0);

    while(*) {
        call ownerBal := getBal(contract, owner, 0);

        havoc addr;
        havoc amt;

        assume(amt >= 0);
        assume(addr != contract);

        if(*) {
            call deposit#27(contract, addr, amt);
        }
        else {
            call withdraw#55(contract, addr, 0, amt);
        }
    }
}

procedure ULTIMATE.start()
    modifies __balance, bal#3, owner#5, owner, ownerBal, withdrawCalled, withdrawAddr, withdrawAmt, fallbackSucceeded, fallbackAddr, fallbackAmt;
{
    withdrawCalled := false;
    fallbackSucceeded := false;
    call main();
}
