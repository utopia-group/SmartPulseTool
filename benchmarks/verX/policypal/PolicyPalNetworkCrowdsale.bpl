// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:PolicyPalNetworkCrowdsale.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// sum_token_balances
// LTLProperty: [](!finished(*, sum_balances0[balances_BasicToken[token_PolicyPalNetworkCrowdsale[this]]] != totalSupply__BasicToken[token_PolicyPalNetworkCrowdsale[this]]))

// crowdsale_admin
// LTLFairness: [](!finished(Ownable.transferOwnership))
// LTLProperty: [](!finished(*, admin_CrowdsaleAuthorizer[this] != owner_Ownable[token_PolicyPalNetworkCrowdsale[this]]))

// same_wei
// LTLProperty: [](!finished(*, now > saleEndTime_CrowdsaleAuthorizer[this] && old(raisedWei_PolicyPalNetworkCrowdsale[this]) != raisedWei_PolicyPalNetworkCrowdsale[this]))

// no_transfer
// #LTLProperty: [](!finished(PolicyPalNetworkCrowdsale.buy, msg.sender == this))

type Ref = int;

type ContractName = int;

var null: Ref;

var ERC20Basic: ContractName;

var SafeMath: ContractName;

var BasicToken: ContractName;

var ERC20: ContractName;

var StandardToken: ContractName;

var BurnableToken: ContractName;

var Ownable: ContractName;

var PolicyPalNetworkToken: ContractName;

var CrowdsaleAuthorizer: ContractName;

var PolicyPalNetworkCrowdsale: ContractName;

function {:smtdefined "x"} ConstantToRef(x: int) : Ref;

function BoogieRefToInt(x: Ref) : int;

function {:bvbuiltin "mod"} modBpl(x: int, y: int) : int;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefIntArr() : [Ref]int;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntIntArr() : [int]int;

function {:smtdefined "((as const (Array Int Bool)) false)"} zeroRefBoolArr() : [Ref]bool;

function {:smtdefined "((as const (Array Int Bool)) false)"} zeroIntBoolArr() : [int]bool;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefRefArr() : [Ref]Ref;

function {:smtdefined "((as const (Array Int Int)) 0)"} zeroIntRefArr() : [int]Ref;

function nonlinearMul(x: int, y: int) : int;

function nonlinearDiv(x: int, y: int) : int;

function nonlinearPow(x: int, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int_balances0: [Ref][Ref]int;

var sum_balances0: [Ref]int;

var M_Ref_int_allowed1: [Ref][Ref]int;

var M_Ref_Ref_allowed1: [Ref][Ref]Ref;

var sum_allowed1: [Ref]int;

var M_Ref_int_participated2: [Ref][Ref]int;

var sum_participated2: [Ref]int;

var M_Ref_bool_whitelistAddresses3: [Ref][Ref]bool;

var sum_whitelistAddresses3: [Ref]int;

var M_int_Ref: [Ref][int]Ref;

var sum: [Ref]int;

var M_int_bool: [Ref][int]bool;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance;



implementation ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} totalSupply_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:public} {:inline 1} balanceOf_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s13: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s22: Ref, value_s22: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance;



implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s51: int, b_s51: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s75: int, b_s75: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



implementation BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.balances[i0]=M_Ref_int_balances0[balances_BasicToken[this]][i0]"} {:sum "sum(this.balances)=sum_balances0[balances_BasicToken[this]]"} balances_BasicToken: [Ref]Ref;

var {:access "this.totalSupply_=totalSupply__BasicToken[this]"} totalSupply__BasicToken: [Ref]int;

procedure {:public} {:inline 1} totalSupply_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas;



implementation totalSupply_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := totalSupply_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := totalSupply_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s155: Ref, 
    _value_s155: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s155: Ref, 
    _value_s155: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s155, _value_s155);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s155, _value_s155);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s167: Ref)
   returns (balance_s167: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas;



implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s167: Ref)
   returns (balance_s167: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call balance_s167 := balanceOf_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s167);
        assume revert || gas < 0;
    }
    else
    {
        call balance_s167 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s167);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance;



implementation ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    owner_s179: Ref, 
    spender_s179: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s190: Ref, 
    to_s190: Ref, 
    value_s190: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s199: Ref, 
    value_s199: int)
   returns (__ret_0_: bool);



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



implementation StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.allowed[i0][i1]=M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][i0]][i1]"} {:sum "sum(this.allowed)=sum_allowed1[allowed_StandardToken[this]]"} allowed_StandardToken: [Ref]Ref;

procedure {:public} {:inline 1} transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s304: Ref, 
    _to_s304: Ref, 
    _value_s304: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s304: Ref, 
    _to_s304: Ref, 
    _value_s304: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s304, _to_s304, _value_s304);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s304, _to_s304, _value_s304);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s332: Ref, 
    _value_s332: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s332: Ref, 
    _value_s332: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s332, _value_s332);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s332, _value_s332);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s348: Ref, 
    _spender_s348: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s348: Ref, 
    _spender_s348: Ref)
   returns (__ret_0_: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s348, _spender_s348);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s348, _spender_s348);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s389: Ref, 
    _addedValue_s389: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s389: Ref, 
    _addedValue_s389: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s389, _addedValue_s389);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s389, _addedValue_s389);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s449: Ref, 
    _subtractedValue_s449: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s449: Ref, 
    _subtractedValue_s449: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s449, _subtractedValue_s449);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s449, _subtractedValue_s449);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} BurnableToken_BurnableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} BurnableToken_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



implementation BurnableToken_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call BurnableToken_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call BurnableToken_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s501: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



implementation burn_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s501: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call burn_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s501);
        assume revert || gas < 0;
    }
    else
    {
        call burn_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s501);
        assume !revert && gas >= 0;
    }
}



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance, owner_Ownable;



implementation Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s555: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s555: Ref)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s555);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s555);
        assume !revert && gas >= 0;
    }
}



var {:access "this.name=name_PolicyPalNetworkToken[this]"} name_PolicyPalNetworkToken: [Ref]int;

var {:access "this.symbol=symbol_PolicyPalNetworkToken[this]"} symbol_PolicyPalNetworkToken: [Ref]int;

var {:access "this.decimals=decimals_PolicyPalNetworkToken[this]"} decimals_PolicyPalNetworkToken: [Ref]int;

var {:access "this.tokenSaleContract=tokenSaleContract_PolicyPalNetworkToken[this]"} tokenSaleContract_PolicyPalNetworkToken: [Ref]Ref;

var {:access "this.isTokenTransferable=isTokenTransferable_PolicyPalNetworkToken[this]"} isTokenTransferable_PolicyPalNetworkToken: [Ref]bool;

procedure {:public} {:inline 1} toggleTransferable_PolicyPalNetworkToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _toggle_s628: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, isTokenTransferable_PolicyPalNetworkToken;



implementation toggleTransferable_PolicyPalNetworkToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _toggle_s628: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call toggleTransferable_PolicyPalNetworkToken__fail(this, msgsender_MSG, msgvalue_MSG, _toggle_s628);
        assume revert || gas < 0;
    }
    else
    {
        call toggleTransferable_PolicyPalNetworkToken__success(this, msgsender_MSG, msgvalue_MSG, _toggle_s628);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} PolicyPalNetworkToken_PolicyPalNetworkToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref);
  modifies Balance, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken, isTokenTransferable_PolicyPalNetworkToken, revert, totalSupply__BasicToken, sum_balances0, M_Ref_int_balances0, gas, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} PolicyPalNetworkToken_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken, isTokenTransferable_PolicyPalNetworkToken;



implementation PolicyPalNetworkToken_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call PolicyPalNetworkToken_PolicyPalNetworkToken__fail(this, msgsender_MSG, msgvalue_MSG, _tokenTotalAmount_s674, _adminAddr_s674);
        assume revert || gas < 0;
    }
    else
    {
        call PolicyPalNetworkToken_PolicyPalNetworkToken__success(this, msgsender_MSG, msgvalue_MSG, _tokenTotalAmount_s674, _adminAddr_s674);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s695: Ref, 
    _value_s695: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s695: Ref, 
    _value_s695: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := transfer_PolicyPalNetworkToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s695, _value_s695);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_PolicyPalNetworkToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s695, _value_s695);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s719: Ref, 
    _to_s719: Ref, 
    _value_s719: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s719: Ref, 
    _to_s719: Ref, 
    _value_s719: int)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := transferFrom_PolicyPalNetworkToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s719, _to_s719, _value_s719);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_PolicyPalNetworkToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s719, _to_s719, _value_s719);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_PolicyPalNetworkToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s740: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



implementation burn_PolicyPalNetworkToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s740: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call burn_PolicyPalNetworkToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s740);
        assume revert || gas < 0;
    }
    else
    {
        call burn_PolicyPalNetworkToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s740);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} emergencyERC20Drain_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s757: Ref, 
    _amount_s757: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, sum_balances0, M_Ref_int_balances0;



implementation emergencyERC20Drain_PolicyPalNetworkToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s757: Ref, 
    _amount_s757: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call emergencyERC20Drain_PolicyPalNetworkToken__fail(this, msgsender_MSG, msgvalue_MSG, _token_s757, _amount_s757);
        assume revert || gas < 0;
    }
    else
    {
        call emergencyERC20Drain_PolicyPalNetworkToken__success(this, msgsender_MSG, msgvalue_MSG, _token_s757, _amount_s757);
        assume !revert && gas >= 0;
    }
}



var {:access "this.participated[i0]=M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][i0]"} {:sum "sum(this.participated)=sum_participated2[participated_CrowdsaleAuthorizer[this]]"} participated_CrowdsaleAuthorizer: [Ref]Ref;

var {:access "this.whitelistAddresses[i0]=M_Ref_bool_whitelistAddresses3[whitelistAddresses_CrowdsaleAuthorizer[this]][i0]"} {:sum "sum(this.whitelistAddresses)=sum_whitelistAddresses3[whitelistAddresses_CrowdsaleAuthorizer[this]]"} whitelistAddresses_CrowdsaleAuthorizer: [Ref]Ref;

var {:access "this.admin=admin_CrowdsaleAuthorizer[this]"} admin_CrowdsaleAuthorizer: [Ref]Ref;

var {:access "this.saleStartTime=saleStartTime_CrowdsaleAuthorizer[this]"} saleStartTime_CrowdsaleAuthorizer: [Ref]int;

var {:access "this.saleEndTime=saleEndTime_CrowdsaleAuthorizer[this]"} saleEndTime_CrowdsaleAuthorizer: [Ref]int;

var {:access "this.increaseMaxContribTime=increaseMaxContribTime_CrowdsaleAuthorizer[this]"} increaseMaxContribTime_CrowdsaleAuthorizer: [Ref]int;

var {:access "this.minContribution=minContribution_CrowdsaleAuthorizer[this]"} minContribution_CrowdsaleAuthorizer: [Ref]int;

var {:access "this.maxContribution=maxContribution_CrowdsaleAuthorizer[this]"} maxContribution_CrowdsaleAuthorizer: [Ref]int;

procedure {:inline 1} CrowdsaleAuthorizer_CrowdsaleAuthorizer_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int);
  modifies Balance, participated_CrowdsaleAuthorizer, M_Ref_int_participated2, sum_participated2, whitelistAddresses_CrowdsaleAuthorizer, M_Ref_bool_whitelistAddresses3, admin_CrowdsaleAuthorizer, saleStartTime_CrowdsaleAuthorizer, saleEndTime_CrowdsaleAuthorizer, increaseMaxContribTime_CrowdsaleAuthorizer, minContribution_CrowdsaleAuthorizer, maxContribution_CrowdsaleAuthorizer, revert, Alloc, gas;



procedure {:constructor} {:public} {:inline 1} CrowdsaleAuthorizer_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, Balance, participated_CrowdsaleAuthorizer, M_Ref_int_participated2, sum_participated2, whitelistAddresses_CrowdsaleAuthorizer, M_Ref_bool_whitelistAddresses3, admin_CrowdsaleAuthorizer, saleStartTime_CrowdsaleAuthorizer, saleEndTime_CrowdsaleAuthorizer, increaseMaxContribTime_CrowdsaleAuthorizer, minContribution_CrowdsaleAuthorizer, maxContribution_CrowdsaleAuthorizer, Alloc;



implementation CrowdsaleAuthorizer_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call CrowdsaleAuthorizer_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s899, _saleStartTime_s899, _saleEndTime_s899, _increaseMaxContribTime_s899, _minContribution_s899, _maxContribution_s899);
        assume revert || gas < 0;
    }
    else
    {
        call CrowdsaleAuthorizer_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _admin_s899, _saleStartTime_s899, _saleEndTime_s899, _increaseMaxContribTime_s899, _minContribution_s899, _maxContribution_s899);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} updateWhitelist_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _user_s929: Ref, 
    _allow_s929: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_bool_whitelistAddresses3;



implementation updateWhitelist_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _user_s929: Ref, 
    _allow_s929: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call updateWhitelist_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _user_s929, _allow_s929);
        assume revert || gas < 0;
    }
    else
    {
        call updateWhitelist_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _user_s929, _allow_s929);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} updateWhitelists_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _users_s986: Ref, 
    _allows_s986: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, M_Ref_bool_whitelistAddresses3;



implementation updateWhitelists_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _users_s986: Ref, 
    _allows_s986: Ref)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call updateWhitelists_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _users_s986, _allows_s986);
        assume revert || gas < 0;
    }
    else
    {
        call updateWhitelists_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _users_s986, _allows_s986);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} eligibleAmount_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1045: Ref, 
    _amount_s1045: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas;



implementation eligibleAmount_CrowdsaleAuthorizer(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1045: Ref, 
    _amount_s1045: int)
   returns (__ret_0_: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := eligibleAmount_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _contributor_s1045, _amount_s1045);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := eligibleAmount_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _contributor_s1045, _amount_s1045);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} saleStarted_CrowdsaleAuthorizer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas;



implementation saleStarted_CrowdsaleAuthorizer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := saleStarted_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := saleStarted_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} saleEnded_CrowdsaleAuthorizer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas;



implementation saleEnded_CrowdsaleAuthorizer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := saleEnded_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := saleEnded_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} eligibleAmountCheck_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1103: Ref, 
    _amount_s1103: int)
   returns (__ret_0_: int);
  modifies gas, sum_participated2, M_Ref_int_participated2;



var {:access "this.multiSigWallet=multiSigWallet_PolicyPalNetworkCrowdsale[this]"} multiSigWallet_PolicyPalNetworkCrowdsale: [Ref]Ref;

var {:access "this.token=token_PolicyPalNetworkCrowdsale[this]"} token_PolicyPalNetworkCrowdsale: [Ref]Ref;

var {:access "this.raisedWei=raisedWei_PolicyPalNetworkCrowdsale[this]"} raisedWei_PolicyPalNetworkCrowdsale: [Ref]int;

var {:access "this.haltSale=haltSale_PolicyPalNetworkCrowdsale[this]"} haltSale_PolicyPalNetworkCrowdsale: [Ref]bool;

procedure {:inline 1} PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int);
  modifies Balance, multiSigWallet_PolicyPalNetworkCrowdsale, raisedWei_PolicyPalNetworkCrowdsale, haltSale_PolicyPalNetworkCrowdsale, revert, token_PolicyPalNetworkCrowdsale, gas, Alloc, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken, isTokenTransferable_PolicyPalNetworkToken;



procedure {:constructor} {:public} {:inline 1} PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, Balance, participated_CrowdsaleAuthorizer, M_Ref_int_participated2, sum_participated2, whitelistAddresses_CrowdsaleAuthorizer, M_Ref_bool_whitelistAddresses3, admin_CrowdsaleAuthorizer, saleStartTime_CrowdsaleAuthorizer, saleEndTime_CrowdsaleAuthorizer, increaseMaxContribTime_CrowdsaleAuthorizer, minContribution_CrowdsaleAuthorizer, maxContribution_CrowdsaleAuthorizer, Alloc, multiSigWallet_PolicyPalNetworkCrowdsale, raisedWei_PolicyPalNetworkCrowdsale, haltSale_PolicyPalNetworkCrowdsale, token_PolicyPalNetworkCrowdsale, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken, isTokenTransferable_PolicyPalNetworkToken;



implementation PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s1241, _multiSigWallet_s1241, _totalTokenSupply_s1241, _premintedTokenSupply_s1241, _presaleTokenSupply_s1241, _saleStartTime_s1241, _saleEndTime_s1241, _increaseMaxContribTime_s1241, _rate_s1241, _minContribution_s1241, _maxContribution_s1241);
        assume revert || gas < 0;
    }
    else
    {
        call PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _admin_s1241, _multiSigWallet_s1241, _totalTokenSupply_s1241, _premintedTokenSupply_s1241, _presaleTokenSupply_s1241, _saleStartTime_s1241, _saleEndTime_s1241, _increaseMaxContribTime_s1241, _rate_s1241, _minContribution_s1241, _maxContribution_s1241);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setHaltSale_PolicyPalNetworkCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _halt_s1253: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, haltSale_PolicyPalNetworkCrowdsale;



