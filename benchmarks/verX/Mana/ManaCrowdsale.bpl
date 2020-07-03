// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:ManaCrowdsale.bpl /pretty:1 /noVerify /noinfer /noTypecheck __SolToBoogieTest_out.bpl

// spec_01
// LTLProperty: [](!finished(*, bucketAmount_ContinuousSale[continuousSale_MANACrowdsale[this]] > issuance_ContinuousSale[continuousSale_MANACrowdsale[this]]))

// spec_02
// LTLProperty: [](!finished(*, isFinalized_FinalizableCrowdsale[this] == true && weiRaised_Crowdsale[this] < cap_CappedCrowdsale[this] && now <= endBlock_Crowdsale[this]))

// spec_03
// LTLProperty: [](!finished(*, started_MANAContinuousSale[continuousSale_MANACrowdsale[this]] != true && owner_Ownable[token_Crowdsale[this]] != this))

// spec_04
// #LTLProperty: [](!finished(*, started_MANAContinuousSale[continuousSale_MANACrowdsale[this]] == true && owner_Ownable[token_Crowdsale[this]] != continuousSale_MANACrowdsale[this]))

type Ref = int;

type ContractName = int;

var null: Ref;

var SafeMath: ContractName;

var ERC20Basic: ContractName;

var BasicToken: ContractName;

var ERC20: ContractName;

var StandardToken: ContractName;

var Ownable: ContractName;

var MintableToken: ContractName;

var Crowdsale: ContractName;

var CappedCrowdsale: ContractName;

var FinalizableCrowdsale: ContractName;

var WhitelistedCrowdsale: ContractName;

var ContinuousSale: ContractName;

var Pausable: ContractName;

var PausableToken: ContractName;

var BurnableToken: ContractName;

var MANAToken: ContractName;

var MANAContinuousSale: ContractName;

var MANACrowdsale: ContractName;

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

var M_Ref_bool_whitelist2: [Ref][Ref]bool;

var sum_whitelist2: [Ref]int;

var M_Ref_int_buyerRate3: [Ref][Ref]int;

var sum_buyerRate3: [Ref]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance;



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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s31: int, b_s31: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s69: int, b_s69: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic;



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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call ERC20Basic_ERC20Basic__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.totalSupply=totalSupply_ERC20Basic[this]"} totalSupply_ERC20Basic: [Ref]int;

procedure {:public} {:inline 1} balanceOf_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s103: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s112: Ref, value_s112: int)
   returns (__ret_0_: bool);



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
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

procedure {:public} {:inline 1} transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s173: Ref, 
    _value_s173: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s173: Ref, 
    _value_s173: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s173, _value_s173);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s173, _value_s173);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s185: Ref)
   returns (balance_s185: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas;



implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s185: Ref)
   returns (balance_s185: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call balance_s185 := balanceOf_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
        assume revert || gas < 0;
    }
    else
    {
        call balance_s185 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic;



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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
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
    owner_s197: Ref, 
    spender_s197: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s208: Ref, 
    to_s208: Ref, 
    value_s208: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s217: Ref, 
    value_s217: int)
   returns (__ret_0_: bool);



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
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
    _from_s299: Ref, 
    _to_s299: Ref, 
    _value_s299: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s299: Ref, 
    _to_s299: Ref, 
    _value_s299: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s299, _to_s299, _value_s299);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s299, _to_s299, _value_s299);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s344: Ref, 
    _value_s344: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s344: Ref, 
    _value_s344: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s344, _value_s344);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s344, _value_s344);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s360: Ref, 
    _spender_s360: Ref)
   returns (remaining_s360: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s360: Ref, 
    _spender_s360: Ref)
   returns (remaining_s360: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call remaining_s360 := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s360, _spender_s360);
        assume revert || gas < 0;
    }
    else
    {
        call remaining_s360 := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s360, _spender_s360);
        assume !revert && gas >= 0;
    }
}



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, owner_Ownable;



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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s402: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s402: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} MintableToken_MintableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, mintingFinished_MintableToken;



procedure {:inline 1} MintableToken_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, mintingFinished_MintableToken;



implementation MintableToken_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call MintableToken_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.mintingFinished=mintingFinished_MintableToken[this]"} mintingFinished_MintableToken: [Ref]bool;

procedure {:public} {:inline 1} mint_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s466: Ref, 
    _amount_s466: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0;



implementation mint_MintableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s466: Ref, 
    _amount_s466: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := mint_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s466, _amount_s466);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := mint_MintableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s466, _amount_s466);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} finishMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, mintingFinished_MintableToken;



implementation finishMinting_MintableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := finishMinting_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := finishMinting_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.token=token_Crowdsale[this]"} token_Crowdsale: [Ref]Ref;

var {:access "this.startBlock=startBlock_Crowdsale[this]"} startBlock_Crowdsale: [Ref]int;

var {:access "this.endBlock=endBlock_Crowdsale[this]"} endBlock_Crowdsale: [Ref]int;

var {:access "this.wallet=wallet_Crowdsale[this]"} wallet_Crowdsale: [Ref]Ref;

var {:access "this.rate=rate_Crowdsale[this]"} rate_Crowdsale: [Ref]int;

var {:access "this.weiRaised=weiRaised_Crowdsale[this]"} weiRaised_Crowdsale: [Ref]int;

procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref);
  modifies Balance, startBlock_Crowdsale, endBlock_Crowdsale, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken;



procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, startBlock_Crowdsale, endBlock_Crowdsale, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken;



implementation Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _startBlock_s568, _endBlock_s568, _rate_s568, _wallet_s568);
        assume revert || gas < 0;
    }
    else
    {
        call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _startBlock_s568, _endBlock_s568, _rate_s568, _wallet_s568);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} createTokenContract_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, mintingFinished_MintableToken;



procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s643: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, Balance, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s643: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s643);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s643);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, weiRaised_Crowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} validPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:public} {:inline 1} hasEnded_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas;



implementation hasEnded_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := hasEnded_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := hasEnded_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.cap=cap_CappedCrowdsale[this]"} cap_CappedCrowdsale: [Ref]int;

procedure {:inline 1} CappedCrowdsale_CappedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int);
  modifies Balance, cap_CappedCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} CappedCrowdsale_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, cap_CappedCrowdsale;



implementation CappedCrowdsale_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call CappedCrowdsale_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _cap_s719);
        assume revert || gas < 0;
    }
    else
    {
        call CappedCrowdsale_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _cap_s719);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} validPurchase_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:public} {:inline 1} hasEnded_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas;



implementation hasEnded_CappedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := hasEnded_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := hasEnded_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, isFinalized_FinalizableCrowdsale;



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, owner_Ownable, isFinalized_FinalizableCrowdsale;



implementation FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.isFinalized=isFinalized_FinalizableCrowdsale[this]"} isFinalized_FinalizableCrowdsale: [Ref]bool;

procedure {:public} {:inline 1} finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, isFinalized_FinalizableCrowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, mintingFinished_MintableToken;



implementation finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call finalize_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call finalize_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, mintingFinished_MintableToken, revert;



procedure {:inline 1} WhitelistedCrowdsale_WhitelistedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, whitelist_WhitelistedCrowdsale, M_Ref_bool_whitelist2, Alloc;



procedure {:inline 1} WhitelistedCrowdsale_WhitelistedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, owner_Ownable, whitelist_WhitelistedCrowdsale, M_Ref_bool_whitelist2, Alloc;



implementation WhitelistedCrowdsale_WhitelistedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call WhitelistedCrowdsale_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call WhitelistedCrowdsale_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.whitelist[i0]=M_Ref_bool_whitelist2[whitelist_WhitelistedCrowdsale[this]][i0]"} {:sum "sum(this.whitelist)=sum_whitelist2[whitelist_WhitelistedCrowdsale[this]]"} whitelist_WhitelistedCrowdsale: [Ref]Ref;

procedure {:public} {:inline 1} addToWhitelist_WhitelistedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s841: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, M_Ref_bool_whitelist2;



implementation addToWhitelist_WhitelistedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s841: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call addToWhitelist_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s841);
        assume revert || gas < 0;
    }
    else
    {
        call addToWhitelist_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, buyer_s841);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isWhitelisted_WhitelistedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s853: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas;



implementation isWhitelisted_WhitelistedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s853: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := isWhitelisted_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s853);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isWhitelisted_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, buyer_s853);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} validPurchase_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



var {:access "this.BUCKET_SIZE=BUCKET_SIZE_ContinuousSale[this]"} BUCKET_SIZE_ContinuousSale: [Ref]int;

var {:access "this.token=token_ContinuousSale[this]"} token_ContinuousSale: [Ref]Ref;

var {:access "this.wallet=wallet_ContinuousSale[this]"} wallet_ContinuousSale: [Ref]Ref;

var {:access "this.rate=rate_ContinuousSale[this]"} rate_ContinuousSale: [Ref]int;

var {:access "this.weiRaised=weiRaised_ContinuousSale[this]"} weiRaised_ContinuousSale: [Ref]int;

var {:access "this.issuance=issuance_ContinuousSale[this]"} issuance_ContinuousSale: [Ref]int;

var {:access "this.lastBucket=lastBucket_ContinuousSale[this]"} lastBucket_ContinuousSale: [Ref]int;

var {:access "this.bucketAmount=bucketAmount_ContinuousSale[this]"} bucketAmount_ContinuousSale: [Ref]int;

procedure {:inline 1} ContinuousSale_ContinuousSale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref);
  modifies Balance, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, revert, token_ContinuousSale;



procedure {:constructor} {:public} {:inline 1} ContinuousSale_ContinuousSale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale;



implementation ContinuousSale_ContinuousSale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call ContinuousSale_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s942, _wallet_s942, _token_s942);
        assume revert || gas < 0;
    }
    else
    {
        call ContinuousSale_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, _rate_s942, _wallet_s942, _token_s942);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, revert, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, weiRaised_Crowdsale;



procedure {:public} {:inline 1} buyTokens_ContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s985: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, Balance, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, weiRaised_Crowdsale;



implementation buyTokens_ContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s985: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call buyTokens_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s985);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s985);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} prepareContinuousPurchase_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, lastBucket_ContinuousSale, bucketAmount_ContinuousSale;



procedure {:inline 1} checkContinuousPurchase_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1043: int);
  modifies gas, revert, bucketAmount_ContinuousSale;



procedure {:inline 1} processPurchase_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1090: Ref)
   returns (__ret_0_: int);
  modifies gas, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, weiRaised_Crowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale;



procedure {:inline 1} forwardFunds_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, weiRaised_Crowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, paused_Pausable;



procedure {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, owner_Ownable, paused_Pausable;



implementation Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.paused=paused_Pausable[this]"} paused_Pausable: [Ref]bool;

procedure {:public} {:inline 1} pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, paused_Pausable;



implementation pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := pause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := pause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, paused_Pausable;



implementation unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := unpause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := unpause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable;



implementation PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call PausableToken_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transfer_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1189: Ref, 
    _value_s1189: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1189: Ref, 
    _value_s1189: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1210: Ref, 
    _to_s1210: Ref, 
    _value_s1210: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1210: Ref, 
    _to_s1210: Ref, 
    _value_s1210: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call __ret_0_ := transferFrom_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} BurnableToken_BurnableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} BurnableToken_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call BurnableToken_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call BurnableToken_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1260: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation burn_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1260: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call burn_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s1260);
        assume revert || gas < 0;
    }
    else
    {
        call burn_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s1260);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} MANAToken_MANAToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, symbol_MANAToken, name_MANAToken, decimals_MANAToken;



procedure {:inline 1} MANAToken_MANAToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken;



implementation MANAToken_MANAToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call MANAToken_MANAToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call MANAToken_MANAToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.symbol=symbol_MANAToken[this]"} symbol_MANAToken: [Ref]int;

var {:access "this.name=name_MANAToken[this]"} name_MANAToken: [Ref]int;

var {:access "this.decimals=decimals_MANAToken[this]"} decimals_MANAToken: [Ref]int;

procedure {:public} {:inline 1} burn_MANAToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1290: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation burn_MANAToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1290: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call burn_MANAToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s1290);
        assume revert || gas < 0;
    }
    else
    {
        call burn_MANAToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s1290);
        assume !revert && gas >= 0;
    }
}



var {:access "this.INFLATION=INFLATION_MANAContinuousSale[this]"} INFLATION_MANAContinuousSale: [Ref]int;

var {:access "this.started=started_MANAContinuousSale[this]"} started_MANAContinuousSale: [Ref]bool;

procedure {:inline 1} MANAContinuousSale_MANAContinuousSale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref);
  modifies Balance, INFLATION_MANAContinuousSale, started_MANAContinuousSale;



procedure {:constructor} {:public} {:inline 1} MANAContinuousSale_MANAContinuousSale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale, owner_Ownable, INFLATION_MANAContinuousSale, started_MANAContinuousSale;



implementation MANAContinuousSale_MANAContinuousSale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call MANAContinuousSale_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s1324, _wallet_s1324, _token_s1324);
        assume revert || gas < 0;
    }
    else
    {
        call MANAContinuousSale_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, _rate_s1324, _wallet_s1324, _token_s1324);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} start_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, issuance_ContinuousSale, started_MANAContinuousSale;



implementation start_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call start_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call start_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} buyTokens_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1383: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, Balance, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, weiRaised_Crowdsale;



implementation buyTokens_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1383: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call buyTokens_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1383);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1383);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setWallet_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1407: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, wallet_ContinuousSale;



implementation setWallet_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1407: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call setWallet_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, _wallet_s1407);
        assume revert || gas < 0;
    }
    else
    {
        call setWallet_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, _wallet_s1407);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setRate_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rate_s1423: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, rate_ContinuousSale;



implementation setRate_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rate_s1423: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call setRate_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s1423);
        assume revert || gas < 0;
    }
    else
    {
        call setRate_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, _rate_s1423);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} unpauseToken_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, paused_Pausable;



implementation unpauseToken_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call unpauseToken_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call unpauseToken_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} pauseToken_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, paused_Pausable;



implementation pauseToken_MANAContinuousSale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call pauseToken_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call pauseToken_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.TOTAL_SHARE=TOTAL_SHARE_MANACrowdsale[this]"} TOTAL_SHARE_MANACrowdsale: [Ref]int;

var {:access "this.CROWDSALE_SHARE=CROWDSALE_SHARE_MANACrowdsale[this]"} CROWDSALE_SHARE_MANACrowdsale: [Ref]int;

var {:access "this.FOUNDATION_SHARE=FOUNDATION_SHARE_MANACrowdsale[this]"} FOUNDATION_SHARE_MANACrowdsale: [Ref]int;

var {:access "this.preferentialRate=preferentialRate_MANACrowdsale[this]"} preferentialRate_MANACrowdsale: [Ref]int;

var {:access "this.buyerRate[i0]=M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][i0]"} {:sum "sum(this.buyerRate)=sum_buyerRate3[buyerRate_MANACrowdsale[this]]"} buyerRate_MANACrowdsale: [Ref]Ref;

var {:access "this.initialRate=initialRate_MANACrowdsale[this]"} initialRate_MANACrowdsale: [Ref]int;

var {:access "this.endRate=endRate_MANACrowdsale[this]"} endRate_MANACrowdsale: [Ref]int;

var {:access "this.continuousSale=continuousSale_MANACrowdsale[this]"} continuousSale_MANACrowdsale: [Ref]Ref;

procedure {:inline 1} MANACrowdsale_MANACrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref);
  modifies Balance, TOTAL_SHARE_MANACrowdsale, CROWDSALE_SHARE_MANACrowdsale, FOUNDATION_SHARE_MANACrowdsale, preferentialRate_MANACrowdsale, buyerRate_MANACrowdsale, M_Ref_int_buyerRate3, sum_buyerRate3, initialRate_MANACrowdsale, endRate_MANACrowdsale, revert, continuousSale_MANACrowdsale, Alloc, gas, paused_Pausable, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale, owner_Ownable, INFLATION_MANAContinuousSale, started_MANAContinuousSale;



procedure {:constructor} {:public} {:inline 1} MANACrowdsale_MANACrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, Balance, startBlock_Crowdsale, endBlock_Crowdsale, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, owner_Ownable, whitelist_WhitelistedCrowdsale, M_Ref_bool_whitelist2, Alloc, cap_CappedCrowdsale, isFinalized_FinalizableCrowdsale, TOTAL_SHARE_MANACrowdsale, CROWDSALE_SHARE_MANACrowdsale, FOUNDATION_SHARE_MANACrowdsale, preferentialRate_MANACrowdsale, buyerRate_MANACrowdsale, M_Ref_int_buyerRate3, sum_buyerRate3, initialRate_MANACrowdsale, endRate_MANACrowdsale, continuousSale_MANACrowdsale, paused_Pausable, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale, INFLATION_MANAContinuousSale, started_MANAContinuousSale;



implementation MANACrowdsale_MANACrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call MANACrowdsale_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _startBlock_s1569, _endBlock_s1569, _initialRate_s1569, _endRate_s1569, _preferentialRate_s1569, _wallet_s1569);
        assume revert || gas < 0;
    }
    else
    {
        call MANACrowdsale_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _startBlock_s1569, _endBlock_s1569, _initialRate_s1569, _endRate_s1569, _preferentialRate_s1569, _wallet_s1569);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} createTokenContract_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken;



procedure {:inline 1} createContinuousSaleContract_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies Alloc, Balance, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, revert, token_ContinuousSale, owner_Ownable, INFLATION_MANAContinuousSale, started_MANAContinuousSale;



procedure {:public} {:inline 1} setBuyerRate_MANACrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1631: Ref, 
    rate_s1631: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, sum_buyerRate3, M_Ref_int_buyerRate3;



implementation setBuyerRate_MANACrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1631: Ref, 
    rate_s1631: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call setBuyerRate_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1631, rate_s1631);
        assume revert || gas < 0;
    }
    else
    {
        call setBuyerRate_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1631, rate_s1631);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setInitialRate_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1659: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, initialRate_MANACrowdsale;



implementation setInitialRate_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1659: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call setInitialRate_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s1659);
        assume revert || gas < 0;
    }
    else
    {
        call setInitialRate_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s1659);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setEndRate_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1687: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, endRate_MANACrowdsale;



implementation setEndRate_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1687: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call setEndRate_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, rate_s1687);
        assume revert || gas < 0;
    }
    else
    {
        call setEndRate_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG, rate_s1687);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} getRate_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:public} {:inline 1} buyTokens_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1808: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, Balance, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



implementation buyTokens_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1808: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call buyTokens_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1808);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1808);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} setWallet_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1838: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, wallet_Crowdsale, wallet_ContinuousSale;



implementation setWallet_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1838: Ref)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call setWallet_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _wallet_s1838);
        assume revert || gas < 0;
    }
    else
    {
        call setWallet_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _wallet_s1838);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} unpauseToken_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, paused_Pausable;



implementation unpauseToken_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call unpauseToken_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call unpauseToken_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} pauseToken_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, paused_Pausable;



implementation pauseToken_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call pauseToken_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call pauseToken_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} beginContinuousSale_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, owner_Ownable, issuance_ContinuousSale, started_MANAContinuousSale;



