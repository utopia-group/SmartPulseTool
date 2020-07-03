// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:PresaleCrowdsale.bpl /pretty:1 /noVerify /noinfer /noTypecheck __SolToBoogieTest_out.bpl

// #LTLProperty: [](!finished(*, tokensSold_BaseCrowdsale[i_PresaleDeployer[this]] > limit_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[i_PresaleDeployer[this]]][2]]))

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

var PresaleCrowdsale: ContractName;

var PresaleCrowdsale.Phase: ContractName;

var DetailedERC20: ContractName;

var StandardToken: ContractName;

var Pausable: ContractName;

var PausableToken: ContractName;

var VUToken: ContractName;

var PresaleDeployer: ContractName;

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



procedure {:inline 1} PresaleCrowdsale.Phase_ctor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate: int, 
    cap: int, 
    limit: int);
  modifies rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies Balance, gas, weiRaised_Crowdsale, revert, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:public} {:inline 1} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



var {:access "this.tokenWallet=tokenWallet_AllowanceCrowdsale[this]"} tokenWallet_AllowanceCrowdsale: [Ref]Ref;

procedure {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref);
  modifies Balance, tokenWallet_AllowanceCrowdsale, revert;



procedure {:constructor} {:public} {:inline 1} AllowanceCrowdsale_AllowanceCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _tokenWallet_s362: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, tokenWallet_AllowanceCrowdsale;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, sum_balances1, M_Ref_int_balances1;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, owner_Ownable;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, owner_Ownable;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, owner_Ownable, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_bool_authorized3;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_bool_authorized3;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_bool_whitelist2;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_bool_whitelist2;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_bool_whitelist2;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int);
  modifies Balance, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, revert, whitelist_BaseCrowdsale;



procedure {:constructor} {:public} {:inline 1} BaseCrowdsale_BaseCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale;



implementation BaseCrowdsale_BaseCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call BaseCrowdsale_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _token_s985, _whitelist_s985, _tokenWallet_s985, _wallet_s985, _rate_s985, _openingTime_s985, _closingTime_s985, _deliveryTime_s985, _limit_s985);
        assume revert || gas < 0;
    }
    else
    {
        call BaseCrowdsale_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _token_s985, _whitelist_s985, _tokenWallet_s985, _wallet_s985, _rate_s985, _openingTime_s985, _closingTime_s985, _deliveryTime_s985, _limit_s985);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} withdrawTokens_BaseCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
    _beneficiary_s1022: Ref, 
    _weiAmount_s1022: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1050: Ref, 
    _tokenAmount_s1050: int);
  modifies gas, tokensSold_BaseCrowdsale, revert, sum_balances0, M_Ref_int_balances0;



var {:access "this.PHASE1_RATE=PHASE1_RATE_PresaleCrowdsale[this]"} PHASE1_RATE_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE2_RATE=PHASE2_RATE_PresaleCrowdsale[this]"} PHASE2_RATE_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE3_RATE=PHASE3_RATE_PresaleCrowdsale[this]"} PHASE3_RATE_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE1_CAP=PHASE1_CAP_PresaleCrowdsale[this]"} PHASE1_CAP_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE2_CAP=PHASE2_CAP_PresaleCrowdsale[this]"} PHASE2_CAP_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE3_CAP=PHASE3_CAP_PresaleCrowdsale[this]"} PHASE3_CAP_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE1_LIMIT=PHASE1_LIMIT_PresaleCrowdsale[this]"} PHASE1_LIMIT_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE2_LIMIT=PHASE2_LIMIT_PresaleCrowdsale[this]"} PHASE2_LIMIT_PresaleCrowdsale: [Ref]int;

var {:access "this.PHASE3_LIMIT=PHASE3_LIMIT_PresaleCrowdsale[this]"} PHASE3_LIMIT_PresaleCrowdsale: [Ref]int;

var rate_PresaleCrowdsale.Phase: [Ref]int;

var cap_PresaleCrowdsale.Phase: [Ref]int;

var limit_PresaleCrowdsale.Phase: [Ref]int;

var {:access "this.phases[i0]=M_int_Ref[phases_PresaleCrowdsale[this]][i0]"} {:sum "sum(this.phases)=sum[phases_PresaleCrowdsale[this]]"} phases_PresaleCrowdsale: [Ref]Ref;

procedure {:inline 1} PresaleCrowdsale_PresaleCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int);
  modifies Balance, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, Alloc, M_int_Ref, Length, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



procedure {:constructor} {:public} {:inline 1} PresaleCrowdsale_PresaleCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, M_int_Ref, Length, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



implementation PresaleCrowdsale_PresaleCrowdsale(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call PresaleCrowdsale_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _token_s1143, _whitelist_s1143, _tokenWallet_s1143, _wallet_s1143, _openingTime_s1143, _closingTime_s1143, _deliveryTime_s1143);
        assume revert || gas < 0;
    }
    else
    {
        call PresaleCrowdsale_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _token_s1143, _whitelist_s1143, _tokenWallet_s1143, _wallet_s1143, _openingTime_s1143, _closingTime_s1143, _deliveryTime_s1143);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getPhase_PresaleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas;



implementation getPhase_PresaleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := getPhase_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getPhase_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getPhaseRate_PresaleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1175: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas;



implementation getPhaseRate_PresaleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1175: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := getPhaseRate_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1175);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getPhaseRate_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1175);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} getPhaseCap_PresaleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1198: int)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas;



implementation getPhaseCap_PresaleCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1198: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := getPhaseCap_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1198);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := getPhaseCap_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1198);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} _init_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies M_int_Ref, Length, Alloc, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



procedure {:inline 1} _getPhase_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _getPhaseUpperLimit_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1301: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _getTokenAmount_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s1320: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} _calcTokenAmount_PresaleCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _phase_s1529: int, 
    _weiAmount_s1529: int, 
    _tokensSold_s1529: int)
   returns (tokensBought_s1529: int);
  modifies gas, revert;



var {:access "this.name=name_DetailedERC20[this]"} name_DetailedERC20: [Ref]int;

var {:access "this.symbol=symbol_DetailedERC20[this]"} symbol_DetailedERC20: [Ref]int;

var {:access "this.decimals=decimals_DetailedERC20[this]"} decimals_DetailedERC20: [Ref]int;

procedure {:inline 1} DetailedERC20_DetailedERC20_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int);
  modifies Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



procedure {:constructor} {:public} {:inline 1} DetailedERC20_DetailedERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



implementation DetailedERC20_DetailedERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call DetailedERC20_DetailedERC20__fail(this, msgsender_MSG, msgvalue_MSG, _name_s1560, _symbol_s1560, _decimals_s1560);
        assume revert || gas < 0;
    }
    else
    {
        call DetailedERC20_DetailedERC20__success(this, msgsender_MSG, msgvalue_MSG, _name_s1560, _symbol_s1560, _decimals_s1560);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
    _from_s1657: Ref, 
    _to_s1657: Ref, 
    _value_s1657: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1657: Ref, 
    _to_s1657: Ref, 
    _value_s1657: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1657, _to_s1657, _value_s1657);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1657, _to_s1657, _value_s1657);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1685: Ref, 
    _value_s1685: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1685: Ref, 
    _value_s1685: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1685, _value_s1685);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1685, _value_s1685);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1701: Ref, 
    _spender_s1701: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1701: Ref, 
    _spender_s1701: Ref)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s1701, _spender_s1701);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s1701, _spender_s1701);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1742: Ref, 
    _addedValue_s1742: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1742: Ref, 
    _addedValue_s1742: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1742, _addedValue_s1742);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1742, _addedValue_s1742);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1802: Ref, 
    _subtractedValue_s1802: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1802: Ref, 
    _subtractedValue_s1802: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1802, _subtractedValue_s1802);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1802, _subtractedValue_s1802);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, paused_Pausable;



procedure {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, owner_Ownable, paused_Pausable;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, paused_Pausable;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, paused_Pausable;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
    _to_s1882: Ref, 
    _value_s1882: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, sum_balances1, M_Ref_int_balances1;



implementation transfer_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1882: Ref, 
    _value_s1882: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1903: Ref, 
    _to_s1903: Ref, 
    _value_s1903: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



implementation transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1903: Ref, 
    _to_s1903: Ref, 
    _value_s1903: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := transferFrom_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1921: Ref, 
    _value_s1921: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1921: Ref, 
    _value_s1921: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := approve_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1939: Ref, 
    _addedValue_s1939: int)
   returns (success_s1939: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1939: Ref, 
    _addedValue_s1939: int)
   returns (success_s1939: bool)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call success_s1939 := increaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
        assume revert || gas < 0;
    }
    else
    {
        call success_s1939 := increaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1957: Ref, 
    _subtractedValue_s1957: int)
   returns (success_s1957: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



implementation decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1957: Ref, 
    _subtractedValue_s1957: int)
   returns (success_s1957: bool)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call success_s1957 := decreaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
        assume revert || gas < 0;
    }
    else
    {
        call success_s1957 := decreaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
        assume !revert && gas >= 0;
    }
}



var {:access "this.INITIAL_SUPPLY=INITIAL_SUPPLY_VUToken[this]"} INITIAL_SUPPLY_VUToken: [Ref]int;

procedure {:inline 1} VUToken_VUToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, INITIAL_SUPPLY_VUToken, totalSupply__BasicToken, sum_balances1, M_Ref_int_balances1;



procedure {:constructor} {:public} {:inline 1} VUToken_VUToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, Alloc, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken;



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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
    _recipients_s2050: Ref, 
    _amounts_s2050: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, gas, sum_balances1, M_Ref_int_balances1;



implementation massTransfer_VUToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s2050: Ref, 
    _amounts_s2050: Ref)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call __ret_0_ := massTransfer_VUToken__fail(this, msgsender_MSG, msgvalue_MSG, _recipients_s2050, _amounts_s2050);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := massTransfer_VUToken__success(this, msgsender_MSG, msgvalue_MSG, _recipients_s2050, _amounts_s2050);
        assume !revert && gas >= 0;
    }
}



var {:access "this.i=i_PresaleDeployer[this]"} i_PresaleDeployer: [Ref]Ref;

var {:access "this.w=w_PresaleDeployer[this]"} w_PresaleDeployer: [Ref]Ref;

procedure {:inline 1} PresaleDeployer_PresaleDeployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, w_PresaleDeployer, i_PresaleDeployer, Alloc, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, M_int_Ref, Length, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



procedure {:constructor} {:public} {:inline 1} PresaleDeployer_PresaleDeployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, w_PresaleDeployer, i_PresaleDeployer, Alloc, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, M_int_Ref, Length, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



implementation PresaleDeployer_PresaleDeployer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
        call PresaleDeployer_PresaleDeployer__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call PresaleDeployer_PresaleDeployer__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies Balance, gas, weiRaised_Crowdsale, revert, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, revert, gas, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



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
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralEntry_Crowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, Balance, weiRaised_Crowdsale, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralChoice_AllowanceCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_AllowanceCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, Balance, weiRaised_Crowdsale, tokenWallet_AllowanceCrowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralChoice_TimedCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralEntry_TimedCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, Balance, weiRaised_Crowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralChoice_PostDeliveryCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, weiRaised_Crowdsale, sum_balances0, M_Ref_int_balances0, tokensSold_BaseCrowdsale, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_PostDeliveryCrowdsale();
  modifies gas, Alloc, Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



procedure CorralChoice_BurnableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken;



procedure CorralEntry_BurnableToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, owner_Ownable, Balance;



procedure CorralChoice_Whitelist(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2;



procedure CorralEntry_Whitelist();
  modifies gas, Alloc, Balance, owner_Ownable, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



procedure CorralChoice_BaseCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_BaseCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, Balance, weiRaised_Crowdsale, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralChoice_PresaleCrowdsale(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, Balance, weiRaised_Crowdsale, owner_Ownable, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_PresaleCrowdsale();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, Balance, weiRaised_Crowdsale, owner_Ownable, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, M_int_Ref, Length, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



procedure CorralChoice_DetailedERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_DetailedERC20();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, sum_balances1, M_Ref_int_balances1, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, sum_allowed4;



procedure CorralChoice_Pausable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, owner_Ownable, paused_Pausable;



procedure CorralEntry_Pausable();
  modifies gas, Alloc, Balance, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



procedure CorralChoice_PausableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, owner_Ownable, paused_Pausable, sum_balances1, M_Ref_int_balances1;



procedure CorralEntry_PausableToken();
  modifies gas, Alloc, Balance, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, sum_allowed4;



procedure CorralChoice_VUToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken, owner_Ownable, paused_Pausable;



procedure CorralEntry_VUToken();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, totalSupply__BasicToken, owner_Ownable, paused_Pausable, Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, allowed_StandardToken, INITIAL_SUPPLY_VUToken;



procedure CorralChoice_PresaleDeployer(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, Balance, weiRaised_Crowdsale, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, now, owner_Ownable, M_Ref_bool_authorized3, M_Ref_bool_whitelist2, Balance, weiRaised_Crowdsale, w_PresaleDeployer, i_PresaleDeployer, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, paused_Pausable, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, authorized_Whitelist, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, M_int_Ref, Length, sum_allowed4, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



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

var __tmp__PHASE1_RATE_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE2_RATE_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE3_RATE_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE1_CAP_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE2_CAP_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE3_CAP_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE1_LIMIT_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE2_LIMIT_PresaleCrowdsale: [Ref]int;

var __tmp__PHASE3_LIMIT_PresaleCrowdsale: [Ref]int;

var __tmp__rate_PresaleCrowdsale.Phase: [Ref]int;

var __tmp__cap_PresaleCrowdsale.Phase: [Ref]int;

var __tmp__limit_PresaleCrowdsale.Phase: [Ref]int;

var __tmp__phases_PresaleCrowdsale: [Ref]Ref;

var __tmp__name_DetailedERC20: [Ref]int;

var __tmp__symbol_DetailedERC20: [Ref]int;

var __tmp__decimals_DetailedERC20: [Ref]int;

var __tmp__allowed_StandardToken: [Ref]Ref;

var __tmp__paused_Pausable: [Ref]bool;

var __tmp__INITIAL_SUPPLY_VUToken: [Ref]int;

var __tmp__i_PresaleDeployer: [Ref]Ref;

var __tmp__w_PresaleDeployer: [Ref]Ref;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} PresaleCrowdsale.Phase_ctor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate: int, 
    cap: int, 
    limit: int);
  modifies __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase;



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
  modifies __tmp__Balance, gas, __tmp__weiRaised_Crowdsale, revert, __tmp__tokensSold_BaseCrowdsale, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



procedure {:inline 1} buyTokens_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref);
  modifies Balance, gas, weiRaised_Crowdsale, revert, tokensSold_BaseCrowdsale, sum_balances0, M_Ref_int_balances0, sum_balances1, M_Ref_int_balances1, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} buyTokens_Crowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _beneficiary_s247: Ref);
  modifies __tmp__Balance, gas, __tmp__weiRaised_Crowdsale, revert, __tmp__tokensSold_BaseCrowdsale, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



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
  modifies gas, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



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
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int);
  modifies __tmp__Balance, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, revert, __tmp__whitelist_BaseCrowdsale;