implementation setHaltSale_PolicyPalNetworkCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _halt_s1253: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call setHaltSale_PolicyPalNetworkCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _halt_s1253);
        assume revert || gas < 0;
    }
    else
    {
        call setHaltSale_PolicyPalNetworkCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _halt_s1253);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:public} {:inline 1} buy_PolicyPalNetworkCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _recipient_s1370: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, Balance, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2, sum_balances0, M_Ref_int_balances0;



implementation buy_PolicyPalNetworkCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _recipient_s1370: Ref)
   returns (__ret_0_: int)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := buy_PolicyPalNetworkCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _recipient_s1370);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := buy_PolicyPalNetworkCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _recipient_s1370);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} emergencyDrain_PolicyPalNetworkCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _anyToken_s1419: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, gas, sum_balances0, M_Ref_int_balances0, Balance, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2;



implementation emergencyDrain_PolicyPalNetworkCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _anyToken_s1419: Ref)
   returns (__ret_0_: bool)
{
  var __exception: bool;

    havoc __exception;
    revert := false;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        call __ret_0_ := emergencyDrain_PolicyPalNetworkCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _anyToken_s1419);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := emergencyDrain_PolicyPalNetworkCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _anyToken_s1419);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sendETHToMultiSig_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1431: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, revert, gas, Balance, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyWhenTransferAllowed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isValidDestination_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s616: Ref);
  modifies gas, revert;



procedure {:inline 1} onlyAdmin_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} validAddress_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _addr_s814: Ref);
  modifies gas, revert;



procedure {:inline 1} validSale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_ERC20Basic(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20Basic();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, sum_allowed1;



procedure CorralChoice_BurnableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



procedure CorralEntry_BurnableToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, now, owner_Ownable, Balance;



procedure CorralChoice_PolicyPalNetworkToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, isTokenTransferable_PolicyPalNetworkToken, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



procedure CorralEntry_PolicyPalNetworkToken();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, now, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, isTokenTransferable_PolicyPalNetworkToken, Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken;



procedure CorralChoice_CrowdsaleAuthorizer(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, M_Ref_bool_whitelistAddresses3;



procedure CorralEntry_CrowdsaleAuthorizer();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, now, M_Ref_bool_whitelistAddresses3, Balance, participated_CrowdsaleAuthorizer, M_Ref_int_participated2, sum_participated2, whitelistAddresses_CrowdsaleAuthorizer, admin_CrowdsaleAuthorizer, saleStartTime_CrowdsaleAuthorizer, saleEndTime_CrowdsaleAuthorizer, increaseMaxContribTime_CrowdsaleAuthorizer, minContribution_CrowdsaleAuthorizer, maxContribution_CrowdsaleAuthorizer;



procedure CorralChoice_PolicyPalNetworkCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, isTokenTransferable_PolicyPalNetworkToken, M_Ref_bool_whitelistAddresses3, haltSale_PolicyPalNetworkCrowdsale, Balance, raisedWei_PolicyPalNetworkCrowdsale, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken, sum_participated2, M_Ref_int_participated2;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, now, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, isTokenTransferable_PolicyPalNetworkToken, M_Ref_bool_whitelistAddresses3, haltSale_PolicyPalNetworkCrowdsale, Balance, raisedWei_PolicyPalNetworkCrowdsale, participated_CrowdsaleAuthorizer, M_Ref_int_participated2, sum_participated2, whitelistAddresses_CrowdsaleAuthorizer, admin_CrowdsaleAuthorizer, saleStartTime_CrowdsaleAuthorizer, saleEndTime_CrowdsaleAuthorizer, increaseMaxContribTime_CrowdsaleAuthorizer, minContribution_CrowdsaleAuthorizer, maxContribution_CrowdsaleAuthorizer, multiSigWallet_PolicyPalNetworkCrowdsale, token_PolicyPalNetworkCrowdsale, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_balances0: [Ref][Ref]int;

var __tmp__sum_balances0: [Ref]int;

var __tmp__M_Ref_int_allowed1: [Ref][Ref]int;

var __tmp__M_Ref_Ref_allowed1: [Ref][Ref]Ref;

var __tmp__sum_allowed1: [Ref]int;

var __tmp__M_Ref_int_participated2: [Ref][Ref]int;

var __tmp__sum_participated2: [Ref]int;

var __tmp__M_Ref_bool_whitelistAddresses3: [Ref][Ref]bool;

var __tmp__sum_whitelistAddresses3: [Ref]int;

var __tmp__M_int_Ref: [Ref][int]Ref;

var __tmp__sum: [Ref]int;

var __tmp__M_int_bool: [Ref][int]bool;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__balances_BasicToken: [Ref]Ref;

var __tmp__totalSupply__BasicToken: [Ref]int;

var __tmp__allowed_StandardToken: [Ref]Ref;

var __tmp__owner_Ownable: [Ref]Ref;

var __tmp__name_PolicyPalNetworkToken: [Ref]int;

var __tmp__symbol_PolicyPalNetworkToken: [Ref]int;

var __tmp__decimals_PolicyPalNetworkToken: [Ref]int;

var __tmp__tokenSaleContract_PolicyPalNetworkToken: [Ref]Ref;

var __tmp__isTokenTransferable_PolicyPalNetworkToken: [Ref]bool;

var __tmp__participated_CrowdsaleAuthorizer: [Ref]Ref;

var __tmp__whitelistAddresses_CrowdsaleAuthorizer: [Ref]Ref;

var __tmp__admin_CrowdsaleAuthorizer: [Ref]Ref;

var __tmp__saleStartTime_CrowdsaleAuthorizer: [Ref]int;

var __tmp__saleEndTime_CrowdsaleAuthorizer: [Ref]int;

var __tmp__increaseMaxContribTime_CrowdsaleAuthorizer: [Ref]int;

var __tmp__minContribution_CrowdsaleAuthorizer: [Ref]int;

var __tmp__maxContribution_CrowdsaleAuthorizer: [Ref]int;

var __tmp__multiSigWallet_PolicyPalNetworkCrowdsale: [Ref]Ref;

var __tmp__token_PolicyPalNetworkCrowdsale: [Ref]Ref;

var __tmp__raisedWei_PolicyPalNetworkCrowdsale: [Ref]int;

var __tmp__haltSale_PolicyPalNetworkCrowdsale: [Ref]bool;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s51: int, b_s51: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s75: int, b_s75: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} totalSupply_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} totalSupply_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s155: Ref, 
    _value_s155: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s155: Ref, 
    _value_s155: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s167: Ref)
   returns (balance_s167: int);
  modifies gas;



procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s167: Ref)
   returns (balance_s167: int);
  modifies gas;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__Alloc;



procedure {:inline 1} StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



procedure {:inline 1} StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1;



procedure {:inline 1} transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s304: Ref, 
    _to_s304: Ref, 
    _value_s304: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s304: Ref, 
    _to_s304: Ref, 
    _value_s304: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s332: Ref, 
    _value_s332: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s332: Ref, 
    _value_s332: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s348: Ref, 
    _spender_s348: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s348: Ref, 
    _spender_s348: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s389: Ref, 
    _addedValue_s389: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s389: Ref, 
    _addedValue_s389: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s449: Ref, 
    _subtractedValue_s449: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s449: Ref, 
    _subtractedValue_s449: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} BurnableToken_BurnableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} BurnableToken_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BurnableToken_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} burn_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s501: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



procedure {:inline 1} burn_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s501: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply__BasicToken;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s555: Ref);
  modifies gas, revert, owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s555: Ref);
  modifies gas, revert, __tmp__owner_Ownable;



procedure {:inline 1} toggleTransferable_PolicyPalNetworkToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _toggle_s628: bool);
  modifies gas, isTokenTransferable_PolicyPalNetworkToken, revert;



procedure {:inline 1} toggleTransferable_PolicyPalNetworkToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _toggle_s628: bool);
  modifies gas, __tmp__isTokenTransferable_PolicyPalNetworkToken, revert;



procedure {:inline 1} PolicyPalNetworkToken_PolicyPalNetworkToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref);
  modifies __tmp__Balance, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, revert, __tmp__totalSupply__BasicToken, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, gas, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} PolicyPalNetworkToken_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken, isTokenTransferable_PolicyPalNetworkToken, revert, gas;



procedure {:constructor} {:inline 1} PolicyPalNetworkToken_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, revert, gas;



procedure {:inline 1} transfer_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s695: Ref, 
    _value_s695: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s695: Ref, 
    _value_s695: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s719: Ref, 
    _to_s719: Ref, 
    _value_s719: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s719: Ref, 
    _to_s719: Ref, 
    _value_s719: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} burn_PolicyPalNetworkToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s740: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply__BasicToken;



procedure {:inline 1} burn_PolicyPalNetworkToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s740: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply__BasicToken;



procedure {:inline 1} emergencyERC20Drain_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s757: Ref, 
    _amount_s757: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} emergencyERC20Drain_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s757: Ref, 
    _amount_s757: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} CrowdsaleAuthorizer_CrowdsaleAuthorizer_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int);
  modifies __tmp__Balance, __tmp__participated_CrowdsaleAuthorizer, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, revert, __tmp__Alloc, gas;



procedure {:constructor} {:inline 1} CrowdsaleAuthorizer_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int);
  modifies Balance, participated_CrowdsaleAuthorizer, M_Ref_int_participated2, sum_participated2, whitelistAddresses_CrowdsaleAuthorizer, M_Ref_bool_whitelistAddresses3, admin_CrowdsaleAuthorizer, saleStartTime_CrowdsaleAuthorizer, saleEndTime_CrowdsaleAuthorizer, increaseMaxContribTime_CrowdsaleAuthorizer, minContribution_CrowdsaleAuthorizer, maxContribution_CrowdsaleAuthorizer, revert, Alloc, gas;



procedure {:constructor} {:inline 1} CrowdsaleAuthorizer_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int);
  modifies __tmp__Balance, __tmp__participated_CrowdsaleAuthorizer, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, revert, __tmp__Alloc, gas;



procedure {:inline 1} updateWhitelist_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _user_s929: Ref, 
    _allow_s929: bool);
  modifies gas, M_Ref_bool_whitelistAddresses3, revert;



procedure {:inline 1} updateWhitelist_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _user_s929: Ref, 
    _allow_s929: bool);
  modifies gas, __tmp__M_Ref_bool_whitelistAddresses3, revert;



procedure {:inline 1} updateWhitelists_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _users_s986: Ref, 
    _allows_s986: Ref);
  modifies gas, revert, M_Ref_bool_whitelistAddresses3;



procedure {:inline 1} updateWhitelists_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _users_s986: Ref, 
    _allows_s986: Ref);
  modifies gas, revert, __tmp__M_Ref_bool_whitelistAddresses3;



procedure {:inline 1} eligibleAmount_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1045: Ref, 
    _amount_s1045: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} eligibleAmount_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1045: Ref, 
    _amount_s1045: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} saleStarted_CrowdsaleAuthorizer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} saleStarted_CrowdsaleAuthorizer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} saleEnded_CrowdsaleAuthorizer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} saleEnded_CrowdsaleAuthorizer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} eligibleAmountCheck_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1103: Ref, 
    _amount_s1103: int)
   returns (__ret_0_: int);
  modifies gas, __tmp__sum_participated2, __tmp__M_Ref_int_participated2;



procedure {:inline 1} PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int);
  modifies __tmp__Balance, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, revert, __tmp__token_PolicyPalNetworkCrowdsale, gas, __tmp__Alloc, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken;



procedure {:constructor} {:inline 1} PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int);
  modifies Balance, participated_CrowdsaleAuthorizer, M_Ref_int_participated2, sum_participated2, whitelistAddresses_CrowdsaleAuthorizer, M_Ref_bool_whitelistAddresses3, admin_CrowdsaleAuthorizer, saleStartTime_CrowdsaleAuthorizer, saleEndTime_CrowdsaleAuthorizer, increaseMaxContribTime_CrowdsaleAuthorizer, minContribution_CrowdsaleAuthorizer, maxContribution_CrowdsaleAuthorizer, revert, Alloc, gas, multiSigWallet_PolicyPalNetworkCrowdsale, raisedWei_PolicyPalNetworkCrowdsale, haltSale_PolicyPalNetworkCrowdsale, token_PolicyPalNetworkCrowdsale, balances_BasicToken, M_Ref_int_balances0, sum_balances0, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, name_PolicyPalNetworkToken, symbol_PolicyPalNetworkToken, decimals_PolicyPalNetworkToken, tokenSaleContract_PolicyPalNetworkToken, isTokenTransferable_PolicyPalNetworkToken;



procedure {:constructor} {:inline 1} PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int);
  modifies __tmp__Balance, __tmp__participated_CrowdsaleAuthorizer, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, revert, __tmp__Alloc, gas, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken;



procedure {:inline 1} setHaltSale_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _halt_s1253: bool);
  modifies gas, haltSale_PolicyPalNetworkCrowdsale, revert;



procedure {:inline 1} setHaltSale_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _halt_s1253: bool);
  modifies gas, __tmp__haltSale_PolicyPalNetworkCrowdsale, revert;



procedure {:inline 1} FallbackMethod_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__sum_participated2, __tmp__M_Ref_int_participated2, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:inline 1} buy_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _recipient_s1370: Ref)
   returns (__ret_0_: int);
  modifies gas, Balance, revert, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:inline 1} buy_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _recipient_s1370: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__Balance, revert, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__sum_participated2, __tmp__M_Ref_int_participated2, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:inline 1} emergencyDrain_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _anyToken_s1419: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, Balance, raisedWei_PolicyPalNetworkCrowdsale, sum_participated2, M_Ref_int_participated2;



procedure {:inline 1} emergencyDrain_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _anyToken_s1419: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:inline 1} sendETHToMultiSig_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1431: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__sum_participated2, __tmp__M_Ref_int_participated2, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_int_participated2, __tmp__sum_participated2, __tmp__M_Ref_bool_whitelistAddresses3, __tmp__sum_whitelistAddresses3, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_bool, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__name_PolicyPalNetworkToken, __tmp__symbol_PolicyPalNetworkToken, __tmp__decimals_PolicyPalNetworkToken, __tmp__tokenSaleContract_PolicyPalNetworkToken, __tmp__isTokenTransferable_PolicyPalNetworkToken, __tmp__participated_CrowdsaleAuthorizer, __tmp__whitelistAddresses_CrowdsaleAuthorizer, __tmp__admin_CrowdsaleAuthorizer, __tmp__saleStartTime_CrowdsaleAuthorizer, __tmp__saleEndTime_CrowdsaleAuthorizer, __tmp__increaseMaxContribTime_CrowdsaleAuthorizer, __tmp__minContribution_CrowdsaleAuthorizer, __tmp__maxContribution_CrowdsaleAuthorizer, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale, __tmp__token_PolicyPalNetworkCrowdsale, __tmp__raisedWei_PolicyPalNetworkCrowdsale, __tmp__haltSale_PolicyPalNetworkCrowdsale, revert, gas;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyWhenTransferAllowed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} isValidDestination_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s616: Ref);
  modifies gas, revert;



procedure {:inline 1} onlyAdmin_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} validAddress_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _addr_s814: Ref);
  modifies gas, revert;



procedure {:inline 1} validSale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
    havoc newRef;
    assume __tmp__Alloc[newRef] == false;
    __tmp__Alloc[newRef] := true;
    assume newRef != null;
}



implementation FreshRefGenerator__success() returns (newRef: Ref)
{
    havoc newRef;
    assume Alloc[newRef] == false;
    Alloc[newRef] := true;
    assume newRef != null;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeMath_SafeMath_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call SafeMath_SafeMath_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s51: int, b_s51: int)
   returns (__ret_0_: int)
{
    gas := gas - 18;
    gas := gas - 156;
    assume b_s51 >= 0;
    assume a_s51 >= 0;
    gas := gas - 84;
    assume a_s51 >= 0;
    assume b_s51 >= 0;
    assume a_s51 - b_s51 >= 0;
    __ret_0_ := a_s51 - b_s51;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s51: int, b_s51: int)
   returns (__ret_0_: int)
{
    gas := gas - 18;
    gas := gas - 156;
    assume b_s51 >= 0;
    assume a_s51 >= 0;
    assert b_s51 <= a_s51;
    gas := gas - 84;
    assume a_s51 >= 0;
    assume b_s51 >= 0;
    assume a_s51 - b_s51 >= 0;
    __ret_0_ := a_s51 - b_s51;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s75: int, b_s75: int)
   returns (__ret_0_: int)
{
  var c_s74: int;

    gas := gas - 15;
    gas := gas - 85;
    assume c_s74 >= 0;
    assume a_s75 >= 0;
    assume b_s75 >= 0;
    assume a_s75 + b_s75 >= 0;
    c_s74 := a_s75 + b_s75;
    gas := gas - 130;
    assume c_s74 >= 0;
    assume a_s75 >= 0;
    gas := gas - 50;
    assume c_s74 >= 0;
    __ret_0_ := c_s74;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s75: int, b_s75: int)
   returns (__ret_0_: int)
{
  var c_s74: int;

    gas := gas - 15;
    gas := gas - 85;
    assume c_s74 >= 0;
    assume a_s75 >= 0;
    assume b_s75 >= 0;
    assume a_s75 + b_s75 >= 0;
    c_s74 := a_s75 + b_s75;
    gas := gas - 130;
    assume c_s74 >= 0;
    assume a_s75 >= 0;
    assert c_s74 >= a_s75;
    gas := gas - 50;
    assume c_s74 >= 0;
    __ret_0_ := c_s74;
    return;
}



