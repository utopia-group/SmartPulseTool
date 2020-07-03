// Global declarations and definitions related to the address type
// #LTLProperty: []((AP(withdrawCalled == true) && AP(withdrawAddr == user) && AP(withdrawAmt <= userBal)) ==> <>(AP(fallbackSucceeded == true) && AP(fallbackAmt == withdrawAmt) && AP(fallbackAddr == user))) && [](AP(userBal >= 0))
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


procedure main()
    modifies __balance, balance#5, __now, userBal, fallbackSucceeded, fallbackAmt, withdrawCalled, withdrawAddr, withdrawAmt, fallbackAddr;
{
    var owner : address_t;
    var contract : address_t;
    var amt : int;
    var action : int;
    var address : address_t;
    var sum : int;

    userBal := 0;
    assume(owner != contract);
    assume(user != owner);
    assume(user != contract);
    assume(__balance[user] > 0);

    //call __constructor#47(contract, owner, 0);
    __balance := __balance[contract := 0];
    balance#5[contract] := ~const~array~~LB~int~RB~int();
    __now := 0;
    sum := 0;

    while (*) {
        havoc amt;
        assume(amt >= 0);
        havoc address;
        assume(address != contract);

        assume(balance#5[contract][address] <= sum);

        //call userBal := getBalance(contract, user, 0);
        userBal := balance#5[contract][user];

        if(*) {
            //call deposit#17(contract, address, amt);
            sum := sum + amt;
            __balance := __balance[contract := (__balance[contract] + amt)];
            balance#5 := balance#5[contract := balance#5[contract][address := (balance#5[contract][address] + amt)]];
        }
        else {
            //call withdraw#46(contract, address, 0, amt);
            withdrawAddr := address;
            withdrawAmt := amt;
            withdrawCalled := true;
            withdrawCalled := false;
            if ((balance#5[contract][address] >= amt)) {
                sum := sum - amt;
                balance#5 := balance#5[contract := balance#5[contract][address := (balance#5[contract][address] - amt)]];

                //call __send#41 := __send(address, contract, 0, amt);
                if (__balance[contract] >= amt) {
                    __balance := __balance[address := (__balance[address] + amt)];
                    __balance := __balance[contract := (__balance[contract] - amt)];
                    fallbackAmt := amt;
                    fallbackAddr := address;
                    fallbackSucceeded := true;
                }

                fallbackSucceeded := false;
            }
        }
    }
}

procedure ULTIMATE.start()
    modifies __balance, balance#5, __now, userBal, fallbackSucceeded, fallbackAmt, withdrawCalled, withdrawAddr, withdrawAmt, fallbackAddr;
{

    withdrawCalled := false;
    fallbackSucceeded := false;

    call main();
}

function { :smtdefined "((as const (Array Int Int)) 0)" } ~const~array~~LB~int~RB~int() returns (out : [int]int);