procedure {:constructor} {:inline 1} BaseCrowdsale_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int);
  modifies Balance, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale;



procedure {:constructor} {:inline 1} BaseCrowdsale_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int);
  modifies __tmp__Balance, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__owner_Ownable, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale;



procedure {:inline 1} withdrawTokens_BaseCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



procedure {:inline 1} withdrawTokens_BaseCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} _init_BaseCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:inline 1} _preValidatePurchase_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1022: Ref, 
    _weiAmount_s1022: int);
  modifies gas, revert;



procedure {:inline 1} _processPurchase_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1050: Ref, 
    _tokenAmount_s1050: int);
  modifies gas, __tmp__tokensSold_BaseCrowdsale, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} PresaleCrowdsale_PresaleCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int);
  modifies __tmp__Balance, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__phases_PresaleCrowdsale, __tmp__Alloc, __tmp__M_int_Ref, __tmp__Length, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase;



procedure {:constructor} {:inline 1} PresaleCrowdsale_PresaleCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int);
  modifies Balance, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, Alloc, owner_Ownable, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, M_int_Ref, Length, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



procedure {:constructor} {:inline 1} PresaleCrowdsale_PresaleCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int);
  modifies __tmp__Balance, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__owner_Ownable, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__phases_PresaleCrowdsale, __tmp__M_int_Ref, __tmp__Length, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase;



procedure {:inline 1} getPhase_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getPhase_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getPhaseRate_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1175: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getPhaseRate_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1175: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getPhaseCap_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1198: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} getPhaseCap_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1198: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _init_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__M_int_Ref, __tmp__Length, __tmp__Alloc, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase;



procedure {:inline 1} _getPhase_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _getPhaseUpperLimit_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1301: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} _getTokenAmount_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s1320: int)
   returns (__ret_0_: int);
  modifies gas, revert;



procedure {:inline 1} _calcTokenAmount_PresaleCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _phase_s1529: int, 
    _weiAmount_s1529: int, 
    _tokensSold_s1529: int)
   returns (tokensBought_s1529: int);
  modifies gas, revert;



procedure {:inline 1} DetailedERC20_DetailedERC20_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int);
  modifies __tmp__Balance, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20;



procedure {:constructor} {:inline 1} DetailedERC20_DetailedERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int);
  modifies Balance, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20;



procedure {:constructor} {:inline 1} DetailedERC20_DetailedERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int);
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
    _from_s1657: Ref, 
    _to_s1657: Ref, 
    _value_s1657: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1657: Ref, 
    _to_s1657: Ref, 
    _value_s1657: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1685: Ref, 
    _value_s1685: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1685: Ref, 
    _value_s1685: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1701: Ref, 
    _spender_s1701: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1701: Ref, 
    _spender_s1701: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1742: Ref, 
    _addedValue_s1742: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1742: Ref, 
    _addedValue_s1742: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1802: Ref, 
    _subtractedValue_s1802: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1802: Ref, 
    _subtractedValue_s1802: int)
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
    _to_s1882: Ref, 
    _value_s1882: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1;



procedure {:inline 1} transfer_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1882: Ref, 
    _value_s1882: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1;



procedure {:inline 1} transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1903: Ref, 
    _to_s1903: Ref, 
    _value_s1903: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, sum_balances1, M_Ref_int_balances1, Alloc;



procedure {:inline 1} transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1903: Ref, 
    _to_s1903: Ref, 
    _value_s1903: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__Alloc;



procedure {:inline 1} approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1921: Ref, 
    _value_s1921: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1921: Ref, 
    _value_s1921: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1939: Ref, 
    _addedValue_s1939: int)
   returns (success_s1939: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1939: Ref, 
    _addedValue_s1939: int)
   returns (success_s1939: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__sum_allowed4, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1957: Ref, 
    _subtractedValue_s1957: int)
   returns (success_s1957: bool);
  modifies gas, revert, M_Ref_Ref_allowed4, M_Ref_int_allowed4, sum_allowed4, Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1957: Ref, 
    _subtractedValue_s1957: int)
   returns (success_s1957: bool);
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
    _recipients_s2050: Ref, 
    _amounts_s2050: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances1, M_Ref_int_balances1;



procedure {:inline 1} massTransfer_VUToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _recipients_s2050: Ref, 
    _amounts_s2050: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances1, __tmp__M_Ref_int_balances1;



procedure {:inline 1} PresaleDeployer_PresaleDeployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__w_PresaleDeployer, __tmp__i_PresaleDeployer, __tmp__Alloc, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__whitelist_Whitelist, __tmp__M_Ref_bool_whitelist2, __tmp__authorized_Whitelist, __tmp__M_Ref_bool_authorized3, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__phases_PresaleCrowdsale, __tmp__M_int_Ref, __tmp__Length, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase;



procedure {:constructor} {:inline 1} PresaleDeployer_PresaleDeployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, w_PresaleDeployer, i_PresaleDeployer, Alloc, name_DetailedERC20, symbol_DetailedERC20, decimals_DetailedERC20, balances_BasicToken, M_Ref_int_balances1, sum_balances1, totalSupply__BasicToken, allowed_StandardToken, M_Ref_Ref_allowed4, M_Ref_int_allowed4, owner_Ownable, paused_Pausable, INITIAL_SUPPLY_VUToken, whitelist_Whitelist, M_Ref_bool_whitelist2, authorized_Whitelist, M_Ref_bool_authorized3, balances_PostDeliveryCrowdsale, M_Ref_int_balances0, sum_balances0, wallet_Crowdsale, rate_Crowdsale, weiRaised_Crowdsale, revert, token_Crowdsale, tokenWallet_AllowanceCrowdsale, openingTime_TimedCrowdsale, closingTime_TimedCrowdsale, tokensSold_BaseCrowdsale, deliveryTime_BaseCrowdsale, limit_BaseCrowdsale, whitelist_BaseCrowdsale, PHASE1_RATE_PresaleCrowdsale, PHASE2_RATE_PresaleCrowdsale, PHASE3_RATE_PresaleCrowdsale, PHASE1_CAP_PresaleCrowdsale, PHASE2_CAP_PresaleCrowdsale, PHASE3_CAP_PresaleCrowdsale, PHASE1_LIMIT_PresaleCrowdsale, PHASE2_LIMIT_PresaleCrowdsale, PHASE3_LIMIT_PresaleCrowdsale, phases_PresaleCrowdsale, M_int_Ref, Length, rate_PresaleCrowdsale.Phase, cap_PresaleCrowdsale.Phase, limit_PresaleCrowdsale.Phase;



procedure {:constructor} {:inline 1} PresaleDeployer_PresaleDeployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__w_PresaleDeployer, __tmp__i_PresaleDeployer, __tmp__Alloc, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__totalSupply__BasicToken, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed4, __tmp__M_Ref_int_allowed4, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__whitelist_Whitelist, __tmp__M_Ref_bool_whitelist2, __tmp__authorized_Whitelist, __tmp__M_Ref_bool_authorized3, __tmp__balances_PostDeliveryCrowdsale, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, revert, __tmp__token_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__whitelist_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__phases_PresaleCrowdsale, __tmp__M_int_Ref, __tmp__Length, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance, gas, __tmp__weiRaised_Crowdsale, revert, __tmp__tokensSold_BaseCrowdsale, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__sum_balances1, __tmp__M_Ref_int_balances1, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_balances1, __tmp__sum_balances1, __tmp__M_Ref_bool_whitelist2, __tmp__sum_whitelist2, __tmp__M_Ref_bool_authorized3, __tmp__sum_authorized3, __tmp__M_Ref_int_allowed4, __tmp__M_Ref_Ref_allowed4, __tmp__sum_allowed4, __tmp__M_int_Ref, __tmp__sum, __tmp__M_int_int, __tmp__Length, __tmp__now, __tmp__token_Crowdsale, __tmp__wallet_Crowdsale, __tmp__rate_Crowdsale, __tmp__weiRaised_Crowdsale, __tmp__tokenWallet_AllowanceCrowdsale, __tmp__openingTime_TimedCrowdsale, __tmp__closingTime_TimedCrowdsale, __tmp__balances_PostDeliveryCrowdsale, __tmp__balances_BasicToken, __tmp__totalSupply__BasicToken, __tmp__owner_Ownable, __tmp__whitelist_Whitelist, __tmp__authorized_Whitelist, __tmp__whitelist_BaseCrowdsale, __tmp__tokensSold_BaseCrowdsale, __tmp__deliveryTime_BaseCrowdsale, __tmp__limit_BaseCrowdsale, __tmp__PHASE1_RATE_PresaleCrowdsale, __tmp__PHASE2_RATE_PresaleCrowdsale, __tmp__PHASE3_RATE_PresaleCrowdsale, __tmp__PHASE1_CAP_PresaleCrowdsale, __tmp__PHASE2_CAP_PresaleCrowdsale, __tmp__PHASE3_CAP_PresaleCrowdsale, __tmp__PHASE1_LIMIT_PresaleCrowdsale, __tmp__PHASE2_LIMIT_PresaleCrowdsale, __tmp__PHASE3_LIMIT_PresaleCrowdsale, __tmp__rate_PresaleCrowdsale.Phase, __tmp__cap_PresaleCrowdsale.Phase, __tmp__limit_PresaleCrowdsale.Phase, __tmp__phases_PresaleCrowdsale, __tmp__name_DetailedERC20, __tmp__symbol_DetailedERC20, __tmp__decimals_DetailedERC20, __tmp__allowed_StandardToken, __tmp__paused_Pausable, __tmp__INITIAL_SUPPLY_VUToken, __tmp__i_PresaleDeployer, __tmp__w_PresaleDeployer, revert, gas;



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



implementation PresaleCrowdsale.Phase_ctor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate: int, 
    cap: int, 
    limit: int)
{
    __tmp__rate_PresaleCrowdsale.Phase[this] := rate;
    __tmp__cap_PresaleCrowdsale.Phase[this] := cap;
    __tmp__limit_PresaleCrowdsale.Phase[this] := limit;
}



implementation PresaleCrowdsale.Phase_ctor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    rate: int, 
    cap: int, 
    limit: int)
{
    rate_PresaleCrowdsale.Phase[this] := rate;
    cap_PresaleCrowdsale.Phase[this] := cap;
    limit_PresaleCrowdsale.Phase[this] := limit;
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
    gas := gas - 18;
    gas := gas - 156;
    assume b_s91 >= 0;
    assume a_s91 >= 0;
    gas := gas - 84;
    assume a_s91 >= 0;
    assume b_s91 >= 0;
    assume a_s91 - b_s91 >= 0;
    __ret_0_ := a_s91 - b_s91;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s91: int, b_s91: int)
   returns (__ret_0_: int)
{
    gas := gas - 18;
    gas := gas - 156;
    assume b_s91 >= 0;
    assume a_s91 >= 0;
    assert b_s91 <= a_s91;
    gas := gas - 84;
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
    __tmp__rate_Crowdsale[this] := 7500;
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
    rate_Crowdsale[this] := 7500;
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
    {
        call tokens_s246 := _getTokenAmount_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, weiAmount_s246);
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
    if (DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    gas := gas - 6;
    gas := gas - 32;
    assume _weiAmount_s325 >= 0;
    assume _weiAmount_s325 * 7500 >= 0;
    __ret_0_ := _weiAmount_s325 * 7500;
    return;
}



implementation _getTokenAmount_Crowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s325: int)
   returns (__ret_0_: int)
{
    gas := gas - 6;
    gas := gas - 32;
    assume _weiAmount_s325 >= 0;
    assume _weiAmount_s325 * 7500 >= 0;
    __ret_0_ := _weiAmount_s325 * 7500;
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__tokensSold_BaseCrowdsale[this] := 0;
    __tmp__deliveryTime_BaseCrowdsale[this] := 0;
    __tmp__limit_BaseCrowdsale[this] := 0;
    __var_31 := null;
    if (!(_whitelist_s985 != null))
    {
        revert := true;
        return;
    }

    assume __tmp__now >= 0;
    assume _deliveryTime_s985 >= 0;
    if (!(__tmp__now < _deliveryTime_s985))
    {
        revert := true;
        return;
    }

    assume _limit_s985 >= 0;
    if (!(_limit_s985 > 0))
    {
        revert := true;
        return;
    }

    assume _deliveryTime_s985 >= 0;
    assume __tmp__now >= 0;
    assume __tmp__now + 8640000 >= 0;
    if (!(_deliveryTime_s985 < __tmp__now + 8640000))
    {
        revert := true;
        return;
    }

    assume __tmp__DType[_whitelist_s985] == Whitelist;
    __var_32 := _whitelist_s985;
    __tmp__whitelist_BaseCrowdsale[this] := __var_32;
    assume __tmp__deliveryTime_BaseCrowdsale[this] >= 0;
    assume _deliveryTime_s985 >= 0;
    __tmp__deliveryTime_BaseCrowdsale[this] := _deliveryTime_s985;
    assume __tmp__limit_BaseCrowdsale[this] >= 0;
    assume _limit_s985 >= 0;
    __tmp__limit_BaseCrowdsale[this] := _limit_s985;
}