implementation BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_1 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__balances_BasicToken[this] := __var_1;
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]] := zeroRefIntArr();
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := 0;
    __tmp__totalSupply__BasicToken[this] := 0;
}



implementation BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_1 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    balances_BasicToken[this] := __var_1;
    M_Ref_int_balances0[balances_BasicToken[this]] := zeroRefIntArr();
    sum_balances0[balances_BasicToken[this]] := 0;
    totalSupply__BasicToken[this] := 0;
}



implementation BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation totalSupply_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 832;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    __ret_0_ := __tmp__totalSupply__BasicToken[this];
    return;
}



implementation totalSupply_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 832;
    assume totalSupply__BasicToken[this] >= 0;
    __ret_0_ := totalSupply__BasicToken[this];
    return;
}



implementation transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s155: Ref, 
    _value_s155: int)
   returns (__ret_0_: bool)
{
  var __var_2: Ref;
  var __var_3: int;
  var __var_4: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_2 := null;
    if (!(_to_s155 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s155 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s155
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s155 >= 0;
    call __var_3 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s155);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := __var_3;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    assume __var_3 >= 0;
    gas := gas - 81732;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s155] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s155] >= 0;
    assume _value_s155 >= 0;
    call __var_4 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s155], _value_s155);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s155];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s155] := __var_4;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s155];
    assume __var_4 >= 0;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s155: Ref, 
    _value_s155: int)
   returns (__ret_0_: bool)
{
  var __var_2: Ref;
  var __var_3: int;
  var __var_4: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_2 := null;
    if (!(_to_s155 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s155 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s155 <= M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s155 >= 0;
    call __var_3 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG], _value_s155);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := __var_3;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assume __var_3 >= 0;
    gas := gas - 81732;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s155] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s155] >= 0;
    assume _value_s155 >= 0;
    call __var_4 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s155], _value_s155);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s155];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s155] := __var_4;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s155];
    assume __var_4 >= 0;
    assert {:EventEmitted "Transfer_BasicToken"} true;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s167: Ref)
   returns (balance_s167: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s167] >= 0;
    balance_s167 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s167];
    return;
}



implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s167: Ref)
   returns (balance_s167: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_owner_s167] >= 0;
    balance_s167 := M_Ref_int_balances0[balances_BasicToken[this]][_owner_s167];
    return;
}



implementation ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_5: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_5 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_StandardToken[this] := __var_5;
    __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]] := zeroRefRefArr();
    __tmp__M_Ref_int_allowed1[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_5: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_5 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_StandardToken[this] := __var_5;
    M_Ref_Ref_allowed1[allowed_StandardToken[this]] := zeroRefRefArr();
    M_Ref_int_allowed1[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s304: Ref, 
    _to_s304: Ref, 
    _value_s304: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: int;
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: int;
  var __var_12: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_6 := null;
    if (!(_to_s304 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 656;
    assume _value_s304 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304] >= 0;
    if (!(_value_s304
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304]))
    {
        revert := true;
        return;
    }

    gas := gas - 834;
    assume _value_s304 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]
       == null)
    {
        call __var_7 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304] := __var_7;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG]
       >= 0;
    if (!(_value_s304
       <= __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 40878;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304] >= 0;
    assume _value_s304 >= 0;
    call __var_8 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304], _value_s304);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304] := __var_8;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s304];
    assume __var_8 >= 0;
    gas := gas - 40866;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s304] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s304] >= 0;
    assume _value_s304 >= 0;
    call __var_9 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s304], _value_s304);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s304];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s304] := __var_9;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s304];
    assume __var_9 >= 0;
    gas := gas - 41222;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]
       == null)
    {
        call __var_10 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304] := __var_10;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]
       == null)
    {
        call __var_12 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304] := __var_12;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG]
       >= 0;
    assume _value_s304 >= 0;
    call __var_11 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG], _value_s304);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG] := __var_11;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s304]][msgsender_MSG];
    assume __var_11 >= 0;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s304: Ref, 
    _to_s304: Ref, 
    _value_s304: int)
   returns (__ret_0_: bool)
{
  var __var_6: Ref;
  var __var_7: Ref;
  var __var_8: int;
  var __var_9: int;
  var __var_10: Ref;
  var __var_11: int;
  var __var_12: Ref;

    gas := gas - 6;
    gas := gas - 88;
    __var_6 := null;
    if (!(_to_s304 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 656;
    assume _value_s304 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s304] >= 0;
    if (!(_value_s304 <= M_Ref_int_balances0[balances_BasicToken[this]][_from_s304]))
    {
        revert := true;
        return;
    }

    gas := gas - 834;
    assume _value_s304 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304] == null)
    {
        call __var_7 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304] := __var_7;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG]
       >= 0;
    if (!(_value_s304
       <= M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 40878;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s304] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s304] >= 0;
    assume _value_s304 >= 0;
    call __var_8 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_from_s304], _value_s304);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_from_s304];
    M_Ref_int_balances0[balances_BasicToken[this]][_from_s304] := __var_8;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_from_s304];
    assume __var_8 >= 0;
    gas := gas - 40866;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s304] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s304] >= 0;
    assume _value_s304 >= 0;
    call __var_9 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s304], _value_s304);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s304];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s304] := __var_9;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s304];
    assume __var_9 >= 0;
    gas := gas - 41222;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304] == null)
    {
        call __var_10 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304] := __var_10;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304] == null)
    {
        call __var_12 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304] := __var_12;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG]
       >= 0;
    assume _value_s304 >= 0;
    call __var_11 := sub_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG], _value_s304);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG] := __var_11;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s304]][msgsender_MSG];
    assume __var_11 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s332: Ref, 
    _value_s332: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;

    gas := gas - 6;
    gas := gas - 40398;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_13 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_13;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s332]
       >= 0;
    assume _value_s332 >= 0;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s332];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s332] := _value_s332;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s332];
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s332: Ref, 
    _value_s332: int)
   returns (__ret_0_: bool)
{
  var __var_13: Ref;

    gas := gas - 6;
    gas := gas - 40398;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_13 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_13;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s332]
       >= 0;
    assume _value_s332 >= 0;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s332];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s332] := _value_s332;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s332];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s348: Ref, 
    _spender_s348: Ref)
   returns (__ret_0_: int)
{
  var __var_14: Ref;

    gas := gas - 6;
    gas := gas - 788;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s348]
       == null)
    {
        call __var_14 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s348] := __var_14;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s348]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s348]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s348]][_spender_s348]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s348]][_spender_s348];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s348: Ref, 
    _spender_s348: Ref)
   returns (__ret_0_: int)
{
  var __var_14: Ref;

    gas := gas - 6;
    gas := gas - 788;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s348] == null)
    {
        call __var_14 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s348] := __var_14;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s348]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s348]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s348]][_spender_s348]
       >= 0;
    __ret_0_ := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s348]][_spender_s348];
    return;
}



implementation increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s389: Ref, 
    _addedValue_s389: int)
   returns (__ret_0_: bool)
{
  var __var_15: Ref;
  var __var_16: int;
  var __var_17: Ref;

    gas := gas - 6;
    gas := gas - 41234;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_15 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_15;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s389]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_17 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_17;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s389]
       >= 0;
    assume _addedValue_s389 >= 0;
    call __var_16 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s389], _addedValue_s389);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s389];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s389] := __var_16;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s389];
    assume __var_16 >= 0;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s389: Ref, 
    _addedValue_s389: int)
   returns (__ret_0_: bool)
{
  var __var_15: Ref;
  var __var_16: int;
  var __var_17: Ref;

    gas := gas - 6;
    gas := gas - 41234;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_15 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_15;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s389]
       >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_17 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_17;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s389]
       >= 0;
    assume _addedValue_s389 >= 0;
    call __var_16 := add_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s389], _addedValue_s389);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s389];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s389] := __var_16;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s389];
    assume __var_16 >= 0;
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s449: Ref, 
    _subtractedValue_s449: int)
   returns (__ret_0_: bool)
{
  var oldValue_s448: int;
  var __var_18: Ref;
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;

    gas := gas - 6;
    gas := gas - 792;
    assume oldValue_s448 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_18 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_18;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449]
       >= 0;
    oldValue_s448 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
    gas := gas - 18;
    assume _subtractedValue_s449 >= 0;
    assume oldValue_s448 >= 0;
    if (_subtractedValue_s449 > oldValue_s448)
    {
        gas := gas - 10398;
        if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_19 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_19;
            __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449]
           >= 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449] := 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
    }
    else
    {
        gas := gas - 40464;
        if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_20 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_20;
            __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449]
           >= 0;
        assume oldValue_s448 >= 0;
        assume _subtractedValue_s449 >= 0;
        call __var_21 := sub_SafeMath__fail(this, this, 0, oldValue_s448, _subtractedValue_s449);
        if (revert)
        {
            return;
        }

        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449] := __var_21;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
        assume __var_21 >= 0;
    }

    gas := gas - 20;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s449: Ref, 
    _subtractedValue_s449: int)
   returns (__ret_0_: bool)
{
  var oldValue_s448: int;
  var __var_18: Ref;
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: int;

    gas := gas - 6;
    gas := gas - 792;
    assume oldValue_s448 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_18 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_18;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449]
       >= 0;
    oldValue_s448 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
    gas := gas - 18;
    assume _subtractedValue_s449 >= 0;
    assume oldValue_s448 >= 0;
    if (_subtractedValue_s449 > oldValue_s448)
    {
        gas := gas - 10398;
        if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_19 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_19;
            M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449]
           >= 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449] := 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
    }
    else
    {
        gas := gas - 40464;
        if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_20 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_20;
            M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449]
           >= 0;
        assume oldValue_s448 >= 0;
        assume _subtractedValue_s449 >= 0;
        call __var_21 := sub_SafeMath__success(this, this, 0, oldValue_s448, _subtractedValue_s449);
        if (revert)
        {
            return;
        }

        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449] := __var_21;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s449];
        assume __var_21 >= 0;
    }

    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 20;
    __ret_0_ := true;
    return;
}



implementation BurnableToken_BurnableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation BurnableToken_BurnableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation BurnableToken_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BurnableToken_BurnableToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation BurnableToken_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BurnableToken_BurnableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation burn_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s501: int)
{
  var burner_s500: Ref;
  var __var_22: int;
  var __var_23: int;

    gas := gas - 654;
    assume _value_s501 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s501
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    burner_s500 := msgsender_MSG;
    gas := gas - 40878;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s500] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s500] >= 0;
    assume _value_s501 >= 0;
    call __var_22 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s500], _value_s501);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s500];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s500] := __var_22;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s500];
    assume __var_22 >= 0;
    gas := gas - 40494;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume _value_s501 >= 0;
    call __var_23 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply__BasicToken[this], _value_s501);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply__BasicToken[this] := __var_23;
    assume __var_23 >= 0;
}



implementation burn_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s501: int)
{
  var burner_s500: Ref;
  var __var_22: int;
  var __var_23: int;

    gas := gas - 654;
    assume _value_s501 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s501 <= M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    burner_s500 := msgsender_MSG;
    gas := gas - 40878;
    assume M_Ref_int_balances0[balances_BasicToken[this]][burner_s500] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][burner_s500] >= 0;
    assume _value_s501 >= 0;
    call __var_22 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][burner_s500], _value_s501);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][burner_s500];
    M_Ref_int_balances0[balances_BasicToken[this]][burner_s500] := __var_22;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][burner_s500];
    assume __var_22 >= 0;
    gas := gas - 40494;
    assume totalSupply__BasicToken[this] >= 0;
    assume totalSupply__BasicToken[this] >= 0;
    assume _value_s501 >= 0;
    call __var_23 := sub_SafeMath__success(this, this, 0, totalSupply__BasicToken[this], _value_s501);
    if (revert)
    {
        return;
    }

    totalSupply__BasicToken[this] := __var_23;
    assume __var_23 >= 0;
    assert {:EventEmitted "Burn_BurnableToken"} true;
}



implementation Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__owner_Ownable[this] := null;
    __tmp__owner_Ownable[this] := msgsender_MSG;
}



implementation Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    owner_Ownable[this] := null;
    owner_Ownable[this] := msgsender_MSG;
}



implementation Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s555: Ref)
{
  var __var_24: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 88;
    __var_24 := null;
    if (!(newOwner_s555 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 40534;
    __tmp__owner_Ownable[this] := newOwner_s555;
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s555: Ref)
{
  var __var_24: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 88;
    __var_24 := null;
    if (!(newOwner_s555 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 40534;
    owner_Ownable[this] := newOwner_s555;
}



implementation toggleTransferable_PolicyPalNetworkToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _toggle_s628: bool)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    __tmp__isTokenTransferable_PolicyPalNetworkToken[this] := _toggle_s628;
}



implementation toggleTransferable_PolicyPalNetworkToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _toggle_s628: bool)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20317;
    isTokenTransferable_PolicyPalNetworkToken[this] := _toggle_s628;
}



implementation PolicyPalNetworkToken_PolicyPalNetworkToken_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_PolicyPalNetworkToken[this] := -265736987;
    __tmp__symbol_PolicyPalNetworkToken[this] := 1369188523;
    __tmp__decimals_PolicyPalNetworkToken[this] := 18;
    __tmp__tokenSaleContract_PolicyPalNetworkToken[this] := null;
    __tmp__isTokenTransferable_PolicyPalNetworkToken[this] := false;
    call isValidDestination_pre__fail(this, msgsender_MSG, msgvalue_MSG, _adminAddr_s674);
    if (revert)
    {
        return;
    }

    assume _tokenTotalAmount_s674 >= 0;
    if (!(_tokenTotalAmount_s674 > 0))
    {
        revert := true;
        return;
    }

    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume _tokenTotalAmount_s674 >= 0;
    __tmp__totalSupply__BasicToken[this] := _tokenTotalAmount_s674;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _tokenTotalAmount_s674 >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := _tokenTotalAmount_s674;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__tokenSaleContract_PolicyPalNetworkToken[this] := msgsender_MSG;
    if (__tmp__DType[this] == PolicyPalNetworkToken)
    {
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, _adminAddr_s674);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }
}



implementation PolicyPalNetworkToken_PolicyPalNetworkToken_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_PolicyPalNetworkToken[this] := -265736987;
    symbol_PolicyPalNetworkToken[this] := 1369188523;
    decimals_PolicyPalNetworkToken[this] := 18;
    tokenSaleContract_PolicyPalNetworkToken[this] := null;
    isTokenTransferable_PolicyPalNetworkToken[this] := false;
    call isValidDestination_pre__success(this, msgsender_MSG, msgvalue_MSG, _adminAddr_s674);
    if (revert)
    {
        return;
    }

    assume _tokenTotalAmount_s674 >= 0;
    if (!(_tokenTotalAmount_s674 > 0))
    {
        revert := true;
        return;
    }

    assume totalSupply__BasicToken[this] >= 0;
    assume _tokenTotalAmount_s674 >= 0;
    totalSupply__BasicToken[this] := _tokenTotalAmount_s674;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _tokenTotalAmount_s674 >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := _tokenTotalAmount_s674;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assert {:EventEmitted "Transfer_PolicyPalNetworkToken"} true;
    tokenSaleContract_PolicyPalNetworkToken[this] := msgsender_MSG;
    if (DType[this] == PolicyPalNetworkToken)
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, _adminAddr_s674);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }
}



implementation PolicyPalNetworkToken_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref)
{
    call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BurnableToken_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PolicyPalNetworkToken_PolicyPalNetworkToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _tokenTotalAmount_s674, _adminAddr_s674);
    if (revert)
    {
        return;
    }
}



implementation PolicyPalNetworkToken_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _tokenTotalAmount_s674: int, 
    _adminAddr_s674: Ref)
{
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BurnableToken_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PolicyPalNetworkToken_PolicyPalNetworkToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _tokenTotalAmount_s674, _adminAddr_s674);
    if (revert)
    {
        return;
    }
}



implementation transfer_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s695: Ref, 
    _value_s695: int)
   returns (__ret_0_: bool)
{
  var __var_27: bool;
  var __var_28: int;

    gas := gas - 3;
    call onlyWhenTransferAllowed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isValidDestination_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s695);
    if (revert)
    {
        return;
    }

    gas := gas - 15;
    assume _value_s695 >= 0;
    if (__tmp__DType[this] == PolicyPalNetworkToken)
    {
        call __var_27 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s695, _value_s695);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_27;
    return;
}



