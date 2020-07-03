// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:ICOCrowdsale.bpl /pretty:1 /noVerify /noinfer /noTypecheck __SolToBoogieTest_out.bpl

// spec 02
// #LTLProperty: [](!finished(*, tokensSold_BaseCrowdsale[i_ICODeployer[this]] > 450000000000000000000000000))

// spec 03
// LTLProperty: [](!finished(*, old(sum_balances0[balances_PostDeliveryCrowdsale[i_ICODeployer[this]]]) > sum_balances0[balances_PostDeliveryCrowdsale[i_ICODeployer[this]]] && now <= deliveryTime_BaseCrowdsale[i_ICODeployer[this]] && now <= closingTime_TimedCrowdsale[i_ICODeployer[this]]))

// spec 04
// LTLFairness: [](!finished(BurnableToken.burn))
// LTLProperty: [](!finished(*, totalSupply__BasicToken[v_ICODeployer[this]] < 1000000000000000000000000000))

// spec 05
// LTLProperty: [](!finished(BaseCrowdsale.withdrawTokens, now <= closingTime_TimedCrowdsale[this] && now < deliveryTime_BaseCrowdsale[this]))

type Ref = int;

type ContractName = int;

var null: Ref;

var ERC20Basic: ContractName;

var ERC20: ContractName;

var SafeMath: ContractName;

var Crowdsale: ContractName;

var AllowanceCrowdsale: ContractName;

var TimedCrowdsale: ContractName;

var PostDeliveryCrowdsale: ContractName;

var BasicToken: ContractName;

var BurnableToken: ContractName;

var Ownable: ContractName;

var Whitelist: ContractName;

var BaseCrowdsale: ContractName;

var DetailedERC20: ContractName;

var StandardToken: ContractName;

var Pausable: ContractName;

var PausableToken: ContractName;

var VUToken: ContractName;

var ICOCrowdsale: ContractName;

var ICODeployer: ContractName;

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

var M_Ref_int_balances1: [Ref][Ref]int;

var sum_balances1: [Ref]int;

var M_Ref_bool_whitelist2: [Ref][Ref]bool;

var sum_whitelist2: [Ref]int;

var M_Ref_bool_authorized3: [Ref][Ref]bool;

var sum_authorized3: [Ref]int;

var M_Ref_int_allowed4: [Ref][Ref]int;

var M_Ref_Ref_allowed4: [Ref][Ref]Ref;

var sum_allowed4: [Ref]int;

var M_int_Ref: [Ref][int]Ref;

var sum: [Ref]int;

var M_int_int: [Ref][int]int;

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
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



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
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
    owner_s42: Ref, 
    spender_s42: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s53: Ref, 
    to_s53: Ref, 
    value_s53: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s62: Ref, 
    value_s62: int)
   returns (__ret_0_: bool);



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s91: int, b_s91: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s115: int, b_s115: int)
   returns (__ret_0_: int);
  modifies gas;



var {:access "this.token=token_Crowdsale[this]"} token_Crowdsale: [Ref]Ref;

var {:access "this.wallet=wallet_Crowdsale[this]"} wallet_Crowdsale: [Ref]Ref;

var {:access "this.rate=rate_Crowdsale[this]"} rate_Crowdsale: [Ref]int;

var {:access "this.weiRaised=weiRaised_Crowdsale[this]"} weiRaised_Crowdsale: [Ref]int;

procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref);
  modifies Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale;



procedure {:constructor} {:public} {:inline 1} Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale;



implementation Crowdsale_Crowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s183, _wallet_s183, _token_s183);
        assume revert || gas < 0;
    }
    else
    {
        call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _rate_s183, _wallet_s183, _token_s183);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, gas, weiRaised_Crowdsale, revert, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
        assume revert || gas < 0;
    }
    else
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s269: Ref, 
    _weiAmount_s269: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s277: Ref, 
    _weiAmount_s277: int);



procedure {:inline 1} _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s292: Ref, 
    _tokenAmount_s292: int);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1;



procedure {:inline 1} _processPurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s305: Ref, 
    _tokenAmount_s305: int);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s313: Ref, 
    _weiAmount_s313: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s325: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



var {:access "this.tokenWallet=tokenWallet_AllowanceCrowdsale[this]"} tokenWallet_AllowanceCrowdsale: [Ref]Ref;

procedure {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref);
  modifies Balance, tokenWallet_AllowanceCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, tokenWallet_AllowanceCrowdsale;



implementation AllowanceCrowdsale_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call AllowanceCrowdsale_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s362);
        assume revert || gas < 0;
    }
    else
    {
        call AllowanceCrowdsale_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s362);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} remainingTokens_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation remainingTokens_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := remainingTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := remainingTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _deliverTokens_AllowanceCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s392: Ref, 
    _tokenAmount_s392: int);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



var {:access "this.openingTime=openingTime_TimedCrowdsale[this]"} openingTime_TimedCrowdsale: [Ref]int;

var {:access "this.closingTime=closingTime_TimedCrowdsale[this]"} closingTime_TimedCrowdsale: [Ref]int;

procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int);
  modifies Balance, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale;



implementation TimedCrowdsale_TimedCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _openingTime_s444, _closingTime_s444);
        assume revert || gas < 0;
    }
    else
    {
        call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _openingTime_s444, _closingTime_s444);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas;



implementation hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s471: Ref, 
    _weiAmount_s471: int);
  modifies gas, revert;



procedure {:inline 1} PostDeliveryCrowdsale_PostDeliveryCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} PostDeliveryCrowdsale_PostDeliveryCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc;



implementation PostDeliveryCrowdsale_PostDeliveryCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call PostDeliveryCrowdsale_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call PostDeliveryCrowdsale_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.balances[i0]=M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][i0]"} {:sum "sum(this.balances)=sum_balances0[balances_PostDeliveryCrowdsale[this]]"} balances_PostDeliveryCrowdsale: [Ref]Ref;

procedure {:inline 1} _processPurchase_PostDeliveryCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s500: Ref, 
    _tokenAmount_s500: int);
  modifies gas, sum_balances0, M_Ref_int_balances0;



procedure {:public} {:inline 1} withdrawTokens_PostDeliveryCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



implementation withdrawTokens_PostDeliveryCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call withdrawTokens_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdrawTokens_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.balances[i0]=M_Ref_int_balances1[balances_BasicToken[this]][i0]"} {:sum "sum(this.balances)=sum_balances1[balances_BasicToken[this]]"} balances_BasicToken: [Ref]Ref;

var {:access "this.totalSupply_=totalSupply__BasicToken[this]"} totalSupply__BasicToken: [Ref]int;

procedure {:public} {:inline 1} totalSupply_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
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
    _to_s615: Ref, 
    _value_s615: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, sum_balances1, M_Ref_int_balances1;



implementation transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s615: Ref, 
    _value_s615: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s615, _value_s615);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s615, _value_s615);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s627: Ref)
   returns (balance_s627: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas;



implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s627: Ref)
   returns (balance_s627: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call balance_s627 := balanceOf_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s627);
        assume revert || gas < 0;
    }
    else
    {
        call balance_s627 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s627);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} BurnableToken_BurnableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} BurnableToken_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call BurnableToken_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call BurnableToken_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} burn_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s679: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken;



implementation burn_BurnableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s679: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call burn_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG, _value_s679);
        assume revert || gas < 0;
    }
    else
    {
        call burn_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG, _value_s679);
        assume !revert && gas >= 0;
    }
}



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, owner_Ownable;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s733: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s733: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Whitelist_Whitelist_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, Alloc;



procedure {:inline 1} Whitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, owner_Ownable, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, Alloc;



implementation Whitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call Whitelist_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Whitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.whitelist[i0]=M_Ref_bool_whitelist2[whitelist_Whitelist[this]][i0]"} {:sum "sum(this.whitelist)=sum_whitelist2[whitelist_Whitelist[this]]"} whitelist_Whitelist: [Ref]Ref;

var {:access "this.authorized[i0]=M_Ref_bool_authorized3[authorized_Whitelist[this]][i0]"} {:sum "sum(this.authorized)=sum_authorized3[authorized_Whitelist[this]]"} authorized_Whitelist: [Ref]Ref;

procedure {:public} {:inline 1} authorize_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s782: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_bool_authorized3;



implementation authorize_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s782: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call authorize_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s782);
        assume revert || gas < 0;
    }
    else
    {
        call authorize_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _admin_s782);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} reject_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s796: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_bool_authorized3;



implementation reject_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s796: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call reject_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _admin_s796);
        assume revert || gas < 0;
    }
    else
    {
        call reject_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _admin_s796);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addToWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s814: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_bool_whitelist2;



implementation addToWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s814: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call addToWhitelist_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s814);
        assume revert || gas < 0;
    }
    else
    {
        call addToWhitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s814);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} addManyToWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiaries_s850: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_bool_whitelist2;



implementation addManyToWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiaries_s850: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call addManyToWhitelist_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiaries_s850);
        assume revert || gas < 0;
    }
    else
    {
        call addManyToWhitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _beneficiaries_s850);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} removeFromWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s868: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_bool_whitelist2;



implementation removeFromWhitelist_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s868: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call removeFromWhitelist_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s868);
        assume revert || gas < 0;
    }
    else
    {
        call removeFromWhitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s868);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} isWhitelisted_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s880: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas;



implementation isWhitelisted_Whitelist(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s880: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := isWhitelisted_Whitelist__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s880);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := isWhitelisted_Whitelist__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s880);
        assume !revert && gas >= 0;
    }
}



var {:access "this.whitelist=whitelist_BaseCrowdsale[this]"} whitelist_BaseCrowdsale: [Ref]Ref;

var {:access "this.tokensSold=tokensSold_BaseCrowdsale[this]"} tokensSold_BaseCrowdsale: [Ref]int;

var {:access "this.deliveryTime=deliveryTime_BaseCrowdsale[this]"} deliveryTime_BaseCrowdsale: [Ref]int;

var {:access "this.limit=limit_BaseCrowdsale[this]"} limit_BaseCrowdsale: [Ref]int;

procedure {:inline 1} BaseCrowdsale_BaseCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int);
  modifies Balance, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, revert, whitelist_BaseCrowdsale;



procedure {:constructor} {:public} {:inline 1} BaseCrowdsale_BaseCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale;



implementation BaseCrowdsale_BaseCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call BaseCrowdsale_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _token_s988, _whitelist_s988, _tokenWallet_s988, _wallet_s988, _rate_s988, _openingTime_s988, _closingTime_s988, _deliveryTime_s988, _limit_s988);
        assume revert || gas < 0;
    }
    else
    {
        call BaseCrowdsale_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _token_s988, _whitelist_s988, _tokenWallet_s988, _wallet_s988, _rate_s988, _openingTime_s988, _closingTime_s988, _deliveryTime_s988, _limit_s988);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawTokens_BaseCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



implementation withdrawTokens_BaseCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call withdrawTokens_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call withdrawTokens_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _init_BaseCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _preValidatePurchase_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1025: Ref, 
    _weiAmount_s1025: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1053: Ref, 
    _tokenAmount_s1053: int);
  modifies gas, tokensSold_BaseCrowdsale, revert, sum_balances0, M_Ref_int_balances0;



var {:access "this.name=name_DetailedERC20[this]"} name_DetailedERC20: [Ref]int;

var {:access "this.symbol=symbol_DetailedERC20[this]"} symbol_DetailedERC20: [Ref]int;

var {:access "this.decimals=decimals_DetailedERC20[this]"} decimals_DetailedERC20: [Ref]int;

procedure {:inline 1} DetailedERC20_DetailedERC20_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int);
  modifies Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



procedure {:constructor} {:public} {:inline 1} DetailedERC20_DetailedERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



implementation DetailedERC20_DetailedERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call DetailedERC20_DetailedERC20__fail(this, msgsender_MSG, msgvalue_MSG, _name_s1084, _symbol_s1084, _decimals_s1084);
        assume revert || gas < 0;
    }
    else
    {
        call DetailedERC20_DetailedERC20__success(this, msgsender_MSG, msgvalue_MSG, _name_s1084, _symbol_s1084, _decimals_s1084);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call StandardToken_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



var {:access "this.allowed[i0][i1]=M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][i0]][i1]"} {:sum "sum(this.allowed)=sum_allowed4[allowed_StandardToken[this]]"} allowed_StandardToken: [Ref]Ref;

procedure {:public} {:inline 1} transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1181: Ref, 
    _to_s1181: Ref, 
    _value_s1181: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1181: Ref, 
    _to_s1181: Ref, 
    _value_s1181: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1181, _to_s1181, _value_s1181);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1181, _to_s1181, _value_s1181);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1209: Ref, 
    _value_s1209: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1209: Ref, 
    _value_s1209: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1209, _value_s1209);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1209, _value_s1209);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1225: Ref, 
    _spender_s1225: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1225: Ref, 
    _spender_s1225: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s1225, _spender_s1225);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s1225, _spender_s1225);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1266: Ref, 
    _addedValue_s1266: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1266: Ref, 
    _addedValue_s1266: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1266, _addedValue_s1266);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1266, _addedValue_s1266);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1326: Ref, 
    _subtractedValue_s1326: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1326: Ref, 
    _subtractedValue_s1326: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1326, _subtractedValue_s1326);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1326, _subtractedValue_s1326);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, paused_Pausable;



procedure {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, owner_Ownable, paused_Pausable;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
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

procedure {:public} {:inline 1} pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, paused_Pausable;



implementation pause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call pause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call pause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, paused_Pausable;



implementation unpause_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call unpause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call unpause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable;



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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
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
    _to_s1406: Ref, 
    _value_s1406: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, sum_balances1, M_Ref_int_balances1;



implementation transfer_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1406: Ref, 
    _value_s1406: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1427: Ref, 
    _to_s1427: Ref, 
    _value_s1427: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



implementation transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1427: Ref, 
    _to_s1427: Ref, 
    _value_s1427: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := transferFrom_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1445: Ref, 
    _value_s1445: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1445: Ref, 
    _value_s1445: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := approve_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1463: Ref, 
    _addedValue_s1463: int)
   returns (success_s1463: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1463: Ref, 
    _addedValue_s1463: int)
   returns (success_s1463: bool)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call success_s1463 := increaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
        assume revert || gas < 0;
    }
    else
    {
        call success_s1463 := increaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1481: Ref, 
    _subtractedValue_s1481: int)
   returns (success_s1481: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1481: Ref, 
    _subtractedValue_s1481: int)
   returns (success_s1481: bool)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call success_s1481 := decreaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
        assume revert || gas < 0;
    }
    else
    {
        call success_s1481 := decreaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
        assume !revert && gas >= 0;
    }
}



var {:access "this.INITIAL_SUPPLY=INITIAL_SUPPLY_VUToken[this]"} INITIAL_SUPPLY_VUToken: [Ref]int;

procedure {:inline 1} VUToken_VUToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, INITIAL_SUPPLY_VUToken, totalSupply__BasicToken, sum_balances1, M_Ref_int_balances1;



procedure {:constructor} {:public} {:inline 1} VUToken_VUToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken;



implementation VUToken_VUToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call VUToken_VUToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call VUToken_VUToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} massTransfer_VUToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s1574: Ref, 
    _amounts_s1574: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, gas, sum_balances1, M_Ref_int_balances1;



implementation massTransfer_VUToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s1574: Ref, 
    _amounts_s1574: Ref)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call __ret_0_ := massTransfer_VUToken__fail(this, msgsender_MSG, msgvalue_MSG, _recipients_s1574, _amounts_s1574);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := massTransfer_VUToken__success(this, msgsender_MSG, msgvalue_MSG, _recipients_s1574, _amounts_s1574);
        assume !revert && gas >= 0;
    }
}



var {:access "this.RATE=RATE_ICOCrowdsale[this]"} RATE_ICOCrowdsale: [Ref]int;

var {:access "this.MAX_LIMIT=MAX_LIMIT_ICOCrowdsale[this]"} MAX_LIMIT_ICOCrowdsale: [Ref]int;

procedure {:inline 1} ICOCrowdsale_ICOCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int);
  modifies Balance, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale;



procedure {:constructor} {:public} {:inline 1} ICOCrowdsale_ICOCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale;



implementation ICOCrowdsale_ICOCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call ICOCrowdsale_ICOCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _token_s1622, _whitelist_s1622, _tokenWallet_s1622, _wallet_s1622, _openingTime_s1622, _closingTime_s1622, _deliveryTime_s1622);
        assume revert || gas < 0;
    }
    else
    {
        call ICOCrowdsale_ICOCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _token_s1622, _whitelist_s1622, _tokenWallet_s1622, _wallet_s1622, _openingTime_s1622, _closingTime_s1622, _deliveryTime_s1622);
        assume !revert && gas >= 0;
    }
}



var {:access "this.v=v_ICODeployer[this]"} v_ICODeployer: [Ref]Ref;

var {:access "this.w=w_ICODeployer[this]"} w_ICODeployer: [Ref]Ref;

var {:access "this.i=i_ICODeployer[this]"} i_ICODeployer: [Ref]Ref;

procedure {:inline 1} ICODeployer_ICODeployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, v_ICODeployer, w_ICODeployer, i_ICODeployer, Alloc, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale;



procedure {:constructor} {:public} {:inline 1} ICODeployer_ICODeployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, v_ICODeployer, w_ICODeployer, i_ICODeployer, Alloc, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale;