implementation BaseCrowdsale_BaseCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    tokensSold_BaseCrowdsale[this] := 0;
    deliveryTime_BaseCrowdsale[this] := 0;
    limit_BaseCrowdsale[this] := 0;
    __var_31 := null;
    if (!(_whitelist_s985 != null))
    {
        revert := true;
        return;
    }

    assume now >= 0;
    assume _deliveryTime_s985 >= 0;
    if (!(now < _deliveryTime_s985))
    {
        revert := true;
        return;
    }

    assume _limit_s985 >= 0;
    if (!(_limit_s985 > 0))
    {
        revert := true;
        return;
    }

    assume _deliveryTime_s985 >= 0;
    assume now >= 0;
    assume now + 8640000 >= 0;
    if (!(_deliveryTime_s985 < now + 8640000))
    {
        revert := true;
        return;
    }

    assume DType[_whitelist_s985] == Whitelist;
    __var_32 := _whitelist_s985;
    whitelist_BaseCrowdsale[this] := __var_32;
    assume deliveryTime_BaseCrowdsale[this] >= 0;
    assume _deliveryTime_s985 >= 0;
    deliveryTime_BaseCrowdsale[this] := _deliveryTime_s985;
    assume limit_BaseCrowdsale[this] >= 0;
    assume _limit_s985 >= 0;
    limit_BaseCrowdsale[this] := _limit_s985;
}



implementation BaseCrowdsale_BaseCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume _rate_s985 >= 0;
    call Crowdsale_Crowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _rate_s985, _wallet_s985, _token_s985);
    if (revert)
    {
        return;
    }

    call AllowanceCrowdsale_AllowanceCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s985);
    if (revert)
    {
        return;
    }

    assume _openingTime_s985 >= 0;
    assume _closingTime_s985 >= 0;
    call TimedCrowdsale_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _openingTime_s985, _closingTime_s985);
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

    call BaseCrowdsale_BaseCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _token_s985, _whitelist_s985, _tokenWallet_s985, _wallet_s985, _rate_s985, _openingTime_s985, _closingTime_s985, _deliveryTime_s985, _limit_s985);
    if (revert)
    {
        return;
    }
}



implementation BaseCrowdsale_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s985: Ref, 
    _whitelist_s985: Ref, 
    _tokenWallet_s985: Ref, 
    _wallet_s985: Ref, 
    _rate_s985: int, 
    _openingTime_s985: int, 
    _closingTime_s985: int, 
    _deliveryTime_s985: int, 
    _limit_s985: int)
{
  var __var_31: Ref;
  var __var_32: Ref;

    assume _rate_s985 >= 0;
    call Crowdsale_Crowdsale__success(this, msgsender_MSG, msgvalue_MSG, _rate_s985, _wallet_s985, _token_s985);
    if (revert)
    {
        return;
    }

    call AllowanceCrowdsale_AllowanceCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _tokenWallet_s985);
    if (revert)
    {
        return;
    }

    assume _openingTime_s985 >= 0;
    assume _closingTime_s985 >= 0;
    call TimedCrowdsale_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _openingTime_s985, _closingTime_s985);
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

    call BaseCrowdsale_BaseCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _token_s985, _whitelist_s985, _tokenWallet_s985, _wallet_s985, _rate_s985, _openingTime_s985, _closingTime_s985, _deliveryTime_s985, _limit_s985);
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
    if (__tmp__DType[this] == PresaleCrowdsale)
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
    if (DType[this] == PresaleCrowdsale)
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
    _beneficiary_s1022: Ref, 
    _weiAmount_s1022: int)
{
  var __var_34: int;

    call onlyWhitelisted_pre__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1022);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume _weiAmount_s1022 >= 0;
    if (__tmp__DType[this] == PresaleCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1022, _weiAmount_s1022);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1022, _weiAmount_s1022);
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
    _beneficiary_s1022: Ref, 
    _weiAmount_s1022: int)
{
  var __var_34: int;

    call onlyWhitelisted_pre__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1022);
    if (revert)
    {
        return;
    }

    gas := gas - 20;
    assume _weiAmount_s1022 >= 0;
    if (DType[this] == PresaleCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1022, _weiAmount_s1022);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == BaseCrowdsale)
    {
        call _preValidatePurchase_TimedCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1022, _weiAmount_s1022);
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
    _beneficiary_s1050: Ref, 
    _tokenAmount_s1050: int)
{
  var __var_35: int;

    gas := gas - 40494;
    assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
    assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
    assume _tokenAmount_s1050 >= 0;
    call __var_35 := add_SafeMath__fail(this, this, 0, __tmp__tokensSold_BaseCrowdsale[this], _tokenAmount_s1050);
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
    assume _tokenAmount_s1050 >= 0;
    call _processPurchase_PostDeliveryCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1050, _tokenAmount_s1050);
    if (revert)
    {
        return;
    }
}



implementation _processPurchase_BaseCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _beneficiary_s1050: Ref, 
    _tokenAmount_s1050: int)
{
  var __var_35: int;

    gas := gas - 40494;
    assume tokensSold_BaseCrowdsale[this] >= 0;
    assume tokensSold_BaseCrowdsale[this] >= 0;
    assume _tokenAmount_s1050 >= 0;
    call __var_35 := add_SafeMath__success(this, this, 0, tokensSold_BaseCrowdsale[this], _tokenAmount_s1050);
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
    assume _tokenAmount_s1050 >= 0;
    call _processPurchase_PostDeliveryCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s1050, _tokenAmount_s1050);
    if (revert)
    {
        return;
    }
}



implementation PresaleCrowdsale_PresaleCrowdsale_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int)
{
  var __var_36: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__PHASE1_RATE_PresaleCrowdsale[this] := 7500;
    __tmp__PHASE2_RATE_PresaleCrowdsale[this] := 6900;
    __tmp__PHASE3_RATE_PresaleCrowdsale[this] := 6300;
    __tmp__PHASE1_CAP_PresaleCrowdsale[this] := 30000000 * 1000000000000000000;
    __tmp__PHASE2_CAP_PresaleCrowdsale[this] := 40000000 * 1000000000000000000;
    __tmp__PHASE3_CAP_PresaleCrowdsale[this] := 80000000 * 1000000000000000000;
    assume __tmp__PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    __tmp__PHASE1_LIMIT_PresaleCrowdsale[this] := __tmp__PHASE1_CAP_PresaleCrowdsale[this];
    assume __tmp__PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE1_CAP_PresaleCrowdsale[this]
         + __tmp__PHASE2_CAP_PresaleCrowdsale[this]
       >= 0;
    __tmp__PHASE2_LIMIT_PresaleCrowdsale[this] := __tmp__PHASE1_CAP_PresaleCrowdsale[this]
       + __tmp__PHASE2_CAP_PresaleCrowdsale[this];
    assume __tmp__PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE1_CAP_PresaleCrowdsale[this]
         + __tmp__PHASE2_CAP_PresaleCrowdsale[this]
       >= 0;
    assume __tmp__PHASE3_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE1_CAP_PresaleCrowdsale[this]
         + __tmp__PHASE2_CAP_PresaleCrowdsale[this]
         + __tmp__PHASE3_CAP_PresaleCrowdsale[this]
       >= 0;
    __tmp__PHASE3_LIMIT_PresaleCrowdsale[this] := __tmp__PHASE1_CAP_PresaleCrowdsale[this]
       + __tmp__PHASE2_CAP_PresaleCrowdsale[this]
       + __tmp__PHASE3_CAP_PresaleCrowdsale[this];
    call __var_36 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__phases_PresaleCrowdsale[this] := __var_36;
    assume __tmp__Length[__tmp__phases_PresaleCrowdsale[this]] == 0;
    if (__tmp__DType[this] == PresaleCrowdsale)
    {
        call _init_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation PresaleCrowdsale_PresaleCrowdsale_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int)
{
  var __var_36: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    PHASE1_RATE_PresaleCrowdsale[this] := 7500;
    PHASE2_RATE_PresaleCrowdsale[this] := 6900;
    PHASE3_RATE_PresaleCrowdsale[this] := 6300;
    PHASE1_CAP_PresaleCrowdsale[this] := 30000000 * 1000000000000000000;
    PHASE2_CAP_PresaleCrowdsale[this] := 40000000 * 1000000000000000000;
    PHASE3_CAP_PresaleCrowdsale[this] := 80000000 * 1000000000000000000;
    assume PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    PHASE1_LIMIT_PresaleCrowdsale[this] := PHASE1_CAP_PresaleCrowdsale[this];
    assume PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE1_CAP_PresaleCrowdsale[this] + PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    PHASE2_LIMIT_PresaleCrowdsale[this] := PHASE1_CAP_PresaleCrowdsale[this] + PHASE2_CAP_PresaleCrowdsale[this];
    assume PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE1_CAP_PresaleCrowdsale[this] + PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE3_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE1_CAP_PresaleCrowdsale[this]
         + PHASE2_CAP_PresaleCrowdsale[this]
         + PHASE3_CAP_PresaleCrowdsale[this]
       >= 0;
    PHASE3_LIMIT_PresaleCrowdsale[this] := PHASE1_CAP_PresaleCrowdsale[this]
       + PHASE2_CAP_PresaleCrowdsale[this]
       + PHASE3_CAP_PresaleCrowdsale[this];
    call __var_36 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    phases_PresaleCrowdsale[this] := __var_36;
    assume Length[phases_PresaleCrowdsale[this]] == 0;
    if (DType[this] == PresaleCrowdsale)
    {
        call _init_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation PresaleCrowdsale_PresaleCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int)
{
  var __var_36: Ref;

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

    assume __tmp__PHASE1_RATE_PresaleCrowdsale[this] >= 0;
    assume _openingTime_s1143 >= 0;
    assume _closingTime_s1143 >= 0;
    assume _deliveryTime_s1143 >= 0;
    assume __tmp__PHASE3_LIMIT_PresaleCrowdsale[this] >= 0;
    call BaseCrowdsale_BaseCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _token_s1143, _whitelist_s1143, _tokenWallet_s1143, _wallet_s1143, __tmp__PHASE1_RATE_PresaleCrowdsale[this], _openingTime_s1143, _closingTime_s1143, _deliveryTime_s1143, __tmp__PHASE3_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    call PresaleCrowdsale_PresaleCrowdsale_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _token_s1143, _whitelist_s1143, _tokenWallet_s1143, _wallet_s1143, _openingTime_s1143, _closingTime_s1143, _deliveryTime_s1143);
    if (revert)
    {
        return;
    }
}



implementation PresaleCrowdsale_PresaleCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _token_s1143: Ref, 
    _whitelist_s1143: Ref, 
    _tokenWallet_s1143: Ref, 
    _wallet_s1143: Ref, 
    _openingTime_s1143: int, 
    _closingTime_s1143: int, 
    _deliveryTime_s1143: int)
{
  var __var_36: Ref;

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

    assume PHASE1_RATE_PresaleCrowdsale[this] >= 0;
    assume _openingTime_s1143 >= 0;
    assume _closingTime_s1143 >= 0;
    assume _deliveryTime_s1143 >= 0;
    assume PHASE3_LIMIT_PresaleCrowdsale[this] >= 0;
    call BaseCrowdsale_BaseCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _token_s1143, _whitelist_s1143, _tokenWallet_s1143, _wallet_s1143, PHASE1_RATE_PresaleCrowdsale[this], _openingTime_s1143, _closingTime_s1143, _deliveryTime_s1143, PHASE3_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    call PresaleCrowdsale_PresaleCrowdsale_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _token_s1143, _whitelist_s1143, _tokenWallet_s1143, _wallet_s1143, _openingTime_s1143, _closingTime_s1143, _deliveryTime_s1143);
    if (revert)
    {
        return;
    }
}



implementation getPhase_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_37: int;

    gas := gas - 3;
    gas := gas - 9;
    assume __var_37 >= 0;
    call __var_37 := _getPhase_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume __var_37 >= 0;
    __ret_0_ := __var_37;
    return;
}



implementation getPhase_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_37: int;

    gas := gas - 3;
    gas := gas - 9;
    assume __var_37 >= 0;
    call __var_37 := _getPhase_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    assume __var_37 >= 0;
    __ret_0_ := __var_37;
    return;
}



implementation getPhaseRate_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1175: int)
   returns (__ret_0_: int)
{
  var rate_s1174: int;

    gas := gas - 3;
    gas := gas - 511;
    assume rate_s1174 >= 0;
    assume _phase_s1175 >= 0;
    assume __tmp__rate_PresaleCrowdsale.Phase[__tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][_phase_s1175]]
       >= 0;
    rate_s1174 := __tmp__rate_PresaleCrowdsale.Phase[__tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][_phase_s1175]];
    gas := gas - 23;
    assume rate_s1174 >= 0;
    gas := gas - 10;
    assume rate_s1174 >= 0;
    __ret_0_ := rate_s1174;
    return;
}



implementation getPhaseRate_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1175: int)
   returns (__ret_0_: int)
{
  var rate_s1174: int;

    gas := gas - 3;
    gas := gas - 511;
    assume rate_s1174 >= 0;
    assume _phase_s1175 >= 0;
    assume rate_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[this]][_phase_s1175]]
       >= 0;
    rate_s1174 := rate_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[this]][_phase_s1175]];
    gas := gas - 23;
    assume rate_s1174 >= 0;
    assert rate_s1174 > 0;
    gas := gas - 10;
    assume rate_s1174 >= 0;
    __ret_0_ := rate_s1174;
    return;
}



implementation getPhaseCap_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1198: int)
   returns (__ret_0_: int)
{
  var cap_s1197: int;

    gas := gas - 3;
    gas := gas - 511;
    assume cap_s1197 >= 0;
    assume _phase_s1198 >= 0;
    assume __tmp__cap_PresaleCrowdsale.Phase[__tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][_phase_s1198]]
       >= 0;
    cap_s1197 := __tmp__cap_PresaleCrowdsale.Phase[__tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][_phase_s1198]];
    gas := gas - 23;
    assume cap_s1197 >= 0;
    gas := gas - 10;
    assume cap_s1197 >= 0;
    __ret_0_ := cap_s1197;
    return;
}



implementation getPhaseCap_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1198: int)
   returns (__ret_0_: int)
{
  var cap_s1197: int;

    gas := gas - 3;
    gas := gas - 511;
    assume cap_s1197 >= 0;
    assume _phase_s1198 >= 0;
    assume cap_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[this]][_phase_s1198]]
       >= 0;
    cap_s1197 := cap_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[this]][_phase_s1198]];
    gas := gas - 23;
    assume cap_s1197 >= 0;
    assert cap_s1197 > 0;
    gas := gas - 10;
    assume cap_s1197 >= 0;
    __ret_0_ := cap_s1197;
    return;
}