implementation beginContinuousSale_MANACrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
        call beginContinuousSale_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call beginContinuousSale_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} finalization_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, revert;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, revert, weiRaised_Crowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, revert, gas, Balance, weiRaised_Crowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} canMint_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenStarted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20Basic(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20Basic();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_allowed1;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, now, owner_Ownable, Balance;



procedure CorralChoice_MintableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, totalSupply_ERC20Basic, mintingFinished_MintableToken;



procedure CorralEntry_MintableToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, mintingFinished_MintableToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_allowed1;



procedure CorralChoice_Crowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralEntry_Crowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, now, Balance, weiRaised_Crowdsale, startBlock_Crowdsale, endBlock_Crowdsale, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, balances_BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralChoice_CappedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralEntry_CappedCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, now, Balance, weiRaised_Crowdsale, cap_CappedCrowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralChoice_FinalizableCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, owner_Ownable, Balance, weiRaised_Crowdsale, isFinalized_FinalizableCrowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, mintingFinished_MintableToken, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralEntry_FinalizableCrowdsale();
  modifies gas, Alloc, Balance, owner_Ownable, isFinalized_FinalizableCrowdsale, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, mintingFinished_MintableToken, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralChoice_WhitelistedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, owner_Ownable, Balance, weiRaised_Crowdsale, M_Ref_bool_whitelist2, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralEntry_WhitelistedCrowdsale();
  modifies gas, Alloc, Balance, owner_Ownable, whitelist_WhitelistedCrowdsale, M_Ref_bool_whitelist2, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure CorralChoice_ContinuousSale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, Balance, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, weiRaised_Crowdsale;



procedure CorralEntry_ContinuousSale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, now, Balance, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, weiRaised_Crowdsale;



procedure CorralChoice_Pausable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, owner_Ownable, paused_Pausable;



procedure CorralEntry_Pausable();
  modifies gas, Alloc, Balance, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure CorralChoice_PausableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, paused_Pausable, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_PausableToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_allowed1;



procedure CorralChoice_BurnableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic;



procedure CorralEntry_BurnableToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_allowed1;



procedure CorralChoice_MANAToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, owner_Ownable, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, mintingFinished_MintableToken, paused_Pausable;



procedure CorralEntry_MANAToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, sum_allowed1;



procedure CorralChoice_MANAContinuousSale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, owner_Ownable, Balance, issuance_ContinuousSale, started_MANAContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, paused_Pausable, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, weiRaised_Crowdsale;



procedure CorralEntry_MANAContinuousSale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, now, owner_Ownable, Balance, issuance_ContinuousSale, started_MANAContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, BUCKET_SIZE_ContinuousSale, weiRaised_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale, INFLATION_MANAContinuousSale, paused_Pausable, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, weiRaised_Crowdsale;



procedure CorralChoice_MANACrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, owner_Ownable, Balance, weiRaised_Crowdsale, isFinalized_FinalizableCrowdsale, M_Ref_bool_whitelist2, wallet_Crowdsale, sum_buyerRate3, M_Ref_int_buyerRate3, initialRate_MANACrowdsale, endRate_MANACrowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, wallet_ContinuousSale, paused_Pausable, issuance_ContinuousSale, started_MANAContinuousSale, mintingFinished_MintableToken, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, now, owner_Ownable, Balance, weiRaised_Crowdsale, isFinalized_FinalizableCrowdsale, M_Ref_bool_whitelist2, wallet_Crowdsale, sum_buyerRate3, M_Ref_int_buyerRate3, initialRate_MANACrowdsale, endRate_MANACrowdsale, startBlock_Crowdsale, endBlock_Crowdsale, rate_Crowdsale, token_Crowdsale, whitelist_WhitelistedCrowdsale, cap_CappedCrowdsale, TOTAL_SHARE_MANACrowdsale, CROWDSALE_SHARE_MANACrowdsale, FOUNDATION_SHARE_MANACrowdsale, preferentialRate_MANACrowdsale, buyerRate_MANACrowdsale, continuousSale_MANACrowdsale, paused_Pausable, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, wallet_ContinuousSale, issuance_ContinuousSale, started_MANAContinuousSale, balances_BasicToken, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken, BUCKET_SIZE_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale, INFLATION_MANAContinuousSale;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_balances0: [Ref][Ref]int;

var __tmp__sum_balances0: [Ref]int;

var __tmp__M_Ref_int_allowed1: [Ref][Ref]int;

var __tmp__M_Ref_Ref_allowed1: [Ref][Ref]Ref;

var __tmp__sum_allowed1: [Ref]int;

var __tmp__M_Ref_bool_whitelist2: [Ref][Ref]bool;

var __tmp__sum_whitelist2: [Ref]int;

var __tmp__M_Ref_int_buyerRate3: [Ref][Ref]int;

var __tmp__sum_buyerRate3: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__totalSupply_ERC20Basic: [Ref]int;

var __tmp__balances_BasicToken: [Ref]Ref;

var __tmp__allowed_StandardToken: [Ref]Ref;

var __tmp__owner_Ownable: [Ref]Ref;

var __tmp__mintingFinished_MintableToken: [Ref]bool;

var __tmp__token_Crowdsale: [Ref]Ref;

var __tmp__startBlock_Crowdsale: [Ref]int;

var __tmp__endBlock_Crowdsale: [Ref]int;

var __tmp__wallet_Crowdsale: [Ref]Ref;

var __tmp__rate_Crowdsale: [Ref]int;

var __tmp__weiRaised_Crowdsale: [Ref]int;

var __tmp__cap_CappedCrowdsale: [Ref]int;

var __tmp__isFinalized_FinalizableCrowdsale: [Ref]bool;

var __tmp__whitelist_WhitelistedCrowdsale: [Ref]Ref;

var __tmp__BUCKET_SIZE_ContinuousSale: [Ref]int;

var __tmp__token_ContinuousSale: [Ref]Ref;

var __tmp__wallet_ContinuousSale: [Ref]Ref;

var __tmp__rate_ContinuousSale: [Ref]int;

var __tmp__weiRaised_ContinuousSale: [Ref]int;

var __tmp__issuance_ContinuousSale: [Ref]int;

var __tmp__lastBucket_ContinuousSale: [Ref]int;

var __tmp__bucketAmount_ContinuousSale: [Ref]int;

var __tmp__paused_Pausable: [Ref]bool;

var __tmp__symbol_MANAToken: [Ref]int;

var __tmp__name_MANAToken: [Ref]int;

var __tmp__decimals_MANAToken: [Ref]int;

var __tmp__INFLATION_MANAContinuousSale: [Ref]int;

var __tmp__started_MANAContinuousSale: [Ref]bool;

var __tmp__TOTAL_SHARE_MANACrowdsale: [Ref]int;

var __tmp__CROWDSALE_SHARE_MANACrowdsale: [Ref]int;

var __tmp__FOUNDATION_SHARE_MANACrowdsale: [Ref]int;

var __tmp__preferentialRate_MANACrowdsale: [Ref]int;

var __tmp__buyerRate_MANACrowdsale: [Ref]Ref;

var __tmp__initialRate_MANACrowdsale: [Ref]int;

var __tmp__endRate_MANACrowdsale: [Ref]int;

var __tmp__continuousSale_MANACrowdsale: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s31: int, b_s31: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s69: int, b_s69: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s173: Ref, 
    _value_s173: int)
   returns (__ret_0_: bool);
  modifies gas, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s173: Ref, 
    _value_s173: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s185: Ref)
   returns (balance_s185: int);
  modifies gas;



procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s185: Ref)
   returns (balance_s185: int);
  modifies gas;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__Alloc;



procedure {:inline 1} StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



procedure {:inline 1} StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1;



procedure {:inline 1} transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s299: Ref, 
    _to_s299: Ref, 
    _value_s299: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s299: Ref, 
    _to_s299: Ref, 
    _value_s299: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s344: Ref, 
    _value_s344: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, revert, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s344: Ref, 
    _value_s344: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, revert, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s360: Ref, 
    _spender_s360: Ref)
   returns (remaining_s360: int);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s360: Ref, 
    _spender_s360: Ref)
   returns (remaining_s360: int);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s402: Ref);
  modifies gas, owner_Ownable, revert;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s402: Ref);
  modifies gas, __tmp__owner_Ownable, revert;



procedure {:inline 1} MintableToken_MintableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__mintingFinished_MintableToken;



procedure {:inline 1} MintableToken_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, mintingFinished_MintableToken;



procedure {:inline 1} MintableToken_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken;



procedure {:inline 1} mint_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s466: Ref, 
    _amount_s466: int)
   returns (__ret_0_: bool);
  modifies gas, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, revert;



procedure {:inline 1} mint_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s466: Ref, 
    _amount_s466: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, revert;



procedure {:inline 1} finishMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, mintingFinished_MintableToken, revert;



procedure {:inline 1} finishMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, __tmp__mintingFinished_MintableToken, revert;



procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref);
  modifies __tmp__Balance, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__Alloc, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__mintingFinished_MintableToken, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref);
  modifies Balance, startBlock_Crowdsale, endBlock_Crowdsale, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, Alloc, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref);
  modifies __tmp__Balance, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__Alloc, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__mintingFinished_MintableToken, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken;



procedure {:inline 1} createTokenContract_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies __tmp__Alloc, __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken;



procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__weiRaised_Crowdsale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s643: Ref);
  modifies Balance, gas, revert, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s643: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__weiRaised_Crowdsale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} validPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasEnded_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasEnded_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} CappedCrowdsale_CappedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int);
  modifies __tmp__Balance, __tmp__cap_CappedCrowdsale, revert;



procedure {:constructor} {:inline 1} CappedCrowdsale_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int);
  modifies Balance, cap_CappedCrowdsale, revert;



procedure {:constructor} {:inline 1} CappedCrowdsale_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int);
  modifies __tmp__Balance, __tmp__cap_CappedCrowdsale, revert;



procedure {:inline 1} validPurchase_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasEnded_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasEnded_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__isFinalized_FinalizableCrowdsale;



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable, isFinalized_FinalizableCrowdsale;



procedure {:inline 1} FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__isFinalized_FinalizableCrowdsale;



procedure {:inline 1} finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, isFinalized_FinalizableCrowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, mintingFinished_MintableToken;



procedure {:inline 1} finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__isFinalized_FinalizableCrowdsale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__mintingFinished_MintableToken;



procedure {:inline 1} finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__mintingFinished_MintableToken, revert;



procedure {:inline 1} WhitelistedCrowdsale_WhitelistedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__whitelist_WhitelistedCrowdsale, __tmp__M_Ref_bool_whitelist2, __tmp__Alloc;



procedure {:inline 1} WhitelistedCrowdsale_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable, whitelist_WhitelistedCrowdsale, M_Ref_bool_whitelist2, Alloc;



procedure {:inline 1} WhitelistedCrowdsale_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__whitelist_WhitelistedCrowdsale, __tmp__M_Ref_bool_whitelist2, __tmp__Alloc;



procedure {:inline 1} addToWhitelist_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s841: Ref);
  modifies gas, revert, M_Ref_bool_whitelist2;



procedure {:inline 1} addToWhitelist_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s841: Ref);
  modifies gas, revert, __tmp__M_Ref_bool_whitelist2;



procedure {:inline 1} isWhitelisted_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s853: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} isWhitelisted_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s853: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} validPurchase_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} ContinuousSale_ContinuousSale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref);
  modifies __tmp__Balance, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, revert, __tmp__token_ContinuousSale;



procedure {:constructor} {:inline 1} ContinuousSale_ContinuousSale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref);
  modifies Balance, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, revert, token_ContinuousSale;



procedure {:constructor} {:inline 1} ContinuousSale_ContinuousSale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref);
  modifies __tmp__Balance, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, revert, __tmp__token_ContinuousSale;



procedure {:inline 1} FallbackMethod_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, revert, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} buyTokens_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s985: Ref);
  modifies Balance, gas, revert, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, weiRaised_Crowdsale;



procedure {:inline 1} buyTokens_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s985: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} prepareContinuousPurchase_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale;



procedure {:inline 1} checkContinuousPurchase_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1043: int);
  modifies gas, revert, __tmp__bucketAmount_ContinuousSale;



procedure {:inline 1} processPurchase_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1090: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__weiRaised_ContinuousSale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} forwardFunds_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__paused_Pausable;



procedure {:inline 1} Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable, paused_Pausable;



procedure {:inline 1} Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__paused_Pausable;



procedure {:inline 1} pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, paused_Pausable, revert;



procedure {:inline 1} pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, __tmp__paused_Pausable, revert;



procedure {:inline 1} unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, paused_Pausable, revert;



procedure {:inline 1} unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, __tmp__paused_Pausable, revert;



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable;



procedure {:inline 1} PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__paused_Pausable;



procedure {:inline 1} transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1189: Ref, 
    _value_s1189: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1189: Ref, 
    _value_s1189: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1210: Ref, 
    _to_s1210: Ref, 
    _value_s1210: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1210: Ref, 
    _to_s1210: Ref, 
    _value_s1210: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} BurnableToken_BurnableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} BurnableToken_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



procedure {:inline 1} BurnableToken_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1;



procedure {:inline 1} burn_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1260: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} burn_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1260: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} MANAToken_MANAToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken;



procedure {:inline 1} MANAToken_MANAToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken;



procedure {:inline 1} MANAToken_MANAToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__mintingFinished_MintableToken, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken;



procedure {:inline 1} burn_MANAToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1290: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} burn_MANAToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1290: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} MANAContinuousSale_MANAContinuousSale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref);
  modifies __tmp__Balance, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale;



procedure {:constructor} {:inline 1} MANAContinuousSale_MANAContinuousSale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref);
  modifies Balance, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, revert, token_ContinuousSale, owner_Ownable, INFLATION_MANAContinuousSale, started_MANAContinuousSale;



procedure {:constructor} {:inline 1} MANAContinuousSale_MANAContinuousSale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref);
  modifies __tmp__Balance, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, revert, __tmp__token_ContinuousSale, __tmp__owner_Ownable, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale;



procedure {:inline 1} start_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, issuance_ContinuousSale, started_MANAContinuousSale;



procedure {:inline 1} start_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__issuance_ContinuousSale, __tmp__started_MANAContinuousSale;



procedure {:inline 1} buyTokens_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1383: Ref);
  modifies Balance, gas, revert, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, weiRaised_Crowdsale;



procedure {:inline 1} buyTokens_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1383: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} setWallet_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1407: Ref);
  modifies gas, revert, wallet_ContinuousSale;



procedure {:inline 1} setWallet_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1407: Ref);
  modifies gas, revert, __tmp__wallet_ContinuousSale;



procedure {:inline 1} setRate_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rate_s1423: int);
  modifies gas, rate_ContinuousSale, revert;



procedure {:inline 1} setRate_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rate_s1423: int);
  modifies gas, __tmp__rate_ContinuousSale, revert;



procedure {:inline 1} unpauseToken_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, paused_Pausable;



procedure {:inline 1} unpauseToken_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__paused_Pausable;



procedure {:inline 1} pauseToken_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, paused_Pausable;



procedure {:inline 1} pauseToken_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__paused_Pausable;



procedure {:inline 1} MANACrowdsale_MANACrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref);
  modifies __tmp__Balance, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, revert, __tmp__continuousSale_MANACrowdsale, __tmp__Alloc, gas, __tmp__paused_Pausable, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__token_ContinuousSale, __tmp__owner_Ownable, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale;



procedure {:constructor} {:inline 1} MANACrowdsale_MANACrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref);
  modifies Balance, startBlock_Crowdsale, endBlock_Crowdsale, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, owner_Ownable, whitelist_WhitelistedCrowdsale, M_Ref_bool_whitelist2, Alloc, cap_CappedCrowdsale, isFinalized_FinalizableCrowdsale, TOTAL_SHARE_MANACrowdsale, CROWDSALE_SHARE_MANACrowdsale, FOUNDATION_SHARE_MANACrowdsale, preferentialRate_MANACrowdsale, buyerRate_MANACrowdsale, M_Ref_int_buyerRate3, sum_buyerRate3, initialRate_MANACrowdsale, endRate_MANACrowdsale, continuousSale_MANACrowdsale, gas, paused_Pausable, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, mintingFinished_MintableToken, symbol_MANAToken, name_MANAToken, decimals_MANAToken, BUCKET_SIZE_ContinuousSale, wallet_ContinuousSale, rate_ContinuousSale, weiRaised_ContinuousSale, issuance_ContinuousSale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, token_ContinuousSale, INFLATION_MANAContinuousSale, started_MANAContinuousSale;



procedure {:constructor} {:inline 1} MANACrowdsale_MANACrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref);
  modifies __tmp__Balance, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__owner_Ownable, __tmp__whitelist_WhitelistedCrowdsale, __tmp__M_Ref_bool_whitelist2, __tmp__Alloc, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, gas, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__mintingFinished_MintableToken, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__token_ContinuousSale, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale;



procedure {:inline 1} createTokenContract_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies __tmp__Alloc, __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__mintingFinished_MintableToken, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken;



procedure {:inline 1} createContinuousSaleContract_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);
  modifies __tmp__Alloc, __tmp__Balance, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, revert, __tmp__token_ContinuousSale, __tmp__owner_Ownable, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale;



procedure {:inline 1} setBuyerRate_MANACrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1631: Ref, 
    rate_s1631: int);
  modifies gas, revert, sum_buyerRate3, M_Ref_int_buyerRate3;



procedure {:inline 1} setBuyerRate_MANACrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1631: Ref, 
    rate_s1631: int);
  modifies gas, revert, __tmp__sum_buyerRate3, __tmp__M_Ref_int_buyerRate3;



procedure {:inline 1} setInitialRate_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1659: int);
  modifies gas, revert, initialRate_MANACrowdsale;



procedure {:inline 1} setInitialRate_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1659: int);
  modifies gas, revert, __tmp__initialRate_MANACrowdsale;



procedure {:inline 1} setEndRate_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1687: int);
  modifies gas, revert, endRate_MANACrowdsale;



procedure {:inline 1} setEndRate_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1687: int);
  modifies gas, revert, __tmp__endRate_MANACrowdsale;



procedure {:inline 1} getRate_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} buyTokens_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1808: Ref);
  modifies Balance, gas, revert, weiRaised_Crowdsale, totalSupply_ERC20Basic, sum_balances0, M_Ref_int_balances0, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, lastBucket_ContinuousSale, bucketAmount_ContinuousSale, weiRaised_ContinuousSale;



procedure {:inline 1} buyTokens_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1808: Ref);
  modifies __tmp__Balance, gas, revert, __tmp__weiRaised_Crowdsale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} setWallet_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1838: Ref);
  modifies gas, revert, wallet_Crowdsale, wallet_ContinuousSale;



procedure {:inline 1} setWallet_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1838: Ref);
  modifies gas, revert, __tmp__wallet_Crowdsale, __tmp__wallet_ContinuousSale;



procedure {:inline 1} unpauseToken_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, paused_Pausable;



procedure {:inline 1} unpauseToken_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__paused_Pausable;



procedure {:inline 1} pauseToken_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, paused_Pausable;



procedure {:inline 1} pauseToken_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__paused_Pausable;



procedure {:inline 1} beginContinuousSale_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, owner_Ownable, issuance_ContinuousSale, started_MANAContinuousSale;



procedure {:inline 1} beginContinuousSale_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__owner_Ownable, __tmp__issuance_ContinuousSale, __tmp__started_MANAContinuousSale;



procedure {:inline 1} finalization_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, revert, __tmp__weiRaised_Crowdsale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__totalSupply_ERC20Basic, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_int_buyerRate3, __tmp__sum_buyerRate3, __tmp__Length, __tmp__now, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__owner_Ownable, __tmp__mintingFinished_MintableToken, __tmp__token_Crowdsale, __tmp__startBlock_Crowdsale, __tmp__endBlock_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__cap_CappedCrowdsale, __tmp__isFinalized_FinalizableCrowdsale, __tmp__whitelist_WhitelistedCrowdsale, __tmp__BUCKET_SIZE_ContinuousSale, __tmp__token_ContinuousSale, __tmp__wallet_ContinuousSale, __tmp__rate_ContinuousSale, __tmp__weiRaised_ContinuousSale, __tmp__issuance_ContinuousSale, __tmp__lastBucket_ContinuousSale, __tmp__bucketAmount_ContinuousSale, __tmp__paused_Pausable, __tmp__symbol_MANAToken, __tmp__name_MANAToken, __tmp__decimals_MANAToken, __tmp__INFLATION_MANAContinuousSale, __tmp__started_MANAContinuousSale, __tmp__TOTAL_SHARE_MANACrowdsale, __tmp__CROWDSALE_SHARE_MANACrowdsale, __tmp__FOUNDATION_SHARE_MANACrowdsale, __tmp__preferentialRate_MANACrowdsale, __tmp__buyerRate_MANACrowdsale, __tmp__initialRate_MANACrowdsale, __tmp__endRate_MANACrowdsale, __tmp__continuousSale_MANACrowdsale, revert, gas;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} canMint_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenStarted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation mul_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s31: int, b_s31: int)
   returns (__ret_0_: int)
{
  var c_s30: int;

    gas := gas - 12;
    gas := gas - 76;
    assume c_s30 >= 0;
    assume a_s31 >= 0;
    assume b_s31 >= 0;
    assume nonlinearMul(a_s31, b_s31) >= 0;
    c_s30 := nonlinearMul(a_s31, b_s31);
    gas := gas - 304;
    assume a_s31 >= 0;
    assume c_s30 >= 0;
    assume a_s31 >= 0;
    assume nonlinearDiv(c_s30, a_s31) >= 0;
    assume b_s31 >= 0;
    gas := gas - 40;
    assume c_s30 >= 0;
    __ret_0_ := c_s30;
    return;
}