implementation ICODeployer_ICODeployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
        call ICODeployer_ICODeployer__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call ICODeployer_ICODeployer__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, weiRaised_Crowdsale, revert, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, revert, gas, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyAuthorized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyWhitelisted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s909: Ref);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure CorralChoice_ERC20Basic(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20Basic();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_Crowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralEntry_Crowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, Balance, weiRaised_Crowdsale, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralChoice_AllowanceCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_AllowanceCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, Balance, weiRaised_Crowdsale, tokenWallet_AllowanceCrowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralChoice_TimedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralEntry_TimedCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, Balance, weiRaised_Crowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralChoice_PostDeliveryCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, weiRaised_Crowdsale, sum_balances0, M_Ref_int_balances0, tokensSold_BaseCrowdsale, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_PostDeliveryCrowdsale();
  modifies gas, Alloc, Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure CorralChoice_BurnableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken;



procedure CorralEntry_BurnableToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, owner_Ownable, Balance;



procedure CorralChoice_Whitelist(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2;



procedure CorralEntry_Whitelist();
  modifies gas, Alloc, Balance, owner_Ownable, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure CorralChoice_BaseCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_BaseCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, Balance, weiRaised_Crowdsale, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralChoice_DetailedERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_DetailedERC20();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, sum_allowed4;



procedure CorralChoice_Pausable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, owner_Ownable, paused_Pausable;



procedure CorralEntry_Pausable();
  modifies gas, Alloc, Balance, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure CorralChoice_PausableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, owner_Ownable, paused_Pausable, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_PausableToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, sum_allowed4;



procedure CorralChoice_VUToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken, owner_Ownable, paused_Pausable;



procedure CorralEntry_VUToken();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken, owner_Ownable, paused_Pausable, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, allowed_StandardToken, INITIAL_SUPPLY_VUToken;



procedure CorralChoice_ICOCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, weiRaised_Crowdsale, owner_Ownable, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_ICOCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, Balance, weiRaised_Crowdsale, owner_Ownable, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralChoice_ICODeployer(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, Balance, weiRaised_Crowdsale, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken, paused_Pausable, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, now, Balance, weiRaised_Crowdsale, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken, paused_Pausable, v_ICODeployer, w_ICODeployer, i_ICODeployer, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, allowed_StandardToken, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, authorized_Whitelist, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_balances0: [Ref][Ref]int;

var __tmp__sum_balances0: [Ref]int;

var __tmp__M_Ref_int_balances1: [Ref][Ref]int;

var __tmp__sum_balances1: [Ref]int;

var __tmp__M_Ref_bool_whitelist2: [Ref][Ref]bool;

var __tmp__sum_whitelist2: [Ref]int;

var __tmp__M_Ref_bool_authorized3: [Ref][Ref]bool;

var __tmp__sum_authorized3: [Ref]int;

var __tmp__M_Ref_int_allowed4: [Ref][Ref]int;

var __tmp__M_Ref_Ref_allowed4: [Ref][Ref]Ref;

var __tmp__sum_allowed4: [Ref]int;

var __tmp__M_int_Ref: [Ref][int]Ref;

var __tmp__sum: [Ref]int;

var __tmp__M_int_int: [Ref][int]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__token_Crowdsale: [Ref]Ref;

var __tmp__wallet_Crowdsale: [Ref]Ref;

var __tmp__rate_Crowdsale: [Ref]int;

var __tmp__weiRaised_Crowdsale: [Ref]int;

var __tmp__tokenWallet_AllowanceCrowdsale: [Ref]Ref;

var __tmp__openingTime_TimedCrowdsale: [Ref]int;

var __tmp__closingTime_TimedCrowdsale: [Ref]int;

var __tmp__balances_PostDeliveryCrowdsale: [Ref]Ref;

var __tmp__balances_BasicToken: [Ref]Ref;

var __tmp__totalSupply__BasicToken: [Ref]int;

var __tmp__owner_Ownable: [Ref]Ref;

var __tmp__whitelist_Whitelist: [Ref]Ref;

var __tmp__authorized_Whitelist: [Ref]Ref;

var __tmp__whitelist_BaseCrowdsale: [Ref]Ref;

var __tmp__tokensSold_BaseCrowdsale: [Ref]int;

var __tmp__deliveryTime_BaseCrowdsale: [Ref]int;

var __tmp__limit_BaseCrowdsale: [Ref]int;

var __tmp__name_DetailedERC20: [Ref]int;

var __tmp__symbol_DetailedERC20: [Ref]int;

var __tmp__decimals_DetailedERC20: [Ref]int;

var __tmp__allowed_StandardToken: [Ref]Ref;

var __tmp__paused_Pausable: [Ref]bool;

var __tmp__INITIAL_SUPPLY_VUToken: [Ref]int;

var __tmp__RATE_ICOCrowdsale: [Ref]int;

var __tmp__MAX_LIMIT_ICOCrowdsale: [Ref]int;

var __tmp__v_ICODeployer: [Ref]Ref;

var __tmp__w_ICODeployer: [Ref]Ref;

var __tmp__i_ICODeployer: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} ERC20_ERC20__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s91: int, b_s91: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s115: int, b_s115: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref);
  modifies __tmp__Balance, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref);
  modifies Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale;



procedure {:constructor} {:inline 1} Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref);
  modifies __tmp__Balance, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale;



procedure {:inline 1} FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, gas, __tmp__weiRaised_Crowdsale, revert, __tmp__tokensSold_BaseCrowdsale, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref);
  modifies Balance, gas, weiRaised_Crowdsale, revert, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref);
  modifies __tmp__Balance, gas, __tmp__weiRaised_Crowdsale, revert, __tmp__tokensSold_BaseCrowdsale, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure {:inline 1} _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s269: Ref, 
    _weiAmount_s269: int);
  modifies gas, revert;



procedure {:inline 1} _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s277: Ref, 
    _weiAmount_s277: int);



procedure {:inline 1} _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s292: Ref, 
    _tokenAmount_s292: int);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1;



procedure {:inline 1} _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s305: Ref, 
    _tokenAmount_s305: int);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} _updatePurchasingState_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s313: Ref, 
    _weiAmount_s313: int);



procedure {:inline 1} _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s325: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref);
  modifies __tmp__Balance, __tmp__tokenWallet_AllowanceCrowdsale, revert;



procedure {:constructor} {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref);
  modifies Balance, tokenWallet_AllowanceCrowdsale, revert;



procedure {:constructor} {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref);
  modifies __tmp__Balance, __tmp__tokenWallet_AllowanceCrowdsale, revert;



procedure {:inline 1} remainingTokens_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} remainingTokens_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} _deliverTokens_AllowanceCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s392: Ref, 
    _tokenAmount_s392: int);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int);
  modifies __tmp__Balance, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int);
  modifies Balance, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, revert;



procedure {:constructor} {:inline 1} TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int);
  modifies __tmp__Balance, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, revert;



procedure {:inline 1} hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} _preValidatePurchase_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s471: Ref, 
    _weiAmount_s471: int);
  modifies gas, revert;



procedure {:inline 1} PostDeliveryCrowdsale_PostDeliveryCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} PostDeliveryCrowdsale_PostDeliveryCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} PostDeliveryCrowdsale_PostDeliveryCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc;



procedure {:inline 1} _processPurchase_PostDeliveryCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s500: Ref, 
    _tokenAmount_s500: int);
  modifies gas, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} withdrawTokens_PostDeliveryCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



procedure {:inline 1} withdrawTokens_PostDeliveryCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} BasicToken_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BasicToken_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} totalSupply_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} totalSupply_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s615: Ref, 
    _value_s615: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1;



procedure {:inline 1} transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s615: Ref, 
    _value_s615: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1;



procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s627: Ref)
   returns (balance_s627: int);
  modifies gas;



procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s627: Ref)
   returns (balance_s627: int);
  modifies gas;



procedure {:inline 1} BurnableToken_BurnableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} BurnableToken_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc;



procedure {:inline 1} BurnableToken_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__Alloc;



procedure {:inline 1} burn_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s679: int);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken;



procedure {:inline 1} burn_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s679: int);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__totalSupply__BasicToken;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s733: Ref);
  modifies gas, revert, owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s733: Ref);
  modifies gas, revert, __tmp__owner_Ownable;



procedure {:inline 1} Whitelist_Whitelist_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__whitelist_Whitelist, __tmp__M_Ref_bool_whitelist2, __tmp__authorized_Whitelist, __tmp__M_Ref_bool_authorized3, __tmp__Alloc;



procedure {:inline 1} Whitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, Alloc;



procedure {:inline 1} Whitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__M_Ref_bool_whitelist2, __tmp__authorized_Whitelist, __tmp__M_Ref_bool_authorized3, __tmp__Alloc;



procedure {:inline 1} authorize_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s782: Ref);
  modifies gas, M_Ref_bool_authorized3, revert;



procedure {:inline 1} authorize_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s782: Ref);
  modifies gas, __tmp__M_Ref_bool_authorized3, revert;



procedure {:inline 1} reject_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s796: Ref);
  modifies gas, M_Ref_bool_authorized3, revert;



procedure {:inline 1} reject_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s796: Ref);
  modifies gas, __tmp__M_Ref_bool_authorized3, revert;



procedure {:inline 1} addToWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s814: Ref);
  modifies gas, M_Ref_bool_whitelist2, revert;



procedure {:inline 1} addToWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s814: Ref);
  modifies gas, __tmp__M_Ref_bool_whitelist2, revert;



procedure {:inline 1} addManyToWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiaries_s850: Ref);
  modifies gas, M_Ref_bool_whitelist2, revert;



procedure {:inline 1} addManyToWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiaries_s850: Ref);
  modifies gas, __tmp__M_Ref_bool_whitelist2, revert;



procedure {:inline 1} removeFromWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s868: Ref);
  modifies gas, M_Ref_bool_whitelist2, revert;



procedure {:inline 1} removeFromWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s868: Ref);
  modifies gas, __tmp__M_Ref_bool_whitelist2, revert;



procedure {:inline 1} isWhitelisted_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s880: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} isWhitelisted_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s880: Ref)
   returns (__ret_0_: bool);
  modifies gas;



procedure {:inline 1} BaseCrowdsale_BaseCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int);
  modifies __tmp__Balance, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, revert, __tmp__whitelist_BaseCrowdsale;



procedure {:constructor} {:inline 1} BaseCrowdsale_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int);
  modifies Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale;



procedure {:constructor} {:inline 1} BaseCrowdsale_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int);
  modifies __tmp__Balance, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__owner_Ownable, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale;



procedure {:inline 1} withdrawTokens_BaseCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



procedure {:inline 1} withdrawTokens_BaseCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} _init_BaseCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _preValidatePurchase_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1025: Ref, 
    _weiAmount_s1025: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1053: Ref, 
    _tokenAmount_s1053: int);
  modifies gas, __tmp__tokensSold_BaseCrowdsale, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} DetailedERC20_DetailedERC20_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int);
  modifies __tmp__Balance, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20;



procedure {:constructor} {:inline 1} DetailedERC20_DetailedERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int);
  modifies Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



procedure {:constructor} {:inline 1} DetailedERC20_DetailedERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int);
  modifies __tmp__Balance, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20;



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__Alloc;



procedure {:inline 1} StandardToken_StandardToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4;



procedure {:inline 1} StandardToken_StandardToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4;



procedure {:inline 1} transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1181: Ref, 
    _to_s1181: Ref, 
    _value_s1181: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1181: Ref, 
    _to_s1181: Ref, 
    _value_s1181: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1209: Ref, 
    _value_s1209: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1209: Ref, 
    _value_s1209: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1225: Ref, 
    _spender_s1225: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1225: Ref, 
    _spender_s1225: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1266: Ref, 
    _addedValue_s1266: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1266: Ref, 
    _addedValue_s1266: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1326: Ref, 
    _subtractedValue_s1326: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1326: Ref, 
    _subtractedValue_s1326: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__paused_Pausable;



procedure {:inline 1} Pausable_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable, paused_Pausable;



procedure {:inline 1} Pausable_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable, __tmp__paused_Pausable;



procedure {:inline 1} pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, paused_Pausable, revert;



procedure {:inline 1} pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__paused_Pausable, revert;



procedure {:inline 1} unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, paused_Pausable, revert;



procedure {:inline 1} unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, __tmp__paused_Pausable, revert;



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable;



procedure {:inline 1} PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__owner_Ownable, __tmp__paused_Pausable;



procedure {:inline 1} transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1406: Ref, 
    _value_s1406: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1;



procedure {:inline 1} transfer_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1406: Ref, 
    _value_s1406: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1;



procedure {:inline 1} transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1427: Ref, 
    _to_s1427: Ref, 
    _value_s1427: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



procedure {:inline 1} transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1427: Ref, 
    _to_s1427: Ref, 
    _value_s1427: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1445: Ref, 
    _value_s1445: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1445: Ref, 
    _value_s1445: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1463: Ref, 
    _addedValue_s1463: int)
   returns (success_s1463: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1463: Ref, 
    _addedValue_s1463: int)
   returns (success_s1463: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1481: Ref, 
    _subtractedValue_s1481: int)
   returns (success_s1481: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1481: Ref, 
    _subtractedValue_s1481: int)
   returns (success_s1481: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} VUToken_VUToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__INITIAL_SUPPLY_VUToken, __tmp__totalSupply__BasicToken, __tmp__sum_balances1, __tmp__M_Ref_int_balances1;



procedure {:constructor} {:inline 1} VUToken_VUToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken;



procedure {:constructor} {:inline 1} VUToken_VUToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken;



procedure {:inline 1} massTransfer_VUToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s1574: Ref, 
    _amounts_s1574: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1;



procedure {:inline 1} massTransfer_VUToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s1574: Ref, 
    _amounts_s1574: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1;



procedure {:inline 1} ICOCrowdsale_ICOCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int);
  modifies __tmp__Balance, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale;



procedure {:constructor} {:inline 1} ICOCrowdsale_ICOCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int);
  modifies Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale;



procedure {:constructor} {:inline 1} ICOCrowdsale_ICOCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int);
  modifies __tmp__Balance, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__owner_Ownable, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale;



procedure {:inline 1} ICODeployer_ICODeployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, __tmp__Alloc, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__whitelist_Whitelist, __tmp__M_Ref_bool_whitelist2, __tmp__authorized_Whitelist, __tmp__M_Ref_bool_authorized3, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale;



procedure {:constructor} {:inline 1} ICODeployer_ICODeployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, v_ICODeployer, w_ICODeployer, i_ICODeployer, Alloc, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, RATE_ICOCrowdsale, MAX_LIMIT_ICOCrowdsale;



procedure {:constructor} {:inline 1} ICODeployer_ICODeployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, __tmp__Alloc, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__whitelist_Whitelist, __tmp__M_Ref_bool_whitelist2, __tmp__authorized_Whitelist, __tmp__M_Ref_bool_authorized3, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp__weiRaised_Crowdsale, revert, __tmp__tokensSold_BaseCrowdsale, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__RATE_ICOCrowdsale, __tmp__MAX_LIMIT_ICOCrowdsale, __tmp__v_ICODeployer, __tmp__w_ICODeployer, __tmp__i_ICODeployer, revert, gas;



procedure {:inline 1} onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyAuthorized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} onlyWhitelisted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s909: Ref);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
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



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s91: int, b_s91: int)
   returns (__ret_0_: int)
{
    gas := gas - 15;
    gas := gas - 130;
    assume b_s91 >= 0;
    assume a_s91 >= 0;
    gas := gas - 70;
    assume a_s91 >= 0;
    assume b_s91 >= 0;
    assume a_s91 - b_s91 >= 0;
    __ret_0_ := a_s91 - b_s91;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s91: int, b_s91: int)
   returns (__ret_0_: int)
{
    gas := gas - 15;
    gas := gas - 130;
    assume b_s91 >= 0;
    assume a_s91 >= 0;
    assert b_s91 <= a_s91;
    gas := gas - 70;
    assume a_s91 >= 0;
    assume b_s91 >= 0;
    assume a_s91 - b_s91 >= 0;
    __ret_0_ := a_s91 - b_s91;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s115: int, b_s115: int)
   returns (__ret_0_: int)
{
  var c_s114: int;

    gas := gas - 24;
    gas := gas - 136;
    assume c_s114 >= 0;
    assume a_s115 >= 0;
    assume b_s115 >= 0;
    assume a_s115 + b_s115 >= 0;
    c_s114 := a_s115 + b_s115;
    gas := gas - 208;
    assume c_s114 >= 0;
    assume a_s115 >= 0;
    gas := gas - 80;
    assume c_s114 >= 0;
    __ret_0_ := c_s114;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s115: int, b_s115: int)
   returns (__ret_0_: int)
{
  var c_s114: int;

    gas := gas - 24;
    gas := gas - 136;
    assume c_s114 >= 0;
    assume a_s115 >= 0;
    assume b_s115 >= 0;
    assume a_s115 + b_s115 >= 0;
    c_s114 := a_s115 + b_s115;
    gas := gas - 208;
    assume c_s114 >= 0;
    assume a_s115 >= 0;
    assert c_s114 >= a_s115;
    gas := gas - 80;
    assume c_s114 >= 0;
    __ret_0_ := c_s114;
    return;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__wallet_Crowdsale[this] := null;
    __tmp__rate_Crowdsale[this] := 0;
    __tmp__weiRaised_Crowdsale[this] := 0;
    assume _rate_s183 >= 0;
    if (!(_rate_s183 > 0))
    {
        revert := true;
        return;
    }

    __var_1 := null;
    if (!(_wallet_s183 != null))
    {
        revert := true;
        return;
    }

    __var_2 := _token_s183;
    __var_3 := null;
    if (!(_token_s183 != null))
    {
        revert := true;
        return;
    }

    assume __tmp__rate_Crowdsale[this] >= 0;
    assume _rate_s183 >= 0;
    __tmp__rate_Crowdsale[this] := _rate_s183;
    __tmp__wallet_Crowdsale[this] := _wallet_s183;
    __tmp__token_Crowdsale[this] := _token_s183;
}