implementation _init_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_38: int;
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: int;
  var __var_42: int;
  var __var_43: Ref;
  var __var_44: Ref;
  var __var_45: int;
  var __var_46: int;
  var __var_47: Ref;
  var __var_48: Ref;
  var __var_49: int;
  var __var_50: int;

    if (__tmp__DType[this] == PresaleCrowdsale)
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

    call __var_40 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__PHASE1_RATE_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE1_LIMIT_PresaleCrowdsale[this] >= 0;
    assume __tmp__DType[__var_40] == PresaleCrowdsale.Phase;
    call PresaleCrowdsale.Phase_ctor__fail(__var_40, this, 0, __tmp__PHASE1_RATE_PresaleCrowdsale[this], __tmp__PHASE1_CAP_PresaleCrowdsale[this], __tmp__PHASE1_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_39 := __var_40;
    __var_42 := __tmp__Length[__tmp__phases_PresaleCrowdsale[this]];
    __tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][__var_42] := __var_39;
    __tmp__Length[__tmp__phases_PresaleCrowdsale[this]] := __var_42 + 1;
    call __var_44 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__PHASE2_RATE_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE2_LIMIT_PresaleCrowdsale[this] >= 0;
    assume __tmp__DType[__var_44] == PresaleCrowdsale.Phase;
    call PresaleCrowdsale.Phase_ctor__fail(__var_44, this, 0, __tmp__PHASE2_RATE_PresaleCrowdsale[this], __tmp__PHASE2_CAP_PresaleCrowdsale[this], __tmp__PHASE2_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_43 := __var_44;
    __var_46 := __tmp__Length[__tmp__phases_PresaleCrowdsale[this]];
    __tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][__var_46] := __var_43;
    __tmp__Length[__tmp__phases_PresaleCrowdsale[this]] := __var_46 + 1;
    call __var_48 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__PHASE3_RATE_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE3_CAP_PresaleCrowdsale[this] >= 0;
    assume __tmp__PHASE3_LIMIT_PresaleCrowdsale[this] >= 0;
    assume __tmp__DType[__var_48] == PresaleCrowdsale.Phase;
    call PresaleCrowdsale.Phase_ctor__fail(__var_48, this, 0, __tmp__PHASE3_RATE_PresaleCrowdsale[this], __tmp__PHASE3_CAP_PresaleCrowdsale[this], __tmp__PHASE3_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_47 := __var_48;
    __var_50 := __tmp__Length[__tmp__phases_PresaleCrowdsale[this]];
    __tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][__var_50] := __var_47;
    __tmp__Length[__tmp__phases_PresaleCrowdsale[this]] := __var_50 + 1;
}



implementation _init_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_38: int;
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: int;
  var __var_42: int;
  var __var_43: Ref;
  var __var_44: Ref;
  var __var_45: int;
  var __var_46: int;
  var __var_47: Ref;
  var __var_48: Ref;
  var __var_49: int;
  var __var_50: int;

    if (DType[this] == PresaleCrowdsale)
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

    call __var_40 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume PHASE1_RATE_PresaleCrowdsale[this] >= 0;
    assume PHASE1_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE1_LIMIT_PresaleCrowdsale[this] >= 0;
    assume DType[__var_40] == PresaleCrowdsale.Phase;
    call PresaleCrowdsale.Phase_ctor__success(__var_40, this, 0, PHASE1_RATE_PresaleCrowdsale[this], PHASE1_CAP_PresaleCrowdsale[this], PHASE1_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_39 := __var_40;
    __var_42 := Length[phases_PresaleCrowdsale[this]];
    M_int_Ref[phases_PresaleCrowdsale[this]][__var_42] := __var_39;
    Length[phases_PresaleCrowdsale[this]] := __var_42 + 1;
    call __var_44 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume PHASE2_RATE_PresaleCrowdsale[this] >= 0;
    assume PHASE2_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE2_LIMIT_PresaleCrowdsale[this] >= 0;
    assume DType[__var_44] == PresaleCrowdsale.Phase;
    call PresaleCrowdsale.Phase_ctor__success(__var_44, this, 0, PHASE2_RATE_PresaleCrowdsale[this], PHASE2_CAP_PresaleCrowdsale[this], PHASE2_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_43 := __var_44;
    __var_46 := Length[phases_PresaleCrowdsale[this]];
    M_int_Ref[phases_PresaleCrowdsale[this]][__var_46] := __var_43;
    Length[phases_PresaleCrowdsale[this]] := __var_46 + 1;
    call __var_48 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume PHASE3_RATE_PresaleCrowdsale[this] >= 0;
    assume PHASE3_CAP_PresaleCrowdsale[this] >= 0;
    assume PHASE3_LIMIT_PresaleCrowdsale[this] >= 0;
    assume DType[__var_48] == PresaleCrowdsale.Phase;
    call PresaleCrowdsale.Phase_ctor__success(__var_48, this, 0, PHASE3_RATE_PresaleCrowdsale[this], PHASE3_CAP_PresaleCrowdsale[this], PHASE3_LIMIT_PresaleCrowdsale[this]);
    if (revert)
    {
        return;
    }

    __var_47 := __var_48;
    __var_50 := Length[phases_PresaleCrowdsale[this]];
    M_int_Ref[phases_PresaleCrowdsale[this]][__var_50] := __var_47;
    Length[phases_PresaleCrowdsale[this]] := __var_50 + 1;
}



implementation _getPhase_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_51: int;
  var __var_52: int;
  var __var_53: int;
  var __var_54: int;
  var __var_55: int;
  var __var_56: int;

    gas := gas - 3;
    gas := gas - 213;
    assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
    assume __var_51 >= 0;
    assume __var_52 >= 0;
    __var_52 := 0;
    assume 0 >= 0;
    call __var_51 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, 0);
    if (revert)
    {
        return;
    }

    assume __var_51 >= 0;
    if (__tmp__tokensSold_BaseCrowdsale[this] <= __var_51)
    {
        gas := gas - 19;
        __ret_0_ := 0;
        return;
    }
    else
    {
        gas := gas - 224;
        assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
        assume __var_53 >= 0;
        assume __var_54 >= 0;
        __var_54 := 1;
        assume 1 >= 0;
        call __var_53 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, 1);
        if (revert)
        {
            return;
        }

        assume __var_53 >= 0;
        if (__tmp__tokensSold_BaseCrowdsale[this] <= __var_53)
        {
            gas := gas - 19;
            __ret_0_ := 1;
            return;
        }
        else
        {
            gas := gas - 241;
            assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
            assume __var_55 >= 0;
            assume __var_56 >= 0;
            __var_56 := 2;
            assume 2 >= 0;
            call __var_55 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, 2);
            if (revert)
            {
                return;
            }

            assume __var_55 >= 0;
            gas := gas - 8;
            __ret_0_ := 2;
            return;
        }
    }
}



implementation _getPhase_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var __var_51: int;
  var __var_52: int;
  var __var_53: int;
  var __var_54: int;
  var __var_55: int;
  var __var_56: int;

    gas := gas - 3;
    gas := gas - 213;
    assume tokensSold_BaseCrowdsale[this] >= 0;
    assume __var_51 >= 0;
    assume __var_52 >= 0;
    __var_52 := 0;
    assume 0 >= 0;
    call __var_51 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, 0);
    if (revert)
    {
        return;
    }

    assume __var_51 >= 0;
    if (tokensSold_BaseCrowdsale[this] <= __var_51)
    {
        gas := gas - 19;
        __ret_0_ := 0;
        return;
    }
    else
    {
        gas := gas - 224;
        assume tokensSold_BaseCrowdsale[this] >= 0;
        assume __var_53 >= 0;
        assume __var_54 >= 0;
        __var_54 := 1;
        assume 1 >= 0;
        call __var_53 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, 1);
        if (revert)
        {
            return;
        }

        assume __var_53 >= 0;
        if (tokensSold_BaseCrowdsale[this] <= __var_53)
        {
            gas := gas - 19;
            __ret_0_ := 1;
            return;
        }
        else
        {
            gas := gas - 241;
            assume tokensSold_BaseCrowdsale[this] >= 0;
            assume __var_55 >= 0;
            assume __var_56 >= 0;
            __var_56 := 2;
            assume 2 >= 0;
            call __var_55 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, 2);
            if (revert)
            {
                return;
            }

            assume __var_55 >= 0;
            assert tokensSold_BaseCrowdsale[this] <= __var_55;
            gas := gas - 8;
            __ret_0_ := 2;
            return;
        }
    }
}



implementation _getPhaseUpperLimit_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1301: int)
   returns (__ret_0_: int)
{
  var limit_s1300: int;

    gas := gas - 3;
    gas := gas - 511;
    assume limit_s1300 >= 0;
    assume _phase_s1301 >= 0;
    assume __tmp__limit_PresaleCrowdsale.Phase[__tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][_phase_s1301]]
       >= 0;
    limit_s1300 := __tmp__limit_PresaleCrowdsale.Phase[__tmp__M_int_Ref[__tmp__phases_PresaleCrowdsale[this]][_phase_s1301]];
    gas := gas - 23;
    assume limit_s1300 >= 0;
    gas := gas - 10;
    assume limit_s1300 >= 0;
    __ret_0_ := limit_s1300;
    return;
}



implementation _getPhaseUpperLimit_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _phase_s1301: int)
   returns (__ret_0_: int)
{
  var limit_s1300: int;

    gas := gas - 3;
    gas := gas - 511;
    assume limit_s1300 >= 0;
    assume _phase_s1301 >= 0;
    assume limit_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[this]][_phase_s1301]]
       >= 0;
    limit_s1300 := limit_PresaleCrowdsale.Phase[M_int_Ref[phases_PresaleCrowdsale[this]][_phase_s1301]];
    gas := gas - 23;
    assume limit_s1300 >= 0;
    assert limit_s1300 > 0;
    gas := gas - 10;
    assume limit_s1300 >= 0;
    __ret_0_ := limit_s1300;
    return;
}



implementation _getTokenAmount_PresaleCrowdsale__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s1320: int)
   returns (__ret_0_: int)
{
  var currentPhase_s1319: int;
  var __var_57: int;

    gas := gas - 3;
    gas := gas - 23;
    assume currentPhase_s1319 >= 0;
    call currentPhase_s1319 := _getPhase_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    currentPhase_s1319 := currentPhase_s1319;
    gas := gas - 220;
    assume __var_57 >= 0;
    assume currentPhase_s1319 >= 0;
    assume _weiAmount_s1320 >= 0;
    assume __tmp__tokensSold_BaseCrowdsale[this] >= 0;
    call __var_57 := _calcTokenAmount_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, currentPhase_s1319, _weiAmount_s1320, __tmp__tokensSold_BaseCrowdsale[this]);
    if (revert)
    {
        return;
    }

    assume __var_57 >= 0;
    __ret_0_ := __var_57;
    return;
}



implementation _getTokenAmount_PresaleCrowdsale__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _weiAmount_s1320: int)
   returns (__ret_0_: int)
{
  var currentPhase_s1319: int;
  var __var_57: int;

    gas := gas - 3;
    gas := gas - 23;
    assume currentPhase_s1319 >= 0;
    call currentPhase_s1319 := _getPhase_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    currentPhase_s1319 := currentPhase_s1319;
    gas := gas - 220;
    assume __var_57 >= 0;
    assume currentPhase_s1319 >= 0;
    assume _weiAmount_s1320 >= 0;
    assume tokensSold_BaseCrowdsale[this] >= 0;
    call __var_57 := _calcTokenAmount_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, currentPhase_s1319, _weiAmount_s1320, tokensSold_BaseCrowdsale[this]);
    if (revert)
    {
        return;
    }

    assume __var_57 >= 0;
    __ret_0_ := __var_57;
    return;
}