implementation transfer_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s695: Ref, 
    _value_s695: int)
   returns (__ret_0_: bool)
{
  var __var_27: bool;
  var __var_28: int;

    gas := gas - 3;
    call onlyWhenTransferAllowed_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isValidDestination_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s695);
    if (revert)
    {
        return;
    }

    gas := gas - 15;
    assume _value_s695 >= 0;
    if (DType[this] == PolicyPalNetworkToken)
    {
        call __var_27 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s695, _value_s695);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_27;
    return;
}



implementation transferFrom_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s719: Ref, 
    _to_s719: Ref, 
    _value_s719: int)
   returns (__ret_0_: bool)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 3;
    call onlyWhenTransferAllowed_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isValidDestination_pre__fail(this, msgsender_MSG, msgvalue_MSG, _to_s719);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume _value_s719 >= 0;
    if (__tmp__DType[this] == PolicyPalNetworkToken)
    {
        call __var_29 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s719, _to_s719, _value_s719);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_29;
    return;
}



implementation transferFrom_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s719: Ref, 
    _to_s719: Ref, 
    _value_s719: int)
   returns (__ret_0_: bool)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 3;
    call onlyWhenTransferAllowed_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call isValidDestination_pre__success(this, msgsender_MSG, msgvalue_MSG, _to_s719);
    if (revert)
    {
        return;
    }

    gas := gas - 18;
    assume _value_s719 >= 0;
    if (DType[this] == PolicyPalNetworkToken)
    {
        call __var_29 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s719, _to_s719, _value_s719);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_29;
    return;
}



implementation burn_PolicyPalNetworkToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s740: int)
{
  var __var_31: int;

    gas := gas - 7;
    assume _value_s740 >= 0;
    if (__tmp__DType[this] == PolicyPalNetworkToken)
    {
        call burn_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s740);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }
}



implementation burn_PolicyPalNetworkToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s740: int)
{
  var __var_31: int;

    gas := gas - 7;
    assume _value_s740 >= 0;
    if (DType[this] == PolicyPalNetworkToken)
    {
        call burn_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s740);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "Transfer_PolicyPalNetworkToken"} true;
}



implementation emergencyERC20Drain_PolicyPalNetworkToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s757: Ref, 
    _amount_s757: int)
{
  var __var_32: bool;
  var __var_33: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37458;
    assume _amount_s757 >= 0;
    if (__tmp__DType[_token_s757] == PolicyPalNetworkToken)
    {
        call __var_32 := transfer_PolicyPalNetworkToken__fail(_token_s757, this, __var_33, __tmp__owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[_token_s757] == BurnableToken)
    {
        call __var_32 := transfer_BasicToken__fail(_token_s757, this, __var_33, __tmp__owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[_token_s757] == StandardToken)
    {
        call __var_32 := transfer_BasicToken__fail(_token_s757, this, __var_33, __tmp__owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[_token_s757] == ERC20)
    {
        call __var_32 := transfer_ERC20Basic(_token_s757, this, __var_33, __tmp__owner_Ownable[this], _amount_s757);
    }
    else if (__tmp__DType[_token_s757] == BasicToken)
    {
        call __var_32 := transfer_BasicToken__fail(_token_s757, this, __var_33, __tmp__owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[_token_s757] == ERC20Basic)
    {
        call __var_32 := transfer_ERC20Basic(_token_s757, this, __var_33, __tmp__owner_Ownable[this], _amount_s757);
    }
    else
    {
        assume false;
    }
}



implementation emergencyERC20Drain_PolicyPalNetworkToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s757: Ref, 
    _amount_s757: int)
{
  var __var_32: bool;
  var __var_33: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37458;
    assume _amount_s757 >= 0;
    if (DType[_token_s757] == PolicyPalNetworkToken)
    {
        call __var_32 := transfer_PolicyPalNetworkToken__success(_token_s757, this, __var_33, owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_token_s757] == BurnableToken)
    {
        call __var_32 := transfer_BasicToken__success(_token_s757, this, __var_33, owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_token_s757] == StandardToken)
    {
        call __var_32 := transfer_BasicToken__success(_token_s757, this, __var_33, owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_token_s757] == ERC20)
    {
        call __var_32 := transfer_ERC20Basic(_token_s757, this, __var_33, owner_Ownable[this], _amount_s757);
    }
    else if (DType[_token_s757] == BasicToken)
    {
        call __var_32 := transfer_BasicToken__success(_token_s757, this, __var_33, owner_Ownable[this], _amount_s757);
        if (revert)
        {
            return;
        }
    }
    else if (DType[_token_s757] == ERC20Basic)
    {
        call __var_32 := transfer_ERC20Basic(_token_s757, this, __var_33, owner_Ownable[this], _amount_s757);
    }
    else
    {
        assume false;
    }
}



implementation CrowdsaleAuthorizer_CrowdsaleAuthorizer_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int)
{
  var __var_36: Ref;
  var __var_37: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_36 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__participated_CrowdsaleAuthorizer[this] := __var_36;
    __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]] := zeroRefIntArr();
    __tmp__sum_participated2[__tmp__participated_CrowdsaleAuthorizer[this]] := 0;
    call __var_37 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__whitelistAddresses_CrowdsaleAuthorizer[this] := __var_37;
    __tmp__M_Ref_bool_whitelistAddresses3[__tmp__whitelistAddresses_CrowdsaleAuthorizer[this]] := zeroRefBoolArr();
    __tmp__admin_CrowdsaleAuthorizer[this] := null;
    __tmp__saleStartTime_CrowdsaleAuthorizer[this] := 0;
    __tmp__saleEndTime_CrowdsaleAuthorizer[this] := 0;
    __tmp__increaseMaxContribTime_CrowdsaleAuthorizer[this] := 0;
    __tmp__minContribution_CrowdsaleAuthorizer[this] := 0;
    __tmp__maxContribution_CrowdsaleAuthorizer[this] := 0;
    call validAddress_pre__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s899);
    if (revert)
    {
        return;
    }

    assume _saleStartTime_s899 >= 0;
    assume __tmp__now >= 0;
    if (!(_saleStartTime_s899 > __tmp__now))
    {
        revert := true;
        return;
    }

    assume _saleEndTime_s899 >= 0;
    assume __tmp__now >= 0;
    if (!(_saleEndTime_s899 > __tmp__now))
    {
        revert := true;
        return;
    }

    assume _increaseMaxContribTime_s899 >= 0;
    assume __tmp__now >= 0;
    if (!(_increaseMaxContribTime_s899 > __tmp__now))
    {
        revert := true;
        return;
    }

    assume _saleStartTime_s899 >= 0;
    assume _saleEndTime_s899 >= 0;
    if (!(_saleStartTime_s899 < _saleEndTime_s899))
    {
        revert := true;
        return;
    }

    assume _increaseMaxContribTime_s899 >= 0;
    assume _saleStartTime_s899 >= 0;
    if (!(_increaseMaxContribTime_s899 > _saleStartTime_s899))
    {
        revert := true;
        return;
    }

    assume _maxContribution_s899 >= 0;
    if (!(_maxContribution_s899 > 0))
    {
        revert := true;
        return;
    }

    assume _minContribution_s899 >= 0;
    assume _maxContribution_s899 >= 0;
    if (!(_minContribution_s899 < _maxContribution_s899))
    {
        revert := true;
        return;
    }

    __tmp__admin_CrowdsaleAuthorizer[this] := _admin_s899;
    assume __tmp__saleStartTime_CrowdsaleAuthorizer[this] >= 0;
    assume _saleStartTime_s899 >= 0;
    __tmp__saleStartTime_CrowdsaleAuthorizer[this] := _saleStartTime_s899;
    assume __tmp__saleEndTime_CrowdsaleAuthorizer[this] >= 0;
    assume _saleEndTime_s899 >= 0;
    __tmp__saleEndTime_CrowdsaleAuthorizer[this] := _saleEndTime_s899;
    assume __tmp__increaseMaxContribTime_CrowdsaleAuthorizer[this] >= 0;
    assume _increaseMaxContribTime_s899 >= 0;
    __tmp__increaseMaxContribTime_CrowdsaleAuthorizer[this] := _increaseMaxContribTime_s899;
    assume __tmp__minContribution_CrowdsaleAuthorizer[this] >= 0;
    assume _minContribution_s899 >= 0;
    __tmp__minContribution_CrowdsaleAuthorizer[this] := _minContribution_s899;
    assume __tmp__maxContribution_CrowdsaleAuthorizer[this] >= 0;
    assume _maxContribution_s899 >= 0;
    __tmp__maxContribution_CrowdsaleAuthorizer[this] := _maxContribution_s899;
}



implementation CrowdsaleAuthorizer_CrowdsaleAuthorizer_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int)
{
  var __var_36: Ref;
  var __var_37: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_36 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    participated_CrowdsaleAuthorizer[this] := __var_36;
    M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]] := zeroRefIntArr();
    sum_participated2[participated_CrowdsaleAuthorizer[this]] := 0;
    call __var_37 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    whitelistAddresses_CrowdsaleAuthorizer[this] := __var_37;
    M_Ref_bool_whitelistAddresses3[whitelistAddresses_CrowdsaleAuthorizer[this]] := zeroRefBoolArr();
    admin_CrowdsaleAuthorizer[this] := null;
    saleStartTime_CrowdsaleAuthorizer[this] := 0;
    saleEndTime_CrowdsaleAuthorizer[this] := 0;
    increaseMaxContribTime_CrowdsaleAuthorizer[this] := 0;
    minContribution_CrowdsaleAuthorizer[this] := 0;
    maxContribution_CrowdsaleAuthorizer[this] := 0;
    call validAddress_pre__success(this, msgsender_MSG, msgvalue_MSG, _admin_s899);
    if (revert)
    {
        return;
    }

    assume _saleStartTime_s899 >= 0;
    assume now >= 0;
    if (!(_saleStartTime_s899 > now))
    {
        revert := true;
        return;
    }

    assume _saleEndTime_s899 >= 0;
    assume now >= 0;
    if (!(_saleEndTime_s899 > now))
    {
        revert := true;
        return;
    }

    assume _increaseMaxContribTime_s899 >= 0;
    assume now >= 0;
    if (!(_increaseMaxContribTime_s899 > now))
    {
        revert := true;
        return;
    }

    assume _saleStartTime_s899 >= 0;
    assume _saleEndTime_s899 >= 0;
    if (!(_saleStartTime_s899 < _saleEndTime_s899))
    {
        revert := true;
        return;
    }

    assume _increaseMaxContribTime_s899 >= 0;
    assume _saleStartTime_s899 >= 0;
    if (!(_increaseMaxContribTime_s899 > _saleStartTime_s899))
    {
        revert := true;
        return;
    }

    assume _maxContribution_s899 >= 0;
    if (!(_maxContribution_s899 > 0))
    {
        revert := true;
        return;
    }

    assume _minContribution_s899 >= 0;
    assume _maxContribution_s899 >= 0;
    if (!(_minContribution_s899 < _maxContribution_s899))
    {
        revert := true;
        return;
    }

    admin_CrowdsaleAuthorizer[this] := _admin_s899;
    assume saleStartTime_CrowdsaleAuthorizer[this] >= 0;
    assume _saleStartTime_s899 >= 0;
    saleStartTime_CrowdsaleAuthorizer[this] := _saleStartTime_s899;
    assume saleEndTime_CrowdsaleAuthorizer[this] >= 0;
    assume _saleEndTime_s899 >= 0;
    saleEndTime_CrowdsaleAuthorizer[this] := _saleEndTime_s899;
    assume increaseMaxContribTime_CrowdsaleAuthorizer[this] >= 0;
    assume _increaseMaxContribTime_s899 >= 0;
    increaseMaxContribTime_CrowdsaleAuthorizer[this] := _increaseMaxContribTime_s899;
    assume minContribution_CrowdsaleAuthorizer[this] >= 0;
    assume _minContribution_s899 >= 0;
    minContribution_CrowdsaleAuthorizer[this] := _minContribution_s899;
    assume maxContribution_CrowdsaleAuthorizer[this] >= 0;
    assume _maxContribution_s899 >= 0;
    maxContribution_CrowdsaleAuthorizer[this] := _maxContribution_s899;
}



implementation CrowdsaleAuthorizer_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int)
{
  var __var_36: Ref;
  var __var_37: Ref;

    call CrowdsaleAuthorizer_CrowdsaleAuthorizer_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s899, _saleStartTime_s899, _saleEndTime_s899, _increaseMaxContribTime_s899, _minContribution_s899, _maxContribution_s899);
    if (revert)
    {
        return;
    }
}



implementation CrowdsaleAuthorizer_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s899: Ref, 
    _saleStartTime_s899: int, 
    _saleEndTime_s899: int, 
    _increaseMaxContribTime_s899: int, 
    _minContribution_s899: int, 
    _maxContribution_s899: int)
{
  var __var_36: Ref;
  var __var_37: Ref;

    call CrowdsaleAuthorizer_CrowdsaleAuthorizer_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _admin_s899, _saleStartTime_s899, _saleEndTime_s899, _increaseMaxContribTime_s899, _minContribution_s899, _maxContribution_s899);
    if (revert)
    {
        return;
    }
}



implementation updateWhitelist_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _user_s929: Ref, 
    _allow_s929: bool)
{
    call onlyAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40726;
    __tmp__M_Ref_bool_whitelistAddresses3[__tmp__whitelistAddresses_CrowdsaleAuthorizer[this]][_user_s929] := _allow_s929;
}



implementation updateWhitelist_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _user_s929: Ref, 
    _allow_s929: bool)
{
    call onlyAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40726;
    M_Ref_bool_whitelistAddresses3[whitelistAddresses_CrowdsaleAuthorizer[this]][_user_s929] := _allow_s929;
    assert {:EventEmitted "UpdateWhitelist_CrowdsaleAuthorizer"} true;
}