implementation Crowdsale_Crowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    wallet_Crowdsale[this] := null;
    rate_Crowdsale[this] := 0;
    weiRaised_Crowdsale[this] := 0;
    assume _rate_s183 >= 0;
    if (!(_rate_s183 > 0))
    {
        revert := true;
        return;
    }

    __var_1 := null;
    if (!(_wallet_s183 != null))
    {
        revert := true;
        return;
    }

    __var_2 := _token_s183;
    __var_3 := null;
    if (!(_token_s183 != null))
    {
        revert := true;
        return;
    }

    assume rate_Crowdsale[this] >= 0;
    assume _rate_s183 >= 0;
    rate_Crowdsale[this] := _rate_s183;
    wallet_Crowdsale[this] := _wallet_s183;
    token_Crowdsale[this] := _token_s183;
}



implementation Crowdsale_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

    call Crowdsale_Crowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s183, _wallet_s183, _token_s183);
    if (revert)
    {
        return;
    }
}



implementation Crowdsale_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _rate_s183: int, 
    _wallet_s183: Ref, 
    _token_s183: Ref)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;

    call Crowdsale_Crowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _rate_s183, _wallet_s183, _token_s183);
    if (revert)
    {
        return;
    }
}



implementation FallbackMethod_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 18;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
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
    gas := gas - 18;
    if (DType[this] == ICOCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call buyTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
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



implementation buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref)
{
  var weiAmount_s246: int;
  var tokens_s246: int;
  var __var_4: int;

    assume __tmp__Balance[msgsender_MSG] >= msgvalue_MSG;
    __tmp__Balance[msgsender_MSG] := __tmp__Balance[msgsender_MSG] - msgvalue_MSG;
    __tmp__Balance[this] := __tmp__Balance[this] + msgvalue_MSG;
    gas := gas - 30;
    assume weiAmount_s246 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s246 := msgvalue_MSG;
    gas := gas - 30;
    assume weiAmount_s246 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _preValidatePurchase_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 45;
    assume tokens_s246 >= 0;
    assume weiAmount_s246 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s246 := tokens_s246;
    gas := gas - 60741;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume __tmp__weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s246 >= 0;
    call __var_4 := add_SafeMath__fail(this, this, 0, __tmp__weiRaised_Crowdsale[this], weiAmount_s246);
    if (revert)
    {
        return;
    }

    __tmp__weiRaised_Crowdsale[this] := __var_4;
    assume __var_4 >= 0;
    gas := gas - 30;
    assume tokens_s246 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _processPurchase_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _processPurchase_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _processPurchase_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
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
    assume weiAmount_s246 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 12;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _forwardFunds_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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
    assume weiAmount_s246 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
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



implementation buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref)
{
  var weiAmount_s246: int;
  var tokens_s246: int;
  var __var_4: int;

    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    gas := gas - 30;
    assume weiAmount_s246 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s246 := msgvalue_MSG;
    gas := gas - 30;
    assume weiAmount_s246 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _preValidatePurchase_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 45;
    assume tokens_s246 >= 0;
    assume weiAmount_s246 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call tokens_s246 := _getTokenAmount_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    tokens_s246 := tokens_s246;
    gas := gas - 60741;
    assume weiRaised_Crowdsale[this] >= 0;
    assume weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s246 >= 0;
    call __var_4 := add_SafeMath__success(this, this, 0, weiRaised_Crowdsale[this], weiAmount_s246);
    if (revert)
    {
        return;
    }

    weiRaised_Crowdsale[this] := __var_4;
    assume __var_4 >= 0;
    gas := gas - 30;
    assume tokens_s246 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _processPurchase_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _processPurchase_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _processPurchase_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _processPurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, tokens_s246);
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
    gas := gas - 30;
    assume weiAmount_s246 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _updatePurchasingState_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    gas := gas - 12;
    if (DType[this] == ICOCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _forwardFunds_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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
    assume weiAmount_s246 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _postValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247, weiAmount_s246);
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



implementation _preValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s269: Ref, 
    _weiAmount_s269: int)
{
  var __var_5: Ref;

    gas := gas - 132;
    __var_5 := null;
    if (!(_beneficiary_s269 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 96;
    assume _weiAmount_s269 >= 0;
    if (!(_weiAmount_s269 != 0))
    {
        revert := true;
        return;
    }
}



implementation _preValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s269: Ref, 
    _weiAmount_s269: int)
{
  var __var_5: Ref;

    gas := gas - 132;
    __var_5 := null;
    if (!(_beneficiary_s269 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 96;
    assume _weiAmount_s269 >= 0;
    if (!(_weiAmount_s269 != 0))
    {
        revert := true;
        return;
    }
}



implementation _postValidatePurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s277: Ref, 
    _weiAmount_s277: int)
{
}



implementation _postValidatePurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s277: Ref, 
    _weiAmount_s277: int)
{
}



implementation _deliverTokens_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s292: Ref, 
    _tokenAmount_s292: int)
{
  var __var_6: bool;
  var __var_7: int;

    gas := gas - 37458;
    assume _tokenAmount_s292 >= 0;
    if (__tmp__DType[__tmp__token_Crowdsale[this]] == VUToken)
    {
        call __var_6 := transfer_PausableToken__fail(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == PausableToken)
    {
        call __var_6 := transfer_PausableToken__fail(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == StandardToken)
    {
        call __var_6 := transfer_BasicToken__fail(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == DetailedERC20)
    {
        call __var_6 := transfer_ERC20Basic(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == BurnableToken)
    {
        call __var_6 := transfer_BasicToken__fail(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == BasicToken)
    {
        call __var_6 := transfer_BasicToken__fail(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == ERC20)
    {
        call __var_6 := transfer_ERC20Basic(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == ERC20Basic)
    {
        call __var_6 := transfer_ERC20Basic(__tmp__token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
    }
    else
    {
        assume false;
    }
}



implementation _deliverTokens_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s292: Ref, 
    _tokenAmount_s292: int)
{
  var __var_6: bool;
  var __var_7: int;

    gas := gas - 37458;
    assume _tokenAmount_s292 >= 0;
    if (DType[token_Crowdsale[this]] == VUToken)
    {
        call __var_6 := transfer_PausableToken__success(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == PausableToken)
    {
        call __var_6 := transfer_PausableToken__success(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == StandardToken)
    {
        call __var_6 := transfer_BasicToken__success(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == DetailedERC20)
    {
        call __var_6 := transfer_ERC20Basic(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
    }
    else if (DType[token_Crowdsale[this]] == BurnableToken)
    {
        call __var_6 := transfer_BasicToken__success(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == BasicToken)
    {
        call __var_6 := transfer_BasicToken__success(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == ERC20)
    {
        call __var_6 := transfer_ERC20Basic(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
    }
    else if (DType[token_Crowdsale[this]] == ERC20Basic)
    {
        call __var_6 := transfer_ERC20Basic(token_Crowdsale[this], this, __var_7, _beneficiary_s292, _tokenAmount_s292);
    }
    else
    {
        assume false;
    }
}



implementation _processPurchase_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s305: Ref, 
    _tokenAmount_s305: int)
{
    gas := gas - 10;
    assume _tokenAmount_s305 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == AllowanceCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
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



implementation _processPurchase_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s305: Ref, 
    _tokenAmount_s305: int)
{
    gas := gas - 10;
    assume _tokenAmount_s305 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == AllowanceCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == Crowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s305, _tokenAmount_s305);
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



implementation _updatePurchasingState_Crowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s313: Ref, 
    _weiAmount_s313: int)
{
}



implementation _updatePurchasingState_Crowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s313: Ref, 
    _weiAmount_s313: int)
{
}



implementation _getTokenAmount_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s325: int)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 48;
    assume _weiAmount_s325 >= 0;
    assume _weiAmount_s325 * 6000 >= 0;
    __ret_0_ := _weiAmount_s325 * 6000;
    return;
}



implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s325: int)
   returns (__ret_0_: int)
{
    gas := gas - 9;
    gas := gas - 48;
    assume _weiAmount_s325 >= 0;
    assume _weiAmount_s325 * 6000 >= 0;
    __ret_0_ := _weiAmount_s325 * 6000;
    return;
}



implementation _forwardFunds_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_8: int;
  var __var_9: bool;

    gas := gas - 108084;
    __var_8 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_8 := __var_8 - gas;
    assume msgvalue_MSG >= 0;
    call __var_9 := send__fail(this, __tmp__wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_9)
    {
        revert := true;
        return;
    }

    gas := __var_8 + gas;
}



implementation _forwardFunds_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_8: int;
  var __var_9: bool;

    gas := gas - 108084;
    __var_8 := gas;
    if (gas > 2300)
    {
        gas := 2300;
    }

    __var_8 := __var_8 - gas;
    assume msgvalue_MSG >= 0;
    call __var_9 := send__success(this, wallet_Crowdsale[this], msgvalue_MSG);
    if (!__var_9)
    {
        revert := true;
        return;
    }

    gas := __var_8 + gas;
}



implementation AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref)
{
  var __var_10: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__tokenWallet_AllowanceCrowdsale[this] := null;
    __var_10 := null;
    if (!(_tokenWallet_s362 != null))
    {
        revert := true;
        return;
    }

    __tmp__tokenWallet_AllowanceCrowdsale[this] := _tokenWallet_s362;
}



implementation AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref)
{
  var __var_10: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    tokenWallet_AllowanceCrowdsale[this] := null;
    __var_10 := null;
    if (!(_tokenWallet_s362 != null))
    {
        revert := true;
        return;
    }

    tokenWallet_AllowanceCrowdsale[this] := _tokenWallet_s362;
}



implementation AllowanceCrowdsale_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref)
{
  var __var_10: Ref;

    call AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s362);
    if (revert)
    {
        return;
    }
}



implementation AllowanceCrowdsale_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref)
{
  var __var_10: Ref;

    call AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s362);
    if (revert)
    {
        return;
    }
}



implementation remainingTokens_AllowanceCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_11: int;
  var __var_12: int;
  var __var_13: Ref;

    gas := gas - 6;
    gas := gas - 7410;
    assume __var_11 >= 0;
    __var_13 := this;
    if (__tmp__DType[__tmp__token_Crowdsale[this]] == VUToken)
    {
        call __var_11 := allowance_StandardToken__fail(__tmp__token_Crowdsale[this], this, __var_12, __tmp__tokenWallet_AllowanceCrowdsale[this], this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == PausableToken)
    {
        call __var_11 := allowance_StandardToken__fail(__tmp__token_Crowdsale[this], this, __var_12, __tmp__tokenWallet_AllowanceCrowdsale[this], this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == StandardToken)
    {
        call __var_11 := allowance_StandardToken__fail(__tmp__token_Crowdsale[this], this, __var_12, __tmp__tokenWallet_AllowanceCrowdsale[this], this);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == DetailedERC20)
    {
        call __var_11 := allowance_ERC20(__tmp__token_Crowdsale[this], this, __var_12, __tmp__tokenWallet_AllowanceCrowdsale[this], this);
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == ERC20)
    {
        call __var_11 := allowance_ERC20(__tmp__token_Crowdsale[this], this, __var_12, __tmp__tokenWallet_AllowanceCrowdsale[this], this);
    }
    else
    {
        assume false;
    }

    assume __var_11 >= 0;
    __ret_0_ := __var_11;
    return;
}



implementation remainingTokens_AllowanceCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_11: int;
  var __var_12: int;
  var __var_13: Ref;

    gas := gas - 6;
    gas := gas - 7410;
    assume __var_11 >= 0;
    __var_13 := this;
    if (DType[token_Crowdsale[this]] == VUToken)
    {
        call __var_11 := allowance_StandardToken__success(token_Crowdsale[this], this, __var_12, tokenWallet_AllowanceCrowdsale[this], this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == PausableToken)
    {
        call __var_11 := allowance_StandardToken__success(token_Crowdsale[this], this, __var_12, tokenWallet_AllowanceCrowdsale[this], this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == StandardToken)
    {
        call __var_11 := allowance_StandardToken__success(token_Crowdsale[this], this, __var_12, tokenWallet_AllowanceCrowdsale[this], this);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == DetailedERC20)
    {
        call __var_11 := allowance_ERC20(token_Crowdsale[this], this, __var_12, tokenWallet_AllowanceCrowdsale[this], this);
    }
    else if (DType[token_Crowdsale[this]] == ERC20)
    {
        call __var_11 := allowance_ERC20(token_Crowdsale[this], this, __var_12, tokenWallet_AllowanceCrowdsale[this], this);
    }
    else
    {
        assume false;
    }

    assume __var_11 >= 0;
    __ret_0_ := __var_11;
    return;
}



implementation _deliverTokens_AllowanceCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s392: Ref, 
    _tokenAmount_s392: int)
{
  var __var_14: bool;
  var __var_15: int;

    gas := gas - 75666;
    assume _tokenAmount_s392 >= 0;
    if (__tmp__DType[__tmp__token_Crowdsale[this]] == VUToken)
    {
        call __var_14 := transferFrom_PausableToken__fail(__tmp__token_Crowdsale[this], this, __var_15, __tmp__tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == PausableToken)
    {
        call __var_14 := transferFrom_PausableToken__fail(__tmp__token_Crowdsale[this], this, __var_15, __tmp__tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == StandardToken)
    {
        call __var_14 := transferFrom_StandardToken__fail(__tmp__token_Crowdsale[this], this, __var_15, __tmp__tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == DetailedERC20)
    {
        call __var_14 := transferFrom_ERC20(__tmp__token_Crowdsale[this], this, __var_15, __tmp__tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
    }
    else if (__tmp__DType[__tmp__token_Crowdsale[this]] == ERC20)
    {
        call __var_14 := transferFrom_ERC20(__tmp__token_Crowdsale[this], this, __var_15, __tmp__tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
    }
    else
    {
        assume false;
    }
}



implementation _deliverTokens_AllowanceCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s392: Ref, 
    _tokenAmount_s392: int)
{
  var __var_14: bool;
  var __var_15: int;

    gas := gas - 75666;
    assume _tokenAmount_s392 >= 0;
    if (DType[token_Crowdsale[this]] == VUToken)
    {
        call __var_14 := transferFrom_PausableToken__success(token_Crowdsale[this], this, __var_15, tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == PausableToken)
    {
        call __var_14 := transferFrom_PausableToken__success(token_Crowdsale[this], this, __var_15, tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == StandardToken)
    {
        call __var_14 := transferFrom_StandardToken__success(token_Crowdsale[this], this, __var_15, tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
        if (revert)
        {
            return;
        }
    }
    else if (DType[token_Crowdsale[this]] == DetailedERC20)
    {
        call __var_14 := transferFrom_ERC20(token_Crowdsale[this], this, __var_15, tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
    }
    else if (DType[token_Crowdsale[this]] == ERC20)
    {
        call __var_14 := transferFrom_ERC20(token_Crowdsale[this], this, __var_15, tokenWallet_AllowanceCrowdsale[this], _beneficiary_s392, _tokenAmount_s392);
    }
    else
    {
        assume false;
    }
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__openingTime_TimedCrowdsale[this] := 0;
    __tmp__closingTime_TimedCrowdsale[this] := 0;
    assume _openingTime_s444 >= 0;
    assume __tmp__now >= 0;
    if (!(_openingTime_s444 >= __tmp__now))
    {
        revert := true;
        return;
    }

    assume _closingTime_s444 >= 0;
    assume _openingTime_s444 >= 0;
    if (!(_closingTime_s444 >= _openingTime_s444))
    {
        revert := true;
        return;
    }

    assume __tmp__openingTime_TimedCrowdsale[this] >= 0;
    assume _openingTime_s444 >= 0;
    __tmp__openingTime_TimedCrowdsale[this] := _openingTime_s444;
    assume __tmp__closingTime_TimedCrowdsale[this] >= 0;
    assume _closingTime_s444 >= 0;
    __tmp__closingTime_TimedCrowdsale[this] := _closingTime_s444;
}



implementation TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    openingTime_TimedCrowdsale[this] := 0;
    closingTime_TimedCrowdsale[this] := 0;
    assume _openingTime_s444 >= 0;
    assume now >= 0;
    if (!(_openingTime_s444 >= now))
    {
        revert := true;
        return;
    }

    assume _closingTime_s444 >= 0;
    assume _openingTime_s444 >= 0;
    if (!(_closingTime_s444 >= _openingTime_s444))
    {
        revert := true;
        return;
    }

    assume openingTime_TimedCrowdsale[this] >= 0;
    assume _openingTime_s444 >= 0;
    openingTime_TimedCrowdsale[this] := _openingTime_s444;
    assume closingTime_TimedCrowdsale[this] >= 0;
    assume _closingTime_s444 >= 0;
    closingTime_TimedCrowdsale[this] := _closingTime_s444;
}



implementation TimedCrowdsale_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int)
{
    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _openingTime_s444, _closingTime_s444);
    if (revert)
    {
        return;
    }
}



implementation TimedCrowdsale_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _openingTime_s444: int, 
    _closingTime_s444: int)
{
    call TimedCrowdsale_TimedCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _openingTime_s444, _closingTime_s444);
    if (revert)
    {
        return;
    }
}



implementation hasClosed_TimedCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 426;
    assume __tmp__now >= 0;
    assume __tmp__closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := __tmp__now > __tmp__closingTime_TimedCrowdsale[this];
    return;
}



implementation hasClosed_TimedCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
    gas := gas - 6;
    gas := gas - 426;
    assume now >= 0;
    assume closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := now > closingTime_TimedCrowdsale[this];
    return;
}



implementation _preValidatePurchase_TimedCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s471: Ref, 
    _weiAmount_s471: int)
{
  var __var_16: int;

    call onlyWhileOpen_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume _weiAmount_s471 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
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



implementation _preValidatePurchase_TimedCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s471: Ref, 
    _weiAmount_s471: int)
{
  var __var_16: int;

    call onlyWhileOpen_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume _weiAmount_s471 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == TimedCrowdsale)
    {
        call _preValidatePurchase_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s471, _weiAmount_s471);
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



implementation PostDeliveryCrowdsale_PostDeliveryCrowdsale_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_17: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_17 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__balances_PostDeliveryCrowdsale[this] := __var_17;
    __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]] := zeroRefIntArr();
    __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]] := 0;
}