implementation mul_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s31: int, b_s31: int)
   returns (__ret_0_: int)
{
  var c_s30: int;

    gas := gas - 12;
    gas := gas - 76;
    assume c_s30 >= 0;
    assume a_s31 >= 0;
    assume b_s31 >= 0;
    assume nonlinearMul(a_s31, b_s31) >= 0;
    c_s30 := nonlinearMul(a_s31, b_s31);
    gas := gas - 304;
    assume a_s31 >= 0;
    assume c_s30 >= 0;
    assume a_s31 >= 0;
    assume nonlinearDiv(c_s30, a_s31) >= 0;
    assume b_s31 >= 0;
    assert a_s31 == 0 || nonlinearDiv(c_s30, a_s31) == b_s31;
    gas := gas - 40;
    assume c_s30 >= 0;
    __ret_0_ := c_s30;
    return;
}



implementation div_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int)
{
  var c_s48: int;

    gas := gas - 3;
    gas := gas - 36;
    assume c_s48 >= 0;
    assume a_s49 >= 0;
    assume b_s49 >= 0;
    assume nonlinearDiv(a_s49, b_s49) >= 0;
    c_s48 := nonlinearDiv(a_s49, b_s49);
    gas := gas - 10;
    assume c_s48 >= 0;
    __ret_0_ := c_s48;
    return;
}



implementation div_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s49: int, b_s49: int)
   returns (__ret_0_: int)
{
  var c_s48: int;

    gas := gas - 3;
    gas := gas - 36;
    assume c_s48 >= 0;
    assume a_s49 >= 0;
    assume b_s49 >= 0;
    assume nonlinearDiv(a_s49, b_s49) >= 0;
    c_s48 := nonlinearDiv(a_s49, b_s49);
    gas := gas - 10;
    assume c_s48 >= 0;
    __ret_0_ := c_s48;
    return;
}



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s69: int, b_s69: int)
   returns (__ret_0_: int)
{
    gas := gas - 21;
    gas := gas - 182;
    assume b_s69 >= 0;
    assume a_s69 >= 0;
    gas := gas - 98;
    assume a_s69 >= 0;
    assume b_s69 >= 0;
    assume a_s69 - b_s69 >= 0;
    __ret_0_ := a_s69 - b_s69;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s69: int, b_s69: int)
   returns (__ret_0_: int)
{
    gas := gas - 21;
    gas := gas - 182;
    assume b_s69 >= 0;
    assume a_s69 >= 0;
    assert b_s69 <= a_s69;
    gas := gas - 98;
    assume a_s69 >= 0;
    assume b_s69 >= 0;
    assume a_s69 - b_s69 >= 0;
    __ret_0_ := a_s69 - b_s69;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int)
{
  var c_s92: int;

    gas := gas - 30;
    gas := gas - 170;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    assume b_s93 >= 0;
    assume a_s93 + b_s93 >= 0;
    c_s92 := a_s93 + b_s93;
    gas := gas - 260;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    gas := gas - 100;
    assume c_s92 >= 0;
    __ret_0_ := c_s92;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s93: int, b_s93: int)
   returns (__ret_0_: int)
{
  var c_s92: int;

    gas := gas - 30;
    gas := gas - 170;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    assume b_s93 >= 0;
    assume a_s93 + b_s93 >= 0;
    c_s92 := a_s93 + b_s93;
    gas := gas - 260;
    assume c_s92 >= 0;
    assume a_s93 >= 0;
    assert c_s92 >= a_s93;
    gas := gas - 100;
    assume c_s92 >= 0;
    __ret_0_ := c_s92;
    return;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__totalSupply_ERC20Basic[this] := 0;
}



implementation ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    totalSupply_ERC20Basic[this] := 0;
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



implementation transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s173: Ref, 
    _value_s173: int)
   returns (__ret_0_: bool)
{
  var __var_2: int;
  var __var_3: int;

    gas := gas - 18;
    gas := gas - 122622;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s173 >= 0;
    call __var_2 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s173);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := __var_2;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    assume __var_2 >= 0;
    gas := gas - 122598;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s173] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s173] >= 0;
    assume _value_s173 >= 0;
    call __var_3 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s173], _value_s173);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s173];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s173] := __var_3;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s173];
    assume __var_3 >= 0;
    gas := gas - 48;
    __ret_0_ := true;
    return;
}



implementation transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s173: Ref, 
    _value_s173: int)
   returns (__ret_0_: bool)
{
  var __var_2: int;
  var __var_3: int;

    gas := gas - 18;
    gas := gas - 122622;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s173 >= 0;
    call __var_2 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG], _value_s173);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := __var_2;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assume __var_2 >= 0;
    gas := gas - 122598;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s173] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s173] >= 0;
    assume _value_s173 >= 0;
    call __var_3 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s173], _value_s173);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s173];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s173] := __var_3;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s173];
    assume __var_3 >= 0;
    assert {:EventEmitted "Transfer_BasicToken"} true;
    gas := gas - 48;
    __ret_0_ := true;
    return;
}



implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s185: Ref)
   returns (balance_s185: int)
{
    gas := gas - 18;
    gas := gas - 1824;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s185] >= 0;
    balance_s185 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s185];
    return;
}



implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s185: Ref)
   returns (balance_s185: int)
{
    gas := gas - 18;
    gas := gas - 1824;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_owner_s185] >= 0;
    balance_s185 := M_Ref_int_balances0[balances_BasicToken[this]][_owner_s185];
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
  var __var_4: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_4 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_StandardToken[this] := __var_4;
    __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]] := zeroRefRefArr();
    __tmp__M_Ref_int_allowed1[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_4: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_4 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_StandardToken[this] := __var_4;
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
    _from_s299: Ref, 
    _to_s299: Ref, 
    _value_s299: int)
   returns (__ret_0_: bool)
{
  var _allowance_s298: int;
  var __var_5: Ref;
  var __var_6: int;
  var __var_7: int;
  var __var_8: Ref;
  var __var_9: int;

    gas := gas - 15;
    gas := gas - 1980;
    assume _allowance_s298 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]
       == null)
    {
        call __var_5 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299] := __var_5;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]][msgsender_MSG]
       >= 0;
    _allowance_s298 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]][msgsender_MSG];
    gas := gas - 102165;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s299] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s299] >= 0;
    assume _value_s299 >= 0;
    call __var_6 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s299], _value_s299);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s299];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s299] := __var_6;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s299];
    assume __var_6 >= 0;
    gas := gas - 102165;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s299] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s299] >= 0;
    assume _value_s299 >= 0;
    call __var_7 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s299], _value_s299);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s299];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s299] := __var_7;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s299];
    assume __var_7 >= 0;
    gas := gas - 101160;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]
       == null)
    {
        call __var_8 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299] := __var_8;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]][msgsender_MSG]
       >= 0;
    assume _allowance_s298 >= 0;
    assume _value_s299 >= 0;
    call __var_9 := sub_SafeMath__fail(this, this, 0, _allowance_s298, _value_s299);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]][msgsender_MSG];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]][msgsender_MSG] := __var_9;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s299]][msgsender_MSG];
    assume __var_9 >= 0;
    gas := gas - 50;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s299: Ref, 
    _to_s299: Ref, 
    _value_s299: int)
   returns (__ret_0_: bool)
{
  var _allowance_s298: int;
  var __var_5: Ref;
  var __var_6: int;
  var __var_7: int;
  var __var_8: Ref;
  var __var_9: int;

    gas := gas - 15;
    gas := gas - 1980;
    assume _allowance_s298 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299] == null)
    {
        call __var_5 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299] := __var_5;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]][msgsender_MSG]
       >= 0;
    _allowance_s298 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]][msgsender_MSG];
    gas := gas - 102165;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s299] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s299] >= 0;
    assume _value_s299 >= 0;
    call __var_6 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s299], _value_s299);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s299];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s299] := __var_6;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s299];
    assume __var_6 >= 0;
    gas := gas - 102165;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s299] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s299] >= 0;
    assume _value_s299 >= 0;
    call __var_7 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_from_s299], _value_s299);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_from_s299];
    M_Ref_int_balances0[balances_BasicToken[this]][_from_s299] := __var_7;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_from_s299];
    assume __var_7 >= 0;
    gas := gas - 101160;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299] == null)
    {
        call __var_8 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299] := __var_8;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]][msgsender_MSG]
       >= 0;
    assume _allowance_s298 >= 0;
    assume _value_s299 >= 0;
    call __var_9 := sub_SafeMath__success(this, this, 0, _allowance_s298, _value_s299);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]][msgsender_MSG];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]][msgsender_MSG] := __var_9;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s299]][msgsender_MSG];
    assume __var_9 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 50;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s344: Ref, 
    _value_s344: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;

    gas := gas - 15;
    gas := gas - 2210;
    assume _value_s344 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_10 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_10;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s344]
       >= 0;
    if (!(_value_s344 == 0
       || __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s344]
         == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 100995;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_11 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_11;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s344]
       >= 0;
    assume _value_s344 >= 0;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s344];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s344] := _value_s344;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s344];
    gas := gas - 40;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s344: Ref, 
    _value_s344: int)
   returns (__ret_0_: bool)
{
  var __var_10: Ref;
  var __var_11: Ref;

    gas := gas - 15;
    gas := gas - 2210;
    assume _value_s344 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_10 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_10;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s344]
       >= 0;
    if (!(_value_s344 == 0
       || M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s344]
         == 0))
    {
        revert := true;
        return;
    }

    gas := gas - 100995;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_11 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_11;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s344]
       >= 0;
    assume _value_s344 >= 0;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s344];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s344] := _value_s344;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s344];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 40;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s360: Ref, 
    _spender_s360: Ref)
   returns (remaining_s360: int)
{
  var __var_12: Ref;

    gas := gas - 15;
    gas := gas - 1970;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s360]
       == null)
    {
        call __var_12 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s360] := __var_12;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s360]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s360]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s360]][_spender_s360]
       >= 0;
    remaining_s360 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s360]][_spender_s360];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s360: Ref, 
    _spender_s360: Ref)
   returns (remaining_s360: int)
{
  var __var_12: Ref;

    gas := gas - 15;
    gas := gas - 1970;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s360] == null)
    {
        call __var_12 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s360] := __var_12;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s360]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s360]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s360]][_spender_s360]
       >= 0;
    remaining_s360 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s360]][_spender_s360];
    return;
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



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s402: Ref)
{
  var __var_13: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 147;
    __var_13 := null;
    if (newOwner_s402 != null)
    {
        gas := gas - 141869;
        __tmp__owner_Ownable[this] := newOwner_s402;
    }
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s402: Ref)
{
  var __var_13: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 147;
    __var_13 := null;
    if (newOwner_s402 != null)
    {
        gas := gas - 141869;
        owner_Ownable[this] := newOwner_s402;
    }
}



implementation MintableToken_MintableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__mintingFinished_MintableToken[this] := false;
}



implementation MintableToken_MintableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    mintingFinished_MintableToken[this] := false;
}



implementation MintableToken_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MintableToken_MintableToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MintableToken_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MintableToken_MintableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation mint_MintableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s466: Ref, 
    _amount_s466: int)
   returns (__ret_0_: bool)
{
  var __var_14: int;
  var __var_15: int;

    gas := gas - 6;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call canMint_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40494;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume _amount_s466 >= 0;
    call __var_14 := add_SafeMath__fail(this, this, 0, __tmp__totalSupply_ERC20Basic[this], _amount_s466);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply_ERC20Basic[this] := __var_14;
    assume __var_14 >= 0;
    gas := gas - 40878;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s466] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s466] >= 0;
    assume _amount_s466 >= 0;
    call __var_15 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s466], _amount_s466);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s466];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s466] := __var_15;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s466];
    assume __var_15 >= 0;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation mint_MintableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s466: Ref, 
    _amount_s466: int)
   returns (__ret_0_: bool)
{
  var __var_14: int;
  var __var_15: int;

    gas := gas - 6;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call canMint_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40494;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume _amount_s466 >= 0;
    call __var_14 := add_SafeMath__success(this, this, 0, totalSupply_ERC20Basic[this], _amount_s466);
    if (revert)
    {
        return;
    }

    totalSupply_ERC20Basic[this] := __var_14;
    assume __var_14 >= 0;
    gas := gas - 40878;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s466] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s466] >= 0;
    assume _amount_s466 >= 0;
    call __var_15 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s466], _amount_s466);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s466];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s466] := __var_15;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s466];
    assume __var_15 >= 0;
    assert {:EventEmitted "Mint_MintableToken"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation finishMinting_MintableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    __tmp__mintingFinished_MintableToken[this] := true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation finishMinting_MintableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 40634;
    mintingFinished_MintableToken[this] := true;
    assert {:EventEmitted "MintFinished_MintableToken"} true;
    gas := gas - 16;
    __ret_0_ := true;
    return;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref)
{
  var __var_16: Ref;
  var __var_17: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__startBlock_Crowdsale[this] := 0;
    __tmp__endBlock_Crowdsale[this] := 0;
    __tmp__wallet_Crowdsale[this] := null;
    __tmp__rate_Crowdsale[this] := 0;
    __tmp__weiRaised_Crowdsale[this] := 0;
    assume _startBlock_s568 >= 0;
    assume __tmp__now >= 0;
    if (!(_startBlock_s568 >= __tmp__now))
    {
        revert := true;
        return;
    }

    assume _endBlock_s568 >= 0;
    assume _startBlock_s568 >= 0;
    if (!(_endBlock_s568 >= _startBlock_s568))
    {
        revert := true;
        return;
    }

    assume _rate_s568 >= 0;
    if (!(_rate_s568 > 0))
    {
        revert := true;
        return;
    }

    __var_16 := null;
    if (!(_wallet_s568 != null))
    {
        revert := true;
        return;
    }

    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_17 := createTokenContract_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == WhitelistedCrowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __tmp__token_Crowdsale[this] := __var_17;
    assume __tmp__startBlock_Crowdsale[this] >= 0;
    assume _startBlock_s568 >= 0;
    __tmp__startBlock_Crowdsale[this] := _startBlock_s568;
    assume __tmp__endBlock_Crowdsale[this] >= 0;
    assume _endBlock_s568 >= 0;
    __tmp__endBlock_Crowdsale[this] := _endBlock_s568;
    assume __tmp__rate_Crowdsale[this] >= 0;
    assume _rate_s568 >= 0;
    __tmp__rate_Crowdsale[this] := _rate_s568;
    __tmp__wallet_Crowdsale[this] := _wallet_s568;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref)
{
  var __var_16: Ref;
  var __var_17: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    startBlock_Crowdsale[this] := 0;
    endBlock_Crowdsale[this] := 0;
    wallet_Crowdsale[this] := null;
    rate_Crowdsale[this] := 0;
    weiRaised_Crowdsale[this] := 0;
    assume _startBlock_s568 >= 0;
    assume now >= 0;
    if (!(_startBlock_s568 >= now))
    {
        revert := true;
        return;
    }

    assume _endBlock_s568 >= 0;
    assume _startBlock_s568 >= 0;
    if (!(_endBlock_s568 >= _startBlock_s568))
    {
        revert := true;
        return;
    }

    assume _rate_s568 >= 0;
    if (!(_rate_s568 > 0))
    {
        revert := true;
        return;
    }

    __var_16 := null;
    if (!(_wallet_s568 != null))
    {
        revert := true;
        return;
    }

    if (DType[this] == MANACrowdsale)
    {
        call __var_17 := createTokenContract_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == WhitelistedCrowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call __var_17 := createTokenContract_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    token_Crowdsale[this] := __var_17;
    assume startBlock_Crowdsale[this] >= 0;
    assume _startBlock_s568 >= 0;
    startBlock_Crowdsale[this] := _startBlock_s568;
    assume endBlock_Crowdsale[this] >= 0;
    assume _endBlock_s568 >= 0;
    endBlock_Crowdsale[this] := _endBlock_s568;
    assume rate_Crowdsale[this] >= 0;
    assume _rate_s568 >= 0;
    rate_Crowdsale[this] := _rate_s568;
    wallet_Crowdsale[this] := _wallet_s568;
}



implementation Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref)
{
  var __var_16: Ref;
  var __var_17: Ref;

    call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _startBlock_s568, _endBlock_s568, _rate_s568, _wallet_s568);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s568: int, 
    _endBlock_s568: int, 
    _rate_s568: int, 
    _wallet_s568: Ref)
{
  var __var_16: Ref;
  var __var_17: Ref;

    call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _startBlock_s568, _endBlock_s568, _rate_s568, _wallet_s568);
    if (revert)
    {
        return;
    }
}



implementation createTokenContract_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
  var __var_18: Ref;
  var __var_19: Ref;

    call __var_19 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_19] == MintableToken;
    call MintableToken_MintableToken__fail(__var_19, this, 0);
    if (revert)
    {
        return;
    }

    __var_18 := __var_19;
    __ret_0_ := __var_18;
    return;
}



implementation createTokenContract_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
  var __var_18: Ref;
  var __var_19: Ref;

    call __var_19 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_19] == MintableToken;
    call MintableToken_MintableToken__success(__var_19, this, 0);
    if (revert)
    {
        return;
    }

    __var_18 := __var_19;
    __ret_0_ := __var_18;
    return;
}



implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 12;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call buyTokens_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == WhitelistedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 12;
    if (DType[this] == MANACrowdsale)
    {
        call buyTokens_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == WhitelistedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s643: Ref)
{
  var __var_20: Ref;
  var __var_21: bool;
  var weiAmount_s642: int;
  var tokens_s642: int;
  var __var_22: int;
  var __var_23: bool;
  var __var_24: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 44;
    __var_20 := null;
    if (!(beneficiary_s643 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 24;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_21 := validPurchase_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == WhitelistedCrowdsale)
    {
        call __var_21 := validPurchase_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_21 := validPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call __var_21 := validPurchase_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call __var_21 := validPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_21)
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume weiAmount_s642 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s642 := msgvalue_MSG;
    gas := gas - 244;
    assume tokens_s642 >= 0;
    assume weiAmount_s642 >= 0;
    assume __tmp__rate_Crowdsale[this] >= 0;
    call tokens_s642 := mul_SafeMath__fail(this, this, 0, weiAmount_s642, __tmp__rate_Crowdsale[this]);
    if (revert)
    {
        return;
    }

    tokens_s642 := tokens_s642;
    gas := gas - 20247;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s642 >= 0;
    call __var_22 := add_SafeMath__fail(this, this, 0, __tmp__weiRaised_Crowdsale[this], weiAmount_s642);
    if (revert)
    {
        return;
    }

    __tmp__weiRaised_Crowdsale[this] := __var_22;
    assume __var_22 >= 0;
    gas := gas - 37458;
    assume tokens_s642 >= 0;
    if (__tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken)
    {
        call __var_23 := mint_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_24, beneficiary_s643, tokens_s642);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == MintableToken)
    {
        call __var_23 := mint_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_24, beneficiary_s643, tokens_s642);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 4;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == WhitelistedCrowdsale)
    {
        call forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s643: Ref)
{
  var __var_20: Ref;
  var __var_21: bool;
  var weiAmount_s642: int;
  var tokens_s642: int;
  var __var_22: int;
  var __var_23: bool;
  var __var_24: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 44;
    __var_20 := null;
    if (!(beneficiary_s643 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 24;
    if (DType[this] == MANACrowdsale)
    {
        call __var_21 := validPurchase_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == WhitelistedCrowdsale)
    {
        call __var_21 := validPurchase_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_21 := validPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call __var_21 := validPurchase_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call __var_21 := validPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_21)
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume weiAmount_s642 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s642 := msgvalue_MSG;
    gas := gas - 244;
    assume tokens_s642 >= 0;
    assume weiAmount_s642 >= 0;
    assume rate_Crowdsale[this] >= 0;
    call tokens_s642 := mul_SafeMath__success(this, this, 0, weiAmount_s642, rate_Crowdsale[this]);
    if (revert)
    {
        return;
    }

    tokens_s642 := tokens_s642;
    gas := gas - 20247;
    assume weiRaised_Crowdsale[this] >= 0;
    assume weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s642 >= 0;
    call __var_22 := add_SafeMath__success(this, this, 0, weiRaised_Crowdsale[this], weiAmount_s642);
    if (revert)
    {
        return;
    }

    weiRaised_Crowdsale[this] := __var_22;
    assume __var_22 >= 0;
    gas := gas - 37458;
    assume tokens_s642 >= 0;
    if (DType[token_Crowdsale[this]] == MANAToken)
    {
        call __var_23 := mint_MintableToken__success(token_Crowdsale[this], this, __var_24, beneficiary_s643, tokens_s642);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == MintableToken)
    {
        call __var_23 := mint_MintableToken__success(token_Crowdsale[this], this, __var_24, beneficiary_s643, tokens_s642);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "TokenPurchase_Crowdsale"} true;
    gas := gas - 4;
    if (DType[this] == MANACrowdsale)
    {
        call forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == WhitelistedCrowdsale)
    {
        call forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_25: int;
  var __var_26: bool;

    gas := gas - 72056;
    __var_25 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_25 := __var_25 - gas;
    assume msgvalue_MSG >= 0;
    call __var_26 := send__fail(this, __tmp__wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_26)
    {
        revert := true;
        return;
    }

    gas := __var_25 + gas;
}



implementation forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_25: int;
  var __var_26: bool;

    gas := gas - 72056;
    __var_25 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_25 := __var_25 - gas;
    assume msgvalue_MSG >= 0;
    call __var_26 := send__success(this, wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_26)
    {
        revert := true;
        return;
    }

    gas := __var_25 + gas;
}



implementation validPurchase_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var current_s684: int;
  var withinPeriod_s684: bool;
  var nonZeroPurchase_s684: bool;

    gas := gas - 6;
    gas := gas - 20;
    assume current_s684 >= 0;
    assume __tmp__now >= 0;
    current_s684 := __tmp__now;
    gas := gas - 908;
    assume current_s684 >= 0;
    assume __tmp__startBlock_Crowdsale[this] >= 0;
    assume current_s684 >= 0;
    assume __tmp__endBlock_Crowdsale[this] >= 0;
    withinPeriod_s684 := current_s684 >= __tmp__startBlock_Crowdsale[this]
       && current_s684 <= __tmp__endBlock_Crowdsale[this];
    gas := gas - 38;
    assume msgvalue_MSG >= 0;
    nonZeroPurchase_s684 := msgvalue_MSG != 0;
    gas := gas - 78;
    __ret_0_ := withinPeriod_s684 && nonZeroPurchase_s684;
    return;
}



implementation validPurchase_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var current_s684: int;
  var withinPeriod_s684: bool;
  var nonZeroPurchase_s684: bool;

    gas := gas - 6;
    gas := gas - 20;
    assume current_s684 >= 0;
    assume now >= 0;
    current_s684 := now;
    gas := gas - 908;
    assume current_s684 >= 0;
    assume startBlock_Crowdsale[this] >= 0;
    assume current_s684 >= 0;
    assume endBlock_Crowdsale[this] >= 0;
    withinPeriod_s684 := current_s684 >= startBlock_Crowdsale[this]
       && current_s684 <= endBlock_Crowdsale[this];
    gas := gas - 38;
    assume msgvalue_MSG >= 0;
    nonZeroPurchase_s684 := msgvalue_MSG != 0;
    gas := gas - 78;
    __ret_0_ := withinPeriod_s684 && nonZeroPurchase_s684;
    return;
}