implementation updateWhitelists_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _users_s986: Ref, 
    _allows_s986: Ref)
{
  var i_s984: int;
  var _user_s983: Ref;
  var _allow_s983: bool;

    call onlyAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 90;
    assume __tmp__Length[_users_s986] >= 0;
    assume __tmp__Length[_allows_s986] >= 0;
    if (!(__tmp__Length[_users_s986] == __tmp__Length[_allows_s986]))
    {
        revert := true;
        return;
    }

    gas := gas - 34;
    assume i_s984 >= 0;
    assume __tmp__Length[_users_s986] >= 0;
    gas := gas - 22;
    assume i_s984 >= 0;
    i_s984 := 0;
    while (i_s984 < __tmp__Length[_users_s986])
    {
        gas := gas - 130;
        assume i_s984 >= 0;
        _user_s983 := __tmp__M_int_Ref[_users_s986][i_s984];
        gas := gas - 130;
        assume i_s984 >= 0;
        _allow_s983 := __tmp__M_int_bool[_allows_s986][i_s984];
        gas := gas - 40726;
        __tmp__M_Ref_bool_whitelistAddresses3[__tmp__whitelistAddresses_CrowdsaleAuthorizer[this]][_user_s983] := _allow_s983;
        gas := gas - 38;
        assume i_s984 >= 0;
        i_s984 := i_s984 + 1;
        assume i_s984 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation updateWhitelists_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _users_s986: Ref, 
    _allows_s986: Ref)
{
  var i_s984: int;
  var _user_s983: Ref;
  var _allow_s983: bool;

    call onlyAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 90;
    assume Length[_users_s986] >= 0;
    assume Length[_allows_s986] >= 0;
    if (!(Length[_users_s986] == Length[_allows_s986]))
    {
        revert := true;
        return;
    }

    gas := gas - 34;
    assume i_s984 >= 0;
    assume Length[_users_s986] >= 0;
    gas := gas - 22;
    assume i_s984 >= 0;
    i_s984 := 0;
    while (i_s984 < Length[_users_s986])
    {
        gas := gas - 130;
        assume i_s984 >= 0;
        _user_s983 := M_int_Ref[_users_s986][i_s984];
        gas := gas - 130;
        assume i_s984 >= 0;
        _allow_s983 := M_int_bool[_allows_s986][i_s984];
        gas := gas - 40726;
        M_Ref_bool_whitelistAddresses3[whitelistAddresses_CrowdsaleAuthorizer[this]][_user_s983] := _allow_s983;
        assert {:EventEmitted "UpdateWhitelist_CrowdsaleAuthorizer"} true;
        gas := gas - 38;
        assume i_s984 >= 0;
        i_s984 := i_s984 + 1;
        assume i_s984 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation eligibleAmount_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1045: Ref, 
    _amount_s1045: int)
   returns (__ret_0_: int)
{
  var __var_38: bool;
  var __var_39: bool;
  var userMaxContribution_s1044: int;
  var remainingCap_s1044: int;

    gas := gas - 6;
    gas := gas - 93;
    if (__tmp__DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_38 := saleStarted_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CrowdsaleAuthorizer)
    {
        call __var_38 := saleStarted_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_39 := saleEnded_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CrowdsaleAuthorizer)
    {
        call __var_39 := saleEnded_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_38 || __var_39)
    {
        gas := gas - 38;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 418;
    assume _amount_s1045 >= 0;
    assume __tmp__minContribution_CrowdsaleAuthorizer[this] >= 0;
    if (_amount_s1045 < __tmp__minContribution_CrowdsaleAuthorizer[this])
    {
        gas := gas - 38;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 422;
    assume userMaxContribution_s1044 >= 0;
    assume __tmp__maxContribution_CrowdsaleAuthorizer[this] >= 0;
    userMaxContribution_s1044 := __tmp__maxContribution_CrowdsaleAuthorizer[this];
    gas := gas - 416;
    assume __tmp__now >= 0;
    assume __tmp__increaseMaxContribTime_CrowdsaleAuthorizer[this] >= 0;
    if (__tmp__now >= __tmp__increaseMaxContribTime_CrowdsaleAuthorizer[this])
    {
        gas := gas - 432;
        assume userMaxContribution_s1044 >= 0;
        assume __tmp__maxContribution_CrowdsaleAuthorizer[this] >= 0;
        assume __tmp__maxContribution_CrowdsaleAuthorizer[this] * 10 >= 0;
        userMaxContribution_s1044 := __tmp__maxContribution_CrowdsaleAuthorizer[this] * 10;
    }

    gas := gas - 680;
    assume remainingCap_s1044 >= 0;
    assume userMaxContribution_s1044 >= 0;
    assume __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1045]
       >= 0;
    call remainingCap_s1044 := sub_SafeMath__fail(this, this, 0, userMaxContribution_s1044, __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1045]);
    if (revert)
    {
        return;
    }

    remainingCap_s1044 := remainingCap_s1044;
    gas := gas - 100;
    assume remainingCap_s1044 >= 0;
    assume _amount_s1045 >= 0;
    assume _amount_s1045 >= 0;
    assume remainingCap_s1044 >= 0;
    assume (if remainingCap_s1044 > _amount_s1045
         then _amount_s1045
         else remainingCap_s1044)
       >= 0;
    __ret_0_ := (if remainingCap_s1044 > _amount_s1045
       then _amount_s1045
       else remainingCap_s1044);
    return;
}



implementation eligibleAmount_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1045: Ref, 
    _amount_s1045: int)
   returns (__ret_0_: int)
{
  var __var_38: bool;
  var __var_39: bool;
  var userMaxContribution_s1044: int;
  var remainingCap_s1044: int;

    gas := gas - 6;
    gas := gas - 93;
    if (DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_38 := saleStarted_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CrowdsaleAuthorizer)
    {
        call __var_38 := saleStarted_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_39 := saleEnded_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CrowdsaleAuthorizer)
    {
        call __var_39 := saleEnded_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_38 || __var_39)
    {
        gas := gas - 38;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 418;
    assume _amount_s1045 >= 0;
    assume minContribution_CrowdsaleAuthorizer[this] >= 0;
    if (_amount_s1045 < minContribution_CrowdsaleAuthorizer[this])
    {
        gas := gas - 38;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 422;
    assume userMaxContribution_s1044 >= 0;
    assume maxContribution_CrowdsaleAuthorizer[this] >= 0;
    userMaxContribution_s1044 := maxContribution_CrowdsaleAuthorizer[this];
    gas := gas - 416;
    assume now >= 0;
    assume increaseMaxContribTime_CrowdsaleAuthorizer[this] >= 0;
    if (now >= increaseMaxContribTime_CrowdsaleAuthorizer[this])
    {
        gas := gas - 432;
        assume userMaxContribution_s1044 >= 0;
        assume maxContribution_CrowdsaleAuthorizer[this] >= 0;
        assume maxContribution_CrowdsaleAuthorizer[this] * 10 >= 0;
        userMaxContribution_s1044 := maxContribution_CrowdsaleAuthorizer[this] * 10;
    }

    gas := gas - 680;
    assume remainingCap_s1044 >= 0;
    assume userMaxContribution_s1044 >= 0;
    assume M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1045]
       >= 0;
    call remainingCap_s1044 := sub_SafeMath__success(this, this, 0, userMaxContribution_s1044, M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1045]);
    if (revert)
    {
        return;
    }

    remainingCap_s1044 := remainingCap_s1044;
    gas := gas - 100;
    assume remainingCap_s1044 >= 0;
    assume _amount_s1045 >= 0;
    assume _amount_s1045 >= 0;
    assume remainingCap_s1044 >= 0;
    assume (if remainingCap_s1044 > _amount_s1045
         then _amount_s1045
         else remainingCap_s1044)
       >= 0;
    __ret_0_ := (if remainingCap_s1044 > _amount_s1045
       then _amount_s1045
       else remainingCap_s1044);
    return;
}



implementation saleStarted_CrowdsaleAuthorizer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 432;
    assume __tmp__now >= 0;
    assume __tmp__saleStartTime_CrowdsaleAuthorizer[this] >= 0;
    __ret_0_ := __tmp__now >= __tmp__saleStartTime_CrowdsaleAuthorizer[this];
    return;
}



implementation saleStarted_CrowdsaleAuthorizer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 432;
    assume now >= 0;
    assume saleStartTime_CrowdsaleAuthorizer[this] >= 0;
    __ret_0_ := now >= saleStartTime_CrowdsaleAuthorizer[this];
    return;
}



implementation saleEnded_CrowdsaleAuthorizer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 426;
    assume __tmp__now >= 0;
    assume __tmp__saleEndTime_CrowdsaleAuthorizer[this] >= 0;
    __ret_0_ := __tmp__now > __tmp__saleEndTime_CrowdsaleAuthorizer[this];
    return;
}



implementation saleEnded_CrowdsaleAuthorizer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 426;
    assume now >= 0;
    assume saleEndTime_CrowdsaleAuthorizer[this] >= 0;
    __ret_0_ := now > saleEndTime_CrowdsaleAuthorizer[this];
    return;
}



implementation eligibleAmountCheck_CrowdsaleAuthorizer__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1103: Ref, 
    _amount_s1103: int)
   returns (__ret_0_: int)
{
  var result_s1102: int;
  var __var_40: int;

    gas := gas - 3;
    gas := gas - 335;
    if (!__tmp__M_Ref_bool_whitelistAddresses3[__tmp__whitelistAddresses_CrowdsaleAuthorizer[this]][_contributor_s1103])
    {
        gas := gas - 19;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 29;
    assume result_s1102 >= 0;
    assume _amount_s1103 >= 0;
    if (__tmp__DType[this] == PolicyPalNetworkCrowdsale)
    {
        call result_s1102 := eligibleAmount_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _contributor_s1103, _amount_s1103);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CrowdsaleAuthorizer)
    {
        call result_s1102 := eligibleAmount_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _contributor_s1103, _amount_s1103);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    result_s1102 := result_s1102;
    gas := gas - 20439;
    assume __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1103]
       >= 0;
    assume __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1103]
       >= 0;
    assume result_s1102 >= 0;
    call __var_40 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1103], result_s1102);
    if (revert)
    {
        return;
    }

    __tmp__sum_participated2[__tmp__participated_CrowdsaleAuthorizer[this]] := __tmp__sum_participated2[__tmp__participated_CrowdsaleAuthorizer[this]]
       - __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1103];
    __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1103] := __var_40;
    __tmp__sum_participated2[__tmp__participated_CrowdsaleAuthorizer[this]] := __tmp__sum_participated2[__tmp__participated_CrowdsaleAuthorizer[this]]
       + __tmp__M_Ref_int_participated2[__tmp__participated_CrowdsaleAuthorizer[this]][_contributor_s1103];
    assume __var_40 >= 0;
    gas := gas - 10;
    assume result_s1102 >= 0;
    __ret_0_ := result_s1102;
    return;
}



implementation eligibleAmountCheck_CrowdsaleAuthorizer__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1103: Ref, 
    _amount_s1103: int)
   returns (__ret_0_: int)
{
  var result_s1102: int;
  var __var_40: int;

    gas := gas - 3;
    gas := gas - 335;
    if (!M_Ref_bool_whitelistAddresses3[whitelistAddresses_CrowdsaleAuthorizer[this]][_contributor_s1103])
    {
        gas := gas - 19;
        __ret_0_ := 0;
        return;
    }

    gas := gas - 29;
    assume result_s1102 >= 0;
    assume _amount_s1103 >= 0;
    if (DType[this] == PolicyPalNetworkCrowdsale)
    {
        call result_s1102 := eligibleAmount_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _contributor_s1103, _amount_s1103);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CrowdsaleAuthorizer)
    {
        call result_s1102 := eligibleAmount_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _contributor_s1103, _amount_s1103);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    result_s1102 := result_s1102;
    gas := gas - 20439;
    assume M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1103]
       >= 0;
    assume M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1103]
       >= 0;
    assume result_s1102 >= 0;
    call __var_40 := add_SafeMath__success(this, this, 0, M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1103], result_s1102);
    if (revert)
    {
        return;
    }

    sum_participated2[participated_CrowdsaleAuthorizer[this]] := sum_participated2[participated_CrowdsaleAuthorizer[this]]
       - M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1103];
    M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1103] := __var_40;
    sum_participated2[participated_CrowdsaleAuthorizer[this]] := sum_participated2[participated_CrowdsaleAuthorizer[this]]
       + M_Ref_int_participated2[participated_CrowdsaleAuthorizer[this]][_contributor_s1103];
    assume __var_40 >= 0;
    gas := gas - 10;
    assume result_s1102 >= 0;
    __ret_0_ := result_s1102;
    return;
}



implementation PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int)
{
  var __var_43: Ref;
  var __var_44: Ref;
  var __var_45: bool;
  var __var_46: int;
  var __var_47: bool;
  var __var_48: int;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this] := null;
    __tmp__raisedWei_PolicyPalNetworkCrowdsale[this] := 0;
    __tmp__haltSale_PolicyPalNetworkCrowdsale[this] := false;
    call validAddress_pre__fail(this, msgsender_MSG, msgvalue_MSG, _multiSigWallet_s1241);
    if (revert)
    {
        return;
    }

    assume _totalTokenSupply_s1241 >= 0;
    if (!(_totalTokenSupply_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _premintedTokenSupply_s1241 >= 0;
    if (!(_premintedTokenSupply_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _presaleTokenSupply_s1241 >= 0;
    if (!(_presaleTokenSupply_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _rate_s1241 >= 0;
    if (!(_rate_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _premintedTokenSupply_s1241 >= 0;
    assume _totalTokenSupply_s1241 >= 0;
    if (!(_premintedTokenSupply_s1241 < _totalTokenSupply_s1241))
    {
        revert := true;
        return;
    }

    assume _presaleTokenSupply_s1241 >= 0;
    assume _totalTokenSupply_s1241 >= 0;
    if (!(_presaleTokenSupply_s1241 < _totalTokenSupply_s1241))
    {
        revert := true;
        return;
    }

    __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this] := _multiSigWallet_s1241;
    call __var_44 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume _totalTokenSupply_s1241 >= 0;
    assume __tmp__DType[__var_44] == PolicyPalNetworkToken;
    call PolicyPalNetworkToken_PolicyPalNetworkToken__fail(__var_44, this, 0, _totalTokenSupply_s1241, _admin_s1241);
    if (revert)
    {
        return;
    }

    __var_43 := __var_44;
    __tmp__token_PolicyPalNetworkCrowdsale[this] := __var_43;
    assume _premintedTokenSupply_s1241 >= 0;
    if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]]
       == PolicyPalNetworkToken)
    {
        call __var_45 := transfer_PolicyPalNetworkToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_46, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call __var_45 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_46, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call __var_45 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_46, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call __var_45 := transfer_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_46, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call __var_45 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_46, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call __var_45 := transfer_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_46, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
    }
    else
    {
        assume false;
    }

    assume _presaleTokenSupply_s1241 >= 0;
    if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]]
       == PolicyPalNetworkToken)
    {
        call __var_47 := transfer_PolicyPalNetworkToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call __var_47 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call __var_47 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call __var_47 := transfer_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call __var_47 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call __var_47 := transfer_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
    }
    else
    {
        assume false;
    }
}



implementation PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int)
{
  var __var_43: Ref;
  var __var_44: Ref;
  var __var_45: bool;
  var __var_46: int;
  var __var_47: bool;
  var __var_48: int;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    multiSigWallet_PolicyPalNetworkCrowdsale[this] := null;
    raisedWei_PolicyPalNetworkCrowdsale[this] := 0;
    haltSale_PolicyPalNetworkCrowdsale[this] := false;
    call validAddress_pre__success(this, msgsender_MSG, msgvalue_MSG, _multiSigWallet_s1241);
    if (revert)
    {
        return;
    }

    assume _totalTokenSupply_s1241 >= 0;
    if (!(_totalTokenSupply_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _premintedTokenSupply_s1241 >= 0;
    if (!(_premintedTokenSupply_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _presaleTokenSupply_s1241 >= 0;
    if (!(_presaleTokenSupply_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _rate_s1241 >= 0;
    if (!(_rate_s1241 > 0))
    {
        revert := true;
        return;
    }

    assume _premintedTokenSupply_s1241 >= 0;
    assume _totalTokenSupply_s1241 >= 0;
    if (!(_premintedTokenSupply_s1241 < _totalTokenSupply_s1241))
    {
        revert := true;
        return;
    }

    assume _presaleTokenSupply_s1241 >= 0;
    assume _totalTokenSupply_s1241 >= 0;
    if (!(_presaleTokenSupply_s1241 < _totalTokenSupply_s1241))
    {
        revert := true;
        return;
    }

    multiSigWallet_PolicyPalNetworkCrowdsale[this] := _multiSigWallet_s1241;
    call __var_44 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume _totalTokenSupply_s1241 >= 0;
    assume DType[__var_44] == PolicyPalNetworkToken;
    call PolicyPalNetworkToken_PolicyPalNetworkToken__success(__var_44, this, 0, _totalTokenSupply_s1241, _admin_s1241);
    if (revert)
    {
        return;
    }

    __var_43 := __var_44;
    token_PolicyPalNetworkCrowdsale[this] := __var_43;
    assume _premintedTokenSupply_s1241 >= 0;
    if (DType[token_PolicyPalNetworkCrowdsale[this]] == PolicyPalNetworkToken)
    {
        call __var_45 := transfer_PolicyPalNetworkToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_46, multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call __var_45 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_46, multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call __var_45 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_46, multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call __var_45 := transfer_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_46, multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call __var_45 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_46, multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call __var_45 := transfer_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_46, multiSigWallet_PolicyPalNetworkCrowdsale[this], _premintedTokenSupply_s1241);
    }
    else
    {
        assume false;
    }

    assume _presaleTokenSupply_s1241 >= 0;
    if (DType[token_PolicyPalNetworkCrowdsale[this]] == PolicyPalNetworkToken)
    {
        call __var_47 := transfer_PolicyPalNetworkToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call __var_47 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call __var_47 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call __var_47 := transfer_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call __var_47 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call __var_47 := transfer_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_48, _admin_s1241, _presaleTokenSupply_s1241);
    }
    else
    {
        assume false;
    }
}



implementation PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int)
{
  var __var_43: Ref;
  var __var_44: Ref;
  var __var_45: bool;
  var __var_46: int;
  var __var_47: bool;
  var __var_48: int;

    assume _saleStartTime_s1241 >= 0;
    assume _saleEndTime_s1241 >= 0;
    assume _increaseMaxContribTime_s1241 >= 0;
    assume _minContribution_s1241 >= 0;
    assume _maxContribution_s1241 >= 0;
    call CrowdsaleAuthorizer_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s1241, _saleStartTime_s1241, _saleEndTime_s1241, _increaseMaxContribTime_s1241, _minContribution_s1241, _maxContribution_s1241);
    if (revert)
    {
        return;
    }

    call PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s1241, _multiSigWallet_s1241, _totalTokenSupply_s1241, _premintedTokenSupply_s1241, _presaleTokenSupply_s1241, _saleStartTime_s1241, _saleEndTime_s1241, _increaseMaxContribTime_s1241, _rate_s1241, _minContribution_s1241, _maxContribution_s1241);
    if (revert)
    {
        return;
    }
}



implementation PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _admin_s1241: Ref, 
    _multiSigWallet_s1241: Ref, 
    _totalTokenSupply_s1241: int, 
    _premintedTokenSupply_s1241: int, 
    _presaleTokenSupply_s1241: int, 
    _saleStartTime_s1241: int, 
    _saleEndTime_s1241: int, 
    _increaseMaxContribTime_s1241: int, 
    _rate_s1241: int, 
    _minContribution_s1241: int, 
    _maxContribution_s1241: int)
{
  var __var_43: Ref;
  var __var_44: Ref;
  var __var_45: bool;
  var __var_46: int;
  var __var_47: bool;
  var __var_48: int;

    assume _saleStartTime_s1241 >= 0;
    assume _saleEndTime_s1241 >= 0;
    assume _increaseMaxContribTime_s1241 >= 0;
    assume _minContribution_s1241 >= 0;
    assume _maxContribution_s1241 >= 0;
    call CrowdsaleAuthorizer_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _admin_s1241, _saleStartTime_s1241, _saleEndTime_s1241, _increaseMaxContribTime_s1241, _minContribution_s1241, _maxContribution_s1241);
    if (revert)
    {
        return;
    }

    call PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _admin_s1241, _multiSigWallet_s1241, _totalTokenSupply_s1241, _premintedTokenSupply_s1241, _presaleTokenSupply_s1241, _saleStartTime_s1241, _saleEndTime_s1241, _increaseMaxContribTime_s1241, _rate_s1241, _minContribution_s1241, _maxContribution_s1241);
    if (revert)
    {
        return;
    }
}