implementation _calcTokenAmount_PresaleCrowdsale__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _phase_s1529: int, 
    _weiAmount_s1529: int, 
    _tokensSold_s1529: int)
   returns (tokensBought_s1529: int)
{
  var __var_58: int;
  var __var_59: int;
  var tokens_s1392: int;
  var __var_60: int;
  var nextPhase_s1392: int;
  var __var_61: int;
  var __var_62: int;
  var __var_63: int;
  var __var_64: int;
  var tokens_s1456: int;
  var __var_65: int;
  var nextPhase_s1456: int;
  var __var_66: int;
  var __var_67: int;
  var __var_68: int;
  var __var_69: int;
  var tokens_s1520: int;
  var __var_70: int;
  var nextPhase_s1520: int;
  var __var_71: int;
  var __var_72: int;

    gas := gas - 3;
    gas := gas - 9;
    assume _phase_s1529 >= 0;
    if (_phase_s1529 == 0)
    {
        gas := gas - 16;
        assume tokensBought_s1529 >= 0;
        assume _weiAmount_s1529 >= 0;
        assume _weiAmount_s1529 * 7500 >= 0;
        tokensBought_s1529 := _weiAmount_s1529 * 7500;
        gas := gas - 57;
        assume __var_58 >= 0;
        assume _tokensSold_s1529 >= 0;
        assume tokensBought_s1529 >= 0;
        call __var_58 := add_SafeMath__fail(this, this, 0, _tokensSold_s1529, tokensBought_s1529);
        if (revert)
        {
            return;
        }

        assume __var_58 >= 0;
        assume __var_59 >= 0;
        assume _phase_s1529 >= 0;
        call __var_59 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
        if (revert)
        {
            return;
        }

        assume __var_59 >= 0;
        if (__var_58 > __var_59)
        {
            gas := gas - 59;
            assume tokens_s1392 >= 0;
            assume __var_60 >= 0;
            assume _phase_s1529 >= 0;
            call __var_60 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
            if (revert)
            {
                return;
            }

            assume __var_60 >= 0;
            assume _tokensSold_s1529 >= 0;
            call tokens_s1392 := sub_SafeMath__fail(this, this, 0, __var_60, _tokensSold_s1529);
            if (revert)
            {
                return;
            }

            tokens_s1392 := tokens_s1392;
            gas := gas - 17;
            assume nextPhase_s1392 >= 0;
            assume _phase_s1529 >= 0;
            assume _phase_s1529 + 1 >= 0;
            nextPhase_s1392 := _phase_s1529 + 1;
            gas := gas - 29;
            assume nextPhase_s1392 >= 0;
            if (!(nextPhase_s1392 < 3))
            {
                revert := true;
                return;
            }

            gas := gas - 120;
            assume tokensBought_s1529 >= 0;
            assume nextPhase_s1392 >= 0;
            assume __var_61 >= 0;
            assume _weiAmount_s1529 >= 0;
            assume tokens_s1392 >= 0;
            assume tokens_s1392 / 7500 >= 0;
            call __var_61 := sub_SafeMath__fail(this, this, 0, _weiAmount_s1529, tokens_s1392 / 7500);
            if (revert)
            {
                return;
            }

            assume __var_61 >= 0;
            assume __var_62 >= 0;
            assume _tokensSold_s1529 >= 0;
            assume tokens_s1392 >= 0;
            call __var_62 := add_SafeMath__fail(this, this, 0, _tokensSold_s1529, tokens_s1392);
            if (revert)
            {
                return;
            }

            assume __var_62 >= 0;
            call tokensBought_s1529 := _calcTokenAmount_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, nextPhase_s1392, __var_61, __var_62);
            if (revert)
            {
                return;
            }

            tokensBought_s1529 := tokensBought_s1529;
            gas := gas - 41;
            assume tokensBought_s1529 >= 0;
            assume tokensBought_s1529 >= 0;
            assume tokens_s1392 >= 0;
            call tokensBought_s1529 := add_SafeMath__fail(this, this, 0, tokensBought_s1529, tokens_s1392);
            if (revert)
            {
                return;
            }

            tokensBought_s1529 := tokensBought_s1529;
        }
    }
    else
    {
        gas := gas - 9;
        assume _phase_s1529 >= 0;
        if (_phase_s1529 == 1)
        {
            gas := gas - 16;
            assume tokensBought_s1529 >= 0;
            assume _weiAmount_s1529 >= 0;
            assume _weiAmount_s1529 * 6900 >= 0;
            tokensBought_s1529 := _weiAmount_s1529 * 6900;
            gas := gas - 57;
            assume __var_63 >= 0;
            assume _tokensSold_s1529 >= 0;
            assume tokensBought_s1529 >= 0;
            call __var_63 := add_SafeMath__fail(this, this, 0, _tokensSold_s1529, tokensBought_s1529);
            if (revert)
            {
                return;
            }

            assume __var_63 >= 0;
            assume __var_64 >= 0;
            assume _phase_s1529 >= 0;
            call __var_64 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
            if (revert)
            {
                return;
            }

            assume __var_64 >= 0;
            if (__var_63 > __var_64)
            {
                gas := gas - 59;
                assume tokens_s1456 >= 0;
                assume __var_65 >= 0;
                assume _phase_s1529 >= 0;
                call __var_65 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
                if (revert)
                {
                    return;
                }

                assume __var_65 >= 0;
                assume _tokensSold_s1529 >= 0;
                call tokens_s1456 := sub_SafeMath__fail(this, this, 0, __var_65, _tokensSold_s1529);
                if (revert)
                {
                    return;
                }

                tokens_s1456 := tokens_s1456;
                gas := gas - 17;
                assume nextPhase_s1456 >= 0;
                assume _phase_s1529 >= 0;
                assume _phase_s1529 + 1 >= 0;
                nextPhase_s1456 := _phase_s1529 + 1;
                gas := gas - 29;
                assume nextPhase_s1456 >= 0;
                if (!(nextPhase_s1456 < 3))
                {
                    revert := true;
                    return;
                }

                gas := gas - 120;
                assume tokensBought_s1529 >= 0;
                assume nextPhase_s1456 >= 0;
                assume __var_66 >= 0;
                assume _weiAmount_s1529 >= 0;
                assume tokens_s1456 >= 0;
                assume tokens_s1456 / 6900 >= 0;
                call __var_66 := sub_SafeMath__fail(this, this, 0, _weiAmount_s1529, tokens_s1456 / 6900);
                if (revert)
                {
                    return;
                }

                assume __var_66 >= 0;
                assume __var_67 >= 0;
                assume _tokensSold_s1529 >= 0;
                assume tokens_s1456 >= 0;
                call __var_67 := add_SafeMath__fail(this, this, 0, _tokensSold_s1529, tokens_s1456);
                if (revert)
                {
                    return;
                }

                assume __var_67 >= 0;
                call tokensBought_s1529 := _calcTokenAmount_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, nextPhase_s1456, __var_66, __var_67);
                if (revert)
                {
                    return;
                }

                tokensBought_s1529 := tokensBought_s1529;
                gas := gas - 41;
                assume tokensBought_s1529 >= 0;
                assume tokensBought_s1529 >= 0;
                assume tokens_s1456 >= 0;
                call tokensBought_s1529 := add_SafeMath__fail(this, this, 0, tokensBought_s1529, tokens_s1456);
                if (revert)
                {
                    return;
                }

                tokensBought_s1529 := tokensBought_s1529;
            }
        }
        else
        {
            gas := gas - 9;
            assume _phase_s1529 >= 0;
            if (_phase_s1529 == 2)
            {
                gas := gas - 16;
                assume tokensBought_s1529 >= 0;
                assume _weiAmount_s1529 >= 0;
                assume _weiAmount_s1529 * 6300 >= 0;
                tokensBought_s1529 := _weiAmount_s1529 * 6300;
                gas := gas - 57;
                assume __var_68 >= 0;
                assume _tokensSold_s1529 >= 0;
                assume tokensBought_s1529 >= 0;
                call __var_68 := add_SafeMath__fail(this, this, 0, _tokensSold_s1529, tokensBought_s1529);
                if (revert)
                {
                    return;
                }

                assume __var_68 >= 0;
                assume __var_69 >= 0;
                assume _phase_s1529 >= 0;
                call __var_69 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
                if (revert)
                {
                    return;
                }

                assume __var_69 >= 0;
                if (__var_68 > __var_69)
                {
                    gas := gas - 59;
                    assume tokens_s1520 >= 0;
                    assume __var_70 >= 0;
                    assume _phase_s1529 >= 0;
                    call __var_70 := _getPhaseUpperLimit_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
                    if (revert)
                    {
                        return;
                    }

                    assume __var_70 >= 0;
                    assume _tokensSold_s1529 >= 0;
                    call tokens_s1520 := sub_SafeMath__fail(this, this, 0, __var_70, _tokensSold_s1529);
                    if (revert)
                    {
                        return;
                    }

                    tokens_s1520 := tokens_s1520;
                    gas := gas - 17;
                    assume nextPhase_s1520 >= 0;
                    assume _phase_s1529 >= 0;
                    assume _phase_s1529 + 1 >= 0;
                    nextPhase_s1520 := _phase_s1529 + 1;
                    gas := gas - 29;
                    assume nextPhase_s1520 >= 0;
                    if (!(nextPhase_s1520 < 3))
                    {
                        revert := true;
                        return;
                    }

                    gas := gas - 120;
                    assume tokensBought_s1529 >= 0;
                    assume nextPhase_s1520 >= 0;
                    assume __var_71 >= 0;
                    assume _weiAmount_s1529 >= 0;
                    assume tokens_s1520 >= 0;
                    assume tokens_s1520 / 6300 >= 0;
                    call __var_71 := sub_SafeMath__fail(this, this, 0, _weiAmount_s1529, tokens_s1520 / 6300);
                    if (revert)
                    {
                        return;
                    }

                    assume __var_71 >= 0;
                    assume __var_72 >= 0;
                    assume _tokensSold_s1529 >= 0;
                    assume tokens_s1520 >= 0;
                    call __var_72 := add_SafeMath__fail(this, this, 0, _tokensSold_s1529, tokens_s1520);
                    if (revert)
                    {
                        return;
                    }

                    assume __var_72 >= 0;
                    call tokensBought_s1529 := _calcTokenAmount_PresaleCrowdsale__fail(this, msgsender_MSG, msgvalue_MSG, nextPhase_s1520, __var_71, __var_72);
                    if (revert)
                    {
                        return;
                    }

                    tokensBought_s1529 := tokensBought_s1529;
                    gas := gas - 41;
                    assume tokensBought_s1529 >= 0;
                    assume tokensBought_s1529 >= 0;
                    assume tokens_s1520 >= 0;
                    call tokensBought_s1529 := add_SafeMath__fail(this, this, 0, tokensBought_s1529, tokens_s1520);
                    if (revert)
                    {
                        return;
                    }

                    tokensBought_s1529 := tokensBought_s1529;
                }
            }
        }
    }

    gas := gas - 8;
    assume tokensBought_s1529 >= 0;
    tokensBought_s1529 := tokensBought_s1529;
    return;
}



implementation _calcTokenAmount_PresaleCrowdsale__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _phase_s1529: int, 
    _weiAmount_s1529: int, 
    _tokensSold_s1529: int)
   returns (tokensBought_s1529: int)
{
  var __var_58: int;
  var __var_59: int;
  var tokens_s1392: int;
  var __var_60: int;
  var nextPhase_s1392: int;
  var __var_61: int;
  var __var_62: int;
  var __var_63: int;
  var __var_64: int;
  var tokens_s1456: int;
  var __var_65: int;
  var nextPhase_s1456: int;
  var __var_66: int;
  var __var_67: int;
  var __var_68: int;
  var __var_69: int;
  var tokens_s1520: int;
  var __var_70: int;
  var nextPhase_s1520: int;
  var __var_71: int;
  var __var_72: int;

    gas := gas - 3;
    gas := gas - 9;
    assume _phase_s1529 >= 0;
    if (_phase_s1529 == 0)
    {
        gas := gas - 16;
        assume tokensBought_s1529 >= 0;
        assume _weiAmount_s1529 >= 0;
        assume _weiAmount_s1529 * 7500 >= 0;
        tokensBought_s1529 := _weiAmount_s1529 * 7500;
        gas := gas - 57;
        assume __var_58 >= 0;
        assume _tokensSold_s1529 >= 0;
        assume tokensBought_s1529 >= 0;
        call __var_58 := add_SafeMath__success(this, this, 0, _tokensSold_s1529, tokensBought_s1529);
        if (revert)
        {
            return;
        }

        assume __var_58 >= 0;
        assume __var_59 >= 0;
        assume _phase_s1529 >= 0;
        call __var_59 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
        if (revert)
        {
            return;
        }

        assume __var_59 >= 0;
        if (__var_58 > __var_59)
        {
            gas := gas - 59;
            assume tokens_s1392 >= 0;
            assume __var_60 >= 0;
            assume _phase_s1529 >= 0;
            call __var_60 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
            if (revert)
            {
                return;
            }

            assume __var_60 >= 0;
            assume _tokensSold_s1529 >= 0;
            call tokens_s1392 := sub_SafeMath__success(this, this, 0, __var_60, _tokensSold_s1529);
            if (revert)
            {
                return;
            }

            tokens_s1392 := tokens_s1392;
            gas := gas - 17;
            assume nextPhase_s1392 >= 0;
            assume _phase_s1529 >= 0;
            assume _phase_s1529 + 1 >= 0;
            nextPhase_s1392 := _phase_s1529 + 1;
            gas := gas - 29;
            assume nextPhase_s1392 >= 0;
            if (!(nextPhase_s1392 < 3))
            {
                revert := true;
                return;
            }

            gas := gas - 120;
            assume tokensBought_s1529 >= 0;
            assume nextPhase_s1392 >= 0;
            assume __var_61 >= 0;
            assume _weiAmount_s1529 >= 0;
            assume tokens_s1392 >= 0;
            assume tokens_s1392 / 7500 >= 0;
            call __var_61 := sub_SafeMath__success(this, this, 0, _weiAmount_s1529, tokens_s1392 / 7500);
            if (revert)
            {
                return;
            }

            assume __var_61 >= 0;
            assume __var_62 >= 0;
            assume _tokensSold_s1529 >= 0;
            assume tokens_s1392 >= 0;
            call __var_62 := add_SafeMath__success(this, this, 0, _tokensSold_s1529, tokens_s1392);
            if (revert)
            {
                return;
            }

            assume __var_62 >= 0;
            call tokensBought_s1529 := _calcTokenAmount_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, nextPhase_s1392, __var_61, __var_62);
            if (revert)
            {
                return;
            }

            tokensBought_s1529 := tokensBought_s1529;
            gas := gas - 41;
            assume tokensBought_s1529 >= 0;
            assume tokensBought_s1529 >= 0;
            assume tokens_s1392 >= 0;
            call tokensBought_s1529 := add_SafeMath__success(this, this, 0, tokensBought_s1529, tokens_s1392);
            if (revert)
            {
                return;
            }

            tokensBought_s1529 := tokensBought_s1529;
        }
    }
    else
    {
        gas := gas - 9;
        assume _phase_s1529 >= 0;
        if (_phase_s1529 == 1)
        {
            gas := gas - 16;
            assume tokensBought_s1529 >= 0;
            assume _weiAmount_s1529 >= 0;
            assume _weiAmount_s1529 * 6900 >= 0;
            tokensBought_s1529 := _weiAmount_s1529 * 6900;
            gas := gas - 57;
            assume __var_63 >= 0;
            assume _tokensSold_s1529 >= 0;
            assume tokensBought_s1529 >= 0;
            call __var_63 := add_SafeMath__success(this, this, 0, _tokensSold_s1529, tokensBought_s1529);
            if (revert)
            {
                return;
            }

            assume __var_63 >= 0;
            assume __var_64 >= 0;
            assume _phase_s1529 >= 0;
            call __var_64 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
            if (revert)
            {
                return;
            }

            assume __var_64 >= 0;
            if (__var_63 > __var_64)
            {
                gas := gas - 59;
                assume tokens_s1456 >= 0;
                assume __var_65 >= 0;
                assume _phase_s1529 >= 0;
                call __var_65 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
                if (revert)
                {
                    return;
                }

                assume __var_65 >= 0;
                assume _tokensSold_s1529 >= 0;
                call tokens_s1456 := sub_SafeMath__success(this, this, 0, __var_65, _tokensSold_s1529);
                if (revert)
                {
                    return;
                }

                tokens_s1456 := tokens_s1456;
                gas := gas - 17;
                assume nextPhase_s1456 >= 0;
                assume _phase_s1529 >= 0;
                assume _phase_s1529 + 1 >= 0;
                nextPhase_s1456 := _phase_s1529 + 1;
                gas := gas - 29;
                assume nextPhase_s1456 >= 0;
                if (!(nextPhase_s1456 < 3))
                {
                    revert := true;
                    return;
                }

                gas := gas - 120;
                assume tokensBought_s1529 >= 0;
                assume nextPhase_s1456 >= 0;
                assume __var_66 >= 0;
                assume _weiAmount_s1529 >= 0;
                assume tokens_s1456 >= 0;
                assume tokens_s1456 / 6900 >= 0;
                call __var_66 := sub_SafeMath__success(this, this, 0, _weiAmount_s1529, tokens_s1456 / 6900);
                if (revert)
                {
                    return;
                }

                assume __var_66 >= 0;
                assume __var_67 >= 0;
                assume _tokensSold_s1529 >= 0;
                assume tokens_s1456 >= 0;
                call __var_67 := add_SafeMath__success(this, this, 0, _tokensSold_s1529, tokens_s1456);
                if (revert)
                {
                    return;
                }

                assume __var_67 >= 0;
                call tokensBought_s1529 := _calcTokenAmount_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, nextPhase_s1456, __var_66, __var_67);
                if (revert)
                {
                    return;
                }

                tokensBought_s1529 := tokensBought_s1529;
                gas := gas - 41;
                assume tokensBought_s1529 >= 0;
                assume tokensBought_s1529 >= 0;
                assume tokens_s1456 >= 0;
                call tokensBought_s1529 := add_SafeMath__success(this, this, 0, tokensBought_s1529, tokens_s1456);
                if (revert)
                {
                    return;
                }

                tokensBought_s1529 := tokensBought_s1529;
            }
        }
        else
        {
            gas := gas - 9;
            assume _phase_s1529 >= 0;
            if (_phase_s1529 == 2)
            {
                gas := gas - 16;
                assume tokensBought_s1529 >= 0;
                assume _weiAmount_s1529 >= 0;
                assume _weiAmount_s1529 * 6300 >= 0;
                tokensBought_s1529 := _weiAmount_s1529 * 6300;
                gas := gas - 57;
                assume __var_68 >= 0;
                assume _tokensSold_s1529 >= 0;
                assume tokensBought_s1529 >= 0;
                call __var_68 := add_SafeMath__success(this, this, 0, _tokensSold_s1529, tokensBought_s1529);
                if (revert)
                {
                    return;
                }

                assume __var_68 >= 0;
                assume __var_69 >= 0;
                assume _phase_s1529 >= 0;
                call __var_69 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
                if (revert)
                {
                    return;
                }

                assume __var_69 >= 0;
                if (__var_68 > __var_69)
                {
                    gas := gas - 59;
                    assume tokens_s1520 >= 0;
                    assume __var_70 >= 0;
                    assume _phase_s1529 >= 0;
                    call __var_70 := _getPhaseUpperLimit_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, _phase_s1529);
                    if (revert)
                    {
                        return;
                    }

                    assume __var_70 >= 0;
                    assume _tokensSold_s1529 >= 0;
                    call tokens_s1520 := sub_SafeMath__success(this, this, 0, __var_70, _tokensSold_s1529);
                    if (revert)
                    {
                        return;
                    }

                    tokens_s1520 := tokens_s1520;
                    gas := gas - 17;
                    assume nextPhase_s1520 >= 0;
                    assume _phase_s1529 >= 0;
                    assume _phase_s1529 + 1 >= 0;
                    nextPhase_s1520 := _phase_s1529 + 1;
                    gas := gas - 29;
                    assume nextPhase_s1520 >= 0;
                    if (!(nextPhase_s1520 < 3))
                    {
                        revert := true;
                        return;
                    }

                    gas := gas - 120;
                    assume tokensBought_s1529 >= 0;
                    assume nextPhase_s1520 >= 0;
                    assume __var_71 >= 0;
                    assume _weiAmount_s1529 >= 0;
                    assume tokens_s1520 >= 0;
                    assume tokens_s1520 / 6300 >= 0;
                    call __var_71 := sub_SafeMath__success(this, this, 0, _weiAmount_s1529, tokens_s1520 / 6300);
                    if (revert)
                    {
                        return;
                    }

                    assume __var_71 >= 0;
                    assume __var_72 >= 0;
                    assume _tokensSold_s1529 >= 0;
                    assume tokens_s1520 >= 0;
                    call __var_72 := add_SafeMath__success(this, this, 0, _tokensSold_s1529, tokens_s1520);
                    if (revert)
                    {
                        return;
                    }

                    assume __var_72 >= 0;
                    call tokensBought_s1529 := _calcTokenAmount_PresaleCrowdsale__success(this, msgsender_MSG, msgvalue_MSG, nextPhase_s1520, __var_71, __var_72);
                    if (revert)
                    {
                        return;
                    }

                    tokensBought_s1529 := tokensBought_s1529;
                    gas := gas - 41;
                    assume tokensBought_s1529 >= 0;
                    assume tokensBought_s1529 >= 0;
                    assume tokens_s1520 >= 0;
                    call tokensBought_s1529 := add_SafeMath__success(this, this, 0, tokensBought_s1529, tokens_s1520);
                    if (revert)
                    {
                        return;
                    }

                    tokensBought_s1529 := tokensBought_s1529;
                }
            }
        }
    }

    gas := gas - 8;
    assume tokensBought_s1529 >= 0;
    tokensBought_s1529 := tokensBought_s1529;
    return;
}