implementation hasEnded_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 426;
    assume __tmp__now >= 0;
    assume __tmp__endBlock_Crowdsale[this] >= 0;
    __ret_0_ := __tmp__now > __tmp__endBlock_Crowdsale[this];
    return;
}



implementation hasEnded_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 426;
    assume now >= 0;
    assume endBlock_Crowdsale[this] >= 0;
    __ret_0_ := now > endBlock_Crowdsale[this];
    return;
}



implementation CappedCrowdsale_CappedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__cap_CappedCrowdsale[this] := 0;
    assume _cap_s719 >= 0;
    if (!(_cap_s719 > 0))
    {
        revert := true;
        return;
    }

    assume __tmp__cap_CappedCrowdsale[this] >= 0;
    assume _cap_s719 >= 0;
    __tmp__cap_CappedCrowdsale[this] := _cap_s719;
}



implementation CappedCrowdsale_CappedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    cap_CappedCrowdsale[this] := 0;
    assume _cap_s719 >= 0;
    if (!(_cap_s719 > 0))
    {
        revert := true;
        return;
    }

    assume cap_CappedCrowdsale[this] >= 0;
    assume _cap_s719 >= 0;
    cap_CappedCrowdsale[this] := _cap_s719;
}



implementation CappedCrowdsale_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int)
{
    call CappedCrowdsale_CappedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _cap_s719);
    if (revert)
    {
        return;
    }
}



implementation CappedCrowdsale_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _cap_s719: int)
{
    call CappedCrowdsale_CappedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _cap_s719);
    if (revert)
    {
        return;
    }
}



implementation validPurchase_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var withinCap_s740: bool;
  var __var_27: int;
  var __var_28: bool;
  var __var_29: int;

    gas := gas - 3;
    gas := gas - 452;
    assume __var_27 >= 0;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume msgvalue_MSG >= 0;
    call __var_27 := add_SafeMath__fail(this, this, 0, __tmp__weiRaised_Crowdsale[this], msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume __var_27 >= 0;
    assume __tmp__cap_CappedCrowdsale[this] >= 0;
    withinCap_s740 := __var_27 <= __tmp__cap_CappedCrowdsale[this];
    gas := gas - 36;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_28 := validPurchase_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call __var_28 := validPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_28 && withinCap_s740;
    return;
}



implementation validPurchase_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var withinCap_s740: bool;
  var __var_27: int;
  var __var_28: bool;
  var __var_29: int;

    gas := gas - 3;
    gas := gas - 452;
    assume __var_27 >= 0;
    assume weiRaised_Crowdsale[this] >= 0;
    assume msgvalue_MSG >= 0;
    call __var_27 := add_SafeMath__success(this, this, 0, weiRaised_Crowdsale[this], msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume __var_27 >= 0;
    assume cap_CappedCrowdsale[this] >= 0;
    withinCap_s740 := __var_27 <= cap_CappedCrowdsale[this];
    gas := gas - 36;
    if (DType[this] == MANACrowdsale)
    {
        call __var_28 := validPurchase_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call __var_28 := validPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_28 && withinCap_s740;
    return;
}



implementation hasEnded_CappedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var capReached_s758: bool;
  var __var_30: bool;
  var __var_31: int;

    gas := gas - 3;
    gas := gas - 420;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume __tmp__cap_CappedCrowdsale[this] >= 0;
    capReached_s758 := __tmp__weiRaised_Crowdsale[this] >= __tmp__cap_CappedCrowdsale[this];
    gas := gas - 33;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_30 := hasEnded_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == CappedCrowdsale)
    {
        call __var_30 := hasEnded_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_30 || capReached_s758;
    return;
}



implementation hasEnded_CappedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var capReached_s758: bool;
  var __var_30: bool;
  var __var_31: int;

    gas := gas - 3;
    gas := gas - 420;
    assume weiRaised_Crowdsale[this] >= 0;
    assume cap_CappedCrowdsale[this] >= 0;
    capReached_s758 := weiRaised_Crowdsale[this] >= cap_CappedCrowdsale[this];
    gas := gas - 33;
    if (DType[this] == MANACrowdsale)
    {
        call __var_30 := hasEnded_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == CappedCrowdsale)
    {
        call __var_30 := hasEnded_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_30 || capReached_s758;
    return;
}



implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__isFinalized_FinalizableCrowdsale[this] := false;
}



implementation FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    isFinalized_FinalizableCrowdsale[this] := false;
}



implementation FinalizableCrowdsale_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FinalizableCrowdsale_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation finalize_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_32: bool;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!__tmp__isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 35;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_32 := hasEnded_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call __var_32 := hasEnded_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_32)
    {
        revert := true;
        return;
    }

    gas := gas - 4;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call finalization_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == FinalizableCrowdsale)
    {
        call finalization_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 20267;
    __tmp__isFinalized_FinalizableCrowdsale[this] := true;
}



implementation finalize_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_32: bool;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 262;
    if (!!isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 35;
    if (DType[this] == MANACrowdsale)
    {
        call __var_32 := hasEnded_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call __var_32 := hasEnded_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_32)
    {
        revert := true;
        return;
    }

    gas := gas - 4;
    if (DType[this] == MANACrowdsale)
    {
        call finalization_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == FinalizableCrowdsale)
    {
        call finalization_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "Finalized_FinalizableCrowdsale"} true;
    gas := gas - 20267;
    isFinalized_FinalizableCrowdsale[this] := true;
}



implementation finalization_FinalizableCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_33: bool;
  var __var_34: int;

    if (__tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken)
    {
        call __var_33 := finishMinting_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == MintableToken)
    {
        call __var_33 := finishMinting_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_34);
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



implementation finalization_FinalizableCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_33: bool;
  var __var_34: int;

    if (DType[token_Crowdsale[this]] == MANAToken)
    {
        call __var_33 := finishMinting_MintableToken__success(token_Crowdsale[this], this, __var_34);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == MintableToken)
    {
        call __var_33 := finishMinting_MintableToken__success(token_Crowdsale[this], this, __var_34);
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



implementation WhitelistedCrowdsale_WhitelistedCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_35: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_35 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__whitelist_WhitelistedCrowdsale[this] := __var_35;
    __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_WhitelistedCrowdsale[this]] := zeroRefBoolArr();
}



implementation WhitelistedCrowdsale_WhitelistedCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_35: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_35 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    whitelist_WhitelistedCrowdsale[this] := __var_35;
    M_Ref_bool_whitelist2[whitelist_WhitelistedCrowdsale[this]] := zeroRefBoolArr();
}



implementation WhitelistedCrowdsale_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call WhitelistedCrowdsale_WhitelistedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation WhitelistedCrowdsale_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call WhitelistedCrowdsale_WhitelistedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation addToWhitelist_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s841: Ref)
{
  var __var_36: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_36 := null;
    if (!(buyer_s841 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_WhitelistedCrowdsale[this]][buyer_s841] := true;
}



implementation addToWhitelist_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s841: Ref)
{
  var __var_36: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_36 := null;
    if (!(buyer_s841 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20363;
    M_Ref_bool_whitelist2[whitelist_WhitelistedCrowdsale[this]][buyer_s841] := true;
}



implementation isWhitelisted_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s853: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 340;
    __ret_0_ := __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_WhitelistedCrowdsale[this]][buyer_s853];
    return;
}



implementation isWhitelisted_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, buyer_s853: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 340;
    __ret_0_ := M_Ref_bool_whitelist2[whitelist_WhitelistedCrowdsale[this]][buyer_s853];
    return;
}



implementation validPurchase_WhitelistedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_37: bool;
  var __var_38: int;
  var __var_39: bool;
  var __var_40: bool;

    gas := gas - 3;
    gas := gas - 85;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_37 := validPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == WhitelistedCrowdsale)
    {
        call __var_37 := validPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_39 := hasEnded_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == WhitelistedCrowdsale)
    {
        call __var_39 := hasEnded_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_40 := isWhitelisted_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == WhitelistedCrowdsale)
    {
        call __var_40 := isWhitelisted_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37 || (!__var_39 && __var_40);
    return;
}



implementation validPurchase_WhitelistedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_37: bool;
  var __var_38: int;
  var __var_39: bool;
  var __var_40: bool;

    gas := gas - 3;
    gas := gas - 85;
    if (DType[this] == MANACrowdsale)
    {
        call __var_37 := validPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == WhitelistedCrowdsale)
    {
        call __var_37 := validPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == MANACrowdsale)
    {
        call __var_39 := hasEnded_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == WhitelistedCrowdsale)
    {
        call __var_39 := hasEnded_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (DType[this] == MANACrowdsale)
    {
        call __var_40 := isWhitelisted_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == WhitelistedCrowdsale)
    {
        call __var_40 := isWhitelisted_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_37 || (!__var_39 && __var_40);
    return;
}



implementation ContinuousSale_ContinuousSale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref)
{
  var __var_41: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__BUCKET_SIZE_ContinuousSale[this] := 12;
    __tmp__wallet_ContinuousSale[this] := null;
    __tmp__rate_ContinuousSale[this] := 0;
    __tmp__weiRaised_ContinuousSale[this] := 0;
    __tmp__issuance_ContinuousSale[this] := 0;
    __tmp__lastBucket_ContinuousSale[this] := 0;
    __tmp__bucketAmount_ContinuousSale[this] := 0;
    assume _rate_s942 >= 0;
    if (!(_rate_s942 != 0))
    {
        revert := true;
        return;
    }

    __var_41 := null;
    if (!(_wallet_s942 != null))
    {
        revert := true;
        return;
    }

    assume __tmp__rate_ContinuousSale[this] >= 0;
    assume _rate_s942 >= 0;
    __tmp__rate_ContinuousSale[this] := _rate_s942;
    __tmp__wallet_ContinuousSale[this] := _wallet_s942;
    __tmp__token_ContinuousSale[this] := _token_s942;
}



implementation ContinuousSale_ContinuousSale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref)
{
  var __var_41: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    BUCKET_SIZE_ContinuousSale[this] := 12;
    wallet_ContinuousSale[this] := null;
    rate_ContinuousSale[this] := 0;
    weiRaised_ContinuousSale[this] := 0;
    issuance_ContinuousSale[this] := 0;
    lastBucket_ContinuousSale[this] := 0;
    bucketAmount_ContinuousSale[this] := 0;
    assume _rate_s942 >= 0;
    if (!(_rate_s942 != 0))
    {
        revert := true;
        return;
    }

    __var_41 := null;
    if (!(_wallet_s942 != null))
    {
        revert := true;
        return;
    }

    assume rate_ContinuousSale[this] >= 0;
    assume _rate_s942 >= 0;
    rate_ContinuousSale[this] := _rate_s942;
    wallet_ContinuousSale[this] := _wallet_s942;
    token_ContinuousSale[this] := _token_s942;
}



implementation ContinuousSale_ContinuousSale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref)
{
  var __var_41: Ref;

    call ContinuousSale_ContinuousSale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s942, _wallet_s942, _token_s942);
    if (revert)
    {
        return;
    }
}