implementation setHaltSale_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _halt_s1253: bool)
{
    call onlyAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20267;
    __tmp__haltSale_PolicyPalNetworkCrowdsale[this] := _halt_s1253;
}



implementation setHaltSale_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _halt_s1253: bool)
{
    call onlyAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20267;
    haltSale_PolicyPalNetworkCrowdsale[this] := _halt_s1253;
}



implementation FallbackMethod_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_49: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    assume __var_49 >= 0;
    call __var_49 := buy_PolicyPalNetworkCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_49: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 8;
    assume __var_49 >= 0;
    call __var_49 := buy_PolicyPalNetworkCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
    if (revert)
    {
        return;
    }
}



implementation buy_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _recipient_s1370: Ref)
   returns (__ret_0_: int)
{
  var weiContributionAllowed_s1369: int;
  var tokensRemaining_s1369: int;
  var __var_50: int;
  var __var_51: Ref;
  var receivedTokens_s1369: int;
  var __var_52: bool;
  var __var_53: int;
  var __var_54: int;
  var __var_55: int;
  var __var_56: int;
  var __var_57: bool;

    gas := gas - 3;
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call validSale_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call validAddress_pre__fail(this, msgsender_MSG, msgvalue_MSG, _recipient_s1370);
    if (revert)
    {
        return;
    }

    gas := gas - 17;
    assume weiContributionAllowed_s1369 >= 0;
    assume msgvalue_MSG >= 0;
    if (__tmp__DType[this] == PolicyPalNetworkCrowdsale)
    {
        call weiContributionAllowed_s1369 := eligibleAmountCheck_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG, _recipient_s1370, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    weiContributionAllowed_s1369 := weiContributionAllowed_s1369;
    gas := gas - 29;
    assume weiContributionAllowed_s1369 >= 0;
    if (!(weiContributionAllowed_s1369 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 3337;
    assume tokensRemaining_s1369 >= 0;
    __var_51 := this;
    if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]]
       == PolicyPalNetworkToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call tokensRemaining_s1369 := balanceOf_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call tokensRemaining_s1369 := balanceOf_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
    }
    else
    {
        assume false;
    }

    tokensRemaining_s1369 := tokensRemaining_s1369;
    gas := gas - 29;
    assume tokensRemaining_s1369 >= 0;
    if (!(tokensRemaining_s1369 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 19;
    assume receivedTokens_s1369 >= 0;
    assume weiContributionAllowed_s1369 >= 0;
    assume weiContributionAllowed_s1369 * 21000 >= 0;
    receivedTokens_s1369 := weiContributionAllowed_s1369 * 21000;
    gas := gas - 9;
    assume receivedTokens_s1369 >= 0;
    assume tokensRemaining_s1369 >= 0;
    if (receivedTokens_s1369 > tokensRemaining_s1369)
    {
        gas := gas - 8;
        assume receivedTokens_s1369 >= 0;
        assume tokensRemaining_s1369 >= 0;
        receivedTokens_s1369 := tokensRemaining_s1369;
        gas := gas - 33;
        assume weiContributionAllowed_s1369 >= 0;
        assume tokensRemaining_s1369 >= 0;
        assume tokensRemaining_s1369 / 21000 >= 0;
        weiContributionAllowed_s1369 := tokensRemaining_s1369 / 21000;
    }

    gas := gas - 37470;
    assume receivedTokens_s1369 >= 0;
    if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]]
       == PolicyPalNetworkToken)
    {
        call __var_52 := transfer_PolicyPalNetworkToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call __var_52 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call __var_52 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call __var_52 := transfer_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call __var_52 := transfer_BasicToken__fail(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call __var_52 := transfer_ERC20Basic(__tmp__token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
    }
    else
    {
        assume false;
    }

    gas := gas - 7;
    assume weiContributionAllowed_s1369 >= 0;
    call sendETHToMultiSig_PolicyPalNetworkCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiContributionAllowed_s1369);
    if (revert)
    {
        return;
    }

    gas := gas - 20247;
    assume __tmp__raisedWei_PolicyPalNetworkCrowdsale[this] >= 0;
    assume __tmp__raisedWei_PolicyPalNetworkCrowdsale[this] >= 0;
    assume weiContributionAllowed_s1369 >= 0;
    call __var_54 := add_SafeMath__fail(this, this, 0, __tmp__raisedWei_PolicyPalNetworkCrowdsale[this], weiContributionAllowed_s1369);
    if (revert)
    {
        return;
    }

    __tmp__raisedWei_PolicyPalNetworkCrowdsale[this] := __var_54;
    assume __var_54 >= 0;
    gas := gas - 8;
    assume msgvalue_MSG >= 0;
    assume weiContributionAllowed_s1369 >= 0;
    if (msgvalue_MSG > weiContributionAllowed_s1369)
    {
        gas := gas - 35824;
        __var_55 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_55 := __var_55 - gas;
        assume __var_56 >= 0;
        assume msgvalue_MSG >= 0;
        assume weiContributionAllowed_s1369 >= 0;
        call __var_56 := sub_SafeMath__fail(this, this, 0, msgvalue_MSG, weiContributionAllowed_s1369);
        if (revert)
        {
            return;
        }

        assume __var_56 >= 0;
        call __var_57 := send__fail(this, msgsender_MSG, __var_56);
        if (!__var_57)
        {
            revert := true;
            return;
        }

        gas := __var_55 + gas;
    }

    gas := gas - 14;
    assume weiContributionAllowed_s1369 >= 0;
    __ret_0_ := weiContributionAllowed_s1369;
    return;
}



