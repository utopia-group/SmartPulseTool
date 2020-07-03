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

// 

// 
// Function: withdraw : function (uint256)

procedure main()
    modifies __balance, bal#3, owner#5, owner, ownerBal, withdrawCalled, withdrawAddr, withdrawAmt, fallbackSucceeded, fallbackAddr, fallbackAmt;
{
    var contract : address_t;
    var addr : address_t;
    var amt : int;

    assume(owner != contract);

    __balance := __balance[contract := 0];
    owner#5 := owner#5[contract := owner];
    bal#3 := bal#3[contract := 0];

    while(*) {
        ownerBal := bal#3[contract];

        havoc addr;
        havoc amt;

        assume(amt >= 0);
        assume(addr != contract);

        if(*) {
            __balance := __balance[contract := (__balance[contract] + amt)];
            bal#3 := bal#3[contract := (bal#3[contract] + amt)];
        }
        else {
            //call withdraw#55(contract, addr, 0, amt);
            withdrawAddr := addr;
            withdrawAmt := amt;
            withdrawCalled := true;
            withdrawCalled := false;
            if (((withdrawAddr == owner#5[contract]) && (bal#3[contract] >= withdrawAmt))) {
                bal#3 := bal#3[contract := (bal#3[contract] - withdrawAmt)];
                //call __send(addr, contract, 0, withdrawAmt);
                if(__balance[contract] >= withdrawAmt) {
                    __balance := __balance[withdrawAddr := (__balance[withdrawAddr] + withdrawAmt)];
                    __balance := __balance[contract := (__balance[contract] - withdrawAmt)];
                    fallbackAmt := withdrawAmt;
                    fallbackAddr := withdrawAddr;
                    fallbackSucceeded := true;
                }
                fallbackSucceeded := false;
            }
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