implementation PostDeliveryCrowdsale_PostDeliveryCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_17: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_17 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    balances_PostDeliveryCrowdsale[this] := __var_17;
    M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]] := zeroRefIntArr();
    sum_balances0[balances_PostDeliveryCrowdsale[this]] := 0;
}



implementation PostDeliveryCrowdsale_PostDeliveryCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call PostDeliveryCrowdsale_PostDeliveryCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation PostDeliveryCrowdsale_PostDeliveryCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call PostDeliveryCrowdsale_PostDeliveryCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation _processPurchase_PostDeliveryCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s500: Ref, 
    _tokenAmount_s500: int)
{
  var __var_18: int;

    gas := gas - 40878;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][_beneficiary_s500]
       >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][_beneficiary_s500]
       >= 0;
    assume _tokenAmount_s500 >= 0;
    call __var_18 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][_beneficiary_s500], _tokenAmount_s500);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]] := __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][_beneficiary_s500];
    __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][_beneficiary_s500] := __var_18;
    __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]] := __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][_beneficiary_s500];
    assume __var_18 >= 0;
}



implementation _processPurchase_PostDeliveryCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s500: Ref, 
    _tokenAmount_s500: int)
{
  var __var_18: int;

    gas := gas - 40878;
    assume M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][_beneficiary_s500]
       >= 0;
    assume M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][_beneficiary_s500]
       >= 0;
    assume _tokenAmount_s500 >= 0;
    call __var_18 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][_beneficiary_s500], _tokenAmount_s500);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_PostDeliveryCrowdsale[this]] := sum_balances0[balances_PostDeliveryCrowdsale[this]]
       - M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][_beneficiary_s500];
    M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][_beneficiary_s500] := __var_18;
    sum_balances0[balances_PostDeliveryCrowdsale[this]] := sum_balances0[balances_PostDeliveryCrowdsale[this]]
       + M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][_beneficiary_s500];
    assume __var_18 >= 0;
}



implementation withdrawTokens_PostDeliveryCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_19: bool;
  var amount_s534: int;

    gas := gas - 70;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call __var_19 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call __var_19 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call __var_19 := hasClosed_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_19)
    {
        revert := true;
        return;
    }

    gas := gas - 612;
    assume amount_s534 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][msgsender_MSG]
       >= 0;
    amount_s534 := __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][msgsender_MSG];
    gas := gas - 58;
    assume amount_s534 >= 0;
    if (!(amount_s534 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 10218;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][msgsender_MSG]
       >= 0;
    __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]] := __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][msgsender_MSG] := 0;
    __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]] := __tmp__sum_balances0[__tmp__balances_PostDeliveryCrowdsale[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_PostDeliveryCrowdsale[this]][msgsender_MSG];
    gas := gas - 18;
    assume amount_s534 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, amount_s534);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, amount_s534);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PostDeliveryCrowdsale)
    {
        call _deliverTokens_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, amount_s534);
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



implementation withdrawTokens_PostDeliveryCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_19: bool;
  var amount_s534: int;

    gas := gas - 70;
    if (DType[this] == ICOCrowdsale)
    {
        call __var_19 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call __var_19 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call __var_19 := hasClosed_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    if (!__var_19)
    {
        revert := true;
        return;
    }

    gas := gas - 612;
    assume amount_s534 >= 0;
    assume M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][msgsender_MSG] >= 0;
    amount_s534 := M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][msgsender_MSG];
    gas := gas - 58;
    assume amount_s534 >= 0;
    if (!(amount_s534 > 0))
    {
        revert := true;
        return;
    }

    gas := gas - 10218;
    assume M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][msgsender_MSG] >= 0;
    sum_balances0[balances_PostDeliveryCrowdsale[this]] := sum_balances0[balances_PostDeliveryCrowdsale[this]]
       - M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][msgsender_MSG] := 0;
    sum_balances0[balances_PostDeliveryCrowdsale[this]] := sum_balances0[balances_PostDeliveryCrowdsale[this]]
       + M_Ref_int_balances0[balances_PostDeliveryCrowdsale[this]][msgsender_MSG];
    gas := gas - 18;
    assume amount_s534 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, amount_s534);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _deliverTokens_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, amount_s534);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PostDeliveryCrowdsale)
    {
        call _deliverTokens_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, amount_s534);
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



implementation BasicToken_BasicToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_20: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_20 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__balances_BasicToken[this] := __var_20;
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]] := zeroRefIntArr();
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := 0;
    __tmp__totalSupply__BasicToken[this] := 0;
}



implementation BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_20: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_20 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    balances_BasicToken[this] := __var_20;
    M_Ref_int_balances1[balances_BasicToken[this]] := zeroRefIntArr();
    sum_balances1[balances_BasicToken[this]] := 0;
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
    gas := gas - 15;
    gas := gas - 1040;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    __ret_0_ := __tmp__totalSupply__BasicToken[this];
    return;
}



implementation totalSupply_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
    gas := gas - 15;
    gas := gas - 1040;
    assume totalSupply__BasicToken[this] >= 0;
    __ret_0_ := totalSupply__BasicToken[this];
    return;
}



implementation transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s615: Ref, 
    _value_s615: int)
   returns (__ret_0_: bool)
{
  var __var_21: Ref;
  var __var_22: int;
  var __var_23: int;

    gas := gas - 15;
    gas := gas - 220;
    __var_21 := null;
    if (!(_to_s615 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1635;
    assume _value_s615 >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s615
       <= __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 102185;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s615 >= 0;
    call __var_22 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s615);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG] := __var_22;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG];
    assume __var_22 >= 0;
    gas := gas - 102165;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s615] >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s615] >= 0;
    assume _value_s615 >= 0;
    call __var_23 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s615], _value_s615);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s615];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s615] := __var_23;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s615];
    assume __var_23 >= 0;
    gas := gas - 40;
    __ret_0_ := true;
    return;
}



implementation transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s615: Ref, 
    _value_s615: int)
   returns (__ret_0_: bool)
{
  var __var_21: Ref;
  var __var_22: int;
  var __var_23: int;

    gas := gas - 15;
    gas := gas - 220;
    __var_21 := null;
    if (!(_to_s615 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1635;
    assume _value_s615 >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s615 <= M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 102185;
    assume M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s615 >= 0;
    call __var_22 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG], _value_s615);
    if (revert)
    {
        return;
    }

    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG] := __var_22;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG];
    assume __var_22 >= 0;
    gas := gas - 102165;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_to_s615] >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_to_s615] >= 0;
    assume _value_s615 >= 0;
    call __var_23 := add_SafeMath__success(this, this, 0, M_Ref_int_balances1[balances_BasicToken[this]][_to_s615], _value_s615);
    if (revert)
    {
        return;
    }

    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][_to_s615];
    M_Ref_int_balances1[balances_BasicToken[this]][_to_s615] := __var_23;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][_to_s615];
    assume __var_23 >= 0;
    assert {:EventEmitted "Transfer_BasicToken"} true;
    gas := gas - 40;
    __ret_0_ := true;
    return;
}



implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s627: Ref)
   returns (balance_s627: int)
{
    gas := gas - 15;
    gas := gas - 1520;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_owner_s627] >= 0;
    balance_s627 := __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_owner_s627];
    return;
}



implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s627: Ref)
   returns (balance_s627: int)
{
    gas := gas - 15;
    gas := gas - 1520;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_owner_s627] >= 0;
    balance_s627 := M_Ref_int_balances1[balances_BasicToken[this]][_owner_s627];
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



implementation burn_BurnableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s679: int)
{
  var burner_s678: Ref;
  var __var_24: int;
  var __var_25: int;

    gas := gas - 654;
    assume _value_s679 >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s679
       <= __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    burner_s678 := msgsender_MSG;
    gas := gas - 40878;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][burner_s678] >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][burner_s678] >= 0;
    assume _value_s679 >= 0;
    call __var_24 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][burner_s678], _value_s679);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][burner_s678];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][burner_s678] := __var_24;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][burner_s678];
    assume __var_24 >= 0;
    gas := gas - 40494;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume _value_s679 >= 0;
    call __var_25 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply__BasicToken[this], _value_s679);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply__BasicToken[this] := __var_25;
    assume __var_25 >= 0;
}



implementation burn_BurnableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s679: int)
{
  var burner_s678: Ref;
  var __var_24: int;
  var __var_25: int;

    gas := gas - 654;
    assume _value_s679 >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s679 <= M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    burner_s678 := msgsender_MSG;
    gas := gas - 40878;
    assume M_Ref_int_balances1[balances_BasicToken[this]][burner_s678] >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][burner_s678] >= 0;
    assume _value_s679 >= 0;
    call __var_24 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances1[balances_BasicToken[this]][burner_s678], _value_s679);
    if (revert)
    {
        return;
    }

    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][burner_s678];
    M_Ref_int_balances1[balances_BasicToken[this]][burner_s678] := __var_24;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][burner_s678];
    assume __var_24 >= 0;
    gas := gas - 40494;
    assume totalSupply__BasicToken[this] >= 0;
    assume totalSupply__BasicToken[this] >= 0;
    assume _value_s679 >= 0;
    call __var_25 := sub_SafeMath__success(this, this, 0, totalSupply__BasicToken[this], _value_s679);
    if (revert)
    {
        return;
    }

    totalSupply__BasicToken[this] := __var_25;
    assume __var_25 >= 0;
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



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s733: Ref)
{
  var __var_26: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 308;
    __var_26 := null;
    if (!(newOwner_s733 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 141869;
    __tmp__owner_Ownable[this] := newOwner_s733;
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s733: Ref)
{
  var __var_26: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 308;
    __var_26 := null;
    if (!(newOwner_s733 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 141869;
    owner_Ownable[this] := newOwner_s733;
}



implementation Whitelist_Whitelist_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: Ref;
  var __var_28: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_27 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__whitelist_Whitelist[this] := __var_27;
    __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_Whitelist[this]] := zeroRefBoolArr();
    call __var_28 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__authorized_Whitelist[this] := __var_28;
    __tmp__M_Ref_bool_authorized3[__tmp__authorized_Whitelist[this]] := zeroRefBoolArr();
}



implementation Whitelist_Whitelist_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: Ref;
  var __var_28: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_27 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    whitelist_Whitelist[this] := __var_27;
    M_Ref_bool_whitelist2[whitelist_Whitelist[this]] := zeroRefBoolArr();
    call __var_28 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    authorized_Whitelist[this] := __var_28;
    M_Ref_bool_authorized3[authorized_Whitelist[this]] := zeroRefBoolArr();
}



implementation Whitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Whitelist_Whitelist_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation Whitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Whitelist_Whitelist_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation authorize_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s782: Ref)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool_authorized3[__tmp__authorized_Whitelist[this]][_admin_s782] := true;
}



implementation authorize_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s782: Ref)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    M_Ref_bool_authorized3[authorized_Whitelist[this]][_admin_s782] := true;
}



implementation reject_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s796: Ref)
{
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool_authorized3[__tmp__authorized_Whitelist[this]][_admin_s796] := false;
}



implementation reject_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _admin_s796: Ref)
{
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    M_Ref_bool_authorized3[authorized_Whitelist[this]][_admin_s796] := false;
}



implementation addToWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s814: Ref)
{
    call onlyAuthorized_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_Whitelist[this]][_beneficiary_s814] := true;
}



implementation addToWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s814: Ref)
{
    call onlyAuthorized_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    M_Ref_bool_whitelist2[whitelist_Whitelist[this]][_beneficiary_s814] := true;
    assert {:EventEmitted "UserAllowed_Whitelist"} true;
}



implementation addManyToWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiaries_s850: Ref)
{
  var i_s848: int;

    call onlyAuthorized_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 17;
    assume i_s848 >= 0;
    assume __tmp__Length[_beneficiaries_s850] >= 0;
    gas := gas - 11;
    assume i_s848 >= 0;
    i_s848 := 0;
    while (i_s848 < __tmp__Length[_beneficiaries_s850])
    {
        gas := gas - 20417;
        assume i_s848 >= 0;
        __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_Whitelist[this]][__tmp__M_int_Ref[_beneficiaries_s850][i_s848]] := true;
        gas := gas - 19;
        assume i_s848 >= 0;
        i_s848 := i_s848 + 1;
        assume i_s848 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation addManyToWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiaries_s850: Ref)
{
  var i_s848: int;

    call onlyAuthorized_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 17;
    assume i_s848 >= 0;
    assume Length[_beneficiaries_s850] >= 0;
    gas := gas - 11;
    assume i_s848 >= 0;
    i_s848 := 0;
    while (i_s848 < Length[_beneficiaries_s850])
    {
        gas := gas - 20417;
        assume i_s848 >= 0;
        M_Ref_bool_whitelist2[whitelist_Whitelist[this]][M_int_Ref[_beneficiaries_s850][i_s848]] := true;
        assert {:EventEmitted "UserAllowed_Whitelist"} true;
        gas := gas - 19;
        assume i_s848 >= 0;
        i_s848 := i_s848 + 1;
        assume i_s848 >= 0;
        if (gas < 0)
        {
            return;
        }
    }
}



implementation removeFromWhitelist_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s868: Ref)
{
    call onlyAuthorized_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_Whitelist[this]][_beneficiary_s868] := false;
}



implementation removeFromWhitelist_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s868: Ref)
{
    call onlyAuthorized_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 20363;
    M_Ref_bool_whitelist2[whitelist_Whitelist[this]][_beneficiary_s868] := false;
    assert {:EventEmitted "UserDisallowed_Whitelist"} true;
}



implementation isWhitelisted_Whitelist__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s880: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 340;
    __ret_0_ := __tmp__M_Ref_bool_whitelist2[__tmp__whitelist_Whitelist[this]][_beneficiary_s880];
    return;
}



implementation isWhitelisted_Whitelist__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s880: Ref)
   returns (__ret_0_: bool)
{
    gas := gas - 3;
    gas := gas - 340;
    __ret_0_ := M_Ref_bool_whitelist2[whitelist_Whitelist[this]][_beneficiary_s880];
    return;
}



implementation BaseCrowdsale_BaseCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__tokensSold_BaseCrowdsale[this] := 0;
    __tmp__deliveryTime_BaseCrowdsale[this] := 0;
    __tmp__limit_BaseCrowdsale[this] := 0;
    __var_31 := null;
    if (!(_whitelist_s988 != null))
    {
        revert := true;
        return;
    }

    assume __tmp__now >= 0;
    assume _deliveryTime_s988 >= 0;
    if (!(__tmp__now < _deliveryTime_s988))
    {
        revert := true;
        return;
    }

    assume _limit_s988 >= 0;
    if (!(_limit_s988 > 0))
    {
        revert := true;
        return;
    }

    assume _deliveryTime_s988 >= 0;
    assume __tmp__now >= 0;
    assume __tmp__now + 8640000 >= 0;
    if (!(_deliveryTime_s988 < __tmp__now + 8640000))
    {
        revert := true;
        return;
    }

    assume __tmp__DType[_whitelist_s988] == Whitelist;
    __var_32 := _whitelist_s988;
    __tmp__whitelist_BaseCrowdsale[this] := __var_32;
    assume __tmp__deliveryTime_BaseCrowdsale[this] >= 0;
    assume _deliveryTime_s988 >= 0;
    __tmp__deliveryTime_BaseCrowdsale[this] := _deliveryTime_s988;
    assume __tmp__limit_BaseCrowdsale[this] >= 0;
    assume _limit_s988 >= 0;
    __tmp__limit_BaseCrowdsale[this] := _limit_s988;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _init_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _init_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation BaseCrowdsale_BaseCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    tokensSold_BaseCrowdsale[this] := 0;
    deliveryTime_BaseCrowdsale[this] := 0;
    limit_BaseCrowdsale[this] := 0;
    __var_31 := null;
    if (!(_whitelist_s988 != null))
    {
        revert := true;
        return;
    }

    assume now >= 0;
    assume _deliveryTime_s988 >= 0;
    if (!(now < _deliveryTime_s988))
    {
        revert := true;
        return;
    }

    assume _limit_s988 >= 0;
    if (!(_limit_s988 > 0))
    {
        revert := true;
        return;
    }

    assume _deliveryTime_s988 >= 0;
    assume now >= 0;
    assume now + 8640000 >= 0;
    if (!(_deliveryTime_s988 < now + 8640000))
    {
        revert := true;
        return;
    }

    assume DType[_whitelist_s988] == Whitelist;
    __var_32 := _whitelist_s988;
    whitelist_BaseCrowdsale[this] := __var_32;
    assume deliveryTime_BaseCrowdsale[this] >= 0;
    assume _deliveryTime_s988 >= 0;
    deliveryTime_BaseCrowdsale[this] := _deliveryTime_s988;
    assume limit_BaseCrowdsale[this] >= 0;
    assume _limit_s988 >= 0;
    limit_BaseCrowdsale[this] := _limit_s988;
    if (DType[this] == ICOCrowdsale)
    {
        call _init_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _init_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation BaseCrowdsale_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume _rate_s988 >= 0;
    call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s988, _wallet_s988, _token_s988);
    if (revert)
    {
        return;
    }

    call AllowanceCrowdsale_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s988);
    if (revert)
    {
        return;
    }

    assume _openingTime_s988 >= 0;
    assume _closingTime_s988 >= 0;
    call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _openingTime_s988, _closingTime_s988);
    if (revert)
    {
        return;
    }

    call PostDeliveryCrowdsale_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BaseCrowdsale_BaseCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _token_s988, _whitelist_s988, _tokenWallet_s988, _wallet_s988, _rate_s988, _openingTime_s988, _closingTime_s988, _deliveryTime_s988, _limit_s988);
    if (revert)
    {
        return;
    }
}