implementation ContinuousSale_ContinuousSale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s942: int, 
    _wallet_s942: Ref, 
    _token_s942: Ref)
{
  var __var_41: Ref;

    call ContinuousSale_ContinuousSale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _rate_s942, _wallet_s942, _token_s942);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 12;
    if (__tmp__DType[this] == MANAContinuousSale)
    {
        call buyTokens_MANAContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ContinuousSale)
    {
        call buyTokens_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation FallbackMethod_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 12;
    if (DType[this] == MANAContinuousSale)
    {
        call buyTokens_MANAContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ContinuousSale)
    {
        call buyTokens_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
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



implementation buyTokens_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s985: Ref)
{
  var __var_42: Ref;
  var tokens_s984: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 88;
    __var_42 := null;
    if (!(beneficiary_s985 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 62;
    assume msgvalue_MSG >= 0;
    if (!(msgvalue_MSG != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 8;
    if (__tmp__DType[this] == MANAContinuousSale)
    {
        call prepareContinuousPurchase_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ContinuousSale)
    {
        call prepareContinuousPurchase_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 30;
    assume tokens_s984 >= 0;
    if (__tmp__DType[this] == MANAContinuousSale)
    {
        call tokens_s984 := processPurchase_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s985);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ContinuousSale)
    {
        call tokens_s984 := processPurchase_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s985);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s984 := tokens_s984;
    gas := gas - 14;
    assume tokens_s984 >= 0;
    if (__tmp__DType[this] == MANAContinuousSale)
    {
        call checkContinuousPurchase_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, tokens_s984);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ContinuousSale)
    {
        call checkContinuousPurchase_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, tokens_s984);
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



implementation buyTokens_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s985: Ref)
{
  var __var_42: Ref;
  var tokens_s984: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 88;
    __var_42 := null;
    if (!(beneficiary_s985 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 62;
    assume msgvalue_MSG >= 0;
    if (!(msgvalue_MSG != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 8;
    if (DType[this] == MANAContinuousSale)
    {
        call prepareContinuousPurchase_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ContinuousSale)
    {
        call prepareContinuousPurchase_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 30;
    assume tokens_s984 >= 0;
    if (DType[this] == MANAContinuousSale)
    {
        call tokens_s984 := processPurchase_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s985);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ContinuousSale)
    {
        call tokens_s984 := processPurchase_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s985);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s984 := tokens_s984;
    gas := gas - 14;
    assume tokens_s984 >= 0;
    if (DType[this] == MANAContinuousSale)
    {
        call checkContinuousPurchase_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, tokens_s984);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ContinuousSale)
    {
        call checkContinuousPurchase_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, tokens_s984);
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



implementation prepareContinuousPurchase_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var timestamp_s1019: int;
  var amt_s1019: int;
  var bucket_s1019: int;

    gas := gas - 20;
    assume timestamp_s1019 >= 0;
    assume __tmp__now >= 0;
    timestamp_s1019 := __tmp__now;
    gas := gas - 72;
    assume amt_s1019 >= 0;
    assume timestamp_s1019 >= 0;
    assume timestamp_s1019 / 43200 >= 0;
    amt_s1019 := timestamp_s1019 / 43200;
    gas := gas - 50;
    assume bucket_s1019 >= 0;
    assume timestamp_s1019 >= 0;
    assume amt_s1019 >= 0;
    assume amt_s1019 * 43200 >= 0;
    assume timestamp_s1019 - amt_s1019 * 43200 >= 0;
    bucket_s1019 := timestamp_s1019 - amt_s1019 * 43200;
    gas := gas - 418;
    assume bucket_s1019 >= 0;
    assume __tmp__lastBucket_ContinuousSale[this] >= 0;
    if (bucket_s1019 > __tmp__lastBucket_ContinuousSale[this])
    {
        gas := gas - 40028;
        assume __tmp__lastBucket_ContinuousSale[this] >= 0;
        assume bucket_s1019 >= 0;
        __tmp__lastBucket_ContinuousSale[this] := bucket_s1019;
        gas := gas - 10028;
        assume __tmp__bucketAmount_ContinuousSale[this] >= 0;
        __tmp__bucketAmount_ContinuousSale[this] := 0;
    }
}



implementation prepareContinuousPurchase_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var timestamp_s1019: int;
  var amt_s1019: int;
  var bucket_s1019: int;

    gas := gas - 20;
    assume timestamp_s1019 >= 0;
    assume now >= 0;
    timestamp_s1019 := now;
    gas := gas - 72;
    assume amt_s1019 >= 0;
    assume timestamp_s1019 >= 0;
    assume timestamp_s1019 / 43200 >= 0;
    amt_s1019 := timestamp_s1019 / 43200;
    gas := gas - 50;
    assume bucket_s1019 >= 0;
    assume timestamp_s1019 >= 0;
    assume amt_s1019 >= 0;
    assume amt_s1019 * 43200 >= 0;
    assume timestamp_s1019 - amt_s1019 * 43200 >= 0;
    bucket_s1019 := timestamp_s1019 - amt_s1019 * 43200;
    gas := gas - 418;
    assume bucket_s1019 >= 0;
    assume lastBucket_ContinuousSale[this] >= 0;
    if (bucket_s1019 > lastBucket_ContinuousSale[this])
    {
        gas := gas - 40028;
        assume lastBucket_ContinuousSale[this] >= 0;
        assume bucket_s1019 >= 0;
        lastBucket_ContinuousSale[this] := bucket_s1019;
        gas := gas - 10028;
        assume bucketAmount_ContinuousSale[this] >= 0;
        bucketAmount_ContinuousSale[this] := 0;
    }
}



implementation checkContinuousPurchase_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1043: int)
{
  var updatedBucketAmount_s1042: int;

    gas := gas - 488;
    assume updatedBucketAmount_s1042 >= 0;
    assume __tmp__bucketAmount_ContinuousSale[this] >= 0;
    assume tokens_s1043 >= 0;
    call updatedBucketAmount_s1042 := add_SafeMath__fail(this, this, 0, __tmp__bucketAmount_ContinuousSale[this], tokens_s1043);
    if (revert)
    {
        return;
    }

    updatedBucketAmount_s1042 := updatedBucketAmount_s1042;
    gas := gas - 464;
    assume updatedBucketAmount_s1042 >= 0;
    assume __tmp__issuance_ContinuousSale[this] >= 0;
    if (!(updatedBucketAmount_s1042 <= __tmp__issuance_ContinuousSale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 40028;
    assume __tmp__bucketAmount_ContinuousSale[this] >= 0;
    assume updatedBucketAmount_s1042 >= 0;
    __tmp__bucketAmount_ContinuousSale[this] := updatedBucketAmount_s1042;
}



implementation checkContinuousPurchase_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, tokens_s1043: int)
{
  var updatedBucketAmount_s1042: int;

    gas := gas - 488;
    assume updatedBucketAmount_s1042 >= 0;
    assume bucketAmount_ContinuousSale[this] >= 0;
    assume tokens_s1043 >= 0;
    call updatedBucketAmount_s1042 := add_SafeMath__success(this, this, 0, bucketAmount_ContinuousSale[this], tokens_s1043);
    if (revert)
    {
        return;
    }

    updatedBucketAmount_s1042 := updatedBucketAmount_s1042;
    gas := gas - 464;
    assume updatedBucketAmount_s1042 >= 0;
    assume issuance_ContinuousSale[this] >= 0;
    if (!(updatedBucketAmount_s1042 <= issuance_ContinuousSale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 40028;
    assume bucketAmount_ContinuousSale[this] >= 0;
    assume updatedBucketAmount_s1042 >= 0;
    bucketAmount_ContinuousSale[this] := updatedBucketAmount_s1042;
}



implementation processPurchase_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1090: Ref)
   returns (__ret_0_: int)
{
  var weiAmount_s1089: int;
  var tokens_s1089: int;
  var __var_43: int;
  var __var_44: bool;
  var __var_45: int;

    gas := gas - 6;
    gas := gas - 20;
    assume weiAmount_s1089 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s1089 := msgvalue_MSG;
    gas := gas - 488;
    assume tokens_s1089 >= 0;
    assume weiAmount_s1089 >= 0;
    assume __tmp__rate_ContinuousSale[this] >= 0;
    call tokens_s1089 := mul_SafeMath__fail(this, this, 0, weiAmount_s1089, __tmp__rate_ContinuousSale[this]);
    if (revert)
    {
        return;
    }

    tokens_s1089 := tokens_s1089;
    gas := gas - 40494;
    assume __tmp__weiRaised_ContinuousSale[this] >= 0;
    assume __tmp__weiRaised_ContinuousSale[this] >= 0;
    assume weiAmount_s1089 >= 0;
    call __var_43 := add_SafeMath__fail(this, this, 0, __tmp__weiRaised_ContinuousSale[this], weiAmount_s1089);
    if (revert)
    {
        return;
    }

    __tmp__weiRaised_ContinuousSale[this] := __var_43;
    assume __var_43 >= 0;
    gas := gas - 74916;
    assume tokens_s1089 >= 0;
    if (__tmp__DType[__tmp__token_ContinuousSale[this]] == MANAToken)
    {
        call __var_44 := mint_MintableToken__fail(__tmp__token_ContinuousSale[this], this, __var_45, beneficiary_s1090, tokens_s1089);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_ContinuousSale[this]] == MintableToken)
    {
        call __var_44 := mint_MintableToken__fail(__tmp__token_ContinuousSale[this], this, __var_45, beneficiary_s1090, tokens_s1089);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 8;
    if (__tmp__DType[this] == MANAContinuousSale)
    {
        call forwardFunds_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == ContinuousSale)
    {
        call forwardFunds_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    assume tokens_s1089 >= 0;
    __ret_0_ := tokens_s1089;
    return;
}



implementation processPurchase_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1090: Ref)
   returns (__ret_0_: int)
{
  var weiAmount_s1089: int;
  var tokens_s1089: int;
  var __var_43: int;
  var __var_44: bool;
  var __var_45: int;

    gas := gas - 6;
    gas := gas - 20;
    assume weiAmount_s1089 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s1089 := msgvalue_MSG;
    gas := gas - 488;
    assume tokens_s1089 >= 0;
    assume weiAmount_s1089 >= 0;
    assume rate_ContinuousSale[this] >= 0;
    call tokens_s1089 := mul_SafeMath__success(this, this, 0, weiAmount_s1089, rate_ContinuousSale[this]);
    if (revert)
    {
        return;
    }

    tokens_s1089 := tokens_s1089;
    gas := gas - 40494;
    assume weiRaised_ContinuousSale[this] >= 0;
    assume weiRaised_ContinuousSale[this] >= 0;
    assume weiAmount_s1089 >= 0;
    call __var_43 := add_SafeMath__success(this, this, 0, weiRaised_ContinuousSale[this], weiAmount_s1089);
    if (revert)
    {
        return;
    }

    weiRaised_ContinuousSale[this] := __var_43;
    assume __var_43 >= 0;
    gas := gas - 74916;
    assume tokens_s1089 >= 0;
    if (DType[token_ContinuousSale[this]] == MANAToken)
    {
        call __var_44 := mint_MintableToken__success(token_ContinuousSale[this], this, __var_45, beneficiary_s1090, tokens_s1089);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_ContinuousSale[this]] == MintableToken)
    {
        call __var_44 := mint_MintableToken__success(token_ContinuousSale[this], this, __var_45, beneficiary_s1090, tokens_s1089);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "TokenPurchase_ContinuousSale"} true;
    gas := gas - 8;
    if (DType[this] == MANAContinuousSale)
    {
        call forwardFunds_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == ContinuousSale)
    {
        call forwardFunds_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 24;
    assume tokens_s1089 >= 0;
    __ret_0_ := tokens_s1089;
    return;
}



implementation forwardFunds_ContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_46: int;
  var __var_47: bool;

    gas := gas - 72056;
    __var_46 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_46 := __var_46 - gas;
    assume msgvalue_MSG >= 0;
    call __var_47 := send__fail(this, __tmp__wallet_ContinuousSale[this], msgvalue_MSG);
    if (!__var_47)
    {
        revert := true;
        return;
    }

    gas := __var_46 + gas;
}



implementation forwardFunds_ContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_46: int;
  var __var_47: bool;

    gas := gas - 72056;
    __var_46 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_46 := __var_46 - gas;
    assume msgvalue_MSG >= 0;
    call __var_47 := send__success(this, wallet_ContinuousSale[this], msgvalue_MSG);
    if (!__var_47)
    {
        revert := true;
        return;
    }

    gas := __var_46 + gas;
}



implementation Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__paused_Pausable[this] := false;
}



implementation Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    paused_Pausable[this] := false;
}



implementation Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 9;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 60951;
    __tmp__paused_Pausable[this] := true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 9;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 60951;
    paused_Pausable[this] := true;
    assert {:EventEmitted "Pause_Pausable"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 9;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 60951;
    __tmp__paused_Pausable[this] := false;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 9;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call whenPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 60951;
    paused_Pausable[this] := false;
    assert {:EventEmitted "Unpause_Pausable"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
}



implementation PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
}



implementation PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation transfer_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1189: Ref, 
    _value_s1189: int)
   returns (__ret_0_: bool)
{
  var __var_48: bool;
  var __var_49: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1189 >= 0;
    if (__tmp__DType[this] == MANAToken)
    {
        call __var_48 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_48 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_48;
    return;
}



implementation transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1189: Ref, 
    _value_s1189: int)
   returns (__ret_0_: bool)
{
  var __var_48: bool;
  var __var_49: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1189 >= 0;
    if (DType[this] == MANAToken)
    {
        call __var_48 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_48 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_48;
    return;
}



implementation transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1210: Ref, 
    _to_s1210: Ref, 
    _value_s1210: int)
   returns (__ret_0_: bool)
{
  var __var_50: bool;
  var __var_51: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s1210 >= 0;
    if (__tmp__DType[this] == MANAToken)
    {
        call __var_50 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_50 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_50;
    return;
}



implementation transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1210: Ref, 
    _to_s1210: Ref, 
    _value_s1210: int)
   returns (__ret_0_: bool)
{
  var __var_50: bool;
  var __var_51: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s1210 >= 0;
    if (DType[this] == MANAToken)
    {
        call __var_50 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_50 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_50;
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

    call BurnableToken_BurnableToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation burn_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1260: int)
{
  var burner_s1259: Ref;
  var __var_52: int;
  var __var_53: int;

    gas := gas - 58;
    assume _value_s1260 >= 0;
    if (!(_value_s1260 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    burner_s1259 := msgsender_MSG;
    gas := gas - 40878;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s1259] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s1259] >= 0;
    assume _value_s1260 >= 0;
    call __var_52 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s1259], _value_s1260);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s1259];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s1259] := __var_52;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][burner_s1259];
    assume __var_52 >= 0;
    gas := gas - 40494;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume _value_s1260 >= 0;
    call __var_53 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply_ERC20Basic[this], _value_s1260);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply_ERC20Basic[this] := __var_53;
    assume __var_53 >= 0;
}



implementation burn_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1260: int)
{
  var burner_s1259: Ref;
  var __var_52: int;
  var __var_53: int;

    gas := gas - 58;
    assume _value_s1260 >= 0;
    if (!(_value_s1260 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    burner_s1259 := msgsender_MSG;
    gas := gas - 40878;
    assume M_Ref_int_balances0[balances_BasicToken[this]][burner_s1259] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][burner_s1259] >= 0;
    assume _value_s1260 >= 0;
    call __var_52 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][burner_s1259], _value_s1260);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][burner_s1259];
    M_Ref_int_balances0[balances_BasicToken[this]][burner_s1259] := __var_52;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][burner_s1259];
    assume __var_52 >= 0;
    gas := gas - 40494;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume _value_s1260 >= 0;
    call __var_53 := sub_SafeMath__success(this, this, 0, totalSupply_ERC20Basic[this], _value_s1260);
    if (revert)
    {
        return;
    }

    totalSupply_ERC20Basic[this] := __var_53;
    assume __var_53 >= 0;
    assert {:EventEmitted "Burn_BurnableToken"} true;
}



implementation MANAToken_MANAToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__symbol_MANAToken[this] := 389948478;
    __tmp__name_MANAToken[this] := -185919620;
    __tmp__decimals_MANAToken[this] := 18;
}



implementation MANAToken_MANAToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    symbol_MANAToken[this] := 389948478;
    name_MANAToken[this] := -185919620;
    decimals_MANAToken[this] := 18;
}



implementation MANAToken_MANAToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call Pausable_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MintableToken_MintableToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MANAToken_MANAToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation MANAToken_MANAToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MANAToken_MANAToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation burn_MANAToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1290: int)
{
  var __var_54: int;

    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    assume _value_s1290 >= 0;
    if (__tmp__DType[this] == MANAToken)
    {
        call burn_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s1290);
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



implementation burn_MANAToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s1290: int)
{
  var __var_54: int;

    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    assume _value_s1290 >= 0;
    if (DType[this] == MANAToken)
    {
        call burn_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s1290);
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



implementation MANAContinuousSale_MANAContinuousSale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__INFLATION_MANAContinuousSale[this] := 8;
    __tmp__started_MANAContinuousSale[this] := false;
}



implementation MANAContinuousSale_MANAContinuousSale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    INFLATION_MANAContinuousSale[this] := 8;
    started_MANAContinuousSale[this] := false;
}



implementation MANAContinuousSale_MANAContinuousSale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref)
{
    assume _rate_s1324 >= 0;
    call ContinuousSale_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s1324, _wallet_s1324, _token_s1324);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MANAContinuousSale_MANAContinuousSale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s1324, _wallet_s1324, _token_s1324);
    if (revert)
    {
        return;
    }
}



implementation MANAContinuousSale_MANAContinuousSale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s1324: int, 
    _wallet_s1324: Ref, 
    _token_s1324: Ref)
{
    assume _rate_s1324 >= 0;
    call ContinuousSale_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, _rate_s1324, _wallet_s1324, _token_s1324);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MANAContinuousSale_MANAContinuousSale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _rate_s1324, _wallet_s1324, _token_s1324);
    if (revert)
    {
        return;
    }
}



implementation start_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var finalSupply_s1368: int;
  var __var_55: int;
  var annualIssuance_s1368: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 312;
    if (!!__tmp__started_MANAContinuousSale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 3199;
    assume finalSupply_s1368 >= 0;
    assume __tmp__DType[__tmp__token_ContinuousSale[this]] == MintableToken
       || __tmp__DType[__tmp__token_ContinuousSale[this]] == MANAToken;
    finalSupply_s1368 := __tmp__totalSupply_ERC20Basic[__tmp__token_ContinuousSale[this]];
    finalSupply_s1368 := finalSupply_s1368;
    gas := gas - 44;
    assume annualIssuance_s1368 >= 0;
    assume finalSupply_s1368 >= 0;
    assume finalSupply_s1368 * 8 >= 0;
    assume finalSupply_s1368 * 8 / 100 >= 0;
    annualIssuance_s1368 := finalSupply_s1368 * 8 / 100;
    gas := gas - 20047;
    assume __tmp__issuance_ContinuousSale[this] >= 0;
    assume annualIssuance_s1368 >= 0;
    assume annualIssuance_s1368 * 12 >= 0;
    assume annualIssuance_s1368 * 12 / 8760 >= 0;
    __tmp__issuance_ContinuousSale[this] := annualIssuance_s1368 * 12 / 8760;
    gas := gas - 20317;
    __tmp__started_MANAContinuousSale[this] := true;
}



implementation start_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var finalSupply_s1368: int;
  var __var_55: int;
  var annualIssuance_s1368: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 312;
    if (!!started_MANAContinuousSale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 3199;
    assume finalSupply_s1368 >= 0;
    assume DType[token_ContinuousSale[this]] == MintableToken
       || DType[token_ContinuousSale[this]] == MANAToken;
    finalSupply_s1368 := totalSupply_ERC20Basic[token_ContinuousSale[this]];
    finalSupply_s1368 := finalSupply_s1368;
    gas := gas - 44;
    assume annualIssuance_s1368 >= 0;
    assume finalSupply_s1368 >= 0;
    assume finalSupply_s1368 * 8 >= 0;
    assume finalSupply_s1368 * 8 / 100 >= 0;
    annualIssuance_s1368 := finalSupply_s1368 * 8 / 100;
    gas := gas - 20047;
    assume issuance_ContinuousSale[this] >= 0;
    assume annualIssuance_s1368 >= 0;
    assume annualIssuance_s1368 * 12 >= 0;
    assume annualIssuance_s1368 * 12 / 8760 >= 0;
    issuance_ContinuousSale[this] := annualIssuance_s1368 * 12 / 8760;
    gas := gas - 20317;
    started_MANAContinuousSale[this] := true;
}



implementation buyTokens_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1383: Ref)
{
  var __var_56: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    call whenStarted_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    if (__tmp__DType[this] == MANAContinuousSale)
    {
        call buyTokens_ContinuousSale__fail(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1383);
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



implementation buyTokens_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1383: Ref)
{
  var __var_56: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call whenStarted_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 7;
    if (DType[this] == MANAContinuousSale)
    {
        call buyTokens_ContinuousSale__success(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1383);
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



implementation setWallet_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1407: Ref)
{
  var __var_57: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_57 := null;
    if (!(_wallet_s1407 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__wallet_ContinuousSale[this] := _wallet_s1407;
}



implementation setWallet_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1407: Ref)
{
  var __var_57: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_57 := null;
    if (!(_wallet_s1407 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    wallet_ContinuousSale[this] := _wallet_s1407;
    assert {:EventEmitted "WalletChange_MANAContinuousSale"} true;
}



implementation setRate_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rate_s1423: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume __tmp__rate_ContinuousSale[this] >= 0;
    assume _rate_s1423 >= 0;
    __tmp__rate_ContinuousSale[this] := _rate_s1423;
}



implementation setRate_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _rate_s1423: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20014;
    assume rate_ContinuousSale[this] >= 0;
    assume _rate_s1423 >= 0;
    rate_ContinuousSale[this] := _rate_s1423;
    assert {:EventEmitted "RateChange_MANAContinuousSale"} true;
}



implementation unpauseToken_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_58: bool;
  var __var_59: Ref;
  var __var_60: Ref;
  var __var_61: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37196;
    __var_60 := __tmp__token_ContinuousSale[this];
    assume __tmp__DType[__tmp__token_ContinuousSale[this]] == MANAToken;
    __var_59 := __tmp__token_ContinuousSale[this];
    if (__tmp__DType[__var_59] == MANAToken)
    {
        call __var_58 := unpause_Pausable__fail(__var_59, this, __var_61);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_59] == PausableToken)
    {
        call __var_58 := unpause_Pausable__fail(__var_59, this, __var_61);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_59] == Pausable)
    {
        call __var_58 := unpause_Pausable__fail(__var_59, this, __var_61);
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



implementation unpauseToken_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_58: bool;
  var __var_59: Ref;
  var __var_60: Ref;
  var __var_61: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37196;
    __var_60 := token_ContinuousSale[this];
    assume DType[token_ContinuousSale[this]] == MANAToken;
    __var_59 := token_ContinuousSale[this];
    if (DType[__var_59] == MANAToken)
    {
        call __var_58 := unpause_Pausable__success(__var_59, this, __var_61);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_59] == PausableToken)
    {
        call __var_58 := unpause_Pausable__success(__var_59, this, __var_61);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_59] == Pausable)
    {
        call __var_58 := unpause_Pausable__success(__var_59, this, __var_61);
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



implementation pauseToken_MANAContinuousSale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_62: bool;
  var __var_63: Ref;
  var __var_64: Ref;
  var __var_65: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37196;
    __var_64 := __tmp__token_ContinuousSale[this];
    assume __tmp__DType[__tmp__token_ContinuousSale[this]] == MANAToken;
    __var_63 := __tmp__token_ContinuousSale[this];
    if (__tmp__DType[__var_63] == MANAToken)
    {
        call __var_62 := pause_Pausable__fail(__var_63, this, __var_65);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_63] == PausableToken)
    {
        call __var_62 := pause_Pausable__fail(__var_63, this, __var_65);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_63] == Pausable)
    {
        call __var_62 := pause_Pausable__fail(__var_63, this, __var_65);
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



implementation pauseToken_MANAContinuousSale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_62: bool;
  var __var_63: Ref;
  var __var_64: Ref;
  var __var_65: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 37196;
    __var_64 := token_ContinuousSale[this];
    assume DType[token_ContinuousSale[this]] == MANAToken;
    __var_63 := token_ContinuousSale[this];
    if (DType[__var_63] == MANAToken)
    {
        call __var_62 := pause_Pausable__success(__var_63, this, __var_65);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_63] == PausableToken)
    {
        call __var_62 := pause_Pausable__success(__var_63, this, __var_65);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_63] == Pausable)
    {
        call __var_62 := pause_Pausable__success(__var_63, this, __var_65);
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



implementation MANACrowdsale_MANACrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref)
{
  var __var_66: Ref;
  var __var_67: bool;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: int;
  var __var_71: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__TOTAL_SHARE_MANACrowdsale[this] := 100;
    __tmp__CROWDSALE_SHARE_MANACrowdsale[this] := 40;
    __tmp__FOUNDATION_SHARE_MANACrowdsale[this] := 60;
    __tmp__preferentialRate_MANACrowdsale[this] := 0;
    call __var_71 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__buyerRate_MANACrowdsale[this] := __var_71;
    __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]] := zeroRefIntArr();
    __tmp__sum_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]] := 0;
    __tmp__initialRate_MANACrowdsale[this] := 0;
    __tmp__endRate_MANACrowdsale[this] := 0;
    assume _initialRate_s1569 >= 0;
    if (!(_initialRate_s1569 > 0))
    {
        revert := true;
        return;
    }

    assume _endRate_s1569 >= 0;
    if (!(_endRate_s1569 > 0))
    {
        revert := true;
        return;
    }

    assume _preferentialRate_s1569 >= 0;
    if (!(_preferentialRate_s1569 > 0))
    {
        revert := true;
        return;
    }

    assume __tmp__initialRate_MANACrowdsale[this] >= 0;
    assume _initialRate_s1569 >= 0;
    __tmp__initialRate_MANACrowdsale[this] := _initialRate_s1569;
    assume __tmp__endRate_MANACrowdsale[this] >= 0;
    assume _endRate_s1569 >= 0;
    __tmp__endRate_MANACrowdsale[this] := _endRate_s1569;
    assume __tmp__preferentialRate_MANACrowdsale[this] >= 0;
    assume _preferentialRate_s1569 >= 0;
    __tmp__preferentialRate_MANACrowdsale[this] := _preferentialRate_s1569;
    call __var_66 := createContinuousSaleContract_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    __tmp__continuousSale_MANACrowdsale[this] := __var_66;
    __var_69 := __tmp__token_Crowdsale[this];
    assume __tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken;
    __var_68 := __tmp__token_Crowdsale[this];
    if (__tmp__DType[__var_68] == MANAToken)
    {
        call __var_67 := pause_Pausable__fail(__var_68, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_68] == PausableToken)
    {
        call __var_67 := pause_Pausable__fail(__var_68, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_68] == Pausable)
    {
        call __var_67 := pause_Pausable__fail(__var_68, this, __var_70);
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



implementation MANACrowdsale_MANACrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref)
{
  var __var_66: Ref;
  var __var_67: bool;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: int;
  var __var_71: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    TOTAL_SHARE_MANACrowdsale[this] := 100;
    CROWDSALE_SHARE_MANACrowdsale[this] := 40;
    FOUNDATION_SHARE_MANACrowdsale[this] := 60;
    preferentialRate_MANACrowdsale[this] := 0;
    call __var_71 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    buyerRate_MANACrowdsale[this] := __var_71;
    M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]] := zeroRefIntArr();
    sum_buyerRate3[buyerRate_MANACrowdsale[this]] := 0;
    initialRate_MANACrowdsale[this] := 0;
    endRate_MANACrowdsale[this] := 0;
    assume _initialRate_s1569 >= 0;
    if (!(_initialRate_s1569 > 0))
    {
        revert := true;
        return;
    }

    assume _endRate_s1569 >= 0;
    if (!(_endRate_s1569 > 0))
    {
        revert := true;
        return;
    }

    assume _preferentialRate_s1569 >= 0;
    if (!(_preferentialRate_s1569 > 0))
    {
        revert := true;
        return;
    }

    assume initialRate_MANACrowdsale[this] >= 0;
    assume _initialRate_s1569 >= 0;
    initialRate_MANACrowdsale[this] := _initialRate_s1569;
    assume endRate_MANACrowdsale[this] >= 0;
    assume _endRate_s1569 >= 0;
    endRate_MANACrowdsale[this] := _endRate_s1569;
    assume preferentialRate_MANACrowdsale[this] >= 0;
    assume _preferentialRate_s1569 >= 0;
    preferentialRate_MANACrowdsale[this] := _preferentialRate_s1569;
    call __var_66 := createContinuousSaleContract_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    continuousSale_MANACrowdsale[this] := __var_66;
    __var_69 := token_Crowdsale[this];
    assume DType[token_Crowdsale[this]] == MANAToken;
    __var_68 := token_Crowdsale[this];
    if (DType[__var_68] == MANAToken)
    {
        call __var_67 := pause_Pausable__success(__var_68, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_68] == PausableToken)
    {
        call __var_67 := pause_Pausable__success(__var_68, this, __var_70);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_68] == Pausable)
    {
        call __var_67 := pause_Pausable__success(__var_68, this, __var_70);
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



implementation MANACrowdsale_MANACrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref)
{
  var __var_66: Ref;
  var __var_67: bool;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: int;
  var __var_71: Ref;

    assume _startBlock_s1569 >= 0;
    assume _endBlock_s1569 >= 0;
    assume _initialRate_s1569 >= 0;
    call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _startBlock_s1569, _endBlock_s1569, _initialRate_s1569, _wallet_s1569);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call WhitelistedCrowdsale_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call CappedCrowdsale_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, 86206);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MANACrowdsale_MANACrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _startBlock_s1569, _endBlock_s1569, _initialRate_s1569, _endRate_s1569, _preferentialRate_s1569, _wallet_s1569);
    if (revert)
    {
        return;
    }
}