implementation buy_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _recipient_s1370: Ref)
   returns (__ret_0_: int)
{
  var weiContributionAllowed_s1369: int;
  var tokensRemaining_s1369: int;
  var __var_50: int;
  var __var_51: Ref;
  var receivedTokens_s1369: int;
  var __var_52: bool;
  var __var_53: int;
  var __var_54: int;
  var __var_55: int;
  var __var_56: int;
  var __var_57: bool;

    gas := gas - 3;
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call validSale_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call validAddress_pre__success(this, msgsender_MSG, msgvalue_MSG, _recipient_s1370);
    if (revert)
    {
        return;
    }

    gas := gas - 17;
    assume weiContributionAllowed_s1369 >= 0;
    assume msgvalue_MSG >= 0;
    if (DType[this] == PolicyPalNetworkCrowdsale)
    {
        call weiContributionAllowed_s1369 := eligibleAmountCheck_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG, _recipient_s1370, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    weiContributionAllowed_s1369 := weiContributionAllowed_s1369;
    gas := gas - 29;
    assume weiContributionAllowed_s1369 >= 0;
    if (!(weiContributionAllowed_s1369 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 3337;
    assume tokensRemaining_s1369 >= 0;
    __var_51 := this;
    if (DType[token_PolicyPalNetworkCrowdsale[this]] == PolicyPalNetworkToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call tokensRemaining_s1369 := balanceOf_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call tokensRemaining_s1369 := balanceOf_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call tokensRemaining_s1369 := balanceOf_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_50, this);
    }
    else
    {
        assume false;
    }

    tokensRemaining_s1369 := tokensRemaining_s1369;
    gas := gas - 29;
    assume tokensRemaining_s1369 >= 0;
    if (!(tokensRemaining_s1369 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 19;
    assume receivedTokens_s1369 >= 0;
    assume weiContributionAllowed_s1369 >= 0;
    assume weiContributionAllowed_s1369 * 21000 >= 0;
    receivedTokens_s1369 := weiContributionAllowed_s1369 * 21000;
    gas := gas - 9;
    assume receivedTokens_s1369 >= 0;
    assume tokensRemaining_s1369 >= 0;
    if (receivedTokens_s1369 > tokensRemaining_s1369)
    {
        gas := gas - 8;
        assume receivedTokens_s1369 >= 0;
        assume tokensRemaining_s1369 >= 0;
        receivedTokens_s1369 := tokensRemaining_s1369;
        gas := gas - 33;
        assume weiContributionAllowed_s1369 >= 0;
        assume tokensRemaining_s1369 >= 0;
        assume tokensRemaining_s1369 / 21000 >= 0;
        weiContributionAllowed_s1369 := tokensRemaining_s1369 / 21000;
    }

    gas := gas - 37470;
    assume receivedTokens_s1369 >= 0;
    if (DType[token_PolicyPalNetworkCrowdsale[this]] == PolicyPalNetworkToken)
    {
        call __var_52 := transfer_PolicyPalNetworkToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BurnableToken)
    {
        call __var_52 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == StandardToken)
    {
        call __var_52 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20)
    {
        call __var_52 := transfer_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == BasicToken)
    {
        call __var_52 := transfer_BasicToken__success(token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_PolicyPalNetworkCrowdsale[this]] == ERC20Basic)
    {
        call __var_52 := transfer_ERC20Basic(token_PolicyPalNetworkCrowdsale[this], this, __var_53, _recipient_s1370, receivedTokens_s1369);
    }
    else
    {
        assume false;
    }

    assert __var_52;
    gas := gas - 7;
    assume weiContributionAllowed_s1369 >= 0;
    call sendETHToMultiSig_PolicyPalNetworkCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiContributionAllowed_s1369);
    if (revert)
    {
        return;
    }

    gas := gas - 20247;
    assume raisedWei_PolicyPalNetworkCrowdsale[this] >= 0;
    assume raisedWei_PolicyPalNetworkCrowdsale[this] >= 0;
    assume weiContributionAllowed_s1369 >= 0;
    call __var_54 := add_SafeMath__success(this, this, 0, raisedWei_PolicyPalNetworkCrowdsale[this], weiContributionAllowed_s1369);
    if (revert)
    {
        return;
    }

    raisedWei_PolicyPalNetworkCrowdsale[this] := __var_54;
    assume __var_54 >= 0;
    gas := gas - 8;
    assume msgvalue_MSG >= 0;
    assume weiContributionAllowed_s1369 >= 0;
    if (msgvalue_MSG > weiContributionAllowed_s1369)
    {
        gas := gas - 35824;
        __var_55 := gas;
        if (gas > 2300)
        {
            gas := 2300;
        }

        __var_55 := __var_55 - gas;
        assume __var_56 >= 0;
        assume msgvalue_MSG >= 0;
        assume weiContributionAllowed_s1369 >= 0;
        call __var_56 := sub_SafeMath__success(this, this, 0, msgvalue_MSG, weiContributionAllowed_s1369);
        if (revert)
        {
            return;
        }

        assume __var_56 >= 0;
        call __var_57 := send__success(this, msgsender_MSG, __var_56);
        if (!__var_57)
        {
            revert := true;
            return;
        }

        gas := __var_55 + gas;
    }

    assert {:EventEmitted "Buy_PolicyPalNetworkCrowdsale"} true;
    gas := gas - 14;
    assume weiContributionAllowed_s1369 >= 0;
    __ret_0_ := weiContributionAllowed_s1369;
    return;
}



implementation emergencyDrain_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _anyToken_s1419: Ref)
   returns (__ret_0_: bool)
{
  var __var_58: Ref;
  var __var_59: Ref;
  var __var_60: Ref;
  var __var_61: Ref;
  var __var_62: bool;
  var __var_63: int;
  var __var_64: int;
  var __var_65: int;
  var __var_66: Ref;

    gas := gas - 3;
    call onlyAdmin_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 414;
    __var_58 := this;
    assume __tmp__Balance[this] >= 0;
    if (__tmp__Balance[this] > 0)
    {
        gas := gas - 423;
        __var_59 := this;
        assume __tmp__Balance[this] >= 0;
        call sendETHToMultiSig_PolicyPalNetworkCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__Balance[this]);
        if (revert)
        {
            return;
        }
    }

    gas := gas - 21;
    __var_60 := _anyToken_s1419;
    __var_61 := null;
    if (_anyToken_s1419 != null)
    {
        gas := gas - 40558;
        assume __var_64 >= 0;
        __var_66 := this;
        if (__tmp__DType[_anyToken_s1419] == PolicyPalNetworkToken)
        {
            call __var_64 := balanceOf_BasicToken__fail(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == BurnableToken)
        {
            call __var_64 := balanceOf_BasicToken__fail(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == StandardToken)
        {
            call __var_64 := balanceOf_BasicToken__fail(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == ERC20)
        {
            call __var_64 := balanceOf_ERC20Basic(_anyToken_s1419, this, __var_65, this);
        }
        else if (__tmp__DType[_anyToken_s1419] == BasicToken)
        {
            call __var_64 := balanceOf_BasicToken__fail(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == ERC20Basic)
        {
            call __var_64 := balanceOf_ERC20Basic(_anyToken_s1419, this, __var_65, this);
        }
        else
        {
            assume false;
        }

        assume __var_64 >= 0;
        if (__tmp__DType[_anyToken_s1419] == PolicyPalNetworkToken)
        {
            call __var_62 := transfer_PolicyPalNetworkToken__fail(_anyToken_s1419, this, __var_63, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == BurnableToken)
        {
            call __var_62 := transfer_BasicToken__fail(_anyToken_s1419, this, __var_63, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == StandardToken)
        {
            call __var_62 := transfer_BasicToken__fail(_anyToken_s1419, this, __var_63, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == ERC20)
        {
            call __var_62 := transfer_ERC20Basic(_anyToken_s1419, this, __var_63, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
        }
        else if (__tmp__DType[_anyToken_s1419] == BasicToken)
        {
            call __var_62 := transfer_BasicToken__fail(_anyToken_s1419, this, __var_63, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[_anyToken_s1419] == ERC20Basic)
        {
            call __var_62 := transfer_ERC20Basic(_anyToken_s1419, this, __var_63, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
        }
        else
        {
            assume false;
        }
    }

    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation emergencyDrain_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _anyToken_s1419: Ref)
   returns (__ret_0_: bool)
{
  var __var_58: Ref;
  var __var_59: Ref;
  var __var_60: Ref;
  var __var_61: Ref;
  var __var_62: bool;
  var __var_63: int;
  var __var_64: int;
  var __var_65: int;
  var __var_66: Ref;

    gas := gas - 3;
    call onlyAdmin_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 414;
    __var_58 := this;
    assume Balance[this] >= 0;
    if (Balance[this] > 0)
    {
        gas := gas - 423;
        __var_59 := this;
        assume Balance[this] >= 0;
        call sendETHToMultiSig_PolicyPalNetworkCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, Balance[this]);
        if (revert)
        {
            return;
        }
    }

    gas := gas - 21;
    __var_60 := _anyToken_s1419;
    __var_61 := null;
    if (_anyToken_s1419 != null)
    {
        gas := gas - 40558;
        assume __var_64 >= 0;
        __var_66 := this;
        if (DType[_anyToken_s1419] == PolicyPalNetworkToken)
        {
            call __var_64 := balanceOf_BasicToken__success(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == BurnableToken)
        {
            call __var_64 := balanceOf_BasicToken__success(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == StandardToken)
        {
            call __var_64 := balanceOf_BasicToken__success(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == ERC20)
        {
            call __var_64 := balanceOf_ERC20Basic(_anyToken_s1419, this, __var_65, this);
        }
        else if (DType[_anyToken_s1419] == BasicToken)
        {
            call __var_64 := balanceOf_BasicToken__success(_anyToken_s1419, this, __var_65, this);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == ERC20Basic)
        {
            call __var_64 := balanceOf_ERC20Basic(_anyToken_s1419, this, __var_65, this);
        }
        else
        {
            assume false;
        }

        assume __var_64 >= 0;
        if (DType[_anyToken_s1419] == PolicyPalNetworkToken)
        {
            call __var_62 := transfer_PolicyPalNetworkToken__success(_anyToken_s1419, this, __var_63, multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == BurnableToken)
        {
            call __var_62 := transfer_BasicToken__success(_anyToken_s1419, this, __var_63, multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == StandardToken)
        {
            call __var_62 := transfer_BasicToken__success(_anyToken_s1419, this, __var_63, multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == ERC20)
        {
            call __var_62 := transfer_ERC20Basic(_anyToken_s1419, this, __var_63, multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
        }
        else if (DType[_anyToken_s1419] == BasicToken)
        {
            call __var_62 := transfer_BasicToken__success(_anyToken_s1419, this, __var_63, multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
            if (revert)
            {
                return;
            }
        }
        else if (DType[_anyToken_s1419] == ERC20Basic)
        {
            call __var_62 := transfer_ERC20Basic(_anyToken_s1419, this, __var_63, multiSigWallet_PolicyPalNetworkCrowdsale[this], __var_64);
        }
        else
        {
            assume false;
        }

        assert __var_62;
    }

    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation sendETHToMultiSig_PolicyPalNetworkCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1431: int)
{
  var __var_67: int;
  var __var_68: bool;

    gas := gas - 36029;
    __var_67 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_67 := __var_67 - gas;
    assume _value_s1431 >= 0;
    call __var_68 := send__fail(this, __tmp__multiSigWallet_PolicyPalNetworkCrowdsale[this], _value_s1431);
    if (!__var_68)
    {
        revert := true;
        return;
    }

    gas := __var_67 + gas;
}



implementation sendETHToMultiSig_PolicyPalNetworkCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1431: int)
{
  var __var_67: int;
  var __var_68: bool;

    gas := gas - 36029;
    __var_67 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_67 := __var_67 - gas;
    assume _value_s1431 >= 0;
    call __var_68 := send__success(this, multiSigWallet_PolicyPalNetworkCrowdsale[this], _value_s1431);
    if (!__var_68)
    {
        revert := true;
        return;
    }

    gas := __var_67 + gas;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == PolicyPalNetworkCrowdsale)
    {
        call FallbackMethod_PolicyPalNetworkCrowdsale__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == CrowdsaleAuthorizer)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == PolicyPalNetworkToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Ownable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == BurnableToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ERC20Basic)
    {
        assume amount == 0;
    }
    else
    {
        call Fallback_UnknownType__fail(from, to, amount);
        if (revert)
        {
            return;
        }
    }
}



implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
    if (DType[to] == PolicyPalNetworkCrowdsale)
    {
        call FallbackMethod_PolicyPalNetworkCrowdsale__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == CrowdsaleAuthorizer)
    {
        assume amount == 0;
    }
    else if (DType[to] == PolicyPalNetworkToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == Ownable)
    {
        assume amount == 0;
    }
    else if (DType[to] == BurnableToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == ERC20Basic)
    {
        assume amount == 0;
    }
    else
    {
        call Fallback_UnknownType__success(from, to, amount);
        if (revert)
        {
            return;
        }
    }
}



implementation Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int)
{
    assume __tmp__Balance[from] >= amount;
    __tmp__Balance[from] := __tmp__Balance[from] - amount;
    __tmp__Balance[to] := __tmp__Balance[to] + amount;
}



implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
}



implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;
  var __snap___tmp__Balance: [Ref]int;
  var __snap___tmp__DType: [Ref]ContractName;
  var __snap___tmp__Alloc: [Ref]bool;
  var __snap___tmp__balance_ADDR: [Ref]int;
  var __snap___tmp__M_Ref_int_balances0: [Ref][Ref]int;
  var __snap___tmp__sum_balances0: [Ref]int;
  var __snap___tmp__M_Ref_int_allowed1: [Ref][Ref]int;
  var __snap___tmp__M_Ref_Ref_allowed1: [Ref][Ref]Ref;
  var __snap___tmp__sum_allowed1: [Ref]int;
  var __snap___tmp__M_Ref_int_participated2: [Ref][Ref]int;
  var __snap___tmp__sum_participated2: [Ref]int;
  var __snap___tmp__M_Ref_bool_whitelistAddresses3: [Ref][Ref]bool;
  var __snap___tmp__sum_whitelistAddresses3: [Ref]int;
  var __snap___tmp__M_int_Ref: [Ref][int]Ref;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__M_int_bool: [Ref][int]bool;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__balances_BasicToken: [Ref]Ref;
  var __snap___tmp__totalSupply__BasicToken: [Ref]int;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__name_PolicyPalNetworkToken: [Ref]int;
  var __snap___tmp__symbol_PolicyPalNetworkToken: [Ref]int;
  var __snap___tmp__decimals_PolicyPalNetworkToken: [Ref]int;
  var __snap___tmp__tokenSaleContract_PolicyPalNetworkToken: [Ref]Ref;
  var __snap___tmp__isTokenTransferable_PolicyPalNetworkToken: [Ref]bool;
  var __snap___tmp__participated_CrowdsaleAuthorizer: [Ref]Ref;
  var __snap___tmp__whitelistAddresses_CrowdsaleAuthorizer: [Ref]Ref;
  var __snap___tmp__admin_CrowdsaleAuthorizer: [Ref]Ref;
  var __snap___tmp__saleStartTime_CrowdsaleAuthorizer: [Ref]int;
  var __snap___tmp__saleEndTime_CrowdsaleAuthorizer: [Ref]int;
  var __snap___tmp__increaseMaxContribTime_CrowdsaleAuthorizer: [Ref]int;
  var __snap___tmp__minContribution_CrowdsaleAuthorizer: [Ref]int;
  var __snap___tmp__maxContribution_CrowdsaleAuthorizer: [Ref]int;
  var __snap___tmp__multiSigWallet_PolicyPalNetworkCrowdsale: [Ref]Ref;
  var __snap___tmp__token_PolicyPalNetworkCrowdsale: [Ref]Ref;
  var __snap___tmp__raisedWei_PolicyPalNetworkCrowdsale: [Ref]int;
  var __snap___tmp__haltSale_PolicyPalNetworkCrowdsale: [Ref]bool;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_balances0 := __tmp__M_Ref_int_balances0;
        __snap___tmp__sum_balances0 := __tmp__sum_balances0;
        __snap___tmp__M_Ref_int_allowed1 := __tmp__M_Ref_int_allowed1;
        __snap___tmp__M_Ref_Ref_allowed1 := __tmp__M_Ref_Ref_allowed1;
        __snap___tmp__sum_allowed1 := __tmp__sum_allowed1;
        __snap___tmp__M_Ref_int_participated2 := __tmp__M_Ref_int_participated2;
        __snap___tmp__sum_participated2 := __tmp__sum_participated2;
        __snap___tmp__M_Ref_bool_whitelistAddresses3 := __tmp__M_Ref_bool_whitelistAddresses3;
        __snap___tmp__sum_whitelistAddresses3 := __tmp__sum_whitelistAddresses3;
        __snap___tmp__M_int_Ref := __tmp__M_int_Ref;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__M_int_bool := __tmp__M_int_bool;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__balances_BasicToken := __tmp__balances_BasicToken;
        __snap___tmp__totalSupply__BasicToken := __tmp__totalSupply__BasicToken;
        __snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
        __snap___tmp__owner_Ownable := __tmp__owner_Ownable;
        __snap___tmp__name_PolicyPalNetworkToken := __tmp__name_PolicyPalNetworkToken;
        __snap___tmp__symbol_PolicyPalNetworkToken := __tmp__symbol_PolicyPalNetworkToken;
        __snap___tmp__decimals_PolicyPalNetworkToken := __tmp__decimals_PolicyPalNetworkToken;
        __snap___tmp__tokenSaleContract_PolicyPalNetworkToken := __tmp__tokenSaleContract_PolicyPalNetworkToken;
        __snap___tmp__isTokenTransferable_PolicyPalNetworkToken := __tmp__isTokenTransferable_PolicyPalNetworkToken;
        __snap___tmp__participated_CrowdsaleAuthorizer := __tmp__participated_CrowdsaleAuthorizer;
        __snap___tmp__whitelistAddresses_CrowdsaleAuthorizer := __tmp__whitelistAddresses_CrowdsaleAuthorizer;
        __snap___tmp__admin_CrowdsaleAuthorizer := __tmp__admin_CrowdsaleAuthorizer;
        __snap___tmp__saleStartTime_CrowdsaleAuthorizer := __tmp__saleStartTime_CrowdsaleAuthorizer;
        __snap___tmp__saleEndTime_CrowdsaleAuthorizer := __tmp__saleEndTime_CrowdsaleAuthorizer;
        __snap___tmp__increaseMaxContribTime_CrowdsaleAuthorizer := __tmp__increaseMaxContribTime_CrowdsaleAuthorizer;
        __snap___tmp__minContribution_CrowdsaleAuthorizer := __tmp__minContribution_CrowdsaleAuthorizer;
        __snap___tmp__maxContribution_CrowdsaleAuthorizer := __tmp__maxContribution_CrowdsaleAuthorizer;
        __snap___tmp__multiSigWallet_PolicyPalNetworkCrowdsale := __tmp__multiSigWallet_PolicyPalNetworkCrowdsale;
        __snap___tmp__token_PolicyPalNetworkCrowdsale := __tmp__token_PolicyPalNetworkCrowdsale;
        __snap___tmp__raisedWei_PolicyPalNetworkCrowdsale := __tmp__raisedWei_PolicyPalNetworkCrowdsale;
        __snap___tmp__haltSale_PolicyPalNetworkCrowdsale := __tmp__haltSale_PolicyPalNetworkCrowdsale;
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
        }

        success := false;
        assume revert || gas < 0;
        __tmp__Balance := __snap___tmp__Balance;
        __tmp__DType := __snap___tmp__DType;
        __tmp__Alloc := __snap___tmp__Alloc;
        __tmp__balance_ADDR := __snap___tmp__balance_ADDR;
        __tmp__M_Ref_int_balances0 := __snap___tmp__M_Ref_int_balances0;
        __tmp__sum_balances0 := __snap___tmp__sum_balances0;
        __tmp__M_Ref_int_allowed1 := __snap___tmp__M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := __snap___tmp__M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := __snap___tmp__sum_allowed1;
        __tmp__M_Ref_int_participated2 := __snap___tmp__M_Ref_int_participated2;
        __tmp__sum_participated2 := __snap___tmp__sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := __snap___tmp__M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := __snap___tmp__sum_whitelistAddresses3;
        __tmp__M_int_Ref := __snap___tmp__M_int_Ref;
        __tmp__sum := __snap___tmp__sum;
        __tmp__M_int_bool := __snap___tmp__M_int_bool;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__balances_BasicToken := __snap___tmp__balances_BasicToken;
        __tmp__totalSupply__BasicToken := __snap___tmp__totalSupply__BasicToken;
        __tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
        __tmp__owner_Ownable := __snap___tmp__owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := __snap___tmp__name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := __snap___tmp__symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := __snap___tmp__decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := __snap___tmp__tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := __snap___tmp__isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := __snap___tmp__participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := __snap___tmp__whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := __snap___tmp__admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := __snap___tmp__saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := __snap___tmp__saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := __snap___tmp__increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := __snap___tmp__minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := __snap___tmp__maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := __snap___tmp__multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := __snap___tmp__token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := __snap___tmp__raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := __snap___tmp__haltSale_PolicyPalNetworkCrowdsale;
        revert := false;
    }
    else
    {
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
            success := true;
        }
        else
        {
            success := false;
        }

        assume !revert && gas >= 0;
    }
}



implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
  var __exception: bool;

    havoc __exception;
    if (__exception)
    {
        __tmp__Balance := Balance;
        __tmp__DType := DType;
        __tmp__Alloc := Alloc;
        __tmp__balance_ADDR := balance_ADDR;
        __tmp__M_Ref_int_balances0 := M_Ref_int_balances0;
        __tmp__sum_balances0 := sum_balances0;
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__M_Ref_int_participated2 := M_Ref_int_participated2;
        __tmp__sum_participated2 := sum_participated2;
        __tmp__M_Ref_bool_whitelistAddresses3 := M_Ref_bool_whitelistAddresses3;
        __tmp__sum_whitelistAddresses3 := sum_whitelistAddresses3;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_bool := M_int_bool;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__name_PolicyPalNetworkToken := name_PolicyPalNetworkToken;
        __tmp__symbol_PolicyPalNetworkToken := symbol_PolicyPalNetworkToken;
        __tmp__decimals_PolicyPalNetworkToken := decimals_PolicyPalNetworkToken;
        __tmp__tokenSaleContract_PolicyPalNetworkToken := tokenSaleContract_PolicyPalNetworkToken;
        __tmp__isTokenTransferable_PolicyPalNetworkToken := isTokenTransferable_PolicyPalNetworkToken;
        __tmp__participated_CrowdsaleAuthorizer := participated_CrowdsaleAuthorizer;
        __tmp__whitelistAddresses_CrowdsaleAuthorizer := whitelistAddresses_CrowdsaleAuthorizer;
        __tmp__admin_CrowdsaleAuthorizer := admin_CrowdsaleAuthorizer;
        __tmp__saleStartTime_CrowdsaleAuthorizer := saleStartTime_CrowdsaleAuthorizer;
        __tmp__saleEndTime_CrowdsaleAuthorizer := saleEndTime_CrowdsaleAuthorizer;
        __tmp__increaseMaxContribTime_CrowdsaleAuthorizer := increaseMaxContribTime_CrowdsaleAuthorizer;
        __tmp__minContribution_CrowdsaleAuthorizer := minContribution_CrowdsaleAuthorizer;
        __tmp__maxContribution_CrowdsaleAuthorizer := maxContribution_CrowdsaleAuthorizer;
        __tmp__multiSigWallet_PolicyPalNetworkCrowdsale := multiSigWallet_PolicyPalNetworkCrowdsale;
        __tmp__token_PolicyPalNetworkCrowdsale := token_PolicyPalNetworkCrowdsale;
        __tmp__raisedWei_PolicyPalNetworkCrowdsale := raisedWei_PolicyPalNetworkCrowdsale;
        __tmp__haltSale_PolicyPalNetworkCrowdsale := haltSale_PolicyPalNetworkCrowdsale;
        if (__tmp__Balance[from] >= amount)
        {
            call FallbackDispatch__fail(from, to, amount);
        }

        success := false;
        assume revert || gas < 0;
        revert := false;
    }
    else
    {
        if (Balance[from] >= amount)
        {
            call FallbackDispatch__success(from, to, amount);
            success := true;
        }
        else
        {
            success := false;
        }

        assume !revert && gas >= 0;
    }
}



implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1104;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1104;
    if (!(msgsender_MSG == owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyWhenTransferAllowed_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1718;
    if (!(
      __tmp__isTokenTransferable_PolicyPalNetworkToken[this]
       || msgsender_MSG == __tmp__owner_Ownable[this]
       || msgsender_MSG == __tmp__tokenSaleContract_PolicyPalNetworkToken[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyWhenTransferAllowed_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1718;
    if (!(
      isTokenTransferable_PolicyPalNetworkToken[this]
       || msgsender_MSG == owner_Ownable[this]
       || msgsender_MSG == tokenSaleContract_PolicyPalNetworkToken[this]))
    {
        revert := true;
        return;
    }
}



implementation isValidDestination_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s616: Ref)
{
  var __var_25: Ref;
  var __var_26: Ref;

    gas := gas - 88;
    __var_25 := null;
    if (!(_to_s616 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 86;
    __var_26 := this;
    if (!(_to_s616 != this))
    {
        revert := true;
        return;
    }
}



implementation isValidDestination_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _to_s616: Ref)
{
  var __var_25: Ref;
  var __var_26: Ref;

    gas := gas - 88;
    __var_25 := null;
    if (!(_to_s616 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 86;
    __var_26 := this;
    if (!(_to_s616 != this))
    {
        revert := true;
        return;
    }
}



implementation onlyAdmin_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1656;
    if (!(msgsender_MSG == __tmp__admin_CrowdsaleAuthorizer[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyAdmin_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1656;
    if (!(msgsender_MSG == admin_CrowdsaleAuthorizer[this]))
    {
        revert := true;
        return;
    }
}



implementation validAddress_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _addr_s814: Ref)
{
  var __var_34: Ref;
  var __var_35: Ref;

    gas := gas - 44;
    __var_34 := null;
    if (!(_addr_s814 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 43;
    __var_35 := this;
    if (!(_addr_s814 != this))
    {
        revert := true;
        return;
    }
}



implementation validAddress_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _addr_s814: Ref)
{
  var __var_34: Ref;
  var __var_35: Ref;

    gas := gas - 44;
    __var_34 := null;
    if (!(_addr_s814 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 43;
    __var_35 := this;
    if (!(_addr_s814 != this))
    {
        revert := true;
        return;
    }
}



implementation validSale_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_41: bool;
  var __var_42: bool;

    gas := gas - 262;
    if (!!__tmp__haltSale_PolicyPalNetworkCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 35;
    if (__tmp__DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_41 := saleStarted_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_41)
    {
        revert := true;
        return;
    }

    gas := gas - 38;
    if (__tmp__DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_42 := saleEnded_CrowdsaleAuthorizer__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_42)
    {
        revert := true;
        return;
    }
}



implementation validSale_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_41: bool;
  var __var_42: bool;

    gas := gas - 262;
    if (!!haltSale_PolicyPalNetworkCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 35;
    if (DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_41 := saleStarted_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_41)
    {
        revert := true;
        return;
    }

    gas := gas - 38;
    if (DType[this] == PolicyPalNetworkCrowdsale)
    {
        call __var_42 := saleEnded_CrowdsaleAuthorizer__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!!__var_42)
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_ERC20Basic(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var who_s13: Ref;
  var __ret_0_balanceOf: int;
  var to_s22: Ref;
  var value_s22: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc who_s13;
    havoc __ret_0_balanceOf;
    havoc to_s22;
    havoc value_s22;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s13);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s22, value_s22);
    }
}



implementation CorralEntry_ERC20Basic()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20Basic
       || DType[this] == BasicToken
       || DType[this] == ERC20
       || DType[this] == StandardToken
       || DType[this] == BurnableToken
       || DType[this] == PolicyPalNetworkToken;
    gas := gas - 53000;
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Basic(this);
    }
}



implementation CorralChoice_SafeMath(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
}



implementation CorralEntry_SafeMath()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == SafeMath;
    gas := gas - 53000;
    call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_SafeMath(this);
    }
}



implementation CorralChoice_BasicToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s167: Ref;
  var balance_s167: int;
  var _to_s155: Ref;
  var _value_s155: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s167;
    havoc balance_s167;
    havoc _to_s155;
    havoc _value_s155;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s167 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s167);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s155, _value_s155);
    }
}



implementation CorralEntry_BasicToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == BasicToken
       || DType[this] == StandardToken
       || DType[this] == BurnableToken
       || DType[this] == PolicyPalNetworkToken;
    gas := gas - 53000;
    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BasicToken(this);
    }
}



implementation CorralChoice_ERC20(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var who_s13: Ref;
  var __ret_0_balanceOf: int;
  var to_s22: Ref;
  var value_s22: int;
  var __ret_0_transfer: bool;
  var owner_s179: Ref;
  var spender_s179: Ref;
  var __ret_0_allowance: int;
  var from_s190: Ref;
  var to_s190: Ref;
  var value_s190: int;
  var __ret_0_transferFrom: bool;
  var spender_s199: Ref;
  var value_s199: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc who_s13;
    havoc __ret_0_balanceOf;
    havoc to_s22;
    havoc value_s22;
    havoc __ret_0_transfer;
    havoc owner_s179;
    havoc spender_s179;
    havoc __ret_0_allowance;
    havoc from_s190;
    havoc to_s190;
    havoc value_s190;
    havoc __ret_0_transferFrom;
    havoc spender_s199;
    havoc value_s199;
    havoc __ret_0_approve;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20Basic(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s13);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s22, value_s22);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s179, spender_s179);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s190, to_s190, value_s190);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s199, value_s199);
    }
}