implementation BaseCrowdsale_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s988: Ref, 
    _whitelist_s988: Ref, 
    _tokenWallet_s988: Ref, 
    _wallet_s988: Ref, 
    _rate_s988: int, 
    _openingTime_s988: int, 
    _closingTime_s988: int, 
    _deliveryTime_s988: int, 
    _limit_s988: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume _rate_s988 >= 0;
    call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _rate_s988, _wallet_s988, _token_s988);
    if (revert)
    {
        return;
    }

    call AllowanceCrowdsale_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s988);
    if (revert)
    {
        return;
    }

    assume _openingTime_s988 >= 0;
    assume _closingTime_s988 >= 0;
    call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _openingTime_s988, _closingTime_s988);
    if (revert)
    {
        return;
    }

    call PostDeliveryCrowdsale_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BaseCrowdsale_BaseCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _token_s988, _whitelist_s988, _tokenWallet_s988, _wallet_s988, _rate_s988, _openingTime_s988, _closingTime_s988, _deliveryTime_s988, _limit_s988);
    if (revert)
    {
        return;
    }
}



implementation withdrawTokens_BaseCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_33: int;

    gas := gas - 462;
    assume __tmp__now >= 0;
    assume __tmp__deliveryTime_BaseCrowdsale[this] >= 0;
    if (!(__tmp__now >= __tmp__deliveryTime_BaseCrowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 8;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call withdrawTokens_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call withdrawTokens_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation withdrawTokens_BaseCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_33: int;

    gas := gas - 462;
    assume now >= 0;
    assume deliveryTime_BaseCrowdsale[this] >= 0;
    if (!(now >= deliveryTime_BaseCrowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 8;
    if (DType[this] == ICOCrowdsale)
    {
        call withdrawTokens_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call withdrawTokens_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation _init_BaseCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation _init_BaseCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
}



implementation _preValidatePurchase_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1025: Ref, 
    _weiAmount_s1025: int)
{
  var __var_34: int;

    call onlyWhitelisted_pre__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1025);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume _weiAmount_s1025 >= 0;
    if (__tmp__DType[this] == ICOCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1025, _weiAmount_s1025);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1025, _weiAmount_s1025);
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



implementation _preValidatePurchase_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1025: Ref, 
    _weiAmount_s1025: int)
{
  var __var_34: int;

    call onlyWhitelisted_pre__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1025);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume _weiAmount_s1025 >= 0;
    if (DType[this] == ICOCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1025, _weiAmount_s1025);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1025, _weiAmount_s1025);
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



implementation _processPurchase_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1053: Ref, 
    _tokenAmount_s1053: int)
{
  var __var_35: int;

    gas := gas - 40494;
    assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
    assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
    assume _tokenAmount_s1053 >= 0;
    call __var_35 := add_SafeMath__fail(this, this, 0, __tmp__tokensSold_BaseCrowdsale[this], _tokenAmount_s1053);
    if (revert)
    {
        return;
    }

    __tmp__tokensSold_BaseCrowdsale[this] := __var_35;
    assume __var_35 >= 0;
    gas := gas - 864;
    assume __tmp__limit_BaseCrowdsale[this] >= 0;
    assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
    if (!(__tmp__limit_BaseCrowdsale[this] >= __tmp__tokensSold_BaseCrowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume _tokenAmount_s1053 >= 0;
    call _processPurchase_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1053, _tokenAmount_s1053);
    if (revert)
    {
        return;
    }
}



implementation _processPurchase_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1053: Ref, 
    _tokenAmount_s1053: int)
{
  var __var_35: int;

    gas := gas - 40494;
    assume tokensSold_BaseCrowdsale[this] >= 0;
    assume tokensSold_BaseCrowdsale[this] >= 0;
    assume _tokenAmount_s1053 >= 0;
    call __var_35 := add_SafeMath__success(this, this, 0, tokensSold_BaseCrowdsale[this], _tokenAmount_s1053);
    if (revert)
    {
        return;
    }

    tokensSold_BaseCrowdsale[this] := __var_35;
    assume __var_35 >= 0;
    gas := gas - 864;
    assume limit_BaseCrowdsale[this] >= 0;
    assume tokensSold_BaseCrowdsale[this] >= 0;
    if (!(limit_BaseCrowdsale[this] >= tokensSold_BaseCrowdsale[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20;
    assume _tokenAmount_s1053 >= 0;
    call _processPurchase_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1053, _tokenAmount_s1053);
    if (revert)
    {
        return;
    }
}



implementation DetailedERC20_DetailedERC20_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_DetailedERC20[this] := -1321339195;
    __tmp__symbol_DetailedERC20[this] := -1321339195;
    __tmp__decimals_DetailedERC20[this] := 0;
    __tmp__name_DetailedERC20[this] := _name_s1084;
    __tmp__symbol_DetailedERC20[this] := _symbol_s1084;
    assume __tmp__decimals_DetailedERC20[this] >= 0;
    assume _decimals_s1084 >= 0;
    __tmp__decimals_DetailedERC20[this] := _decimals_s1084;
}



implementation DetailedERC20_DetailedERC20_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_DetailedERC20[this] := -1321339195;
    symbol_DetailedERC20[this] := -1321339195;
    decimals_DetailedERC20[this] := 0;
    name_DetailedERC20[this] := _name_s1084;
    symbol_DetailedERC20[this] := _symbol_s1084;
    assume decimals_DetailedERC20[this] >= 0;
    assume _decimals_s1084 >= 0;
    decimals_DetailedERC20[this] := _decimals_s1084;
}



implementation DetailedERC20_DetailedERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int)
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

    call DetailedERC20_DetailedERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _name_s1084, _symbol_s1084, _decimals_s1084);
    if (revert)
    {
        return;
    }
}



implementation DetailedERC20_DetailedERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1084: int, 
    _symbol_s1084: int, 
    _decimals_s1084: int)
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

    call DetailedERC20_DetailedERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _name_s1084, _symbol_s1084, _decimals_s1084);
    if (revert)
    {
        return;
    }
}



implementation StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_36: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_36 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_StandardToken[this] := __var_36;
    __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]] := zeroRefRefArr();
    __tmp__M_Ref_int_allowed4[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_36: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_36 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_StandardToken[this] := __var_36;
    M_Ref_Ref_allowed4[allowed_StandardToken[this]] := zeroRefRefArr();
    M_Ref_int_allowed4[null] := zeroRefIntArr();
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
    _from_s1181: Ref, 
    _to_s1181: Ref, 
    _value_s1181: int)
   returns (__ret_0_: bool)
{
  var __var_37: Ref;
  var __var_38: Ref;
  var __var_39: int;
  var __var_40: int;
  var __var_41: Ref;
  var __var_42: int;
  var __var_43: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_37 := null;
    if (!(_to_s1181 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s1181 >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181] >= 0;
    if (!(_value_s1181
       <= __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s1181 >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]
       == null)
    {
        call __var_38 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181] := __var_38;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]
       >= 0;
    if (!(_value_s1181
       <= __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181] >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181] >= 0;
    assume _value_s1181 >= 0;
    call __var_39 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181], _value_s1181);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181] := __var_39;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1181];
    assume __var_39 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1181] >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1181] >= 0;
    assume _value_s1181 >= 0;
    call __var_40 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1181], _value_s1181);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1181];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1181] := __var_40;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1181];
    assume __var_40 >= 0;
    gas := gas - 61833;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]
       == null)
    {
        call __var_41 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181] := __var_41;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]
       == null)
    {
        call __var_43 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181] := __var_43;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]
       >= 0;
    assume _value_s1181 >= 0;
    call __var_42 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG], _value_s1181);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]]
       - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG];
    __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG] := __var_42;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]]
       + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1181]][msgsender_MSG];
    assume __var_42 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1181: Ref, 
    _to_s1181: Ref, 
    _value_s1181: int)
   returns (__ret_0_: bool)
{
  var __var_37: Ref;
  var __var_38: Ref;
  var __var_39: int;
  var __var_40: int;
  var __var_41: Ref;
  var __var_42: int;
  var __var_43: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_37 := null;
    if (!(_to_s1181 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s1181 >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181] >= 0;
    if (!(_value_s1181 <= M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s1181 >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181] == null)
    {
        call __var_38 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181] := __var_38;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]
       >= 0;
    if (!(_value_s1181
       <= M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181] >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181] >= 0;
    assume _value_s1181 >= 0;
    call __var_39 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181], _value_s1181);
    if (revert)
    {
        return;
    }

    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181];
    M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181] := __var_39;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][_from_s1181];
    assume __var_39 >= 0;
    gas := gas - 61299;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_to_s1181] >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_to_s1181] >= 0;
    assume _value_s1181 >= 0;
    call __var_40 := add_SafeMath__success(this, this, 0, M_Ref_int_balances1[balances_BasicToken[this]][_to_s1181], _value_s1181);
    if (revert)
    {
        return;
    }

    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][_to_s1181];
    M_Ref_int_balances1[balances_BasicToken[this]][_to_s1181] := __var_40;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][_to_s1181];
    assume __var_40 >= 0;
    gas := gas - 61833;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181] == null)
    {
        call __var_41 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181] := __var_41;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181] == null)
    {
        call __var_43 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181] := __var_43;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG]
       >= 0;
    assume _value_s1181 >= 0;
    call __var_42 := sub_SafeMath__success(this, this, 0, M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG], _value_s1181);
    if (revert)
    {
        return;
    }

    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]]
       - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG];
    M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG] := __var_42;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]]
       + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1181]][msgsender_MSG];
    assume __var_42 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1209: Ref, 
    _value_s1209: int)
   returns (__ret_0_: bool)
{
  var __var_44: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_44 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_44;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209]
       >= 0;
    assume _value_s1209 >= 0;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209];
    __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209] := _value_s1209;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209];
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1209: Ref, 
    _value_s1209: int)
   returns (__ret_0_: bool)
{
  var __var_44: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_44 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_44;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209]
       >= 0;
    assume _value_s1209 >= 0;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209];
    M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209] := _value_s1209;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1209];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1225: Ref, 
    _spender_s1225: Ref)
   returns (__ret_0_: int)
{
  var __var_45: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1225]
       == null)
    {
        call __var_45 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1225] := __var_45;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1225]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1225]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1225]][_spender_s1225]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1225]][_spender_s1225];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1225: Ref, 
    _spender_s1225: Ref)
   returns (__ret_0_: int)
{
  var __var_45: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1225] == null)
    {
        call __var_45 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1225] := __var_45;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1225]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1225]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1225]][_spender_s1225]
       >= 0;
    __ret_0_ := M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1225]][_spender_s1225];
    return;
}



implementation increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1266: Ref, 
    _addedValue_s1266: int)
   returns (__ret_0_: bool)
{
  var __var_46: Ref;
  var __var_47: int;
  var __var_48: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_46 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_46;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_48 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_48;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266]
       >= 0;
    assume _addedValue_s1266 >= 0;
    call __var_47 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266], _addedValue_s1266);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266];
    __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266] := __var_47;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266];
    assume __var_47 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1266: Ref, 
    _addedValue_s1266: int)
   returns (__ret_0_: bool)
{
  var __var_46: Ref;
  var __var_47: int;
  var __var_48: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_46 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_46;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266]
       >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_48 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_48;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266]
       >= 0;
    assume _addedValue_s1266 >= 0;
    call __var_47 := add_SafeMath__success(this, this, 0, M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266], _addedValue_s1266);
    if (revert)
    {
        return;
    }

    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266];
    M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266] := __var_47;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1266];
    assume __var_47 >= 0;
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1326: Ref, 
    _subtractedValue_s1326: int)
   returns (__ret_0_: bool)
{
  var oldValue_s1325: int;
  var __var_49: Ref;
  var __var_50: Ref;
  var __var_51: Ref;
  var __var_52: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s1325 >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_49 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_49;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326]
       >= 0;
    oldValue_s1325 := __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
    gas := gas - 27;
    assume _subtractedValue_s1326 >= 0;
    assume oldValue_s1325 >= 0;
    if (_subtractedValue_s1326 > oldValue_s1325)
    {
        gas := gas - 15597;
        if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_50 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_50;
            __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326]
           >= 0;
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326] := 0;
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
    }
    else
    {
        gas := gas - 60696;
        if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_51 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_51;
            __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326]
           >= 0;
        assume oldValue_s1325 >= 0;
        assume _subtractedValue_s1326 >= 0;
        call __var_52 := sub_SafeMath__fail(this, this, 0, oldValue_s1325, _subtractedValue_s1326);
        if (revert)
        {
            return;
        }

        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326] := __var_52;
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
        assume __var_52 >= 0;
    }

    gas := gas - 30;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1326: Ref, 
    _subtractedValue_s1326: int)
   returns (__ret_0_: bool)
{
  var oldValue_s1325: int;
  var __var_49: Ref;
  var __var_50: Ref;
  var __var_51: Ref;
  var __var_52: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s1325 >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_49 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_49;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326]
       >= 0;
    oldValue_s1325 := M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
    gas := gas - 27;
    assume _subtractedValue_s1326 >= 0;
    assume oldValue_s1325 >= 0;
    if (_subtractedValue_s1326 > oldValue_s1325)
    {
        gas := gas - 15597;
        if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_50 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_50;
            M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326]
           >= 0;
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326] := 0;
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
    }
    else
    {
        gas := gas - 60696;
        if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_51 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_51;
            M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326]
           >= 0;
        assume oldValue_s1325 >= 0;
        assume _subtractedValue_s1326 >= 0;
        call __var_52 := sub_SafeMath__success(this, this, 0, oldValue_s1325, _subtractedValue_s1326);
        if (revert)
        {
            return;
        }

        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326] := __var_52;
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1326];
        assume __var_52 >= 0;
    }

    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 30;
    __ret_0_ := true;
    return;
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



implementation pause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
}



implementation pause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
}



implementation unpause_Pausable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
}



implementation unpause_Pausable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
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
    _to_s1406: Ref, 
    _value_s1406: int)
   returns (__ret_0_: bool)
{
  var __var_53: bool;
  var __var_54: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1406 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_53 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_53 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_53;
    return;
}



implementation transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1406: Ref, 
    _value_s1406: int)
   returns (__ret_0_: bool)
{
  var __var_53: bool;
  var __var_54: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1406 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_53 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_53 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_53;
    return;
}



implementation transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1427: Ref, 
    _to_s1427: Ref, 
    _value_s1427: int)
   returns (__ret_0_: bool)
{
  var __var_55: bool;
  var __var_56: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s1427 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_55 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_55 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_55;
    return;
}



implementation transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1427: Ref, 
    _to_s1427: Ref, 
    _value_s1427: int)
   returns (__ret_0_: bool)
{
  var __var_55: bool;
  var __var_56: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s1427 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_55 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_55 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_55;
    return;
}



implementation approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1445: Ref, 
    _value_s1445: int)
   returns (__ret_0_: bool)
{
  var __var_57: bool;
  var __var_58: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1445 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_57 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_57 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_57;
    return;
}



implementation approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1445: Ref, 
    _value_s1445: int)
   returns (__ret_0_: bool)
{
  var __var_57: bool;
  var __var_58: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1445 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_57 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_57 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_57;
    return;
}



implementation increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1463: Ref, 
    _addedValue_s1463: int)
   returns (success_s1463: bool)
{
  var __var_59: bool;
  var __var_60: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s1463 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_59 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_59 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1463 := __var_59;
    return;
}



implementation increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1463: Ref, 
    _addedValue_s1463: int)
   returns (success_s1463: bool)
{
  var __var_59: bool;
  var __var_60: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s1463 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_59 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_59 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1463 := __var_59;
    return;
}