implementation MANACrowdsale_MANACrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _startBlock_s1569: int, 
    _endBlock_s1569: int, 
    _initialRate_s1569: int, 
    _endRate_s1569: int, 
    _preferentialRate_s1569: int, 
    _wallet_s1569: Ref)
{
  var __var_66: Ref;
  var __var_67: bool;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: int;
  var __var_71: Ref;

    assume _startBlock_s1569 >= 0;
    assume _endBlock_s1569 >= 0;
    assume _initialRate_s1569 >= 0;
    call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _startBlock_s1569, _endBlock_s1569, _initialRate_s1569, _wallet_s1569);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call WhitelistedCrowdsale_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call CappedCrowdsale_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, 86206);
    if (revert)
    {
        return;
    }

    call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call MANACrowdsale_MANACrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _startBlock_s1569, _endBlock_s1569, _initialRate_s1569, _endRate_s1569, _preferentialRate_s1569, _wallet_s1569);
    if (revert)
    {
        return;
    }
}



implementation createTokenContract_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
  var __var_72: Ref;
  var __var_73: Ref;

    call __var_73 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_73] == MANAToken;
    call MANAToken_MANAToken__fail(__var_73, this, 0);
    if (revert)
    {
        return;
    }

    __var_72 := __var_73;
    __ret_0_ := __var_72;
    return;
}



implementation createTokenContract_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
  var __var_72: Ref;
  var __var_73: Ref;

    call __var_73 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_73] == MANAToken;
    call MANAToken_MANAToken__success(__var_73, this, 0);
    if (revert)
    {
        return;
    }

    __var_72 := __var_73;
    __ret_0_ := __var_72;
    return;
}



implementation createContinuousSaleContract_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
  var __var_74: Ref;
  var __var_75: Ref;

    call __var_75 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__rate_Crowdsale[this] >= 0;
    assume __tmp__DType[__var_75] == MANAContinuousSale;
    call MANAContinuousSale_MANAContinuousSale__fail(__var_75, this, 0, __tmp__rate_Crowdsale[this], __tmp__wallet_Crowdsale[this], __tmp__token_Crowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_74 := __var_75;
    __ret_0_ := __var_74;
    return;
}



implementation createContinuousSaleContract_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{
  var __var_74: Ref;
  var __var_75: Ref;

    call __var_75 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume rate_Crowdsale[this] >= 0;
    assume DType[__var_75] == MANAContinuousSale;
    call MANAContinuousSale_MANAContinuousSale__success(__var_75, this, 0, rate_Crowdsale[this], wallet_Crowdsale[this], token_Crowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_74 := __var_75;
    __ret_0_ := __var_74;
    return;
}



implementation setBuyerRate_MANACrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1631: Ref, 
    rate_s1631: int)
{
  var __var_76: bool;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 32;
    assume rate_s1631 >= 0;
    if (!(rate_s1631 != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 38;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_76 := isWhitelisted_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, buyer_s1631);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_76)
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume __tmp__now >= 0;
    assume __tmp__startBlock_Crowdsale[this] >= 0;
    if (!(__tmp__now < __tmp__startBlock_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20110;
    assume __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][buyer_s1631]
       >= 0;
    assume rate_s1631 >= 0;
    __tmp__sum_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]] := __tmp__sum_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]]
       - __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][buyer_s1631];
    __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][buyer_s1631] := rate_s1631;
    __tmp__sum_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]] := __tmp__sum_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]]
       + __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][buyer_s1631];
}



implementation setBuyerRate_MANACrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    buyer_s1631: Ref, 
    rate_s1631: int)
{
  var __var_76: bool;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 32;
    assume rate_s1631 >= 0;
    if (!(rate_s1631 != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 38;
    if (DType[this] == MANACrowdsale)
    {
        call __var_76 := isWhitelisted_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, buyer_s1631);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_76)
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume now >= 0;
    assume startBlock_Crowdsale[this] >= 0;
    if (!(now < startBlock_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20110;
    assume M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][buyer_s1631] >= 0;
    assume rate_s1631 >= 0;
    sum_buyerRate3[buyerRate_MANACrowdsale[this]] := sum_buyerRate3[buyerRate_MANACrowdsale[this]]
       - M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][buyer_s1631];
    M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][buyer_s1631] := rate_s1631;
    sum_buyerRate3[buyerRate_MANACrowdsale[this]] := sum_buyerRate3[buyerRate_MANACrowdsale[this]]
       + M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][buyer_s1631];
    assert {:EventEmitted "PreferentialRateChange_MANACrowdsale"} true;
}



implementation setInitialRate_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1659: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 32;
    assume rate_s1659 >= 0;
    if (!(rate_s1659 != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume __tmp__now >= 0;
    assume __tmp__startBlock_Crowdsale[this] >= 0;
    if (!(__tmp__now < __tmp__startBlock_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume __tmp__initialRate_MANACrowdsale[this] >= 0;
    assume rate_s1659 >= 0;
    __tmp__initialRate_MANACrowdsale[this] := rate_s1659;
}



implementation setInitialRate_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1659: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 32;
    assume rate_s1659 >= 0;
    if (!(rate_s1659 != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume now >= 0;
    assume startBlock_Crowdsale[this] >= 0;
    if (!(now < startBlock_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume initialRate_MANACrowdsale[this] >= 0;
    assume rate_s1659 >= 0;
    initialRate_MANACrowdsale[this] := rate_s1659;
    assert {:EventEmitted "InitialRateChange_MANACrowdsale"} true;
}



implementation setEndRate_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1687: int)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 32;
    assume rate_s1687 >= 0;
    if (!(rate_s1687 != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume __tmp__now >= 0;
    assume __tmp__startBlock_Crowdsale[this] >= 0;
    if (!(__tmp__now < __tmp__startBlock_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume __tmp__endRate_MANACrowdsale[this] >= 0;
    assume rate_s1687 >= 0;
    __tmp__endRate_MANACrowdsale[this] := rate_s1687;
}



implementation setEndRate_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s1687: int)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 32;
    assume rate_s1687 >= 0;
    if (!(rate_s1687 != 0))
    {
        revert := true;
        return;
    }

    gas := gas - 228;
    assume now >= 0;
    assume startBlock_Crowdsale[this] >= 0;
    if (!(now < startBlock_Crowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20014;
    assume endRate_MANACrowdsale[this] >= 0;
    assume rate_s1687 >= 0;
    endRate_MANACrowdsale[this] := rate_s1687;
    assert {:EventEmitted "EndRateChange_MANACrowdsale"} true;
}



implementation getRate_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_77: bool;
  var elapsed_s1742: int;
  var rateRange_s1742: int;
  var blockRange_s1742: int;
  var __var_78: int;
  var __var_79: int;
  var __var_80: int;

    gas := gas - 3;
    gas := gas - 304;
    assume __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][msgsender_MSG]
       != 0)
    {
        gas := gas - 314;
        assume __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][msgsender_MSG]
           >= 0;
        __ret_0_ := __tmp__M_Ref_int_buyerRate3[__tmp__buyerRate_MANACrowdsale[this]][msgsender_MSG];
        return;
    }

    gas := gas - 17;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_77 := isWhitelisted_WhitelistedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__var_77)
    {
        gas := gas - 219;
        assume __tmp__preferentialRate_MANACrowdsale[this] >= 0;
        __ret_0_ := __tmp__preferentialRate_MANACrowdsale[this];
        return;
    }

    gas := gas - 216;
    assume elapsed_s1742 >= 0;
    assume __tmp__now >= 0;
    assume __tmp__startBlock_Crowdsale[this] >= 0;
    assume __tmp__now - __tmp__startBlock_Crowdsale[this] >= 0;
    elapsed_s1742 := __tmp__now - __tmp__startBlock_Crowdsale[this];
    gas := gas - 417;
    assume rateRange_s1742 >= 0;
    assume __tmp__initialRate_MANACrowdsale[this] >= 0;
    assume __tmp__endRate_MANACrowdsale[this] >= 0;
    assume __tmp__initialRate_MANACrowdsale[this] - __tmp__endRate_MANACrowdsale[this] >= 0;
    rateRange_s1742 := __tmp__initialRate_MANACrowdsale[this] - __tmp__endRate_MANACrowdsale[this];
    gas := gas - 417;
    assume blockRange_s1742 >= 0;
    assume __tmp__endBlock_Crowdsale[this] >= 0;
    assume __tmp__startBlock_Crowdsale[this] >= 0;
    assume __tmp__endBlock_Crowdsale[this] - __tmp__startBlock_Crowdsale[this] >= 0;
    blockRange_s1742 := __tmp__endBlock_Crowdsale[this] - __tmp__startBlock_Crowdsale[this];
    gas := gas - 313;
    assume __var_78 >= 0;
    assume __tmp__initialRate_MANACrowdsale[this] >= 0;
    assume __var_79 >= 0;
    assume __var_80 >= 0;
    assume rateRange_s1742 >= 0;
    assume elapsed_s1742 >= 0;
    call __var_80 := mul_SafeMath__fail(this, this, 0, rateRange_s1742, elapsed_s1742);
    if (revert)
    {
        return;
    }

    assume __var_80 >= 0;
    assume blockRange_s1742 >= 0;
    call __var_79 := div_SafeMath__fail(this, this, 0, __var_80, blockRange_s1742);
    if (revert)
    {
        return;
    }

    assume __var_79 >= 0;
    call __var_78 := sub_SafeMath__fail(this, this, 0, __tmp__initialRate_MANACrowdsale[this], __var_79);
    if (revert)
    {
        return;
    }

    assume __var_78 >= 0;
    __ret_0_ := __var_78;
    return;
}



implementation getRate_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_77: bool;
  var elapsed_s1742: int;
  var rateRange_s1742: int;
  var blockRange_s1742: int;
  var __var_78: int;
  var __var_79: int;
  var __var_80: int;

    gas := gas - 3;
    gas := gas - 304;
    assume M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][msgsender_MSG] >= 0;
    if (M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][msgsender_MSG] != 0)
    {
        gas := gas - 314;
        assume M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][msgsender_MSG] >= 0;
        __ret_0_ := M_Ref_int_buyerRate3[buyerRate_MANACrowdsale[this]][msgsender_MSG];
        return;
    }

    gas := gas - 17;
    if (DType[this] == MANACrowdsale)
    {
        call __var_77 := isWhitelisted_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (__var_77)
    {
        gas := gas - 219;
        assume preferentialRate_MANACrowdsale[this] >= 0;
        __ret_0_ := preferentialRate_MANACrowdsale[this];
        return;
    }

    gas := gas - 216;
    assume elapsed_s1742 >= 0;
    assume now >= 0;
    assume startBlock_Crowdsale[this] >= 0;
    assume now - startBlock_Crowdsale[this] >= 0;
    elapsed_s1742 := now - startBlock_Crowdsale[this];
    gas := gas - 417;
    assume rateRange_s1742 >= 0;
    assume initialRate_MANACrowdsale[this] >= 0;
    assume endRate_MANACrowdsale[this] >= 0;
    assume initialRate_MANACrowdsale[this] - endRate_MANACrowdsale[this] >= 0;
    rateRange_s1742 := initialRate_MANACrowdsale[this] - endRate_MANACrowdsale[this];
    gas := gas - 417;
    assume blockRange_s1742 >= 0;
    assume endBlock_Crowdsale[this] >= 0;
    assume startBlock_Crowdsale[this] >= 0;
    assume endBlock_Crowdsale[this] - startBlock_Crowdsale[this] >= 0;
    blockRange_s1742 := endBlock_Crowdsale[this] - startBlock_Crowdsale[this];
    gas := gas - 313;
    assume __var_78 >= 0;
    assume initialRate_MANACrowdsale[this] >= 0;
    assume __var_79 >= 0;
    assume __var_80 >= 0;
    assume rateRange_s1742 >= 0;
    assume elapsed_s1742 >= 0;
    call __var_80 := mul_SafeMath__success(this, this, 0, rateRange_s1742, elapsed_s1742);
    if (revert)
    {
        return;
    }

    assume __var_80 >= 0;
    assume blockRange_s1742 >= 0;
    call __var_79 := div_SafeMath__success(this, this, 0, __var_80, blockRange_s1742);
    if (revert)
    {
        return;
    }

    assume __var_79 >= 0;
    call __var_78 := sub_SafeMath__success(this, this, 0, initialRate_MANACrowdsale[this], __var_79);
    if (revert)
    {
        return;
    }

    assume __var_78 >= 0;
    __ret_0_ := __var_78;
    return;
}