implementation DetailedERC20_DetailedERC20_NoBaseCtor__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int)
{
    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_DetailedERC20[this] := -1750498247;
    __tmp__symbol_DetailedERC20[this] := -1750498247;
    __tmp__decimals_DetailedERC20[this] := 0;
    __tmp__name_DetailedERC20[this] := _name_s1560;
    __tmp__symbol_DetailedERC20[this] := _symbol_s1560;
    assume __tmp__decimals_DetailedERC20[this] >= 0;
    assume _decimals_s1560 >= 0;
    __tmp__decimals_DetailedERC20[this] := _decimals_s1560;
}



implementation DetailedERC20_DetailedERC20_NoBaseCtor__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int)
{
    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_DetailedERC20[this] := -1750498247;
    symbol_DetailedERC20[this] := -1750498247;
    decimals_DetailedERC20[this] := 0;
    name_DetailedERC20[this] := _name_s1560;
    symbol_DetailedERC20[this] := _symbol_s1560;
    assume decimals_DetailedERC20[this] >= 0;
    assume _decimals_s1560 >= 0;
    decimals_DetailedERC20[this] := _decimals_s1560;
}



implementation DetailedERC20_DetailedERC20__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int)
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

    call DetailedERC20_DetailedERC20_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _name_s1560, _symbol_s1560, _decimals_s1560);
    if (revert)
    {
        return;
    }
}



implementation DetailedERC20_DetailedERC20__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _name_s1560: int, 
    _symbol_s1560: int, 
    _decimals_s1560: int)
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

    call DetailedERC20_DetailedERC20_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _name_s1560, _symbol_s1560, _decimals_s1560);
    if (revert)
    {
        return;
    }
}



implementation StandardToken_StandardToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_73: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_73 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_StandardToken[this] := __var_73;
    __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]] := zeroRefRefArr();
    __tmp__M_Ref_int_allowed4[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_73: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_73 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_StandardToken[this] := __var_73;
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
    _from_s1657: Ref, 
    _to_s1657: Ref, 
    _value_s1657: int)
   returns (__ret_0_: bool)
{
  var __var_74: Ref;
  var __var_75: Ref;
  var __var_76: int;
  var __var_77: int;
  var __var_78: Ref;
  var __var_79: int;
  var __var_80: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_74 := null;
    if (!(_to_s1657 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s1657 >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657] >= 0;
    if (!(_value_s1657
       <= __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s1657 >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]
       == null)
    {
        call __var_75 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657] := __var_75;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]
       >= 0;
    if (!(_value_s1657
       <= __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657] >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657] >= 0;
    assume _value_s1657 >= 0;
    call __var_76 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657], _value_s1657);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657] := __var_76;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_from_s1657];
    assume __var_76 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1657] >= 0;
    assume __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1657] >= 0;
    assume _value_s1657 >= 0;
    call __var_77 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1657], _value_s1657);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1657];
    __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1657] := __var_77;
    __tmp__sum_balances1[__tmp__balances_BasicToken[this]] := __tmp__sum_balances1[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances1[__tmp__balances_BasicToken[this]][_to_s1657];
    assume __var_77 >= 0;
    gas := gas - 61833;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]
       == null)
    {
        call __var_78 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657] := __var_78;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]
       == null)
    {
        call __var_80 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657] := __var_80;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]
       >= 0;
    assume _value_s1657 >= 0;
    call __var_79 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG], _value_s1657);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]]
       - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG];
    __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG] := __var_79;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]]
       + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_from_s1657]][msgsender_MSG];
    assume __var_79 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1657: Ref, 
    _to_s1657: Ref, 
    _value_s1657: int)
   returns (__ret_0_: bool)
{
  var __var_74: Ref;
  var __var_75: Ref;
  var __var_76: int;
  var __var_77: int;
  var __var_78: Ref;
  var __var_79: int;
  var __var_80: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_74 := null;
    if (!(_to_s1657 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s1657 >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657] >= 0;
    if (!(_value_s1657 <= M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s1657 >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657] == null)
    {
        call __var_75 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657] := __var_75;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]
       >= 0;
    if (!(_value_s1657
       <= M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657] >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657] >= 0;
    assume _value_s1657 >= 0;
    call __var_76 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657], _value_s1657);
    if (revert)
    {
        return;
    }

    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657];
    M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657] := __var_76;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][_from_s1657];
    assume __var_76 >= 0;
    gas := gas - 61299;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_to_s1657] >= 0;
    assume M_Ref_int_balances1[balances_BasicToken[this]][_to_s1657] >= 0;
    assume _value_s1657 >= 0;
    call __var_77 := add_SafeMath__success(this, this, 0, M_Ref_int_balances1[balances_BasicToken[this]][_to_s1657], _value_s1657);
    if (revert)
    {
        return;
    }

    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       - M_Ref_int_balances1[balances_BasicToken[this]][_to_s1657];
    M_Ref_int_balances1[balances_BasicToken[this]][_to_s1657] := __var_77;
    sum_balances1[balances_BasicToken[this]] := sum_balances1[balances_BasicToken[this]]
       + M_Ref_int_balances1[balances_BasicToken[this]][_to_s1657];
    assume __var_77 >= 0;
    gas := gas - 61833;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657] == null)
    {
        call __var_78 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657] := __var_78;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657] == null)
    {
        call __var_80 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657] := __var_80;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG]
       >= 0;
    assume _value_s1657 >= 0;
    call __var_79 := sub_SafeMath__success(this, this, 0, M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG], _value_s1657);
    if (revert)
    {
        return;
    }

    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]]
       - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG];
    M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG] := __var_79;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]]
       + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_from_s1657]][msgsender_MSG];
    assume __var_79 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1685: Ref, 
    _value_s1685: int)
   returns (__ret_0_: bool)
{
  var __var_81: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_81 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_81;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685]
       >= 0;
    assume _value_s1685 >= 0;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685];
    __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685] := _value_s1685;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685];
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1685: Ref, 
    _value_s1685: int)
   returns (__ret_0_: bool)
{
  var __var_81: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_81 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_81;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685]
       >= 0;
    assume _value_s1685 >= 0;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685];
    M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685] := _value_s1685;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1685];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1701: Ref, 
    _spender_s1701: Ref)
   returns (__ret_0_: int)
{
  var __var_82: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1701]
       == null)
    {
        call __var_82 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1701] := __var_82;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1701]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1701]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1701]][_spender_s1701]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][_owner_s1701]][_spender_s1701];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s1701: Ref, 
    _spender_s1701: Ref)
   returns (__ret_0_: int)
{
  var __var_82: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1701] == null)
    {
        call __var_82 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1701] := __var_82;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1701]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1701]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1701]][_spender_s1701]
       >= 0;
    __ret_0_ := M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][_owner_s1701]][_spender_s1701];
    return;
}



implementation increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1742: Ref, 
    _addedValue_s1742: int)
   returns (__ret_0_: bool)
{
  var __var_83: Ref;
  var __var_84: int;
  var __var_85: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_83 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_83;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_85 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_85;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742]
       >= 0;
    assume _addedValue_s1742 >= 0;
    call __var_84 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742], _addedValue_s1742);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742];
    __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742] := __var_84;
    __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742];
    assume __var_84 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1742: Ref, 
    _addedValue_s1742: int)
   returns (__ret_0_: bool)
{
  var __var_83: Ref;
  var __var_84: int;
  var __var_85: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_83 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_83;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742]
       >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_85 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_85;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742]
       >= 0;
    assume _addedValue_s1742 >= 0;
    call __var_84 := add_SafeMath__success(this, this, 0, M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742], _addedValue_s1742);
    if (revert)
    {
        return;
    }

    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742];
    M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742] := __var_84;
    sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1742];
    assume __var_84 >= 0;
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1802: Ref, 
    _subtractedValue_s1802: int)
   returns (__ret_0_: bool)
{
  var oldValue_s1801: int;
  var __var_86: Ref;
  var __var_87: Ref;
  var __var_88: Ref;
  var __var_89: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s1801 >= 0;
    if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_86 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_86;
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802]
       >= 0;
    oldValue_s1801 := __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
    gas := gas - 27;
    assume _subtractedValue_s1802 >= 0;
    assume oldValue_s1801 >= 0;
    if (_subtractedValue_s1802 > oldValue_s1801)
    {
        gas := gas - 15597;
        if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_87 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_87;
            __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802]
           >= 0;
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802] := 0;
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
    }
    else
    {
        gas := gas - 60696;
        if (__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_88 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_88;
            __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802]
           >= 0;
        assume oldValue_s1801 >= 0;
        assume _subtractedValue_s1802 >= 0;
        call __var_89 := sub_SafeMath__fail(this, this, 0, oldValue_s1801, _subtractedValue_s1802);
        if (revert)
        {
            return;
        }

        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
        __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802] := __var_89;
        __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed4[__tmp__M_Ref_Ref_allowed4[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
        assume __var_89 >= 0;
    }

    gas := gas - 30;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1802: Ref, 
    _subtractedValue_s1802: int)
   returns (__ret_0_: bool)
{
  var oldValue_s1801: int;
  var __var_86: Ref;
  var __var_87: Ref;
  var __var_88: Ref;
  var __var_89: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s1801 >= 0;
    if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_86 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_86;
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802]
       >= 0;
    oldValue_s1801 := M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
    gas := gas - 27;
    assume _subtractedValue_s1802 >= 0;
    assume oldValue_s1801 >= 0;
    if (_subtractedValue_s1802 > oldValue_s1801)
    {
        gas := gas - 15597;
        if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_87 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_87;
            M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802]
           >= 0;
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802] := 0;
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
    }
    else
    {
        gas := gas - 60696;
        if (M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_88 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG] := __var_88;
            M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802]
           >= 0;
        assume oldValue_s1801 >= 0;
        assume _subtractedValue_s1802 >= 0;
        call __var_89 := sub_SafeMath__success(this, this, 0, oldValue_s1801, _subtractedValue_s1802);
        if (revert)
        {
            return;
        }

        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
        M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802] := __var_89;
        sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed4[M_Ref_Ref_allowed4[allowed_StandardToken[this]][msgsender_MSG]][_spender_s1802];
        assume __var_89 >= 0;
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
    _to_s1882: Ref, 
    _value_s1882: int)
   returns (__ret_0_: bool)
{
  var __var_90: bool;
  var __var_91: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1882 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_90 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_90 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_90;
    return;
}