implementation decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1481: Ref, 
    _subtractedValue_s1481: int)
   returns (success_s1481: bool)
{
  var __var_61: bool;
  var __var_62: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s1481 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_61 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_61 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1481 := __var_61;
    return;
}



implementation decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1481: Ref, 
    _subtractedValue_s1481: int)
   returns (success_s1481: bool)
{
  var __var_61: bool;
  var __var_62: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s1481 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_61 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_61 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1481 := __var_61;
    return;
}



implementation VUToken_VUToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__INITIAL_SUPPLY_VUToken[this] := 1000000000 * 1000000000000000000;
    assume __tmp__totalSupply__BasicToken[this] >= 0;
    assume __tmp__INITIAL_SUPPLY_VUToken[this] >= 0;
    __tmp__totalSupply__BasicToken[this] := __tmp__INITIAL_SUPPLY_VUToken[this];
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__INITIAL_SUPPLY_VUToken[this] >= 0;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG] := __tmp__INITIAL_SUPPLY_VUToken[this];
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][msgsender_MSG];
}



implementation VUToken_VUToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    INITIAL_SUPPLY_VUToken[this] := 1000000000 * 1000000000000000000;
    assume totalSupply__BasicToken[this] >= 0;
    assume INITIAL_SUPPLY_VUToken[this] >= 0;
    totalSupply__BasicToken[this] := INITIAL_SUPPLY_VUToken[this];
    assume M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume INITIAL_SUPPLY_VUToken[this] >= 0;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG] := INITIAL_SUPPLY_VUToken[this];
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][msgsender_MSG];
    assert {:EventEmitted "Transfer_VUToken"} true;
}



implementation VUToken_VUToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call DetailedERC20_DetailedERC20__fail(this, msgsender_MSG, msgvalue_MSG, 1696377479, -2118991182, 18);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BurnableToken_BurnableToken__fail(this, msgsender_MSG, msgvalue_MSG);
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

    call PausableToken_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call VUToken_VUToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation VUToken_VUToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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

    call DetailedERC20_DetailedERC20__success(this, msgsender_MSG, msgvalue_MSG, 1696377479, -2118991182, 18);
    if (revert)
    {
        return;
    }

    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BurnableToken_BurnableToken__success(this, msgsender_MSG, msgvalue_MSG);
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

    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call VUToken_VUToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation massTransfer_VUToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s1574: Ref, 
    _amounts_s1574: Ref)
   returns (__ret_0_: bool)
{
  var i_s1570: int;
  var __var_63: bool;

    gas := gas - 3;
    gas := gas - 45;
    assume __tmp__Length[_recipients_s1574] >= 0;
    assume __tmp__Length[_amounts_s1574] >= 0;
    if (!(__tmp__Length[_recipients_s1574] == __tmp__Length[_amounts_s1574]))
    {
        revert := true;
        return;
    }

    gas := gas - 17;
    assume i_s1570 >= 0;
    assume __tmp__Length[_recipients_s1574] >= 0;
    gas := gas - 11;
    assume i_s1570 >= 0;
    i_s1570 := 0;
    while (i_s1570 < __tmp__Length[_recipients_s1574])
    {
        gas := gas - 143;
        assume i_s1570 >= 0;
        assume i_s1570 >= 0;
        assume __tmp__M_int_int[_amounts_s1574][i_s1570] >= 0;
        if (__tmp__DType[this] == VUToken)
        {
            call __var_63 := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_int_Ref[_recipients_s1574][i_s1570], __tmp__M_int_int[_amounts_s1574][i_s1570]);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }

        if (!__var_63)
        {
            revert := true;
            return;
        }

        gas := gas - 19;
        assume i_s1570 >= 0;
        i_s1570 := i_s1570 + 1;
        assume i_s1570 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation massTransfer_VUToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s1574: Ref, 
    _amounts_s1574: Ref)
   returns (__ret_0_: bool)
{
  var i_s1570: int;
  var __var_63: bool;

    gas := gas - 3;
    gas := gas - 45;
    assume Length[_recipients_s1574] >= 0;
    assume Length[_amounts_s1574] >= 0;
    if (!(Length[_recipients_s1574] == Length[_amounts_s1574]))
    {
        revert := true;
        return;
    }

    gas := gas - 17;
    assume i_s1570 >= 0;
    assume Length[_recipients_s1574] >= 0;
    gas := gas - 11;
    assume i_s1570 >= 0;
    i_s1570 := 0;
    while (i_s1570 < Length[_recipients_s1574])
    {
        gas := gas - 143;
        assume i_s1570 >= 0;
        assume i_s1570 >= 0;
        assume M_int_int[_amounts_s1574][i_s1570] >= 0;
        if (DType[this] == VUToken)
        {
            call __var_63 := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[_recipients_s1574][i_s1570], M_int_int[_amounts_s1574][i_s1570]);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }

        if (!__var_63)
        {
            revert := true;
            return;
        }

        gas := gas - 19;
        assume i_s1570 >= 0;
        i_s1570 := i_s1570 + 1;
        assume i_s1570 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation ICOCrowdsale_ICOCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__RATE_ICOCrowdsale[this] := 6000;
    __tmp__MAX_LIMIT_ICOCrowdsale[this] := 450000000 * 1000000000000000000;
}



implementation ICOCrowdsale_ICOCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    RATE_ICOCrowdsale[this] := 6000;
    MAX_LIMIT_ICOCrowdsale[this] := 450000000 * 1000000000000000000;
}



implementation ICOCrowdsale_ICOCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int)
{
    call PostDeliveryCrowdsale_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume _openingTime_s1622 >= 0;
    assume _closingTime_s1622 >= 0;
    assume _deliveryTime_s1622 >= 0;
    call BaseCrowdsale_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _token_s1622, _whitelist_s1622, _tokenWallet_s1622, _wallet_s1622, 6000, _openingTime_s1622, _closingTime_s1622, _deliveryTime_s1622, 450000000 * 1000000000000000000);
    if (revert)
    {
        return;
    }

    call ICOCrowdsale_ICOCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _token_s1622, _whitelist_s1622, _tokenWallet_s1622, _wallet_s1622, _openingTime_s1622, _closingTime_s1622, _deliveryTime_s1622);
    if (revert)
    {
        return;
    }
}



implementation ICOCrowdsale_ICOCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1622: Ref, 
    _whitelist_s1622: Ref, 
    _tokenWallet_s1622: Ref, 
    _wallet_s1622: Ref, 
    _openingTime_s1622: int, 
    _closingTime_s1622: int, 
    _deliveryTime_s1622: int)
{
    call PostDeliveryCrowdsale_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume _openingTime_s1622 >= 0;
    assume _closingTime_s1622 >= 0;
    assume _deliveryTime_s1622 >= 0;
    call BaseCrowdsale_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _token_s1622, _whitelist_s1622, _tokenWallet_s1622, _wallet_s1622, 6000, _openingTime_s1622, _closingTime_s1622, _deliveryTime_s1622, 450000000 * 1000000000000000000);
    if (revert)
    {
        return;
    }

    call ICOCrowdsale_ICOCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _token_s1622, _whitelist_s1622, _tokenWallet_s1622, _wallet_s1622, _openingTime_s1622, _closingTime_s1622, _deliveryTime_s1622);
    if (revert)
    {
        return;
    }
}



implementation ICODeployer_ICODeployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_64: Ref;
  var __var_65: Ref;
  var __var_66: Ref;
  var __var_67: Ref;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: Ref;
  var __var_71: Ref;
  var __var_72: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_65 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_65] == VUToken;
    call VUToken_VUToken__fail(__var_65, this, 0);
    if (revert)
    {
        return;
    }

    __var_64 := __var_65;
    __tmp__v_ICODeployer[this] := __var_64;
    call __var_67 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_67] == Whitelist;
    call Whitelist_Whitelist__fail(__var_67, this, 0);
    if (revert)
    {
        return;
    }

    __var_66 := __var_67;
    __tmp__w_ICODeployer[this] := __var_66;
    call __var_69 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_70 := __tmp__w_ICODeployer[this];
    __var_71 := ConstantToRef(-190231024604166526341223022065634874113659956975);
    __var_72 := ConstantToRef(-190231024581481035213160457834743233618208742878);
    assume __tmp__DType[__var_69] == ICOCrowdsale;
    call ICOCrowdsale_ICOCrowdsale__fail(__var_69, this, 0, __tmp__v_ICODeployer[this], __tmp__w_ICODeployer[this], ConstantToRef(-190231024604166526341223022065634874113659956975), ConstantToRef(-190231024581481035213160457834743233618208742878), 1525039200, 1530309600, 1530396000);
    if (revert)
    {
        return;
    }

    __var_68 := __var_69;
    __tmp__i_ICODeployer[this] := __var_68;
}



implementation ICODeployer_ICODeployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_64: Ref;
  var __var_65: Ref;
  var __var_66: Ref;
  var __var_67: Ref;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: Ref;
  var __var_71: Ref;
  var __var_72: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_65 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_65] == VUToken;
    call VUToken_VUToken__success(__var_65, this, 0);
    if (revert)
    {
        return;
    }

    __var_64 := __var_65;
    v_ICODeployer[this] := __var_64;
    call __var_67 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_67] == Whitelist;
    call Whitelist_Whitelist__success(__var_67, this, 0);
    if (revert)
    {
        return;
    }

    __var_66 := __var_67;
    w_ICODeployer[this] := __var_66;
    call __var_69 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_70 := w_ICODeployer[this];
    __var_71 := ConstantToRef(-190231024604166526341223022065634874113659956975);
    __var_72 := ConstantToRef(-190231024581481035213160457834743233618208742878);
    assume DType[__var_69] == ICOCrowdsale;
    call ICOCrowdsale_ICOCrowdsale__success(__var_69, this, 0, v_ICODeployer[this], w_ICODeployer[this], ConstantToRef(-190231024604166526341223022065634874113659956975), ConstantToRef(-190231024581481035213160457834743233618208742878), 1525039200, 1530309600, 1530396000);
    if (revert)
    {
        return;
    }

    __var_68 := __var_69;
    i_ICODeployer[this] := __var_68;
}