implementation buyTokens_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1808: Ref)
{
  var __var_81: Ref;
  var __var_82: bool;
  var weiAmount_s1807: int;
  var updatedWeiRaised_s1807: int;
  var rate_s1807: int;
  var tokens_s1807: int;
  var __var_83: bool;
  var __var_84: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 44;
    __var_81 := null;
    if (!(beneficiary_s1808 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 24;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call __var_82 := validPurchase_CappedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_82)
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume weiAmount_s1807 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s1807 := msgvalue_MSG;
    gas := gas - 244;
    assume updatedWeiRaised_s1807 >= 0;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s1807 >= 0;
    call updatedWeiRaised_s1807 := add_SafeMath__fail(this, this, 0, __tmp__weiRaised_Crowdsale[this], weiAmount_s1807);
    if (revert)
    {
        return;
    }

    updatedWeiRaised_s1807 := updatedWeiRaised_s1807;
    gas := gas - 12;
    assume rate_s1807 >= 0;
    call rate_s1807 := getRate_MANACrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    rate_s1807 := rate_s1807;
    gas := gas - 44;
    assume tokens_s1807 >= 0;
    assume weiAmount_s1807 >= 0;
    assume rate_s1807 >= 0;
    call tokens_s1807 := mul_SafeMath__fail(this, this, 0, weiAmount_s1807, rate_s1807);
    if (revert)
    {
        return;
    }

    tokens_s1807 := tokens_s1807;
    gas := gas - 20014;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume updatedWeiRaised_s1807 >= 0;
    __tmp__weiRaised_Crowdsale[this] := updatedWeiRaised_s1807;
    gas := gas - 37458;
    assume tokens_s1807 >= 0;
    if (__tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken)
    {
        call __var_83 := mint_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_84, beneficiary_s1808, tokens_s1807);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == MintableToken)
    {
        call __var_83 := mint_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_84, beneficiary_s1808, tokens_s1807);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 4;
    if (__tmp__DType[this] == MANACrowdsale)
    {
        call forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation buyTokens_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1808: Ref)
{
  var __var_81: Ref;
  var __var_82: bool;
  var weiAmount_s1807: int;
  var updatedWeiRaised_s1807: int;
  var rate_s1807: int;
  var tokens_s1807: int;
  var __var_83: bool;
  var __var_84: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 44;
    __var_81 := null;
    if (!(beneficiary_s1808 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 24;
    if (DType[this] == MANACrowdsale)
    {
        call __var_82 := validPurchase_CappedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_82)
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    assume weiAmount_s1807 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s1807 := msgvalue_MSG;
    gas := gas - 244;
    assume updatedWeiRaised_s1807 >= 0;
    assume weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s1807 >= 0;
    call updatedWeiRaised_s1807 := add_SafeMath__success(this, this, 0, weiRaised_Crowdsale[this], weiAmount_s1807);
    if (revert)
    {
        return;
    }

    updatedWeiRaised_s1807 := updatedWeiRaised_s1807;
    gas := gas - 12;
    assume rate_s1807 >= 0;
    call rate_s1807 := getRate_MANACrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    rate_s1807 := rate_s1807;
    gas := gas - 44;
    assume tokens_s1807 >= 0;
    assume weiAmount_s1807 >= 0;
    assume rate_s1807 >= 0;
    call tokens_s1807 := mul_SafeMath__success(this, this, 0, weiAmount_s1807, rate_s1807);
    if (revert)
    {
        return;
    }

    tokens_s1807 := tokens_s1807;
    gas := gas - 20014;
    assume weiRaised_Crowdsale[this] >= 0;
    assume updatedWeiRaised_s1807 >= 0;
    weiRaised_Crowdsale[this] := updatedWeiRaised_s1807;
    gas := gas - 37458;
    assume tokens_s1807 >= 0;
    if (DType[token_Crowdsale[this]] == MANAToken)
    {
        call __var_83 := mint_MintableToken__success(token_Crowdsale[this], this, __var_84, beneficiary_s1808, tokens_s1807);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == MintableToken)
    {
        call __var_83 := mint_MintableToken__success(token_Crowdsale[this], this, __var_84, beneficiary_s1808, tokens_s1807);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "TokenPurchase_MANACrowdsale"} true;
    gas := gas - 4;
    if (DType[this] == MANACrowdsale)
    {
        call forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation setWallet_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1838: Ref)
{
  var __var_85: Ref;
  var __var_86: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_85 := null;
    if (!(_wallet_s1838 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__wallet_Crowdsale[this] := _wallet_s1838;
    gas := gas - 37173;
    if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == MANACrowdsale)
    {
        call setWallet_MANACrowdsale__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_86, _wallet_s1838);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == MANAContinuousSale)
    {
        call setWallet_MANAContinuousSale__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_86, _wallet_s1838);
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



implementation setWallet_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _wallet_s1838: Ref)
{
  var __var_85: Ref;
  var __var_86: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_85 := null;
    if (!(_wallet_s1838 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    wallet_Crowdsale[this] := _wallet_s1838;
    gas := gas - 37173;
    if (DType[continuousSale_MANACrowdsale[this]] == MANACrowdsale)
    {
        call setWallet_MANACrowdsale__success(continuousSale_MANACrowdsale[this], this, __var_86, _wallet_s1838);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == MANAContinuousSale)
    {
        call setWallet_MANAContinuousSale__success(continuousSale_MANACrowdsale[this], this, __var_86, _wallet_s1838);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    assert {:EventEmitted "WalletChange_MANACrowdsale"} true;
}



implementation unpauseToken_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_87: bool;
  var __var_88: Ref;
  var __var_89: Ref;
  var __var_90: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!__tmp__isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 37196;
    __var_89 := __tmp__token_Crowdsale[this];
    assume __tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken;
    __var_88 := __tmp__token_Crowdsale[this];
    if (__tmp__DType[__var_88] == MANAToken)
    {
        call __var_87 := unpause_Pausable__fail(__var_88, this, __var_90);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_88] == PausableToken)
    {
        call __var_87 := unpause_Pausable__fail(__var_88, this, __var_90);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_88] == Pausable)
    {
        call __var_87 := unpause_Pausable__fail(__var_88, this, __var_90);
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



implementation unpauseToken_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_87: bool;
  var __var_88: Ref;
  var __var_89: Ref;
  var __var_90: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 37196;
    __var_89 := token_Crowdsale[this];
    assume DType[token_Crowdsale[this]] == MANAToken;
    __var_88 := token_Crowdsale[this];
    if (DType[__var_88] == MANAToken)
    {
        call __var_87 := unpause_Pausable__success(__var_88, this, __var_90);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_88] == PausableToken)
    {
        call __var_87 := unpause_Pausable__success(__var_88, this, __var_90);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_88] == Pausable)
    {
        call __var_87 := unpause_Pausable__success(__var_88, this, __var_90);
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



implementation pauseToken_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_91: bool;
  var __var_92: Ref;
  var __var_93: Ref;
  var __var_94: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!__tmp__isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 37196;
    __var_93 := __tmp__token_Crowdsale[this];
    assume __tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken;
    __var_92 := __tmp__token_Crowdsale[this];
    if (__tmp__DType[__var_92] == MANAToken)
    {
        call __var_91 := pause_Pausable__fail(__var_92, this, __var_94);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_92] == PausableToken)
    {
        call __var_91 := pause_Pausable__fail(__var_92, this, __var_94);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__var_92] == Pausable)
    {
        call __var_91 := pause_Pausable__fail(__var_92, this, __var_94);
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



implementation pauseToken_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_91: bool;
  var __var_92: Ref;
  var __var_93: Ref;
  var __var_94: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 37196;
    __var_93 := token_Crowdsale[this];
    assume DType[token_Crowdsale[this]] == MANAToken;
    __var_92 := token_Crowdsale[this];
    if (DType[__var_92] == MANAToken)
    {
        call __var_91 := pause_Pausable__success(__var_92, this, __var_94);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_92] == PausableToken)
    {
        call __var_91 := pause_Pausable__success(__var_92, this, __var_94);
        if (revert)
        {
            return;
        }
    }
    else if (DType[__var_92] == Pausable)
    {
        call __var_91 := pause_Pausable__success(__var_92, this, __var_94);
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



implementation beginContinuousSale_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_95: int;
  var __var_96: Ref;
  var __var_97: int;
  var __var_98: int;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!__tmp__isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 37409;
    __var_96 := __tmp__continuousSale_MANACrowdsale[this];
    if (__tmp__DType[__tmp__token_Crowdsale[this]] == MANACrowdsale)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == MANAContinuousSale)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == PausableToken)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == Pausable)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == WhitelistedCrowdsale)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == FinalizableCrowdsale)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == MintableToken)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == Ownable)
    {
        call transferOwnership_Ownable__fail(__tmp__token_Crowdsale[this], this, __var_95, __tmp__continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 37034;
    call start_MANAContinuousSale__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_97);
    if (revert)
    {
        return;
    }

    gas := gas - 37409;
    if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == MANACrowdsale)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == MANAContinuousSale)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == MANAToken)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == PausableToken)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == Pausable)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == WhitelistedCrowdsale)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == FinalizableCrowdsale)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == MintableToken)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__continuousSale_MANACrowdsale[this]] == Ownable)
    {
        call transferOwnership_Ownable__fail(__tmp__continuousSale_MANACrowdsale[this], this, __var_98, __tmp__owner_Ownable[this]);
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



implementation beginContinuousSale_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_95: int;
  var __var_96: Ref;
  var __var_97: int;
  var __var_98: int;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 259;
    if (!isFinalized_FinalizableCrowdsale[this])
    {
        revert := true;
        return;
    }

    gas := gas - 37409;
    __var_96 := continuousSale_MANACrowdsale[this];
    if (DType[token_Crowdsale[this]] == MANACrowdsale)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == MANAContinuousSale)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == MANAToken)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == PausableToken)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == Pausable)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == WhitelistedCrowdsale)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == FinalizableCrowdsale)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == MintableToken)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == Ownable)
    {
        call transferOwnership_Ownable__success(token_Crowdsale[this], this, __var_95, continuousSale_MANACrowdsale[this]);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 37034;
    call start_MANAContinuousSale__success(continuousSale_MANACrowdsale[this], this, __var_97);
    if (revert)
    {
        return;
    }

    gas := gas - 37409;
    if (DType[continuousSale_MANACrowdsale[this]] == MANACrowdsale)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == MANAContinuousSale)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == MANAToken)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == PausableToken)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == Pausable)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == WhitelistedCrowdsale)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == FinalizableCrowdsale)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == MintableToken)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
        if (revert)
        {
            return;
        }
    }
    else if (DType[continuousSale_MANACrowdsale[this]] == Ownable)
    {
        call transferOwnership_Ownable__success(continuousSale_MANACrowdsale[this], this, __var_98, owner_Ownable[this]);
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



implementation finalization_MANACrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var totalSupply_s1931: int;
  var __var_99: int;
  var finalSupply_s1931: int;
  var __var_100: bool;
  var __var_101: int;

    gas := gas - 3199;
    assume totalSupply_s1931 >= 0;
    assume __tmp__DType[__tmp__token_Crowdsale[this]] == MintableToken
       || __tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken;
    totalSupply_s1931 := __tmp__totalSupply_ERC20Basic[__tmp__token_Crowdsale[this]];
    totalSupply_s1931 := totalSupply_s1931;
    gas := gas - 44;
    assume finalSupply_s1931 >= 0;
    assume totalSupply_s1931 >= 0;
    assume totalSupply_s1931 * 100 >= 0;
    assume totalSupply_s1931 * 100 / 40 >= 0;
    finalSupply_s1931 := totalSupply_s1931 * 100 / 40;
    gas := gas - 37727;
    assume finalSupply_s1931 >= 0;
    assume finalSupply_s1931 * 60 >= 0;
    assume finalSupply_s1931 * 60 / 100 >= 0;
    if (__tmp__DType[__tmp__token_Crowdsale[this]] == MANAToken)
    {
        call __var_100 := mint_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_101, __tmp__wallet_Crowdsale[this], finalSupply_s1931 * 60 / 100);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == MintableToken)
    {
        call __var_100 := mint_MintableToken__fail(__tmp__token_Crowdsale[this], this, __var_101, __tmp__wallet_Crowdsale[this], finalSupply_s1931 * 60 / 100);
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



implementation finalization_MANACrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var totalSupply_s1931: int;
  var __var_99: int;
  var finalSupply_s1931: int;
  var __var_100: bool;
  var __var_101: int;

    gas := gas - 3199;
    assume totalSupply_s1931 >= 0;
    assume DType[token_Crowdsale[this]] == MintableToken
       || DType[token_Crowdsale[this]] == MANAToken;
    totalSupply_s1931 := totalSupply_ERC20Basic[token_Crowdsale[this]];
    totalSupply_s1931 := totalSupply_s1931;
    gas := gas - 44;
    assume finalSupply_s1931 >= 0;
    assume totalSupply_s1931 >= 0;
    assume totalSupply_s1931 * 100 >= 0;
    assume totalSupply_s1931 * 100 / 40 >= 0;
    finalSupply_s1931 := totalSupply_s1931 * 100 / 40;
    gas := gas - 37727;
    assume finalSupply_s1931 >= 0;
    assume finalSupply_s1931 * 60 >= 0;
    assume finalSupply_s1931 * 60 / 100 >= 0;
    if (DType[token_Crowdsale[this]] == MANAToken)
    {
        call __var_100 := mint_MintableToken__success(token_Crowdsale[this], this, __var_101, wallet_Crowdsale[this], finalSupply_s1931 * 60 / 100);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == MintableToken)
    {
        call __var_100 := mint_MintableToken__success(token_Crowdsale[this], this, __var_101, wallet_Crowdsale[this], finalSupply_s1931 * 60 / 100);
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



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == MANACrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MANAContinuousSale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == MANAToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == BurnableToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == PausableToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ContinuousSale)
    {
        call FallbackMethod_ContinuousSale__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == WhitelistedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == FinalizableCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == CappedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Crowdsale)
    {
        call FallbackMethod_Crowdsale__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == MintableToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Ownable)
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
    if (DType[to] == MANACrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == MANAContinuousSale)
    {
        assume amount == 0;
    }
    else if (DType[to] == MANAToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == BurnableToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == PausableToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (DType[to] == ContinuousSale)
    {
        call FallbackMethod_ContinuousSale__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == WhitelistedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == FinalizableCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == CappedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == Crowdsale)
    {
        call FallbackMethod_Crowdsale__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == MintableToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == Ownable)
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
  var __snap___tmp__M_Ref_bool_whitelist2: [Ref][Ref]bool;
  var __snap___tmp__sum_whitelist2: [Ref]int;
  var __snap___tmp__M_Ref_int_buyerRate3: [Ref][Ref]int;
  var __snap___tmp__sum_buyerRate3: [Ref]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__totalSupply_ERC20Basic: [Ref]int;
  var __snap___tmp__balances_BasicToken: [Ref]Ref;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__mintingFinished_MintableToken: [Ref]bool;
  var __snap___tmp__token_Crowdsale: [Ref]Ref;
  var __snap___tmp__startBlock_Crowdsale: [Ref]int;
  var __snap___tmp__endBlock_Crowdsale: [Ref]int;
  var __snap___tmp__wallet_Crowdsale: [Ref]Ref;
  var __snap___tmp__rate_Crowdsale: [Ref]int;
  var __snap___tmp__weiRaised_Crowdsale: [Ref]int;
  var __snap___tmp__cap_CappedCrowdsale: [Ref]int;
  var __snap___tmp__isFinalized_FinalizableCrowdsale: [Ref]bool;
  var __snap___tmp__whitelist_WhitelistedCrowdsale: [Ref]Ref;
  var __snap___tmp__BUCKET_SIZE_ContinuousSale: [Ref]int;
  var __snap___tmp__token_ContinuousSale: [Ref]Ref;
  var __snap___tmp__wallet_ContinuousSale: [Ref]Ref;
  var __snap___tmp__rate_ContinuousSale: [Ref]int;
  var __snap___tmp__weiRaised_ContinuousSale: [Ref]int;
  var __snap___tmp__issuance_ContinuousSale: [Ref]int;
  var __snap___tmp__lastBucket_ContinuousSale: [Ref]int;
  var __snap___tmp__bucketAmount_ContinuousSale: [Ref]int;
  var __snap___tmp__paused_Pausable: [Ref]bool;
  var __snap___tmp__symbol_MANAToken: [Ref]int;
  var __snap___tmp__name_MANAToken: [Ref]int;
  var __snap___tmp__decimals_MANAToken: [Ref]int;
  var __snap___tmp__INFLATION_MANAContinuousSale: [Ref]int;
  var __snap___tmp__started_MANAContinuousSale: [Ref]bool;
  var __snap___tmp__TOTAL_SHARE_MANACrowdsale: [Ref]int;
  var __snap___tmp__CROWDSALE_SHARE_MANACrowdsale: [Ref]int;
  var __snap___tmp__FOUNDATION_SHARE_MANACrowdsale: [Ref]int;
  var __snap___tmp__preferentialRate_MANACrowdsale: [Ref]int;
  var __snap___tmp__buyerRate_MANACrowdsale: [Ref]Ref;
  var __snap___tmp__initialRate_MANACrowdsale: [Ref]int;
  var __snap___tmp__endRate_MANACrowdsale: [Ref]int;
  var __snap___tmp__continuousSale_MANACrowdsale: [Ref]Ref;

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
        __snap___tmp__M_Ref_bool_whitelist2 := __tmp__M_Ref_bool_whitelist2;
        __snap___tmp__sum_whitelist2 := __tmp__sum_whitelist2;
        __snap___tmp__M_Ref_int_buyerRate3 := __tmp__M_Ref_int_buyerRate3;
        __snap___tmp__sum_buyerRate3 := __tmp__sum_buyerRate3;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__totalSupply_ERC20Basic := __tmp__totalSupply_ERC20Basic;
        __snap___tmp__balances_BasicToken := __tmp__balances_BasicToken;
        __snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
        __snap___tmp__owner_Ownable := __tmp__owner_Ownable;
        __snap___tmp__mintingFinished_MintableToken := __tmp__mintingFinished_MintableToken;
        __snap___tmp__token_Crowdsale := __tmp__token_Crowdsale;
        __snap___tmp__startBlock_Crowdsale := __tmp__startBlock_Crowdsale;
        __snap___tmp__endBlock_Crowdsale := __tmp__endBlock_Crowdsale;
        __snap___tmp__wallet_Crowdsale := __tmp__wallet_Crowdsale;
        __snap___tmp__rate_Crowdsale := __tmp__rate_Crowdsale;
        __snap___tmp__weiRaised_Crowdsale := __tmp__weiRaised_Crowdsale;
        __snap___tmp__cap_CappedCrowdsale := __tmp__cap_CappedCrowdsale;
        __snap___tmp__isFinalized_FinalizableCrowdsale := __tmp__isFinalized_FinalizableCrowdsale;
        __snap___tmp__whitelist_WhitelistedCrowdsale := __tmp__whitelist_WhitelistedCrowdsale;
        __snap___tmp__BUCKET_SIZE_ContinuousSale := __tmp__BUCKET_SIZE_ContinuousSale;
        __snap___tmp__token_ContinuousSale := __tmp__token_ContinuousSale;
        __snap___tmp__wallet_ContinuousSale := __tmp__wallet_ContinuousSale;
        __snap___tmp__rate_ContinuousSale := __tmp__rate_ContinuousSale;
        __snap___tmp__weiRaised_ContinuousSale := __tmp__weiRaised_ContinuousSale;
        __snap___tmp__issuance_ContinuousSale := __tmp__issuance_ContinuousSale;
        __snap___tmp__lastBucket_ContinuousSale := __tmp__lastBucket_ContinuousSale;
        __snap___tmp__bucketAmount_ContinuousSale := __tmp__bucketAmount_ContinuousSale;
        __snap___tmp__paused_Pausable := __tmp__paused_Pausable;
        __snap___tmp__symbol_MANAToken := __tmp__symbol_MANAToken;
        __snap___tmp__name_MANAToken := __tmp__name_MANAToken;
        __snap___tmp__decimals_MANAToken := __tmp__decimals_MANAToken;
        __snap___tmp__INFLATION_MANAContinuousSale := __tmp__INFLATION_MANAContinuousSale;
        __snap___tmp__started_MANAContinuousSale := __tmp__started_MANAContinuousSale;
        __snap___tmp__TOTAL_SHARE_MANACrowdsale := __tmp__TOTAL_SHARE_MANACrowdsale;
        __snap___tmp__CROWDSALE_SHARE_MANACrowdsale := __tmp__CROWDSALE_SHARE_MANACrowdsale;
        __snap___tmp__FOUNDATION_SHARE_MANACrowdsale := __tmp__FOUNDATION_SHARE_MANACrowdsale;
        __snap___tmp__preferentialRate_MANACrowdsale := __tmp__preferentialRate_MANACrowdsale;
        __snap___tmp__buyerRate_MANACrowdsale := __tmp__buyerRate_MANACrowdsale;
        __snap___tmp__initialRate_MANACrowdsale := __tmp__initialRate_MANACrowdsale;
        __snap___tmp__endRate_MANACrowdsale := __tmp__endRate_MANACrowdsale;
        __snap___tmp__continuousSale_MANACrowdsale := __tmp__continuousSale_MANACrowdsale;
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
        __tmp__M_Ref_bool_whitelist2 := __snap___tmp__M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := __snap___tmp__sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := __snap___tmp__M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := __snap___tmp__sum_buyerRate3;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__totalSupply_ERC20Basic := __snap___tmp__totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := __snap___tmp__balances_BasicToken;
        __tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
        __tmp__owner_Ownable := __snap___tmp__owner_Ownable;
        __tmp__mintingFinished_MintableToken := __snap___tmp__mintingFinished_MintableToken;
        __tmp__token_Crowdsale := __snap___tmp__token_Crowdsale;
        __tmp__startBlock_Crowdsale := __snap___tmp__startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := __snap___tmp__endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := __snap___tmp__wallet_Crowdsale;
        __tmp__rate_Crowdsale := __snap___tmp__rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := __snap___tmp__weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := __snap___tmp__cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := __snap___tmp__isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := __snap___tmp__whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := __snap___tmp__BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := __snap___tmp__token_ContinuousSale;
        __tmp__wallet_ContinuousSale := __snap___tmp__wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := __snap___tmp__rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := __snap___tmp__weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := __snap___tmp__issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := __snap___tmp__lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := __snap___tmp__bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := __snap___tmp__paused_Pausable;
        __tmp__symbol_MANAToken := __snap___tmp__symbol_MANAToken;
        __tmp__name_MANAToken := __snap___tmp__name_MANAToken;
        __tmp__decimals_MANAToken := __snap___tmp__decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := __snap___tmp__INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := __snap___tmp__started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := __snap___tmp__TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := __snap___tmp__CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := __snap___tmp__FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := __snap___tmp__preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := __snap___tmp__buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := __snap___tmp__initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := __snap___tmp__endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := __snap___tmp__continuousSale_MANACrowdsale;
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
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_int_buyerRate3 := M_Ref_int_buyerRate3;
        __tmp__sum_buyerRate3 := sum_buyerRate3;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__mintingFinished_MintableToken := mintingFinished_MintableToken;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__startBlock_Crowdsale := startBlock_Crowdsale;
        __tmp__endBlock_Crowdsale := endBlock_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__cap_CappedCrowdsale := cap_CappedCrowdsale;
        __tmp__isFinalized_FinalizableCrowdsale := isFinalized_FinalizableCrowdsale;
        __tmp__whitelist_WhitelistedCrowdsale := whitelist_WhitelistedCrowdsale;
        __tmp__BUCKET_SIZE_ContinuousSale := BUCKET_SIZE_ContinuousSale;
        __tmp__token_ContinuousSale := token_ContinuousSale;
        __tmp__wallet_ContinuousSale := wallet_ContinuousSale;
        __tmp__rate_ContinuousSale := rate_ContinuousSale;
        __tmp__weiRaised_ContinuousSale := weiRaised_ContinuousSale;
        __tmp__issuance_ContinuousSale := issuance_ContinuousSale;
        __tmp__lastBucket_ContinuousSale := lastBucket_ContinuousSale;
        __tmp__bucketAmount_ContinuousSale := bucketAmount_ContinuousSale;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__symbol_MANAToken := symbol_MANAToken;
        __tmp__name_MANAToken := name_MANAToken;
        __tmp__decimals_MANAToken := decimals_MANAToken;
        __tmp__INFLATION_MANAContinuousSale := INFLATION_MANAContinuousSale;
        __tmp__started_MANAContinuousSale := started_MANAContinuousSale;
        __tmp__TOTAL_SHARE_MANACrowdsale := TOTAL_SHARE_MANACrowdsale;
        __tmp__CROWDSALE_SHARE_MANACrowdsale := CROWDSALE_SHARE_MANACrowdsale;
        __tmp__FOUNDATION_SHARE_MANACrowdsale := FOUNDATION_SHARE_MANACrowdsale;
        __tmp__preferentialRate_MANACrowdsale := preferentialRate_MANACrowdsale;
        __tmp__buyerRate_MANACrowdsale := buyerRate_MANACrowdsale;
        __tmp__initialRate_MANACrowdsale := initialRate_MANACrowdsale;
        __tmp__endRate_MANACrowdsale := endRate_MANACrowdsale;
        __tmp__continuousSale_MANACrowdsale := continuousSale_MANACrowdsale;
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
    gas := gas - 8556;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 8556;
    if (!(msgsender_MSG == owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation canMint_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 624;
    if (!!__tmp__mintingFinished_MintableToken[this])
    {
        revert := true;
        return;
    }
}



implementation canMint_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 624;
    if (!!mintingFinished_MintableToken[this])
    {
        revert := true;
        return;
    }
}



implementation whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2496;
    if (!!__tmp__paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 2496;
    if (!!paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 927;
    if (!__tmp__paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 927;
    if (!paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenStarted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 309;
    if (!__tmp__started_MANAContinuousSale[this])
    {
        revert := true;
        return;
    }
}



implementation whenStarted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 309;
    if (!started_MANAContinuousSale[this])
    {
        revert := true;
        return;
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
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
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



implementation CorralChoice_ERC20Basic(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var who_s103: Ref;
  var __ret_0_balanceOf: int;
  var to_s112: Ref;
  var value_s112: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc who_s103;
    havoc __ret_0_balanceOf;
    havoc to_s112;
    havoc value_s112;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s103);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s112, value_s112);
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
       || DType[this] == MintableToken
       || DType[this] == PausableToken
       || DType[this] == BurnableToken
       || DType[this] == MANAToken;
    gas := gas - 53000;
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Basic(this);
    }
}



implementation CorralChoice_BasicToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s185: Ref;
  var balance_s185: int;
  var _to_s173: Ref;
  var _value_s173: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s185;
    havoc balance_s185;
    havoc _to_s173;
    havoc _value_s173;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s185 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s173, _value_s173);
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
       || DType[this] == MintableToken
       || DType[this] == PausableToken
       || DType[this] == BurnableToken
       || DType[this] == MANAToken;
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
  var who_s103: Ref;
  var __ret_0_balanceOf: int;
  var to_s112: Ref;
  var value_s112: int;
  var __ret_0_transfer: bool;
  var owner_s197: Ref;
  var spender_s197: Ref;
  var __ret_0_allowance: int;
  var from_s208: Ref;
  var to_s208: Ref;
  var value_s208: int;
  var __ret_0_transferFrom: bool;
  var spender_s217: Ref;
  var value_s217: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc who_s103;
    havoc __ret_0_balanceOf;
    havoc to_s112;
    havoc value_s112;
    havoc __ret_0_transfer;
    havoc owner_s197;
    havoc spender_s197;
    havoc __ret_0_allowance;
    havoc from_s208;
    havoc to_s208;
    havoc value_s208;
    havoc __ret_0_transferFrom;
    havoc spender_s217;
    havoc value_s217;
    havoc __ret_0_approve;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s103);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s112, value_s112);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s197, spender_s197);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s208, to_s208, value_s208);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s217, value_s217);
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
       || DType[this] == MintableToken
       || DType[this] == PausableToken
       || DType[this] == BurnableToken
       || DType[this] == MANAToken;
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
  var _owner_s185: Ref;
  var balance_s185: int;
  var _to_s173: Ref;
  var _value_s173: int;
  var __ret_0_transfer: bool;
  var _owner_s360: Ref;
  var _spender_s360: Ref;
  var remaining_s360: int;
  var _from_s299: Ref;
  var _to_s299: Ref;
  var _value_s299: int;
  var __ret_0_transferFrom: bool;
  var _spender_s344: Ref;
  var _value_s344: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s185;
    havoc balance_s185;
    havoc _to_s173;
    havoc _value_s173;
    havoc __ret_0_transfer;
    havoc _owner_s360;
    havoc _spender_s360;
    havoc remaining_s360;
    havoc _from_s299;
    havoc _to_s299;
    havoc _value_s299;
    havoc __ret_0_transferFrom;
    havoc _spender_s344;
    havoc _value_s344;
    havoc __ret_0_approve;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s185 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s173, _value_s173);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s360 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s360, _spender_s360);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s299, _to_s299, _value_s299);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s344, _value_s344);
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
    assume DType[this] == StandardToken
       || DType[this] == MintableToken
       || DType[this] == PausableToken
       || DType[this] == BurnableToken
       || DType[this] == MANAToken;
    gas := gas - 53000;
    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_StandardToken(this);
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s402: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s402;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
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
    assume DType[this] == Ownable
       || DType[this] == MintableToken
       || DType[this] == FinalizableCrowdsale
       || DType[this] == WhitelistedCrowdsale
       || DType[this] == Pausable
       || DType[this] == PausableToken
       || DType[this] == MANAToken
       || DType[this] == MANAContinuousSale
       || DType[this] == MANACrowdsale;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_MintableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s185: Ref;
  var balance_s185: int;
  var _to_s173: Ref;
  var _value_s173: int;
  var __ret_0_transfer: bool;
  var _owner_s360: Ref;
  var _spender_s360: Ref;
  var remaining_s360: int;
  var _from_s299: Ref;
  var _to_s299: Ref;
  var _value_s299: int;
  var __ret_0_transferFrom: bool;
  var _spender_s344: Ref;
  var _value_s344: int;
  var __ret_0_approve: bool;
  var newOwner_s402: Ref;
  var _to_s466: Ref;
  var _amount_s466: int;
  var __ret_0_mint: bool;
  var __ret_0_finishMinting: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s185;
    havoc balance_s185;
    havoc _to_s173;
    havoc _value_s173;
    havoc __ret_0_transfer;
    havoc _owner_s360;
    havoc _spender_s360;
    havoc remaining_s360;
    havoc _from_s299;
    havoc _to_s299;
    havoc _value_s299;
    havoc __ret_0_transferFrom;
    havoc _spender_s344;
    havoc _value_s344;
    havoc __ret_0_approve;
    havoc newOwner_s402;
    havoc _to_s466;
    havoc _amount_s466;
    havoc __ret_0_mint;
    havoc __ret_0_finishMinting;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s185 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s173, _value_s173);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s360 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s360, _spender_s360);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s299, _to_s299, _value_s299);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s344, _value_s344);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_mint := mint_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s466, _amount_s466);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_finishMinting := finishMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_MintableToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MintableToken || DType[this] == MANAToken;
    gas := gas - 53000;
    call MintableToken_MintableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MintableToken(this);
    }
}