implementation transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s1882: Ref, 
    _value_s1882: int)
   returns (__ret_0_: bool)
{
  var __var_90: bool;
  var __var_91: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1882 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_90 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_90 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_90;
    return;
}



implementation transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1903: Ref, 
    _to_s1903: Ref, 
    _value_s1903: int)
   returns (__ret_0_: bool)
{
  var __var_92: bool;
  var __var_93: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s1903 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_92 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_92 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_92;
    return;
}



implementation transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s1903: Ref, 
    _to_s1903: Ref, 
    _value_s1903: int)
   returns (__ret_0_: bool)
{
  var __var_92: bool;
  var __var_93: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s1903 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_92 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_92 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_92;
    return;
}



implementation approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1921: Ref, 
    _value_s1921: int)
   returns (__ret_0_: bool)
{
  var __var_94: bool;
  var __var_95: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1921 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_94 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_94 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_94;
    return;
}



implementation approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1921: Ref, 
    _value_s1921: int)
   returns (__ret_0_: bool)
{
  var __var_94: bool;
  var __var_95: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s1921 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_94 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_94 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_94;
    return;
}



implementation increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1939: Ref, 
    _addedValue_s1939: int)
   returns (success_s1939: bool)
{
  var __var_96: bool;
  var __var_97: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s1939 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_96 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_96 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1939 := __var_96;
    return;
}



implementation increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1939: Ref, 
    _addedValue_s1939: int)
   returns (success_s1939: bool)
{
  var __var_96: bool;
  var __var_97: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s1939 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_96 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_96 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1939 := __var_96;
    return;
}



implementation decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1957: Ref, 
    _subtractedValue_s1957: int)
   returns (success_s1957: bool)
{
  var __var_98: bool;
  var __var_99: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s1957 >= 0;
    if (__tmp__DType[this] == VUToken)
    {
        call __var_98 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_98 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1957 := __var_98;
    return;
}



implementation decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s1957: Ref, 
    _subtractedValue_s1957: int)
   returns (success_s1957: bool)
{
  var __var_98: bool;
  var __var_99: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s1957 >= 0;
    if (DType[this] == VUToken)
    {
        call __var_98 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_98 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s1957 := __var_98;
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

    call DetailedERC20_DetailedERC20__fail(this, msgsender_MSG, msgvalue_MSG, -1074086523, 1491440932, 18);
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

    call DetailedERC20_DetailedERC20__success(this, msgsender_MSG, msgvalue_MSG, -1074086523, 1491440932, 18);
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
    _recipients_s2050: Ref, 
    _amounts_s2050: Ref)
   returns (__ret_0_: bool)
{
  var i_s2046: int;
  var __var_100: bool;

    gas := gas - 3;
    gas := gas - 45;
    assume __tmp__Length[_recipients_s2050] >= 0;
    assume __tmp__Length[_amounts_s2050] >= 0;
    if (!(__tmp__Length[_recipients_s2050] == __tmp__Length[_amounts_s2050]))
    {
        revert := true;
        return;
    }

    gas := gas - 17;
    assume i_s2046 >= 0;
    assume __tmp__Length[_recipients_s2050] >= 0;
    gas := gas - 11;
    assume i_s2046 >= 0;
    i_s2046 := 0;
    while (i_s2046 < __tmp__Length[_recipients_s2050])
    {
        gas := gas - 143;
        assume i_s2046 >= 0;
        assume i_s2046 >= 0;
        assume __tmp__M_int_int[_amounts_s2050][i_s2046] >= 0;
        if (__tmp__DType[this] == VUToken)
        {
            call __var_100 := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__M_int_Ref[_recipients_s2050][i_s2046], __tmp__M_int_int[_amounts_s2050][i_s2046]);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }

        if (!__var_100)
        {
            revert := true;
            return;
        }

        gas := gas - 19;
        assume i_s2046 >= 0;
        i_s2046 := i_s2046 + 1;
        assume i_s2046 >= 0;
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
    _recipients_s2050: Ref, 
    _amounts_s2050: Ref)
   returns (__ret_0_: bool)
{
  var i_s2046: int;
  var __var_100: bool;

    gas := gas - 3;
    gas := gas - 45;
    assume Length[_recipients_s2050] >= 0;
    assume Length[_amounts_s2050] >= 0;
    if (!(Length[_recipients_s2050] == Length[_amounts_s2050]))
    {
        revert := true;
        return;
    }

    gas := gas - 17;
    assume i_s2046 >= 0;
    assume Length[_recipients_s2050] >= 0;
    gas := gas - 11;
    assume i_s2046 >= 0;
    i_s2046 := 0;
    while (i_s2046 < Length[_recipients_s2050])
    {
        gas := gas - 143;
        assume i_s2046 >= 0;
        assume i_s2046 >= 0;
        assume M_int_int[_amounts_s2050][i_s2046] >= 0;
        if (DType[this] == VUToken)
        {
            call __var_100 := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[_recipients_s2050][i_s2046], M_int_int[_amounts_s2050][i_s2046]);
            if (revert)
            {
                return;
            }
        }
        else
        {
            assume false;
        }

        if (!__var_100)
        {
            revert := true;
            return;
        }

        gas := gas - 19;
        assume i_s2046 >= 0;
        i_s2046 := i_s2046 + 1;
        assume i_s2046 >= 0;
        if (gas < 0)
        {
            return;
        }
    }

    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation PresaleDeployer_PresaleDeployer_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var v_s2089: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: Ref;
  var __var_105: Ref;
  var __var_106: Ref;
  var __var_107: Ref;
  var __var_108: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_101 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_101] == VUToken;
    call VUToken_VUToken__fail(__var_101, this, 0);
    if (revert)
    {
        return;
    }

    v_s2089 := __var_101;
    v_s2089 := v_s2089;
    call __var_103 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    assume __tmp__DType[__var_103] == Whitelist;
    call Whitelist_Whitelist__fail(__var_103, this, 0);
    if (revert)
    {
        return;
    }

    __var_102 := __var_103;
    __tmp__w_PresaleDeployer[this] := __var_102;
    call __var_105 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __var_106 := __tmp__w_PresaleDeployer[this];
    __var_107 := ConstantToRef(-190231024604166526341223022065634874113659956975);
    __var_108 := ConstantToRef(-190231024581481035213160457834743233618208742878);
    assume __tmp__DType[__var_105] == PresaleCrowdsale;
    call PresaleCrowdsale_PresaleCrowdsale__fail(__var_105, this, 0, v_s2089, __tmp__w_PresaleDeployer[this], ConstantToRef(-190231024604166526341223022065634874113659956975), ConstantToRef(-190231024581481035213160457834743233618208742878), 1525039200, 1530309600, 1530396000);
    if (revert)
    {
        return;
    }

    __var_104 := __var_105;
    __tmp__i_PresaleDeployer[this] := __var_104;
}



implementation PresaleDeployer_PresaleDeployer_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var v_s2089: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: Ref;
  var __var_105: Ref;
  var __var_106: Ref;
  var __var_107: Ref;
  var __var_108: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_101 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_101] == VUToken;
    call VUToken_VUToken__success(__var_101, this, 0);
    if (revert)
    {
        return;
    }

    v_s2089 := __var_101;
    v_s2089 := v_s2089;
    call __var_103 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    assume DType[__var_103] == Whitelist;
    call Whitelist_Whitelist__success(__var_103, this, 0);
    if (revert)
    {
        return;
    }

    __var_102 := __var_103;
    w_PresaleDeployer[this] := __var_102;
    call __var_105 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    __var_106 := w_PresaleDeployer[this];
    __var_107 := ConstantToRef(-190231024604166526341223022065634874113659956975);
    __var_108 := ConstantToRef(-190231024581481035213160457834743233618208742878);
    assume DType[__var_105] == PresaleCrowdsale;
    call PresaleCrowdsale_PresaleCrowdsale__success(__var_105, this, 0, v_s2089, w_PresaleDeployer[this], ConstantToRef(-190231024604166526341223022065634874113659956975), ConstantToRef(-190231024581481035213160457834743233618208742878), 1525039200, 1530309600, 1530396000);
    if (revert)
    {
        return;
    }

    __var_104 := __var_105;
    i_PresaleDeployer[this] := __var_104;
}



implementation PresaleDeployer_PresaleDeployer__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var v_s2089: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: Ref;
  var __var_105: Ref;
  var __var_106: Ref;
  var __var_107: Ref;
  var __var_108: Ref;

    call PresaleDeployer_PresaleDeployer_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation PresaleDeployer_PresaleDeployer__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var v_s2089: Ref;
  var __var_101: Ref;
  var __var_102: Ref;
  var __var_103: Ref;
  var __var_104: Ref;
  var __var_105: Ref;
  var __var_106: Ref;
  var __var_107: Ref;
  var __var_108: Ref;

    call PresaleDeployer_PresaleDeployer_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == PresaleDeployer)
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
    else if (__tmp__DType[to] == PresaleCrowdsale)
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
    if (DType[to] == PresaleDeployer)
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
    else if (DType[to] == PresaleCrowdsale)
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
  var __snap___tmp__PHASE1_RATE_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE2_RATE_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE3_RATE_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE1_CAP_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE2_CAP_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE3_CAP_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE1_LIMIT_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE2_LIMIT_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__PHASE3_LIMIT_PresaleCrowdsale: [Ref]int;
  var __snap___tmp__rate_PresaleCrowdsale.Phase: [Ref]int;
  var __snap___tmp__cap_PresaleCrowdsale.Phase: [Ref]int;
  var __snap___tmp__limit_PresaleCrowdsale.Phase: [Ref]int;
  var __snap___tmp__phases_PresaleCrowdsale: [Ref]Ref;
  var __snap___tmp__name_DetailedERC20: [Ref]int;
  var __snap___tmp__symbol_DetailedERC20: [Ref]int;
  var __snap___tmp__decimals_DetailedERC20: [Ref]int;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__paused_Pausable: [Ref]bool;
  var __snap___tmp__INITIAL_SUPPLY_VUToken: [Ref]int;
  var __snap___tmp__i_PresaleDeployer: [Ref]Ref;
  var __snap___tmp__w_PresaleDeployer: [Ref]Ref;

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
        __snap___tmp__PHASE1_RATE_PresaleCrowdsale := __tmp__PHASE1_RATE_PresaleCrowdsale;
        __snap___tmp__PHASE2_RATE_PresaleCrowdsale := __tmp__PHASE2_RATE_PresaleCrowdsale;
        __snap___tmp__PHASE3_RATE_PresaleCrowdsale := __tmp__PHASE3_RATE_PresaleCrowdsale;
        __snap___tmp__PHASE1_CAP_PresaleCrowdsale := __tmp__PHASE1_CAP_PresaleCrowdsale;
        __snap___tmp__PHASE2_CAP_PresaleCrowdsale := __tmp__PHASE2_CAP_PresaleCrowdsale;
        __snap___tmp__PHASE3_CAP_PresaleCrowdsale := __tmp__PHASE3_CAP_PresaleCrowdsale;
        __snap___tmp__PHASE1_LIMIT_PresaleCrowdsale := __tmp__PHASE1_LIMIT_PresaleCrowdsale;
        __snap___tmp__PHASE2_LIMIT_PresaleCrowdsale := __tmp__PHASE2_LIMIT_PresaleCrowdsale;
        __snap___tmp__PHASE3_LIMIT_PresaleCrowdsale := __tmp__PHASE3_LIMIT_PresaleCrowdsale;
        __snap___tmp__rate_PresaleCrowdsale.Phase := __tmp__rate_PresaleCrowdsale.Phase;
        __snap___tmp__cap_PresaleCrowdsale.Phase := __tmp__cap_PresaleCrowdsale.Phase;
        __snap___tmp__limit_PresaleCrowdsale.Phase := __tmp__limit_PresaleCrowdsale.Phase;
        __snap___tmp__phases_PresaleCrowdsale := __tmp__phases_PresaleCrowdsale;
        __snap___tmp__name_DetailedERC20 := __tmp__name_DetailedERC20;
        __snap___tmp__symbol_DetailedERC20 := __tmp__symbol_DetailedERC20;
        __snap___tmp__decimals_DetailedERC20 := __tmp__decimals_DetailedERC20;
        __snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
        __snap___tmp__paused_Pausable := __tmp__paused_Pausable;
        __snap___tmp__INITIAL_SUPPLY_VUToken := __tmp__INITIAL_SUPPLY_VUToken;
        __snap___tmp__i_PresaleDeployer := __tmp__i_PresaleDeployer;
        __snap___tmp__w_PresaleDeployer := __tmp__w_PresaleDeployer;
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := __snap___tmp__PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := __snap___tmp__PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := __snap___tmp__PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := __snap___tmp__PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := __snap___tmp__PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := __snap___tmp__PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := __snap___tmp__PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := __snap___tmp__PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := __snap___tmp__PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := __snap___tmp__rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := __snap___tmp__cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := __snap___tmp__limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := __snap___tmp__phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := __snap___tmp__name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := __snap___tmp__symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := __snap___tmp__decimals_DetailedERC20;
        __tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
        __tmp__paused_Pausable := __snap___tmp__paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := __snap___tmp__INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := __snap___tmp__i_PresaleDeployer;
        __tmp__w_PresaleDeployer := __snap___tmp__w_PresaleDeployer;
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
        __tmp__PHASE1_RATE_PresaleCrowdsale := PHASE1_RATE_PresaleCrowdsale;
        __tmp__PHASE2_RATE_PresaleCrowdsale := PHASE2_RATE_PresaleCrowdsale;
        __tmp__PHASE3_RATE_PresaleCrowdsale := PHASE3_RATE_PresaleCrowdsale;
        __tmp__PHASE1_CAP_PresaleCrowdsale := PHASE1_CAP_PresaleCrowdsale;
        __tmp__PHASE2_CAP_PresaleCrowdsale := PHASE2_CAP_PresaleCrowdsale;
        __tmp__PHASE3_CAP_PresaleCrowdsale := PHASE3_CAP_PresaleCrowdsale;
        __tmp__PHASE1_LIMIT_PresaleCrowdsale := PHASE1_LIMIT_PresaleCrowdsale;
        __tmp__PHASE2_LIMIT_PresaleCrowdsale := PHASE2_LIMIT_PresaleCrowdsale;
        __tmp__PHASE3_LIMIT_PresaleCrowdsale := PHASE3_LIMIT_PresaleCrowdsale;
        __tmp__rate_PresaleCrowdsale.Phase := rate_PresaleCrowdsale.Phase;
        __tmp__cap_PresaleCrowdsale.Phase := cap_PresaleCrowdsale.Phase;
        __tmp__limit_PresaleCrowdsale.Phase := limit_PresaleCrowdsale.Phase;
        __tmp__phases_PresaleCrowdsale := phases_PresaleCrowdsale;
        __tmp__name_DetailedERC20 := name_DetailedERC20;
        __tmp__symbol_DetailedERC20 := symbol_DetailedERC20;
        __tmp__decimals_DetailedERC20 := decimals_DetailedERC20;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__INITIAL_SUPPLY_VUToken := INITIAL_SUPPLY_VUToken;
        __tmp__i_PresaleDeployer := i_PresaleDeployer;
        __tmp__w_PresaleDeployer := w_PresaleDeployer;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
       || DType[this] == PresaleCrowdsale;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
       || DType[this] == PresaleCrowdsale;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
       || DType[this] == PresaleCrowdsale;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
       || DType[this] == PresaleCrowdsale;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
       || DType[this] == PresaleCrowdsale
       || DType[this] == Pausable
       || DType[this] == PausableToken
       || DType[this] == VUToken;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
  var _token_s985: Ref;
  var _whitelist_s985: Ref;
  var _tokenWallet_s985: Ref;
  var _wallet_s985: Ref;
  var _rate_s985: int;
  var _openingTime_s985: int;
  var _closingTime_s985: int;
  var _deliveryTime_s985: int;
  var _limit_s985: int;
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
    havoc _token_s985;
    havoc _whitelist_s985;
    havoc _tokenWallet_s985;
    havoc _wallet_s985;
    havoc _rate_s985;
    havoc _openingTime_s985;
    havoc _closingTime_s985;
    havoc _deliveryTime_s985;
    havoc _limit_s985;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
  var _token_s985: Ref;
  var _whitelist_s985: Ref;
  var _tokenWallet_s985: Ref;
  var _wallet_s985: Ref;
  var _rate_s985: int;
  var _openingTime_s985: int;
  var _closingTime_s985: int;
  var _deliveryTime_s985: int;
  var _limit_s985: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == BaseCrowdsale || DType[this] == PresaleCrowdsale;
    gas := gas - 53000;
    call BaseCrowdsale_BaseCrowdsale(this, msgsender_MSG, msgvalue_MSG, _token_s985, _whitelist_s985, _tokenWallet_s985, _wallet_s985, _rate_s985, _openingTime_s985, _closingTime_s985, _deliveryTime_s985, _limit_s985);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BaseCrowdsale(this);
    }
}