implementation ICODeployer_ICODeployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_64: Ref;
  var __var_65: Ref;
  var __var_66: Ref;
  var __var_67: Ref;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: Ref;
  var __var_71: Ref;
  var __var_72: Ref;

    call ICODeployer_ICODeployer_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation ICODeployer_ICODeployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_64: Ref;
  var __var_65: Ref;
  var __var_66: Ref;
  var __var_67: Ref;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: Ref;
  var __var_71: Ref;
  var __var_72: Ref;

    call ICODeployer_ICODeployer_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == ICODeployer)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == ICOCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == VUToken)
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
    else if (__tmp__DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == DetailedERC20)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == BaseCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Whitelist)
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
    else if (__tmp__DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == PostDeliveryCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == AllowanceCrowdsale)
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
    else if (__tmp__DType[to] == ERC20)
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
    if (DType[to] == ICODeployer)
    {
        assume amount == 0;
    }
    else if (DType[to] == ICOCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == VUToken)
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
    else if (DType[to] == StandardToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == DetailedERC20)
    {
        assume amount == 0;
    }
    else if (DType[to] == BaseCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == Whitelist)
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
    else if (DType[to] == BasicToken)
    {
        assume amount == 0;
    }
    else if (DType[to] == PostDeliveryCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == TimedCrowdsale)
    {
        assume amount == 0;
    }
    else if (DType[to] == AllowanceCrowdsale)
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
    else if (DType[to] == ERC20)
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
  var __snap___tmp__M_Ref_int_balances1: [Ref][Ref]int;
  var __snap___tmp__sum_balances1: [Ref]int;
  var __snap___tmp__M_Ref_bool_whitelist2: [Ref][Ref]bool;
  var __snap___tmp__sum_whitelist2: [Ref]int;
  var __snap___tmp__M_Ref_bool_authorized3: [Ref][Ref]bool;
  var __snap___tmp__sum_authorized3: [Ref]int;
  var __snap___tmp__M_Ref_int_allowed4: [Ref][Ref]int;
  var __snap___tmp__M_Ref_Ref_allowed4: [Ref][Ref]Ref;
  var __snap___tmp__sum_allowed4: [Ref]int;
  var __snap___tmp__M_int_Ref: [Ref][int]Ref;
  var __snap___tmp__sum: [Ref]int;
  var __snap___tmp__M_int_int: [Ref][int]int;
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__token_Crowdsale: [Ref]Ref;
  var __snap___tmp__wallet_Crowdsale: [Ref]Ref;
  var __snap___tmp__rate_Crowdsale: [Ref]int;
  var __snap___tmp__weiRaised_Crowdsale: [Ref]int;
  var __snap___tmp__tokenWallet_AllowanceCrowdsale: [Ref]Ref;
  var __snap___tmp__openingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp__closingTime_TimedCrowdsale: [Ref]int;
  var __snap___tmp__balances_PostDeliveryCrowdsale: [Ref]Ref;
  var __snap___tmp__balances_BasicToken: [Ref]Ref;
  var __snap___tmp__totalSupply__BasicToken: [Ref]int;
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__whitelist_Whitelist: [Ref]Ref;
  var __snap___tmp__authorized_Whitelist: [Ref]Ref;
  var __snap___tmp__whitelist_BaseCrowdsale: [Ref]Ref;
  var __snap___tmp__tokensSold_BaseCrowdsale: [Ref]int;
  var __snap___tmp__deliveryTime_BaseCrowdsale: [Ref]int;
  var __snap___tmp__limit_BaseCrowdsale: [Ref]int;
  var __snap___tmp__name_DetailedERC20: [Ref]int;
  var __snap___tmp__symbol_DetailedERC20: [Ref]int;
  var __snap___tmp__decimals_DetailedERC20: [Ref]int;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__paused_Pausable: [Ref]bool;
  var __snap___tmp__INITIAL_SUPPLY_VUToken: [Ref]int;
  var __snap___tmp__RATE_ICOCrowdsale: [Ref]int;
  var __snap___tmp__MAX_LIMIT_ICOCrowdsale: [Ref]int;
  var __snap___tmp__v_ICODeployer: [Ref]Ref;
  var __snap___tmp__w_ICODeployer: [Ref]Ref;
  var __snap___tmp__i_ICODeployer: [Ref]Ref;

    havoc __exception;
    if (__exception)
    {
        __snap___tmp__Balance := __tmp__Balance;
        __snap___tmp__DType := __tmp__DType;
        __snap___tmp__Alloc := __tmp__Alloc;
        __snap___tmp__balance_ADDR := __tmp__balance_ADDR;
        __snap___tmp__M_Ref_int_balances0 := __tmp__M_Ref_int_balances0;
        __snap___tmp__sum_balances0 := __tmp__sum_balances0;
        __snap___tmp__M_Ref_int_balances1 := __tmp__M_Ref_int_balances1;
        __snap___tmp__sum_balances1 := __tmp__sum_balances1;
        __snap___tmp__M_Ref_bool_whitelist2 := __tmp__M_Ref_bool_whitelist2;
        __snap___tmp__sum_whitelist2 := __tmp__sum_whitelist2;
        __snap___tmp__M_Ref_bool_authorized3 := __tmp__M_Ref_bool_authorized3;
        __snap___tmp__sum_authorized3 := __tmp__sum_authorized3;
        __snap___tmp__M_Ref_int_allowed4 := __tmp__M_Ref_int_allowed4;
        __snap___tmp__M_Ref_Ref_allowed4 := __tmp__M_Ref_Ref_allowed4;
        __snap___tmp__sum_allowed4 := __tmp__sum_allowed4;
        __snap___tmp__M_int_Ref := __tmp__M_int_Ref;
        __snap___tmp__sum := __tmp__sum;
        __snap___tmp__M_int_int := __tmp__M_int_int;
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__token_Crowdsale := __tmp__token_Crowdsale;
        __snap___tmp__wallet_Crowdsale := __tmp__wallet_Crowdsale;
        __snap___tmp__rate_Crowdsale := __tmp__rate_Crowdsale;
        __snap___tmp__weiRaised_Crowdsale := __tmp__weiRaised_Crowdsale;
        __snap___tmp__tokenWallet_AllowanceCrowdsale := __tmp__tokenWallet_AllowanceCrowdsale;
        __snap___tmp__openingTime_TimedCrowdsale := __tmp__openingTime_TimedCrowdsale;
        __snap___tmp__closingTime_TimedCrowdsale := __tmp__closingTime_TimedCrowdsale;
        __snap___tmp__balances_PostDeliveryCrowdsale := __tmp__balances_PostDeliveryCrowdsale;
        __snap___tmp__balances_BasicToken := __tmp__balances_BasicToken;
        __snap___tmp__totalSupply__BasicToken := __tmp__totalSupply__BasicToken;
        __snap___tmp__owner_Ownable := __tmp__owner_Ownable;
        __snap___tmp__whitelist_Whitelist := __tmp__whitelist_Whitelist;
        __snap___tmp__authorized_Whitelist := __tmp__authorized_Whitelist;
        __snap___tmp__whitelist_BaseCrowdsale := __tmp__whitelist_BaseCrowdsale;
        __snap___tmp__tokensSold_BaseCrowdsale := __tmp__tokensSold_BaseCrowdsale;
        __snap___tmp__deliveryTime_BaseCrowdsale := __tmp__deliveryTime_BaseCrowdsale;
        __snap___tmp__limit_BaseCrowdsale := __tmp__limit_BaseCrowdsale;
        __snap___tmp__name_DetailedERC20 := __tmp__name_DetailedERC20;
        __snap___tmp__symbol_DetailedERC20 := __tmp__symbol_DetailedERC20;
        __snap___tmp__decimals_DetailedERC20 := __tmp__decimals_DetailedERC20;
        __snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
        __snap___tmp__paused_Pausable := __tmp__paused_Pausable;
        __snap___tmp__INITIAL_SUPPLY_VUToken := __tmp__INITIAL_SUPPLY_VUToken;
        __snap___tmp__RATE_ICOCrowdsale := __tmp__RATE_ICOCrowdsale;
        __snap___tmp__MAX_LIMIT_ICOCrowdsale := __tmp__MAX_LIMIT_ICOCrowdsale;
        __snap___tmp__v_ICODeployer := __tmp__v_ICODeployer;
        __snap___tmp__w_ICODeployer := __tmp__w_ICODeployer;
        __snap___tmp__i_ICODeployer := __tmp__i_ICODeployer;
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
        __tmp__M_Ref_int_balances1 := __snap___tmp__M_Ref_int_balances1;
        __tmp__sum_balances1 := __snap___tmp__sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := __snap___tmp__M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := __snap___tmp__sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := __snap___tmp__M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := __snap___tmp__sum_authorized3;
        __tmp__M_Ref_int_allowed4 := __snap___tmp__M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := __snap___tmp__M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := __snap___tmp__sum_allowed4;
        __tmp__M_int_Ref := __snap___tmp__M_int_Ref;
        __tmp__sum := __snap___tmp__sum;
        __tmp__M_int_int := __snap___tmp__M_int_int;
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__token_Crowdsale := __snap___tmp__token_Crowdsale;
        __tmp__wallet_Crowdsale := __snap___tmp__wallet_Crowdsale;
        __tmp__rate_Crowdsale := __snap___tmp__rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := __snap___tmp__weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := __snap___tmp__tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := __snap___tmp__openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := __snap___tmp__closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := __snap___tmp__balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := __snap___tmp__balances_BasicToken;
        __tmp__totalSupply__BasicToken := __snap___tmp__totalSupply__BasicToken;
        __tmp__owner_Ownable := __snap___tmp__owner_Ownable;
        __tmp__whitelist_Whitelist := __snap___tmp__whitelist_Whitelist;
        __tmp__authorized_Whitelist := __snap___tmp__authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := __snap___tmp__whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := __snap___tmp__tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := __snap___tmp__deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := __snap___tmp__limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := __snap___tmp__name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := __snap___tmp__symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := __snap___tmp__decimals_DetailedERC20;
        __tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
        __tmp__paused_Pausable := __snap___tmp__paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := __snap___tmp__INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := __snap___tmp__RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := __snap___tmp__MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := __snap___tmp__v_ICODeployer;
        __tmp__w_ICODeployer := __snap___tmp__w_ICODeployer;
        __tmp__i_ICODeployer := __snap___tmp__i_ICODeployer;
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
        __tmp__M_Ref_int_balances1 := M_Ref_int_balances1;
        __tmp__sum_balances1 := sum_balances1;
        __tmp__M_Ref_bool_whitelist2 := M_Ref_bool_whitelist2;
        __tmp__sum_whitelist2 := sum_whitelist2;
        __tmp__M_Ref_bool_authorized3 := M_Ref_bool_authorized3;
        __tmp__sum_authorized3 := sum_authorized3;
        __tmp__M_Ref_int_allowed4 := M_Ref_int_allowed4;
        __tmp__M_Ref_Ref_allowed4 := M_Ref_Ref_allowed4;
        __tmp__sum_allowed4 := sum_allowed4;
        __tmp__M_int_Ref := M_int_Ref;
        __tmp__sum := sum;
        __tmp__M_int_int := M_int_int;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__token_Crowdsale := token_Crowdsale;
        __tmp__wallet_Crowdsale := wallet_Crowdsale;
        __tmp__rate_Crowdsale := rate_Crowdsale;
        __tmp__weiRaised_Crowdsale := weiRaised_Crowdsale;
        __tmp__tokenWallet_AllowanceCrowdsale := tokenWallet_AllowanceCrowdsale;
        __tmp__openingTime_TimedCrowdsale := openingTime_TimedCrowdsale;
        __tmp__closingTime_TimedCrowdsale := closingTime_TimedCrowdsale;
        __tmp__balances_PostDeliveryCrowdsale := balances_PostDeliveryCrowdsale;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__totalSupply__BasicToken := totalSupply__BasicToken;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__whitelist_Whitelist := whitelist_Whitelist;
        __tmp__authorized_Whitelist := authorized_Whitelist;
        __tmp__whitelist_BaseCrowdsale := whitelist_BaseCrowdsale;
        __tmp__tokensSold_BaseCrowdsale := tokensSold_BaseCrowdsale;
        __tmp__deliveryTime_BaseCrowdsale := deliveryTime_BaseCrowdsale;
        __tmp__limit_BaseCrowdsale := limit_BaseCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__RATE_ICOCrowdsale := RATE_ICOCrowdsale;
        __tmp__MAX_LIMIT_ICOCrowdsale := MAX_LIMIT_ICOCrowdsale;
        __tmp__v_ICODeployer := v_ICODeployer;
        __tmp__w_ICODeployer := w_ICODeployer;
        __tmp__i_ICODeployer := i_ICODeployer;
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



implementation onlyWhileOpen_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 928;
    assume __tmp__now >= 0;
    assume __tmp__openingTime_TimedCrowdsale[this] >= 0;
    assume __tmp__now >= 0;
    assume __tmp__closingTime_TimedCrowdsale[this] >= 0;
    if (!(__tmp__now >= __tmp__openingTime_TimedCrowdsale[this]
       && __tmp__now <= __tmp__closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyWhileOpen_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 928;
    assume now >= 0;
    assume openingTime_TimedCrowdsale[this] >= 0;
    assume now >= 0;
    assume closingTime_TimedCrowdsale[this] >= 0;
    if (!(now >= openingTime_TimedCrowdsale[this]
       && now <= closingTime_TimedCrowdsale[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 4140;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 4140;
    if (!(msgsender_MSG == owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyAuthorized_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1887;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]
       || __tmp__M_Ref_bool_authorized3[__tmp__authorized_Whitelist[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }
}



implementation onlyAuthorized_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1887;
    if (!(msgsender_MSG == owner_Ownable[this]
       || M_Ref_bool_authorized3[authorized_Whitelist[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }
}



implementation onlyWhitelisted_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s909: Ref)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 6700;
    call __var_29 := isWhitelisted_Whitelist__fail(__tmp__whitelist_BaseCrowdsale[this], this, __var_30, _beneficiary_s909);
    if (revert)
    {
        return;
    }

    if (!__var_29)
    {
        revert := true;
        return;
    }
}



implementation onlyWhitelisted_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s909: Ref)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 6700;
    call __var_29 := isWhitelisted_Whitelist__success(whitelist_BaseCrowdsale[this], this, __var_30, _beneficiary_s909);
    if (revert)
    {
        return;
    }

    if (!__var_29)
    {
        revert := true;
        return;
    }
}



implementation whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 4056;
    if (!!__tmp__paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 4056;
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
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
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
       || DType[this] == ERC20
       || DType[this] == BasicToken
       || DType[this] == BurnableToken
       || DType[this] == DetailedERC20
       || DType[this] == StandardToken
       || DType[this] == PausableToken
       || DType[this] == VUToken;
    gas := gas - 53000;
    call ERC20Basic_ERC20Basic__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20Basic(this);
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
  var owner_s42: Ref;
  var spender_s42: Ref;
  var __ret_0_allowance: int;
  var from_s53: Ref;
  var to_s53: Ref;
  var value_s53: int;
  var __ret_0_transferFrom: bool;
  var spender_s62: Ref;
  var value_s62: int;
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
    havoc owner_s42;
    havoc spender_s42;
    havoc __ret_0_allowance;
    havoc from_s53;
    havoc to_s53;
    havoc value_s53;
    havoc __ret_0_transferFrom;
    havoc spender_s62;
    havoc value_s62;
    havoc __ret_0_approve;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
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
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s42, spender_s42);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s53, to_s53, value_s53);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s62, value_s62);
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
       || DType[this] == DetailedERC20
       || DType[this] == StandardToken
       || DType[this] == PausableToken
       || DType[this] == VUToken;
    gas := gas - 53000;
    call ERC20_ERC20__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ERC20(this);
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
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
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



implementation CorralChoice_Crowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;
  var _beneficiary_s247: Ref;
  var __ret_0_totalSupply: int;
  var who_s13: Ref;
  var __ret_0_balanceOf: int;
  var to_s22: Ref;
  var value_s22: int;
  var __ret_0_transfer: bool;
  var owner_s42: Ref;
  var spender_s42: Ref;
  var __ret_0_allowance: int;
  var from_s53: Ref;
  var to_s53: Ref;
  var value_s53: int;
  var __ret_0_transferFrom: bool;
  var spender_s62: Ref;
  var value_s62: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _rate_s183;
    havoc _wallet_s183;
    havoc _token_s183;
    havoc _beneficiary_s247;
    havoc __ret_0_totalSupply;
    havoc who_s13;
    havoc __ret_0_balanceOf;
    havoc to_s22;
    havoc value_s22;
    havoc __ret_0_transfer;
    havoc owner_s42;
    havoc spender_s42;
    havoc __ret_0_allowance;
    havoc from_s53;
    havoc to_s53;
    havoc value_s53;
    havoc __ret_0_transferFrom;
    havoc spender_s62;
    havoc value_s62;
    havoc __ret_0_approve;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_ERC20Basic(token_Crowdsale[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(token_Crowdsale[this], msgsender_MSG, msgvalue_MSG, who_s13);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(token_Crowdsale[this], msgsender_MSG, msgvalue_MSG, to_s22, value_s22);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(token_Crowdsale[this], msgsender_MSG, msgvalue_MSG, owner_s42, spender_s42);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(token_Crowdsale[this], msgsender_MSG, msgvalue_MSG, from_s53, to_s53, value_s53);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(token_Crowdsale[this], msgsender_MSG, msgvalue_MSG, spender_s62, value_s62);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
}



implementation CorralEntry_Crowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Crowdsale
       || DType[this] == AllowanceCrowdsale
       || DType[this] == TimedCrowdsale
       || DType[this] == PostDeliveryCrowdsale
       || DType[this] == BaseCrowdsale
       || DType[this] == ICOCrowdsale;
    gas := gas - 53000;
    call Crowdsale_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _rate_s183, _wallet_s183, _token_s183);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Crowdsale(this);
    }
}



implementation CorralChoice_AllowanceCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;
  var _beneficiary_s247: Ref;
  var _tokenWallet_s362: Ref;
  var __ret_0_remainingTokens: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _rate_s183;
    havoc _wallet_s183;
    havoc _token_s183;
    havoc _beneficiary_s247;
    havoc _tokenWallet_s362;
    havoc __ret_0_remainingTokens;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_AllowanceCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _tokenWallet_s362: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == AllowanceCrowdsale
       || DType[this] == BaseCrowdsale
       || DType[this] == ICOCrowdsale;
    gas := gas - 53000;
    call AllowanceCrowdsale_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s362);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_AllowanceCrowdsale(this);
    }
}



implementation CorralChoice_TimedCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;
  var _beneficiary_s247: Ref;
  var _openingTime_s444: int;
  var _closingTime_s444: int;
  var __ret_0_hasClosed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _rate_s183;
    havoc _wallet_s183;
    havoc _token_s183;
    havoc _beneficiary_s247;
    havoc _openingTime_s444;
    havoc _closingTime_s444;
    havoc __ret_0_hasClosed;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_TimedCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _openingTime_s444: int;
  var _closingTime_s444: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == TimedCrowdsale
       || DType[this] == PostDeliveryCrowdsale
       || DType[this] == BaseCrowdsale
       || DType[this] == ICOCrowdsale;
    gas := gas - 53000;
    call TimedCrowdsale_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, _openingTime_s444, _closingTime_s444);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_TimedCrowdsale(this);
    }
}



implementation CorralChoice_PostDeliveryCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;
  var _beneficiary_s247: Ref;
  var _openingTime_s444: int;
  var _closingTime_s444: int;
  var __ret_0_hasClosed: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _rate_s183;
    havoc _wallet_s183;
    havoc _token_s183;
    havoc _beneficiary_s247;
    havoc _openingTime_s444;
    havoc _closingTime_s444;
    havoc __ret_0_hasClosed;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdrawTokens_PostDeliveryCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation CorralEntry_PostDeliveryCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == PostDeliveryCrowdsale
       || DType[this] == BaseCrowdsale
       || DType[this] == ICOCrowdsale;
    gas := gas - 53000;
    call PostDeliveryCrowdsale_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PostDeliveryCrowdsale(this);
    }
}



implementation CorralChoice_BasicToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s627: Ref;
  var balance_s627: int;
  var _to_s615: Ref;
  var _value_s615: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s615;
    havoc _value_s615;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
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
        call balance_s627 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s627);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s615, _value_s615);
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
       || DType[this] == BurnableToken
       || DType[this] == StandardToken
       || DType[this] == PausableToken
       || DType[this] == VUToken;
    gas := gas - 53000;
    call BasicToken_BasicToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BasicToken(this);
    }
}



implementation CorralChoice_BurnableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s627: Ref;
  var balance_s627: int;
  var _to_s615: Ref;
  var _value_s615: int;
  var __ret_0_transfer: bool;
  var _value_s679: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s615;
    havoc _value_s615;
    havoc __ret_0_transfer;
    havoc _value_s679;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
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
        call balance_s627 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s627);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s615, _value_s615);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_BurnableToken(this, msgsender_MSG, msgvalue_MSG, _value_s679);
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
    assume DType[this] == BurnableToken || DType[this] == VUToken;
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
  var newOwner_s733: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s733;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
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
       || DType[this] == Whitelist
       || DType[this] == BaseCrowdsale
       || DType[this] == Pausable
       || DType[this] == PausableToken
       || DType[this] == VUToken
       || DType[this] == ICOCrowdsale;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_Whitelist(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s733: Ref;
  var _admin_s782: Ref;
  var _admin_s796: Ref;
  var _beneficiary_s814: Ref;
  var _beneficiaries_s850: Ref;
  var _beneficiary_s868: Ref;
  var _beneficiary_s880: Ref;
  var __ret_0_isWhitelisted: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s733;
    havoc _admin_s782;
    havoc _admin_s796;
    havoc _beneficiary_s814;
    havoc _beneficiaries_s850;
    havoc _beneficiary_s868;
    havoc _beneficiary_s880;
    havoc __ret_0_isWhitelisted;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call authorize_Whitelist(this, msgsender_MSG, msgvalue_MSG, _admin_s782);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reject_Whitelist(this, msgsender_MSG, msgvalue_MSG, _admin_s796);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addToWhitelist_Whitelist(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s814);
    }
    else if (choice == 3)
    {
        call _beneficiaries_s850 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addManyToWhitelist_Whitelist(this, msgsender_MSG, msgvalue_MSG, _beneficiaries_s850);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call removeFromWhitelist_Whitelist(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s868);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isWhitelisted := isWhitelisted_Whitelist(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s880);
    }
}



implementation CorralEntry_Whitelist()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == Whitelist;
    gas := gas - 53000;
    call Whitelist_Whitelist__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Whitelist(this);
    }
}