implementation CorralChoice_Crowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _startBlock_s568: int;
  var _endBlock_s568: int;
  var _rate_s568: int;
  var _wallet_s568: Ref;
  var beneficiary_s643: Ref;
  var __ret_0_hasEnded: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _startBlock_s568;
    havoc _endBlock_s568;
    havoc _rate_s568;
    havoc _wallet_s568;
    havoc beneficiary_s643;
    havoc __ret_0_hasEnded;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s643);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasEnded := hasEnded_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_Crowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _startBlock_s568: int;
  var _endBlock_s568: int;
  var _rate_s568: int;
  var _wallet_s568: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Crowdsale
       || DType[this] == CappedCrowdsale
       || DType[this] == FinalizableCrowdsale
       || DType[this] == WhitelistedCrowdsale
       || DType[this] == MANACrowdsale;
    gas := gas - 53000;
    call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _startBlock_s568, _endBlock_s568, _rate_s568, _wallet_s568);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Crowdsale(this);
    }
}



implementation CorralChoice_CappedCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _startBlock_s568: int;
  var _endBlock_s568: int;
  var _rate_s568: int;
  var _wallet_s568: Ref;
  var beneficiary_s643: Ref;
  var __ret_0_hasEnded: bool;
  var _cap_s719: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _startBlock_s568;
    havoc _endBlock_s568;
    havoc _rate_s568;
    havoc _wallet_s568;
    havoc beneficiary_s643;
    havoc __ret_0_hasEnded;
    havoc _cap_s719;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s643);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasEnded := hasEnded_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_CappedCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _cap_s719: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == CappedCrowdsale || DType[this] == MANACrowdsale;
    gas := gas - 53000;
    call CappedCrowdsale_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG, _cap_s719);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_CappedCrowdsale(this);
    }
}



implementation CorralChoice_FinalizableCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s402: Ref;
  var _startBlock_s568: int;
  var _endBlock_s568: int;
  var _rate_s568: int;
  var _wallet_s568: Ref;
  var beneficiary_s643: Ref;
  var __ret_0_hasEnded: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s402;
    havoc _startBlock_s568;
    havoc _endBlock_s568;
    havoc _rate_s568;
    havoc _wallet_s568;
    havoc beneficiary_s643;
    havoc __ret_0_hasEnded;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s643);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasEnded := hasEnded_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_FinalizableCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == FinalizableCrowdsale || DType[this] == MANACrowdsale;
    gas := gas - 53000;
    call FinalizableCrowdsale_FinalizableCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_FinalizableCrowdsale(this);
    }
}



implementation CorralChoice_WhitelistedCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s402: Ref;
  var _startBlock_s568: int;
  var _endBlock_s568: int;
  var _rate_s568: int;
  var _wallet_s568: Ref;
  var beneficiary_s643: Ref;
  var __ret_0_hasEnded: bool;
  var buyer_s841: Ref;
  var buyer_s853: Ref;
  var __ret_0_isWhitelisted: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s402;
    havoc _startBlock_s568;
    havoc _endBlock_s568;
    havoc _rate_s568;
    havoc _wallet_s568;
    havoc beneficiary_s643;
    havoc __ret_0_hasEnded;
    havoc buyer_s841;
    havoc buyer_s853;
    havoc __ret_0_isWhitelisted;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s643);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasEnded := hasEnded_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addToWhitelist_WhitelistedCrowdsale(this, msgsender_MSG, msgvalue_MSG, buyer_s841);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isWhitelisted := isWhitelisted_WhitelistedCrowdsale(this, msgsender_MSG, msgvalue_MSG, buyer_s853);
    }
}



implementation CorralEntry_WhitelistedCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == WhitelistedCrowdsale || DType[this] == MANACrowdsale;
    gas := gas - 53000;
    call WhitelistedCrowdsale_WhitelistedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_WhitelistedCrowdsale(this);
    }
}



implementation CorralChoice_ContinuousSale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var beneficiary_s985: Ref;
  var _rate_s942: int;
  var _wallet_s942: Ref;
  var _token_s942: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc beneficiary_s985;
    havoc _rate_s942;
    havoc _wallet_s942;
    havoc _token_s942;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        call buyTokens_ContinuousSale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s985);
    }
}



implementation CorralEntry_ContinuousSale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _rate_s942: int;
  var _wallet_s942: Ref;
  var _token_s942: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ContinuousSale || DType[this] == MANAContinuousSale;
    gas := gas - 53000;
    call ContinuousSale_ContinuousSale(this, msgsender_MSG, msgvalue_MSG, _rate_s942, _wallet_s942, _token_s942);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ContinuousSale(this);
    }
}



implementation CorralChoice_Pausable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s402: Ref;
  var __ret_0_pause: bool;
  var __ret_0_unpause: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s402;
    havoc __ret_0_pause;
    havoc __ret_0_unpause;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_pause := pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_unpause := unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_Pausable()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Pausable
       || DType[this] == PausableToken
       || DType[this] == MANAToken;
    gas := gas - 53000;
    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Pausable(this);
    }
}



implementation CorralChoice_PausableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s185: Ref;
  var balance_s185: int;
  var _to_s1189: Ref;
  var _value_s1189: int;
  var __ret_0_transfer: bool;
  var _owner_s360: Ref;
  var _spender_s360: Ref;
  var remaining_s360: int;
  var _from_s1210: Ref;
  var _to_s1210: Ref;
  var _value_s1210: int;
  var __ret_0_transferFrom: bool;
  var _spender_s344: Ref;
  var _value_s344: int;
  var __ret_0_approve: bool;
  var newOwner_s402: Ref;
  var __ret_0_pause: bool;
  var __ret_0_unpause: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s185;
    havoc balance_s185;
    havoc _to_s1189;
    havoc _value_s1189;
    havoc __ret_0_transfer;
    havoc _owner_s360;
    havoc _spender_s360;
    havoc remaining_s360;
    havoc _from_s1210;
    havoc _to_s1210;
    havoc _value_s1210;
    havoc __ret_0_transferFrom;
    havoc _spender_s344;
    havoc _value_s344;
    havoc __ret_0_approve;
    havoc newOwner_s402;
    havoc __ret_0_pause;
    havoc __ret_0_unpause;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s185 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s360 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s360, _spender_s360);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s344, _value_s344);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_pause := pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_unpause := unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_PausableToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == PausableToken || DType[this] == MANAToken;
    gas := gas - 53000;
    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PausableToken(this);
    }
}



implementation CorralChoice_BurnableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s185: Ref;
  var balance_s185: int;
  var _to_s173: Ref;
  var _value_s173: int;
  var __ret_0_transfer: bool;
  var _owner_s360: Ref;
  var _spender_s360: Ref;
  var remaining_s360: int;
  var _from_s299: Ref;
  var _to_s299: Ref;
  var _value_s299: int;
  var __ret_0_transferFrom: bool;
  var _spender_s344: Ref;
  var _value_s344: int;
  var __ret_0_approve: bool;
  var _value_s1260: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s185;
    havoc balance_s185;
    havoc _to_s173;
    havoc _value_s173;
    havoc __ret_0_transfer;
    havoc _owner_s360;
    havoc _spender_s360;
    havoc remaining_s360;
    havoc _from_s299;
    havoc _to_s299;
    havoc _value_s299;
    havoc __ret_0_transferFrom;
    havoc _spender_s344;
    havoc _value_s344;
    havoc __ret_0_approve;
    havoc _value_s1260;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s185 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s173, _value_s173);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s360 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s360, _spender_s360);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s299, _to_s299, _value_s299);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s344, _value_s344);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_BurnableToken(this, msgsender_MSG, msgvalue_MSG, _value_s1260);
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
    assume DType[this] == BurnableToken || DType[this] == MANAToken;
    gas := gas - 53000;
    call BurnableToken_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BurnableToken(this);
    }
}



implementation CorralChoice_MANAToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _owner_s185: Ref;
  var balance_s185: int;
  var _to_s1189: Ref;
  var _value_s1189: int;
  var __ret_0_transfer: bool;
  var _owner_s360: Ref;
  var _spender_s360: Ref;
  var remaining_s360: int;
  var _from_s1210: Ref;
  var _to_s1210: Ref;
  var _value_s1210: int;
  var __ret_0_transferFrom: bool;
  var _spender_s344: Ref;
  var _value_s344: int;
  var __ret_0_approve: bool;
  var newOwner_s402: Ref;
  var _to_s466: Ref;
  var _amount_s466: int;
  var __ret_0_mint: bool;
  var __ret_0_finishMinting: bool;
  var __ret_0_pause: bool;
  var __ret_0_unpause: bool;
  var _value_s1290: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s185;
    havoc balance_s185;
    havoc _to_s1189;
    havoc _value_s1189;
    havoc __ret_0_transfer;
    havoc _owner_s360;
    havoc _spender_s360;
    havoc remaining_s360;
    havoc _from_s1210;
    havoc _to_s1210;
    havoc _value_s1210;
    havoc __ret_0_transferFrom;
    havoc _spender_s344;
    havoc _value_s344;
    havoc __ret_0_approve;
    havoc newOwner_s402;
    havoc _to_s466;
    havoc _amount_s466;
    havoc __ret_0_mint;
    havoc __ret_0_finishMinting;
    havoc __ret_0_pause;
    havoc __ret_0_unpause;
    havoc _value_s1290;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s185 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s185);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1189, _value_s1189);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call remaining_s360 := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s360, _spender_s360);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s1210, _to_s1210, _value_s1210);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s344, _value_s344);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_mint := mint_MintableToken(this, msgsender_MSG, msgvalue_MSG, _to_s466, _amount_s466);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_finishMinting := finishMinting_MintableToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_pause := pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_unpause := unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_MANAToken(this, msgsender_MSG, msgvalue_MSG, _value_s1290);
    }
}



implementation CorralEntry_MANAToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MANAToken;
    gas := gas - 53000;
    call MANAToken_MANAToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MANAToken(this);
    }
}



implementation CorralChoice_MANAContinuousSale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s402: Ref;
  var beneficiary_s1383: Ref;
  var _rate_s942: int;
  var _wallet_s942: Ref;
  var _token_s942: Ref;
  var _rate_s1324: int;
  var _wallet_s1324: Ref;
  var _token_s1324: Ref;
  var _wallet_s1407: Ref;
  var _rate_s1423: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s402;
    havoc beneficiary_s1383;
    havoc _rate_s942;
    havoc _wallet_s942;
    havoc _token_s942;
    havoc _rate_s1324;
    havoc _wallet_s1324;
    havoc _token_s1324;
    havoc _wallet_s1407;
    havoc _rate_s1423;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        call buyTokens_MANAContinuousSale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1383);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call start_MANAContinuousSale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setWallet_MANAContinuousSale(this, msgsender_MSG, msgvalue_MSG, _wallet_s1407);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setRate_MANAContinuousSale(this, msgsender_MSG, msgvalue_MSG, _rate_s1423);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpauseToken_MANAContinuousSale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pauseToken_MANAContinuousSale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_MANAContinuousSale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _rate_s1324: int;
  var _wallet_s1324: Ref;
  var _token_s1324: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MANAContinuousSale;
    gas := gas - 53000;
    call MANAContinuousSale_MANAContinuousSale(this, msgsender_MSG, msgvalue_MSG, _rate_s1324, _wallet_s1324, _token_s1324);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MANAContinuousSale(this);
    }
}



implementation CorralChoice_MANACrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s402: Ref;
  var _startBlock_s568: int;
  var _endBlock_s568: int;
  var _rate_s568: int;
  var _wallet_s568: Ref;
  var beneficiary_s1808: Ref;
  var __ret_0_hasEnded: bool;
  var _cap_s719: int;
  var buyer_s841: Ref;
  var buyer_s853: Ref;
  var __ret_0_isWhitelisted: bool;
  var _wallet_s1838: Ref;
  var _startBlock_s1569: int;
  var _endBlock_s1569: int;
  var _initialRate_s1569: int;
  var _endRate_s1569: int;
  var _preferentialRate_s1569: int;
  var _wallet_s1569: Ref;
  var buyer_s1631: Ref;
  var rate_s1631: int;
  var rate_s1659: int;
  var rate_s1687: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s402;
    havoc _startBlock_s568;
    havoc _endBlock_s568;
    havoc _rate_s568;
    havoc _wallet_s568;
    havoc beneficiary_s1808;
    havoc __ret_0_hasEnded;
    havoc _cap_s719;
    havoc buyer_s841;
    havoc buyer_s853;
    havoc __ret_0_isWhitelisted;
    havoc _wallet_s1838;
    havoc _startBlock_s1569;
    havoc _endBlock_s1569;
    havoc _initialRate_s1569;
    havoc _endRate_s1569;
    havoc _preferentialRate_s1569;
    havoc _wallet_s1569;
    havoc buyer_s1631;
    havoc rate_s1631;
    havoc rate_s1659;
    havoc rate_s1687;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != MintableToken;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != CappedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != WhitelistedCrowdsale;
    assume DType[msgsender_MSG] != ContinuousSale;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != MANAToken;
    assume DType[msgsender_MSG] != MANAContinuousSale;
    assume DType[msgsender_MSG] != MANACrowdsale;
    Alloc[msgsender_MSG] := true;
    if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s402);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        call buyTokens_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s1808);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasEnded := hasEnded_CappedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addToWhitelist_WhitelistedCrowdsale(this, msgsender_MSG, msgvalue_MSG, buyer_s841);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isWhitelisted := isWhitelisted_WhitelistedCrowdsale(this, msgsender_MSG, msgvalue_MSG, buyer_s853);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setWallet_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG, _wallet_s1838);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpauseToken_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pauseToken_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setBuyerRate_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG, buyer_s1631, rate_s1631);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setInitialRate_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s1659);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call setEndRate_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG, rate_s1687);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call beginContinuousSale_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _startBlock_s1569: int;
  var _endBlock_s1569: int;
  var _initialRate_s1569: int;
  var _endRate_s1569: int;
  var _preferentialRate_s1569: int;
  var _wallet_s1569: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == MANACrowdsale;
    gas := gas - 53000;
    call MANACrowdsale_MANACrowdsale(this, msgsender_MSG, msgvalue_MSG, _startBlock_s1569, _endBlock_s1569, _initialRate_s1569, _endRate_s1569, _preferentialRate_s1569, _wallet_s1569);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_MANACrowdsale(this);
    }
}