implementation CorralChoice_PresaleCrowdsale(this: Ref)
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
  var _token_s985: Ref;
  var _whitelist_s985: Ref;
  var _tokenWallet_s985: Ref;
  var _wallet_s985: Ref;
  var _rate_s985: int;
  var _openingTime_s985: int;
  var _closingTime_s985: int;
  var _deliveryTime_s985: int;
  var _limit_s985: int;
  var _token_s1143: Ref;
  var _whitelist_s1143: Ref;
  var _tokenWallet_s1143: Ref;
  var _wallet_s1143: Ref;
  var _openingTime_s1143: int;
  var _closingTime_s1143: int;
  var _deliveryTime_s1143: int;
  var __ret_0_getPhase: int;
  var _phase_s1175: int;
  var __ret_0_getPhaseRate: int;
  var _phase_s1198: int;
  var __ret_0_getPhaseCap: int;
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
    havoc _token_s985;
    havoc _whitelist_s985;
    havoc _tokenWallet_s985;
    havoc _wallet_s985;
    havoc _rate_s985;
    havoc _openingTime_s985;
    havoc _closingTime_s985;
    havoc _deliveryTime_s985;
    havoc _limit_s985;
    havoc _token_s1143;
    havoc _whitelist_s1143;
    havoc _tokenWallet_s1143;
    havoc _wallet_s1143;
    havoc _openingTime_s1143;
    havoc _closingTime_s1143;
    havoc _deliveryTime_s1143;
    havoc __ret_0_getPhase;
    havoc _phase_s1175;
    havoc __ret_0_getPhaseRate;
    havoc _phase_s1198;
    havoc __ret_0_getPhaseCap;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 8)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdrawTokens_BaseCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getPhase := getPhase_PresaleCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getPhaseRate := getPhaseRate_PresaleCrowdsale(this, msgsender_MSG, msgvalue_MSG, _phase_s1175);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getPhaseCap := getPhaseCap_PresaleCrowdsale(this, msgsender_MSG, msgvalue_MSG, _phase_s1198);
    }
}



implementation CorralEntry_PresaleCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _token_s1143: Ref;
  var _whitelist_s1143: Ref;
  var _tokenWallet_s1143: Ref;
  var _wallet_s1143: Ref;
  var _openingTime_s1143: int;
  var _closingTime_s1143: int;
  var _deliveryTime_s1143: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == PresaleCrowdsale;
    gas := gas - 53000;
    call PresaleCrowdsale_PresaleCrowdsale(this, msgsender_MSG, msgvalue_MSG, _token_s1143, _whitelist_s1143, _tokenWallet_s1143, _wallet_s1143, _openingTime_s1143, _closingTime_s1143, _deliveryTime_s1143);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PresaleCrowdsale(this);
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
  var _name_s1560: int;
  var _symbol_s1560: int;
  var _decimals_s1560: int;
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
    havoc _name_s1560;
    havoc _symbol_s1560;
    havoc _decimals_s1560;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
  var _name_s1560: int;
  var _symbol_s1560: int;
  var _decimals_s1560: int;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == DetailedERC20 || DType[this] == VUToken;
    gas := gas - 53000;
    call DetailedERC20_DetailedERC20(this, msgsender_MSG, msgvalue_MSG, _name_s1560, _symbol_s1560, _decimals_s1560);
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
  var _owner_s1701: Ref;
  var _spender_s1701: Ref;
  var __ret_0_allowance: int;
  var _from_s1657: Ref;
  var _to_s1657: Ref;
  var _value_s1657: int;
  var __ret_0_transferFrom: bool;
  var _spender_s1685: Ref;
  var _value_s1685: int;
  var __ret_0_approve: bool;
  var _spender_s1742: Ref;
  var _addedValue_s1742: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s1802: Ref;
  var _subtractedValue_s1802: int;
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
    havoc _owner_s1701;
    havoc _spender_s1701;
    havoc __ret_0_allowance;
    havoc _from_s1657;
    havoc _to_s1657;
    havoc _value_s1657;
    havoc __ret_0_transferFrom;
    havoc _spender_s1685;
    havoc _value_s1685;
    havoc __ret_0_approve;
    havoc _spender_s1742;
    havoc _addedValue_s1742;
    havoc __ret_0_increaseApproval;
    havoc _spender_s1802;
    havoc _subtractedValue_s1802;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s1701, _spender_s1701);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s1657, _to_s1657, _value_s1657);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1685, _value_s1685);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1742, _addedValue_s1742);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1802, _subtractedValue_s1802);
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
  var _to_s1882: Ref;
  var _value_s1882: int;
  var __ret_0_transfer: bool;
  var _owner_s1701: Ref;
  var _spender_s1701: Ref;
  var __ret_0_allowance: int;
  var _from_s1903: Ref;
  var _to_s1903: Ref;
  var _value_s1903: int;
  var __ret_0_transferFrom: bool;
  var _spender_s1921: Ref;
  var _value_s1921: int;
  var __ret_0_approve: bool;
  var newOwner_s733: Ref;
  var _spender_s1939: Ref;
  var _addedValue_s1939: int;
  var success_s1939: bool;
  var _spender_s1957: Ref;
  var _subtractedValue_s1957: int;
  var success_s1957: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s1882;
    havoc _value_s1882;
    havoc __ret_0_transfer;
    havoc _owner_s1701;
    havoc _spender_s1701;
    havoc __ret_0_allowance;
    havoc _from_s1903;
    havoc _to_s1903;
    havoc _value_s1903;
    havoc __ret_0_transferFrom;
    havoc _spender_s1921;
    havoc _value_s1921;
    havoc __ret_0_approve;
    havoc newOwner_s733;
    havoc _spender_s1939;
    havoc _addedValue_s1939;
    havoc success_s1939;
    havoc _spender_s1957;
    havoc _subtractedValue_s1957;
    havoc success_s1957;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s1701, _spender_s1701);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
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
        call success_s1939 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1957 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
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
  var _to_s1882: Ref;
  var _value_s1882: int;
  var __ret_0_transfer: bool;
  var _owner_s1701: Ref;
  var _spender_s1701: Ref;
  var __ret_0_allowance: int;
  var _from_s1903: Ref;
  var _to_s1903: Ref;
  var _value_s1903: int;
  var __ret_0_transferFrom: bool;
  var _spender_s1921: Ref;
  var _value_s1921: int;
  var __ret_0_approve: bool;
  var _value_s679: int;
  var newOwner_s733: Ref;
  var _name_s1560: int;
  var _symbol_s1560: int;
  var _decimals_s1560: int;
  var _spender_s1939: Ref;
  var _addedValue_s1939: int;
  var success_s1939: bool;
  var _spender_s1957: Ref;
  var _subtractedValue_s1957: int;
  var success_s1957: bool;
  var _recipients_s2050: Ref;
  var _amounts_s2050: Ref;
  var __ret_0_massTransfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc __ret_0_totalSupply;
    havoc _owner_s627;
    havoc balance_s627;
    havoc _to_s1882;
    havoc _value_s1882;
    havoc __ret_0_transfer;
    havoc _owner_s1701;
    havoc _spender_s1701;
    havoc __ret_0_allowance;
    havoc _from_s1903;
    havoc _to_s1903;
    havoc _value_s1903;
    havoc __ret_0_transferFrom;
    havoc _spender_s1921;
    havoc _value_s1921;
    havoc __ret_0_approve;
    havoc _value_s679;
    havoc newOwner_s733;
    havoc _name_s1560;
    havoc _symbol_s1560;
    havoc _decimals_s1560;
    havoc _spender_s1939;
    havoc _addedValue_s1939;
    havoc success_s1939;
    havoc _spender_s1957;
    havoc _subtractedValue_s1957;
    havoc success_s1957;
    havoc _recipients_s2050;
    havoc _amounts_s2050;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    assume DType[msgsender_MSG] != PresaleDeployer;
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
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s1882, _value_s1882);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s1701, _spender_s1701);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s1903, _to_s1903, _value_s1903);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1921, _value_s1921);
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
        call success_s1939 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1939, _addedValue_s1939);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s1957 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s1957, _subtractedValue_s1957);
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
        call _recipients_s2050 := FreshRefGenerator__success();
        call _amounts_s2050 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_massTransfer := massTransfer_VUToken(this, msgsender_MSG, msgvalue_MSG, _recipients_s2050, _amounts_s2050);
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



implementation CorralChoice_PresaleDeployer(this: Ref)
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
  var _token_s985: Ref;
  var _whitelist_s985: Ref;
  var _tokenWallet_s985: Ref;
  var _wallet_s985: Ref;
  var _rate_s985: int;
  var _openingTime_s985: int;
  var _closingTime_s985: int;
  var _deliveryTime_s985: int;
  var _limit_s985: int;
  var _token_s1143: Ref;
  var _whitelist_s1143: Ref;
  var _tokenWallet_s1143: Ref;
  var _wallet_s1143: Ref;
  var _openingTime_s1143: int;
  var _closingTime_s1143: int;
  var _deliveryTime_s1143: int;
  var __ret_0_getPhase: int;
  var _phase_s1175: int;
  var __ret_0_getPhaseRate: int;
  var _phase_s1198: int;
  var __ret_0_getPhaseCap: int;
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
    havoc _token_s985;
    havoc _whitelist_s985;
    havoc _tokenWallet_s985;
    havoc _wallet_s985;
    havoc _rate_s985;
    havoc _openingTime_s985;
    havoc _closingTime_s985;
    havoc _deliveryTime_s985;
    havoc _limit_s985;
    havoc _token_s1143;
    havoc _whitelist_s1143;
    havoc _tokenWallet_s1143;
    havoc _wallet_s1143;
    havoc _openingTime_s1143;
    havoc _closingTime_s1143;
    havoc _deliveryTime_s1143;
    havoc __ret_0_getPhase;
    havoc _phase_s1175;
    havoc __ret_0_getPhaseRate;
    havoc _phase_s1198;
    havoc __ret_0_getPhaseCap;
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
    assume DType[msgsender_MSG] != PresaleCrowdsale;
    assume DType[msgsender_MSG] != DetailedERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != VUToken;
    //assume DType[msgsender_MSG] != PresaleDeployer;
    Alloc[msgsender_MSG] := true;
    if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(w_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call authorize_Whitelist(w_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _admin_s782);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call reject_Whitelist(w_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _admin_s796);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addToWhitelist_Whitelist(w_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s814);
    }
    else if (choice == 11)
    {
        call _beneficiaries_s850 := FreshRefGenerator__success();
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call addManyToWhitelist_Whitelist(w_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiaries_s850);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call removeFromWhitelist_Whitelist(w_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s868);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_isWhitelisted := isWhitelisted_Whitelist(w_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s880);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        call buyTokens_Crowdsale(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _beneficiary_s247);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_remainingTokens := remainingTokens_AllowanceCrowdsale(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_hasClosed := hasClosed_TimedCrowdsale(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call withdrawTokens_BaseCrowdsale(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, newOwner_s733);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getPhase := getPhase_PresaleCrowdsale(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getPhaseRate := getPhaseRate_PresaleCrowdsale(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _phase_s1175);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_getPhaseCap := getPhaseCap_PresaleCrowdsale(i_PresaleDeployer[this], msgsender_MSG, msgvalue_MSG, _phase_s1198);
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
    assume DType[this] == PresaleDeployer;
    gas := gas - 53000;
    call PresaleDeployer_PresaleDeployer(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PresaleDeployer(this);
    }
}