implementation CorralChoice_BaseCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;
  var _beneficiary_s247: Ref;
  var _tokenWallet_s362: Ref;
  var __ret_0_remainingTokens: int;
  var _openingTime_s444: int;
  var _closingTime_s444: int;
  var __ret_0_hasClosed: bool;
  var newOwner_s733: Ref;
  var _token_s988: Ref;
  var _whitelist_s988: Ref;
  var _tokenWallet_s988: Ref;
  var _wallet_s988: Ref;
  var _rate_s988: int;
  var _openingTime_s988: int;
  var _closingTime_s988: int;
  var _deliveryTime_s988: int;
  var _limit_s988: int;
  var _admin_s782: Ref;
  var _admin_s796: Ref;
  var _beneficiary_s814: Ref;
  var _beneficiaries_s850: Ref;
  var _beneficiary_s868: Ref;
  var _beneficiary_s880: Ref;
  var __ret_0_isWhitelisted: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _rate_s183;
    havoc _wallet_s183;
    havoc _token_s183;
    havoc _beneficiary_s247;
    havoc _tokenWallet_s362;
    havoc __ret_0_remainingTokens;
    havoc _openingTime_s444;
    havoc _closingTime_s444;
    havoc __ret_0_hasClosed;
    havoc newOwner_s733;
    havoc _token_s988;
    havoc _whitelist_s988;
    havoc _tokenWallet_s988;
    havoc _wallet_s988;
    havoc _rate_s988;
    havoc _openingTime_s988;
    havoc _closingTime_s988;
    havoc _deliveryTime_s988;
    havoc _limit_s988;
    havoc _admin_s782;
    havoc _admin_s796;
    havoc _beneficiary_s814;
    havoc _beneficiaries_s850;
    havoc _beneficiary_s868;
    havoc _beneficiary_s880;
    havoc __ret_0_isWhitelisted;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(whitelist_BaseCrowdsale[this], msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call authorize_Whitelist(whitelist_BaseCrowdsale[this], msgsender_MSG, msgvalue_MSG, _admin_s782);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reject_Whitelist(whitelist_BaseCrowdsale[this], msgsender_MSG, msgvalue_MSG, _admin_s796);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addToWhitelist_Whitelist(whitelist_BaseCrowdsale[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s814);
    }
    else if (choice == 8)
    {
        call _beneficiaries_s850 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addManyToWhitelist_Whitelist(whitelist_BaseCrowdsale[this], msgsender_MSG, msgvalue_MSG, _beneficiaries_s850);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call removeFromWhitelist_Whitelist(whitelist_BaseCrowdsale[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s868);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isWhitelisted := isWhitelisted_Whitelist(whitelist_BaseCrowdsale[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s880);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdrawTokens_BaseCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
}



implementation CorralEntry_BaseCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _token_s988: Ref;
  var _whitelist_s988: Ref;
  var _tokenWallet_s988: Ref;
  var _wallet_s988: Ref;
  var _rate_s988: int;
  var _openingTime_s988: int;
  var _closingTime_s988: int;
  var _deliveryTime_s988: int;
  var _limit_s988: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == BaseCrowdsale || DType[this] == ICOCrowdsale;
    gas := gas - 53000;
    call BaseCrowdsale_BaseCrowdsale(this, msgsender_MSG, msgvalue_MSG, _token_s988, _whitelist_s988, _tokenWallet_s988, _wallet_s988, _rate_s988, _openingTime_s988, _closingTime_s988, _deliveryTime_s988, _limit_s988);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BaseCrowdsale(this);
    }
}



implementation CorralChoice_DetailedERC20(this: Ref)
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
  var owner_s42: Ref;
  var spender_s42: Ref;
  var __ret_0_allowance: int;
  var from_s53: Ref;
  var to_s53: Ref;
  var value_s53: int;
  var __ret_0_transferFrom: bool;
  var spender_s62: Ref;
  var value_s62: int;
  var __ret_0_approve: bool;
  var _name_s1084: int;
  var _symbol_s1084: int;
  var _decimals_s1084: int;
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
    havoc owner_s42;
    havoc spender_s42;
    havoc __ret_0_allowance;
    havoc from_s53;
    havoc to_s53;
    havoc value_s53;
    havoc __ret_0_transferFrom;
    havoc spender_s62;
    havoc value_s62;
    havoc __ret_0_approve;
    havoc _name_s1084;
    havoc _symbol_s1084;
    havoc _decimals_s1084;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
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
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s42, spender_s42);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s53, to_s53, value_s53);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s62, value_s62);
    }
}



implementation CorralEntry_DetailedERC20()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _name_s1084: int;
  var _symbol_s1084: int;
  var _decimals_s1084: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == DetailedERC20 || DType[this] == VUToken;
    gas := gas - 53000;
    call DetailedERC20_DetailedERC20(this, msgsender_MSG, msgvalue_MSG, _name_s1084, _symbol_s1084, _decimals_s1084);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_DetailedERC20(this);
    }
}



implementation CorralChoice_StandardToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s627: Ref;
  var balance_s627: int;
  var _to_s615: Ref;
  var _value_s615: int;
  var __ret_0_transfer: bool;
  var _owner_s1225: Ref;
  var _spender_s1225: Ref;
  var __ret_0_allowance: int;
  var _from_s1181: Ref;
  var _to_s1181: Ref;
  var _value_s1181: int;
  var __ret_0_transferFrom: bool;
  var _spender_s1209: Ref;
  var _value_s1209: int;
  var __ret_0_approve: bool;
  var _spender_s1266: Ref;
  var _addedValue_s1266: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s1326: Ref;
  var _subtractedValue_s1326: int;
  var __ret_0_decreaseApproval: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s615;
    havoc _value_s615;
    havoc __ret_0_transfer;
    havoc _owner_s1225;
    havoc _spender_s1225;
    havoc __ret_0_allowance;
    havoc _from_s1181;
    havoc _to_s1181;
    havoc _value_s1181;
    havoc __ret_0_transferFrom;
    havoc _spender_s1209;
    havoc _value_s1209;
    havoc __ret_0_approve;
    havoc _spender_s1266;
    havoc _addedValue_s1266;
    havoc __ret_0_increaseApproval;
    havoc _spender_s1326;
    havoc _subtractedValue_s1326;
    havoc __ret_0_decreaseApproval;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
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
        call balance_s627 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s627);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s615, _value_s615);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s1225, _spender_s1225);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s1181, _to_s1181, _value_s1181);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1209, _value_s1209);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1266, _addedValue_s1266);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1326, _subtractedValue_s1326);
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
       || DType[this] == PausableToken
       || DType[this] == VUToken;
    gas := gas - 53000;
    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_StandardToken(this);
    }
}



implementation CorralChoice_Pausable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s733: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s733;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
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
       || DType[this] == VUToken;
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
  var __ret_0_totalSupply: int;
  var _owner_s627: Ref;
  var balance_s627: int;
  var _to_s1406: Ref;
  var _value_s1406: int;
  var __ret_0_transfer: bool;
  var _owner_s1225: Ref;
  var _spender_s1225: Ref;
  var __ret_0_allowance: int;
  var _from_s1427: Ref;
  var _to_s1427: Ref;
  var _value_s1427: int;
  var __ret_0_transferFrom: bool;
  var _spender_s1445: Ref;
  var _value_s1445: int;
  var __ret_0_approve: bool;
  var newOwner_s733: Ref;
  var _spender_s1463: Ref;
  var _addedValue_s1463: int;
  var success_s1463: bool;
  var _spender_s1481: Ref;
  var _subtractedValue_s1481: int;
  var success_s1481: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s1406;
    havoc _value_s1406;
    havoc __ret_0_transfer;
    havoc _owner_s1225;
    havoc _spender_s1225;
    havoc __ret_0_allowance;
    havoc _from_s1427;
    havoc _to_s1427;
    havoc _value_s1427;
    havoc __ret_0_transferFrom;
    havoc _spender_s1445;
    havoc _value_s1445;
    havoc __ret_0_approve;
    havoc newOwner_s733;
    havoc _spender_s1463;
    havoc _addedValue_s1463;
    havoc success_s1463;
    havoc _spender_s1481;
    havoc _subtractedValue_s1481;
    havoc success_s1481;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s627 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s627);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s1225, _spender_s1225);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1463 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1481 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
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
    assume DType[this] == PausableToken || DType[this] == VUToken;
    gas := gas - 53000;
    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PausableToken(this);
    }
}



implementation CorralChoice_VUToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s627: Ref;
  var balance_s627: int;
  var _to_s1406: Ref;
  var _value_s1406: int;
  var __ret_0_transfer: bool;
  var _owner_s1225: Ref;
  var _spender_s1225: Ref;
  var __ret_0_allowance: int;
  var _from_s1427: Ref;
  var _to_s1427: Ref;
  var _value_s1427: int;
  var __ret_0_transferFrom: bool;
  var _spender_s1445: Ref;
  var _value_s1445: int;
  var __ret_0_approve: bool;
  var _value_s679: int;
  var newOwner_s733: Ref;
  var _name_s1084: int;
  var _symbol_s1084: int;
  var _decimals_s1084: int;
  var _spender_s1463: Ref;
  var _addedValue_s1463: int;
  var success_s1463: bool;
  var _spender_s1481: Ref;
  var _subtractedValue_s1481: int;
  var success_s1481: bool;
  var _recipients_s1574: Ref;
  var _amounts_s1574: Ref;
  var __ret_0_massTransfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s1406;
    havoc _value_s1406;
    havoc __ret_0_transfer;
    havoc _owner_s1225;
    havoc _spender_s1225;
    havoc __ret_0_allowance;
    havoc _from_s1427;
    havoc _to_s1427;
    havoc _value_s1427;
    havoc __ret_0_transferFrom;
    havoc _spender_s1445;
    havoc _value_s1445;
    havoc __ret_0_approve;
    havoc _value_s679;
    havoc newOwner_s733;
    havoc _name_s1084;
    havoc _symbol_s1084;
    havoc _decimals_s1084;
    havoc _spender_s1463;
    havoc _addedValue_s1463;
    havoc success_s1463;
    havoc _spender_s1481;
    havoc _subtractedValue_s1481;
    havoc success_s1481;
    havoc _recipients_s1574;
    havoc _amounts_s1574;
    havoc __ret_0_massTransfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s627 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s627);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s1225, _spender_s1225);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_BurnableToken(this, msgsender_MSG, msgvalue_MSG, _value_s679);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1463 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1481 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        call _recipients_s1574 := FreshRefGenerator__success();
        call _amounts_s1574 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_massTransfer := massTransfer_VUToken(this, msgsender_MSG, msgvalue_MSG, _recipients_s1574, _amounts_s1574);
    }
}



implementation CorralEntry_VUToken()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == VUToken;
    gas := gas - 53000;
    call VUToken_VUToken(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_VUToken(this);
    }
}



implementation CorralChoice_ICOCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;
  var _beneficiary_s247: Ref;
  var _tokenWallet_s362: Ref;
  var __ret_0_remainingTokens: int;
  var _openingTime_s444: int;
  var _closingTime_s444: int;
  var __ret_0_hasClosed: bool;
  var newOwner_s733: Ref;
  var _token_s988: Ref;
  var _whitelist_s988: Ref;
  var _tokenWallet_s988: Ref;
  var _wallet_s988: Ref;
  var _rate_s988: int;
  var _openingTime_s988: int;
  var _closingTime_s988: int;
  var _deliveryTime_s988: int;
  var _limit_s988: int;
  var _token_s1622: Ref;
  var _whitelist_s1622: Ref;
  var _tokenWallet_s1622: Ref;
  var _wallet_s1622: Ref;
  var _openingTime_s1622: int;
  var _closingTime_s1622: int;
  var _deliveryTime_s1622: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _rate_s183;
    havoc _wallet_s183;
    havoc _token_s183;
    havoc _beneficiary_s247;
    havoc _tokenWallet_s362;
    havoc __ret_0_remainingTokens;
    havoc _openingTime_s444;
    havoc _closingTime_s444;
    havoc __ret_0_hasClosed;
    havoc newOwner_s733;
    havoc _token_s988;
    havoc _whitelist_s988;
    havoc _tokenWallet_s988;
    havoc _wallet_s988;
    havoc _rate_s988;
    havoc _openingTime_s988;
    havoc _closingTime_s988;
    havoc _deliveryTime_s988;
    havoc _limit_s988;
    havoc _token_s1622;
    havoc _whitelist_s1622;
    havoc _tokenWallet_s1622;
    havoc _wallet_s1622;
    havoc _openingTime_s1622;
    havoc _closingTime_s1622;
    havoc _deliveryTime_s1622;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdrawTokens_BaseCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
}



implementation CorralEntry_ICOCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _token_s1622: Ref;
  var _whitelist_s1622: Ref;
  var _tokenWallet_s1622: Ref;
  var _wallet_s1622: Ref;
  var _openingTime_s1622: int;
  var _closingTime_s1622: int;
  var _deliveryTime_s1622: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ICOCrowdsale;
    gas := gas - 53000;
    call ICOCrowdsale_ICOCrowdsale(this, msgsender_MSG, msgvalue_MSG, _token_s1622, _whitelist_s1622, _tokenWallet_s1622, _wallet_s1622, _openingTime_s1622, _closingTime_s1622, _deliveryTime_s1622);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ICOCrowdsale(this);
    }
}



implementation CorralChoice_ICODeployer(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var __ret_0_totalSupply: int;
  var _owner_s627: Ref;
  var balance_s627: int;
  var _to_s1406: Ref;
  var _value_s1406: int;
  var __ret_0_transfer: bool;
  var _owner_s1225: Ref;
  var _spender_s1225: Ref;
  var __ret_0_allowance: int;
  var _from_s1427: Ref;
  var _to_s1427: Ref;
  var _value_s1427: int;
  var __ret_0_transferFrom: bool;
  var _spender_s1445: Ref;
  var _value_s1445: int;
  var __ret_0_approve: bool;
  var _value_s679: int;
  var newOwner_s733: Ref;
  var _name_s1084: int;
  var _symbol_s1084: int;
  var _decimals_s1084: int;
  var _spender_s1463: Ref;
  var _addedValue_s1463: int;
  var success_s1463: bool;
  var _spender_s1481: Ref;
  var _subtractedValue_s1481: int;
  var success_s1481: bool;
  var _recipients_s1574: Ref;
  var _amounts_s1574: Ref;
  var __ret_0_massTransfer: bool;
  var _admin_s782: Ref;
  var _admin_s796: Ref;
  var _beneficiary_s814: Ref;
  var _beneficiaries_s850: Ref;
  var _beneficiary_s868: Ref;
  var _beneficiary_s880: Ref;
  var __ret_0_isWhitelisted: bool;
  var _rate_s183: int;
  var _wallet_s183: Ref;
  var _token_s183: Ref;
  var _beneficiary_s247: Ref;
  var _tokenWallet_s362: Ref;
  var __ret_0_remainingTokens: int;
  var _openingTime_s444: int;
  var _closingTime_s444: int;
  var __ret_0_hasClosed: bool;
  var _token_s988: Ref;
  var _whitelist_s988: Ref;
  var _tokenWallet_s988: Ref;
  var _wallet_s988: Ref;
  var _rate_s988: int;
  var _openingTime_s988: int;
  var _closingTime_s988: int;
  var _deliveryTime_s988: int;
  var _limit_s988: int;
  var _token_s1622: Ref;
  var _whitelist_s1622: Ref;
  var _tokenWallet_s1622: Ref;
  var _wallet_s1622: Ref;
  var _openingTime_s1622: int;
  var _closingTime_s1622: int;
  var _deliveryTime_s1622: int;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s1406;
    havoc _value_s1406;
    havoc __ret_0_transfer;
    havoc _owner_s1225;
    havoc _spender_s1225;
    havoc __ret_0_allowance;
    havoc _from_s1427;
    havoc _to_s1427;
    havoc _value_s1427;
    havoc __ret_0_transferFrom;
    havoc _spender_s1445;
    havoc _value_s1445;
    havoc __ret_0_approve;
    havoc _value_s679;
    havoc newOwner_s733;
    havoc _name_s1084;
    havoc _symbol_s1084;
    havoc _decimals_s1084;
    havoc _spender_s1463;
    havoc _addedValue_s1463;
    havoc success_s1463;
    havoc _spender_s1481;
    havoc _subtractedValue_s1481;
    havoc success_s1481;
    havoc _recipients_s1574;
    havoc _amounts_s1574;
    havoc __ret_0_massTransfer;
    havoc _admin_s782;
    havoc _admin_s796;
    havoc _beneficiary_s814;
    havoc _beneficiaries_s850;
    havoc _beneficiary_s868;
    havoc _beneficiary_s880;
    havoc __ret_0_isWhitelisted;
    havoc _rate_s183;
    havoc _wallet_s183;
    havoc _token_s183;
    havoc _beneficiary_s247;
    havoc _tokenWallet_s362;
    havoc __ret_0_remainingTokens;
    havoc _openingTime_s444;
    havoc _closingTime_s444;
    havoc __ret_0_hasClosed;
    havoc _token_s988;
    havoc _whitelist_s988;
    havoc _tokenWallet_s988;
    havoc _wallet_s988;
    havoc _rate_s988;
    havoc _openingTime_s988;
    havoc _closingTime_s988;
    havoc _deliveryTime_s988;
    havoc _limit_s988;
    havoc _token_s1622;
    havoc _whitelist_s1622;
    havoc _tokenWallet_s1622;
    havoc _wallet_s1622;
    havoc _openingTime_s1622;
    havoc _closingTime_s1622;
    havoc _deliveryTime_s1622;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != AllowanceCrowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != PostDeliveryCrowdsale;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != BurnableToken;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Whitelist;
    assume DType[msgsender_MSG] != BaseCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != ICOCrowdsale;
    //assume DType[msgsender_MSG] != ICODeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 25)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(i_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 24)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(i_ICODeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 23)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(i_ICODeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 22)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdrawTokens_BaseCrowdsale(i_ICODeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 21)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(i_ICODeployer[this], msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 20)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(w_ICODeployer[this], msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 19)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call authorize_Whitelist(w_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _admin_s782);
    }
    else if (choice == 18)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reject_Whitelist(w_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _admin_s796);
    }
    else if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addToWhitelist_Whitelist(w_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s814);
    }
    else if (choice == 16)
    {
        call _beneficiaries_s850 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addManyToWhitelist_Whitelist(w_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiaries_s850);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call removeFromWhitelist_Whitelist(w_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s868);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isWhitelisted := isWhitelisted_Whitelist(w_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s880);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_totalSupply := totalSupply_BasicToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s627 := balanceOf_BasicToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _owner_s627);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _to_s1406, _value_s1406);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _owner_s1225, _spender_s1225);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _from_s1427, _to_s1427, _value_s1427);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _spender_s1445, _value_s1445);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call burn_BurnableToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _value_s679);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1463 := increaseApproval_PausableToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _spender_s1463, _addedValue_s1463);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1481 := decreaseApproval_PausableToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _spender_s1481, _subtractedValue_s1481);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpause_Pausable(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 1)
    {
        call _recipients_s1574 := FreshRefGenerator__success();
        call _amounts_s1574 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_massTransfer := massTransfer_VUToken(v_ICODeployer[this], msgsender_MSG, msgvalue_MSG, _recipients_s1574, _amounts_s1574);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == ICODeployer;
    gas := gas - 53000;
    call ICODeployer_ICODeployer(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_ICODeployer(this);
    }
}