implementation CorralEntry_ERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ERC20
       || DType[this] == StandardToken
       || DType[this] == PolicyPalNetworkToken;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
    }
}



implementation CorralChoice_StandardToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s167: Ref;
  var balance_s167: int;
  var _to_s155: Ref;
  var _value_s155: int;
  var __ret_0_transfer: bool;
  var _owner_s348: Ref;
  var _spender_s348: Ref;
  var __ret_0_allowance: int;
  var _from_s304: Ref;
  var _to_s304: Ref;
  var _value_s304: int;
  var __ret_0_transferFrom: bool;
  var _spender_s332: Ref;
  var _value_s332: int;
  var __ret_0_approve: bool;
  var _spender_s389: Ref;
  var _addedValue_s389: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s449: Ref;
  var _subtractedValue_s449: int;
  var __ret_0_decreaseApproval: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s167;
    havoc balance_s167;
    havoc _to_s155;
    havoc _value_s155;
    havoc __ret_0_transfer;
    havoc _owner_s348;
    havoc _spender_s348;
    havoc __ret_0_allowance;
    havoc _from_s304;
    havoc _to_s304;
    havoc _value_s304;
    havoc __ret_0_transferFrom;
    havoc _spender_s332;
    havoc _value_s332;
    havoc __ret_0_approve;
    havoc _spender_s389;
    havoc _addedValue_s389;
    havoc __ret_0_increaseApproval;
    havoc _spender_s449;
    havoc _subtractedValue_s449;
    havoc __ret_0_decreaseApproval;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s167 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s167);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s155, _value_s155);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s348, _spender_s348);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s304, _to_s304, _value_s304);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s332, _value_s332);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s389, _addedValue_s389);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s449, _subtractedValue_s449);
    }
}



implementation CorralEntry_StandardToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == StandardToken || DType[this] == PolicyPalNetworkToken;
    gas := gas - 53000;
    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_StandardToken(this);
    }
}



implementation CorralChoice_BurnableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s167: Ref;
  var balance_s167: int;
  var _to_s155: Ref;
  var _value_s155: int;
  var __ret_0_transfer: bool;
  var _value_s501: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s167;
    havoc balance_s167;
    havoc _to_s155;
    havoc _value_s155;
    havoc __ret_0_transfer;
    havoc _value_s501;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s167 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s167);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s155, _value_s155);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_BurnableToken(this, msgsender_MSG, msgvalue_MSG, _value_s501);
    }
}



implementation CorralEntry_BurnableToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == BurnableToken || DType[this] == PolicyPalNetworkToken;
    gas := gas - 53000;
    call BurnableToken_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BurnableToken(this);
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s555: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s555;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s555);
    }
}



implementation CorralEntry_Ownable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Ownable || DType[this] == PolicyPalNetworkToken;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_PolicyPalNetworkToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s167: Ref;
  var balance_s167: int;
  var _to_s695: Ref;
  var _value_s695: int;
  var __ret_0_transfer: bool;
  var _owner_s348: Ref;
  var _spender_s348: Ref;
  var __ret_0_allowance: int;
  var _from_s719: Ref;
  var _to_s719: Ref;
  var _value_s719: int;
  var __ret_0_transferFrom: bool;
  var _spender_s332: Ref;
  var _value_s332: int;
  var __ret_0_approve: bool;
  var _spender_s389: Ref;
  var _addedValue_s389: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s449: Ref;
  var _subtractedValue_s449: int;
  var __ret_0_decreaseApproval: bool;
  var _value_s740: int;
  var newOwner_s555: Ref;
  var _toggle_s628: bool;
  var _tokenTotalAmount_s674: int;
  var _adminAddr_s674: Ref;
  var _token_s757: Ref;
  var _amount_s757: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s167;
    havoc balance_s167;
    havoc _to_s695;
    havoc _value_s695;
    havoc __ret_0_transfer;
    havoc _owner_s348;
    havoc _spender_s348;
    havoc __ret_0_allowance;
    havoc _from_s719;
    havoc _to_s719;
    havoc _value_s719;
    havoc __ret_0_transferFrom;
    havoc _spender_s332;
    havoc _value_s332;
    havoc __ret_0_approve;
    havoc _spender_s389;
    havoc _addedValue_s389;
    havoc __ret_0_increaseApproval;
    havoc _spender_s449;
    havoc _subtractedValue_s449;
    havoc __ret_0_decreaseApproval;
    havoc _value_s740;
    havoc newOwner_s555;
    havoc _toggle_s628;
    havoc _tokenTotalAmount_s674;
    havoc _adminAddr_s674;
    havoc _token_s757;
    havoc _amount_s757;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s167 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s167);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PolicyPalNetworkToken(this, msgsender_MSG, msgvalue_MSG, _to_s695, _value_s695);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s348, _spender_s348);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PolicyPalNetworkToken(this, msgsender_MSG, msgvalue_MSG, _from_s719, _to_s719, _value_s719);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s332, _value_s332);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s389, _addedValue_s389);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s449, _subtractedValue_s449);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_PolicyPalNetworkToken(this, msgsender_MSG, msgvalue_MSG, _value_s740);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s555);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call toggleTransferable_PolicyPalNetworkToken(this, msgsender_MSG, msgvalue_MSG, _toggle_s628);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call emergencyERC20Drain_PolicyPalNetworkToken(this, msgsender_MSG, msgvalue_MSG, _token_s757, _amount_s757);
    }
}



implementation CorralEntry_PolicyPalNetworkToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _tokenTotalAmount_s674: int;
  var _adminAddr_s674: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == PolicyPalNetworkToken;
    gas := gas - 53000;
    call PolicyPalNetworkToken_PolicyPalNetworkToken(this, msgsender_MSG, msgvalue_MSG, _tokenTotalAmount_s674, _adminAddr_s674);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PolicyPalNetworkToken(this);
    }
}



implementation CorralChoice_CrowdsaleAuthorizer(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _admin_s899: Ref;
  var _saleStartTime_s899: int;
  var _saleEndTime_s899: int;
  var _increaseMaxContribTime_s899: int;
  var _minContribution_s899: int;
  var _maxContribution_s899: int;
  var _user_s929: Ref;
  var _allow_s929: bool;
  var _users_s986: Ref;
  var _allows_s986: Ref;
  var _contributor_s1045: Ref;
  var _amount_s1045: int;
  var __ret_0_eligibleAmount: int;
  var __ret_0_saleStarted: bool;
  var __ret_0_saleEnded: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _admin_s899;
    havoc _saleStartTime_s899;
    havoc _saleEndTime_s899;
    havoc _increaseMaxContribTime_s899;
    havoc _minContribution_s899;
    havoc _maxContribution_s899;
    havoc _user_s929;
    havoc _allow_s929;
    havoc _users_s986;
    havoc _allows_s986;
    havoc _contributor_s1045;
    havoc _amount_s1045;
    havoc __ret_0_eligibleAmount;
    havoc __ret_0_saleStarted;
    havoc __ret_0_saleEnded;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call updateWhitelist_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG, _user_s929, _allow_s929);
    }
    else if (choice == 4)
    {
        call _users_s986 := FreshRefGenerator__success();
        call _allows_s986 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call updateWhitelists_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG, _users_s986, _allows_s986);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_eligibleAmount := eligibleAmount_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG, _contributor_s1045, _amount_s1045);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_saleStarted := saleStarted_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_saleEnded := saleEnded_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_CrowdsaleAuthorizer()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _admin_s899: Ref;
  var _saleStartTime_s899: int;
  var _saleEndTime_s899: int;
  var _increaseMaxContribTime_s899: int;
  var _minContribution_s899: int;
  var _maxContribution_s899: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == CrowdsaleAuthorizer || DType[this] == PolicyPalNetworkCrowdsale;
    gas := gas - 53000;
    call CrowdsaleAuthorizer_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG, _admin_s899, _saleStartTime_s899, _saleEndTime_s899, _increaseMaxContribTime_s899, _minContribution_s899, _maxContribution_s899);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_CrowdsaleAuthorizer(this);
    }
}



implementation CorralChoice_PolicyPalNetworkCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _admin_s899: Ref;
  var _saleStartTime_s899: int;
  var _saleEndTime_s899: int;
  var _increaseMaxContribTime_s899: int;
  var _minContribution_s899: int;
  var _maxContribution_s899: int;
  var _user_s929: Ref;
  var _allow_s929: bool;
  var _users_s986: Ref;
  var _allows_s986: Ref;
  var _contributor_s1045: Ref;
  var _amount_s1045: int;
  var __ret_0_eligibleAmount: int;
  var __ret_0_saleStarted: bool;
  var __ret_0_saleEnded: bool;
  var _admin_s1241: Ref;
  var _multiSigWallet_s1241: Ref;
  var _totalTokenSupply_s1241: int;
  var _premintedTokenSupply_s1241: int;
  var _presaleTokenSupply_s1241: int;
  var _saleStartTime_s1241: int;
  var _saleEndTime_s1241: int;
  var _increaseMaxContribTime_s1241: int;
  var _rate_s1241: int;
  var _minContribution_s1241: int;
  var _maxContribution_s1241: int;
  var _halt_s1253: bool;
  var _recipient_s1370: Ref;
  var __ret_0_buy: int;
  var _anyToken_s1419: Ref;
  var __ret_0_emergencyDrain: bool;
  var __ret_0_totalSupply: int;
  var _owner_s167: Ref;
  var balance_s167: int;
  var _to_s695: Ref;
  var _value_s695: int;
  var __ret_0_transfer: bool;
  var _owner_s348: Ref;
  var _spender_s348: Ref;
  var __ret_0_allowance: int;
  var _from_s719: Ref;
  var _to_s719: Ref;
  var _value_s719: int;
  var __ret_0_transferFrom: bool;
  var _spender_s332: Ref;
  var _value_s332: int;
  var __ret_0_approve: bool;
  var _spender_s389: Ref;
  var _addedValue_s389: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s449: Ref;
  var _subtractedValue_s449: int;
  var __ret_0_decreaseApproval: bool;
  var _value_s740: int;
  var newOwner_s555: Ref;
  var _toggle_s628: bool;
  var _tokenTotalAmount_s674: int;
  var _adminAddr_s674: Ref;
  var _token_s757: Ref;
  var _amount_s757: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _admin_s899;
    havoc _saleStartTime_s899;
    havoc _saleEndTime_s899;
    havoc _increaseMaxContribTime_s899;
    havoc _minContribution_s899;
    havoc _maxContribution_s899;
    havoc _user_s929;
    havoc _allow_s929;
    havoc _users_s986;
    havoc _allows_s986;
    havoc _contributor_s1045;
    havoc _amount_s1045;
    havoc __ret_0_eligibleAmount;
    havoc __ret_0_saleStarted;
    havoc __ret_0_saleEnded;
    havoc _admin_s1241;
    havoc _multiSigWallet_s1241;
    havoc _totalTokenSupply_s1241;
    havoc _premintedTokenSupply_s1241;
    havoc _presaleTokenSupply_s1241;
    havoc _saleStartTime_s1241;
    havoc _saleEndTime_s1241;
    havoc _increaseMaxContribTime_s1241;
    havoc _rate_s1241;
    havoc _minContribution_s1241;
    havoc _maxContribution_s1241;
    havoc _halt_s1253;
    havoc _recipient_s1370;
    havoc __ret_0_buy;
    havoc _anyToken_s1419;
    havoc __ret_0_emergencyDrain;
    havoc __ret_0_totalSupply;
    havoc _owner_s167;
    havoc balance_s167;
    havoc _to_s695;
    havoc _value_s695;
    havoc __ret_0_transfer;
    havoc _owner_s348;
    havoc _spender_s348;
    havoc __ret_0_allowance;
    havoc _from_s719;
    havoc _to_s719;
    havoc _value_s719;
    havoc __ret_0_transferFrom;
    havoc _spender_s332;
    havoc _value_s332;
    havoc __ret_0_approve;
    havoc _spender_s389;
    havoc _addedValue_s389;
    havoc __ret_0_increaseApproval;
    havoc _spender_s449;
    havoc _subtractedValue_s449;
    havoc __ret_0_decreaseApproval;
    havoc _value_s740;
    havoc newOwner_s555;
    havoc _toggle_s628;
    havoc _tokenTotalAmount_s674;
    havoc _adminAddr_s674;
    havoc _token_s757;
    havoc _amount_s757;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != PolicyPalNetworkToken;
    assume DType[msgsender_MSG] != CrowdsaleAuthorizer;
    assume DType[msgsender_MSG] != PolicyPalNetworkCrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 20)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s167 := balanceOf_BasicToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _owner_s167);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PolicyPalNetworkToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _to_s695, _value_s695);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _owner_s348, _spender_s348);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PolicyPalNetworkToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _from_s719, _to_s719, _value_s719);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _spender_s332, _value_s332);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _spender_s389, _addedValue_s389);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _spender_s449, _subtractedValue_s449);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_PolicyPalNetworkToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _value_s740);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, newOwner_s555);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call toggleTransferable_PolicyPalNetworkToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _toggle_s628);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call emergencyERC20Drain_PolicyPalNetworkToken(token_PolicyPalNetworkCrowdsale[this], msgsender_MSG, msgvalue_MSG, _token_s757, _amount_s757);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call updateWhitelist_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG, _user_s929, _allow_s929);
    }
    else if (choice == 7)
    {
        call _users_s986 := FreshRefGenerator__success();
        call _allows_s986 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call updateWhitelists_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG, _users_s986, _allows_s986);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_eligibleAmount := eligibleAmount_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG, _contributor_s1045, _amount_s1045);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_saleStarted := saleStarted_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_saleEnded := saleEnded_CrowdsaleAuthorizer(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setHaltSale_PolicyPalNetworkCrowdsale(this, msgsender_MSG, msgvalue_MSG, _halt_s1253);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        call __ret_0_buy := buy_PolicyPalNetworkCrowdsale(this, msgsender_MSG, msgvalue_MSG, _recipient_s1370);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_emergencyDrain := emergencyDrain_PolicyPalNetworkCrowdsale(this, msgsender_MSG, msgvalue_MSG, _anyToken_s1419);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _admin_s1241: Ref;
  var _multiSigWallet_s1241: Ref;
  var _totalTokenSupply_s1241: int;
  var _premintedTokenSupply_s1241: int;
  var _presaleTokenSupply_s1241: int;
  var _saleStartTime_s1241: int;
  var _saleEndTime_s1241: int;
  var _increaseMaxContribTime_s1241: int;
  var _rate_s1241: int;
  var _minContribution_s1241: int;
  var _maxContribution_s1241: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == PolicyPalNetworkCrowdsale;
    gas := gas - 53000;
    call PolicyPalNetworkCrowdsale_PolicyPalNetworkCrowdsale(this, msgsender_MSG, msgvalue_MSG, _admin_s1241, _multiSigWallet_s1241, _totalTokenSupply_s1241, _premintedTokenSupply_s1241, _presaleTokenSupply_s1241, _saleStartTime_s1241, _saleEndTime_s1241, _increaseMaxContribTime_s1241, _rate_s1241, _minContribution_s1241, _maxContribution_s1241);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PolicyPalNetworkCrowdsale(this);
    }
}


