// Boogie program verifier version 2.4.1.10503, Copyright (c) 2003-2014, Microsoft.
// Command Line Options: /print:BrickblockToken.bpl /pretty:1 /noVerify __SolToBoogieTest_out.bpl

// 01_no_ether_transfer
// LTLProperty: [](!finished(*, dead_BrickblockToken[this] == true && paused_Pausable[this] == false))

// 02_no_transfer_after_end_sale
// LTLProperty: [](finished(BrickblockToken.finalizeTokenSale) ==> [](!finished(BrickblockToken.distributeTokens))) 

// 03_transfer_not_after_upgrade
// LTLFairness: [](!finished(BrickblockToken.unpause))
// LTLProperty: [](!finished(PausableToken.transfer))

// 04_evacuate_after_upgrade
// LTLFairness: [](!finished(BrickblockToken.upgrade))
// LTLProperty: [](!finished(BrickblockToken.evacuate))

// 05_balance_reduced
// LTLProperty: [](!finished(BrickblockToken.distributeTokens, old(M_Ref_int_balances0[balances_BasicToken[this]][this]) < M_Ref_int_balances0[balances_BasicToken[this]][this]))

// 06_initial_supply
// #LTLProperty: <>(started(*, (predecessorAddress_BrickblockToken[this] == null) ==> (totalSupply_ERC20Basic[this] == 500000000000000000000000000)))

type Ref = int;

type ContractName = int;

var null: Ref;

var Ownable: ContractName;

var Pausable: ContractName;

var SafeMath: ContractName;

var ERC20Basic: ContractName;

var BasicToken: ContractName;

var ERC20: ContractName;

var StandardToken: ContractName;

var PausableToken: ContractName;

var BrickblockToken: ContractName;

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

var Length: [Ref]int;

var revert: bool;

var gas: int;

var now: int;

procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
  modifies Alloc;



var {:access "this.owner=owner_Ownable[this]"} owner_Ownable: [Ref]Ref;

procedure {:inline 1} Ownable_Ownable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance, owner_Ownable;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call Ownable_Ownable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call Ownable_Ownable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, owner_Ownable;



implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call transferOwnership_Ownable__fail(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
        assume revert || gas < 0;
    }
    else
    {
        call transferOwnership_Ownable__success(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} Pausable_Pausable_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, paused_Pausable;



procedure {:inline 1} Pausable_Pausable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance, owner_Ownable, paused_Pausable;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, paused_Pausable;



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
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, paused_Pausable;



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
        __tmp__M_Ref_int_allowed1 := M_Ref_int_allowed1;
        __tmp__M_Ref_Ref_allowed1 := M_Ref_Ref_allowed1;
        __tmp__sum_allowed1 := sum_allowed1;
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call unpause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call unpause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call SafeMath_SafeMath__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call SafeMath_SafeMath__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s132: int, b_s132: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s156: int, b_s156: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} ERC20Basic_ERC20Basic_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic;



procedure {:inline 1} ERC20Basic_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance, totalSupply_ERC20Basic;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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

procedure {:public} {:inline 1} balanceOf_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s166: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transfer_ERC20Basic(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s175: Ref, value_s175: int)
   returns (__ret_0_: bool);



procedure {:inline 1} BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



procedure {:inline 1} BasicToken_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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
    _to_s253: Ref, 
    _value_s253: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_BasicToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s253: Ref, 
    _value_s253: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s253, _value_s253);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s253, _value_s253);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref)
   returns (balance_s265: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas;



implementation balanceOf_BasicToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref)
   returns (balance_s265: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call balance_s265 := balanceOf_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s265);
        assume revert || gas < 0;
    }
    else
    {
        call balance_s265 := balanceOf_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s265);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} ERC20_ERC20_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} ERC20_ERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance, totalSupply_ERC20Basic;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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
    owner_s277: Ref, 
    spender_s277: Ref)
   returns (__ret_0_: int);



procedure {:public} {:inline 1} transferFrom_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    from_s288: Ref, 
    to_s288: Ref, 
    value_s288: int)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} approve_ERC20(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    spender_s297: Ref, 
    value_s297: int)
   returns (__ret_0_: bool);



procedure {:inline 1} StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, Alloc;



procedure {:inline 1} StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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
    _from_s402: Ref, 
    _to_s402: Ref, 
    _value_s402: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s402: Ref, 
    _to_s402: Ref, 
    _value_s402: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s402, _to_s402, _value_s402);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s402, _to_s402, _value_s402);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s430: Ref, 
    _value_s430: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s430: Ref, 
    _value_s430: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s430, _value_s430);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s430, _value_s430);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s446: Ref, 
    _spender_s446: Ref)
   returns (__ret_0_: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation allowance_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s446: Ref, 
    _spender_s446: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := allowance_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _owner_s446, _spender_s446);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := allowance_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _owner_s446, _spender_s446);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s487: Ref, 
    _addedValue_s487: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation increaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s487: Ref, 
    _addedValue_s487: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s487, _addedValue_s487);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s487, _addedValue_s487);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s547: Ref, 
    _subtractedValue_s547: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation decreaseApproval_StandardToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s547: Ref, 
    _subtractedValue_s547: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s547, _subtractedValue_s547);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s547, _subtractedValue_s547);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} PausableToken_PausableToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable;



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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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
    _to_s570: Ref, 
    _value_s570: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, sum_balances0, M_Ref_int_balances0;



implementation transfer_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s570: Ref, 
    _value_s570: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := transfer_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transfer_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s591: Ref, 
    _to_s591: Ref, 
    _value_s591: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



implementation transferFrom_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s591: Ref, 
    _to_s591: Ref, 
    _value_s591: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := transferFrom_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := transferFrom_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s609: Ref, 
    _value_s609: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation approve_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s609: Ref, 
    _value_s609: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := approve_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := approve_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s627: Ref, 
    _addedValue_s627: int)
   returns (success_s627: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation increaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s627: Ref, 
    _addedValue_s627: int)
   returns (success_s627: bool)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call success_s627 := increaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
        assume revert || gas < 0;
    }
    else
    {
        call success_s627 := increaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s645: Ref, 
    _subtractedValue_s645: int)
   returns (success_s645: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



implementation decreaseApproval_PausableToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s645: Ref, 
    _subtractedValue_s645: int)
   returns (success_s645: bool)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call success_s645 := decreaseApproval_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
        assume revert || gas < 0;
    }
    else
    {
        call success_s645 := decreaseApproval_PausableToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
        assume !revert && gas >= 0;
    }
}



var {:access "this.name=name_BrickblockToken[this]"} name_BrickblockToken: [Ref]int;

var {:access "this.symbol=symbol_BrickblockToken[this]"} symbol_BrickblockToken: [Ref]int;

var {:access "this.initialSupply=initialSupply_BrickblockToken[this]"} initialSupply_BrickblockToken: [Ref]int;

var {:access "this.contributorsShare=contributorsShare_BrickblockToken[this]"} contributorsShare_BrickblockToken: [Ref]int;

var {:access "this.companyShare=companyShare_BrickblockToken[this]"} companyShare_BrickblockToken: [Ref]int;

var {:access "this.bonusShare=bonusShare_BrickblockToken[this]"} bonusShare_BrickblockToken: [Ref]int;

var {:access "this.decimals=decimals_BrickblockToken[this]"} decimals_BrickblockToken: [Ref]int;

var {:access "this.bonusDistributionAddress=bonusDistributionAddress_BrickblockToken[this]"} bonusDistributionAddress_BrickblockToken: [Ref]Ref;

var {:access "this.fountainContractAddress=fountainContractAddress_BrickblockToken[this]"} fountainContractAddress_BrickblockToken: [Ref]Ref;

var {:access "this.successorAddress=successorAddress_BrickblockToken[this]"} successorAddress_BrickblockToken: [Ref]Ref;

var {:access "this.predecessorAddress=predecessorAddress_BrickblockToken[this]"} predecessorAddress_BrickblockToken: [Ref]Ref;

var {:access "this.tokenSaleActive=tokenSaleActive_BrickblockToken[this]"} tokenSaleActive_BrickblockToken: [Ref]bool;

var {:access "this.dead=dead_BrickblockToken[this]"} dead_BrickblockToken: [Ref]bool;

procedure {:inline 1} BrickblockToken_BrickblockToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref);
  modifies Balance, name_BrickblockToken, symbol_BrickblockToken, initialSupply_BrickblockToken, contributorsShare_BrickblockToken, companyShare_BrickblockToken, bonusShare_BrickblockToken, decimals_BrickblockToken, bonusDistributionAddress_BrickblockToken, fountainContractAddress_BrickblockToken, successorAddress_BrickblockToken, predecessorAddress_BrickblockToken, tokenSaleActive_BrickblockToken, dead_BrickblockToken, paused_Pausable, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, gas;



procedure {:constructor} {:public} {:inline 1} BrickblockToken_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, name_BrickblockToken, symbol_BrickblockToken, initialSupply_BrickblockToken, contributorsShare_BrickblockToken, companyShare_BrickblockToken, bonusShare_BrickblockToken, decimals_BrickblockToken, bonusDistributionAddress_BrickblockToken, fountainContractAddress_BrickblockToken, successorAddress_BrickblockToken, predecessorAddress_BrickblockToken, tokenSaleActive_BrickblockToken, dead_BrickblockToken;



implementation BrickblockToken_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call BrickblockToken_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG, _predecessorAddress_s862);
        assume revert || gas < 0;
    }
    else
    {
        call BrickblockToken_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG, _predecessorAddress_s862);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} unpause_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, paused_Pausable;



implementation unpause_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call unpause_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call unpause_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} isContract_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addr_s897: Ref)
   returns (__ret_0_: bool);



procedure {:public} {:inline 1} changeBonusDistributionAddress_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s921: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, bonusDistributionAddress_BrickblockToken;



implementation changeBonusDistributionAddress_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s921: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := changeBonusDistributionAddress_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG, _newAddress_s921);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := changeBonusDistributionAddress_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG, _newAddress_s921);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} changeFountainContractAddress_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s957: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, fountainContractAddress_BrickblockToken;



implementation changeFountainContractAddress_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s957: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := changeFountainContractAddress_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG, _newAddress_s957);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := changeFountainContractAddress_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG, _newAddress_s957);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} distributeTokens_BrickblockToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1028: Ref, 
    _value_s1028: int)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, sum_balances0, M_Ref_int_balances0;



implementation distributeTokens_BrickblockToken(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1028: Ref, 
    _value_s1028: int)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := distributeTokens_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG, _contributor_s1028, _value_s1028);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := distributeTokens_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG, _contributor_s1028, _value_s1028);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} finalizeTokenSale_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic, tokenSaleActive_BrickblockToken, Alloc;



implementation finalizeTokenSale_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := finalizeTokenSale_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := finalizeTokenSale_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} evacuate_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _user_s1233: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation evacuate_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _user_s1233: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := evacuate_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG, _user_s1233);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := evacuate_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG, _user_s1233);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} upgrade_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _successorAddress_s1275: Ref)
   returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, successorAddress_BrickblockToken, dead_BrickblockToken, paused_Pausable;



implementation upgrade_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _successorAddress_s1275: Ref)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := upgrade_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG, _successorAddress_s1275);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := upgrade_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG, _successorAddress_s1275);
        assume !revert && gas >= 0;
    }
}



procedure {:public} {:inline 1} rescue_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



implementation rescue_BrickblockToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
        call __ret_0_ := rescue_BrickblockToken__fail(this, msgsender_MSG, msgvalue_MSG);
        assume revert || gas < 0;
    }
    else
    {
        call __ret_0_ := rescue_BrickblockToken__success(this, msgsender_MSG, msgvalue_MSG);
        assume !revert && gas >= 0;
    }
}



procedure {:inline 1} FallbackMethod_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
  modifies gas, revert, Balance;



procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
  modifies Balance;



procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, revert, gas, Balance;



procedure {:inline 1} onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} only_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, caller_s733: Ref);
  modifies gas, revert;



procedure {:inline 1} supplyAvailable_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s759: int);
  modifies gas, revert;



procedure CorralChoice_Ownable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, owner_Ownable;



procedure CorralEntry_Ownable();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, now, owner_Ownable, Balance;



procedure CorralChoice_Pausable(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, owner_Ownable, paused_Pausable;



procedure CorralEntry_Pausable();
  modifies gas, Alloc, Balance, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken;



procedure CorralChoice_SafeMath(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_SafeMath();
  modifies gas, Alloc, Balance, now;



procedure CorralChoice_ERC20Basic(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20Basic();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_BasicToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_BasicToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken;



procedure CorralChoice_ERC20(this: Ref);
  modifies gas, now, Alloc;



procedure CorralEntry_ERC20();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, now;



procedure CorralChoice_StandardToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1;



procedure CorralEntry_StandardToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, sum_allowed1;



procedure CorralChoice_PausableToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, owner_Ownable, paused_Pausable, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0;



procedure CorralEntry_PausableToken();
  modifies gas, Alloc, Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, now, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, sum_allowed1;



procedure CorralChoice_BrickblockToken(this: Ref);
  modifies gas, now, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, owner_Ownable, paused_Pausable, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, bonusDistributionAddress_BrickblockToken, fountainContractAddress_BrickblockToken, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, tokenSaleActive_BrickblockToken, successorAddress_BrickblockToken, dead_BrickblockToken;



procedure main();
  modifies gas, Alloc, revert, __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, now, owner_Ownable, paused_Pausable, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, bonusDistributionAddress_BrickblockToken, fountainContractAddress_BrickblockToken, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic, tokenSaleActive_BrickblockToken, successorAddress_BrickblockToken, dead_BrickblockToken, Balance, balances_BasicToken, allowed_StandardToken, name_BrickblockToken, symbol_BrickblockToken, initialSupply_BrickblockToken, contributorsShare_BrickblockToken, companyShare_BrickblockToken, bonusShare_BrickblockToken, decimals_BrickblockToken, predecessorAddress_BrickblockToken;



var __tmp__Balance: [Ref]int;

var __tmp__DType: [Ref]ContractName;

var __tmp__Alloc: [Ref]bool;

var __tmp__balance_ADDR: [Ref]int;

var __tmp__M_Ref_int_balances0: [Ref][Ref]int;

var __tmp__sum_balances0: [Ref]int;

var __tmp__M_Ref_int_allowed1: [Ref][Ref]int;

var __tmp__M_Ref_Ref_allowed1: [Ref][Ref]Ref;

var __tmp__sum_allowed1: [Ref]int;

var __tmp__Length: [Ref]int;

var __tmp__now: int;

var __tmp__owner_Ownable: [Ref]Ref;

var __tmp__paused_Pausable: [Ref]bool;

var __tmp__totalSupply_ERC20Basic: [Ref]int;

var __tmp__balances_BasicToken: [Ref]Ref;

var __tmp__allowed_StandardToken: [Ref]Ref;

var __tmp__name_BrickblockToken: [Ref]int;

var __tmp__symbol_BrickblockToken: [Ref]int;

var __tmp__initialSupply_BrickblockToken: [Ref]int;

var __tmp__contributorsShare_BrickblockToken: [Ref]int;

var __tmp__companyShare_BrickblockToken: [Ref]int;

var __tmp__bonusShare_BrickblockToken: [Ref]int;

var __tmp__decimals_BrickblockToken: [Ref]int;

var __tmp__bonusDistributionAddress_BrickblockToken: [Ref]Ref;

var __tmp__fountainContractAddress_BrickblockToken: [Ref]Ref;

var __tmp__successorAddress_BrickblockToken: [Ref]Ref;

var __tmp__predecessorAddress_BrickblockToken: [Ref]Ref;

var __tmp__tokenSaleActive_BrickblockToken: [Ref]bool;

var __tmp__dead_BrickblockToken: [Ref]bool;

procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
  modifies __tmp__Alloc;



procedure {:inline 1} Ownable_Ownable_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



procedure {:constructor} {:inline 1} Ownable_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref);
  modifies gas, revert, owner_Ownable;



procedure {:inline 1} transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref);
  modifies gas, revert, __tmp__owner_Ownable;



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



procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} SafeMath_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



procedure {:inline 1} SafeMath_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s132: int, b_s132: int)
   returns (__ret_0_: int);
  modifies gas;



procedure {:inline 1} add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s156: int, b_s156: int)
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
    _to_s253: Ref, 
    _value_s253: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_BasicToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s253: Ref, 
    _value_s253: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref)
   returns (balance_s265: int);
  modifies gas;



procedure {:inline 1} balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref)
   returns (balance_s265: int);
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
    _from_s402: Ref, 
    _to_s402: Ref, 
    _value_s402: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s402: Ref, 
    _to_s402: Ref, 
    _value_s402: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s430: Ref, 
    _value_s430: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s430: Ref, 
    _value_s430: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s446: Ref, 
    _spender_s446: Ref)
   returns (__ret_0_: int);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s446: Ref, 
    _spender_s446: Ref)
   returns (__ret_0_: int);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s487: Ref, 
    _addedValue_s487: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s487: Ref, 
    _addedValue_s487: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s547: Ref, 
    _subtractedValue_s547: int)
   returns (__ret_0_: bool);
  modifies gas, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s547: Ref, 
    _subtractedValue_s547: int)
   returns (__ret_0_: bool);
  modifies gas, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} PausableToken_PausableToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance;



procedure {:inline 1} PausableToken_PausableToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable;



procedure {:inline 1} PausableToken_PausableToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__paused_Pausable;



procedure {:inline 1} transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s570: Ref, 
    _value_s570: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} transfer_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s570: Ref, 
    _value_s570: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s591: Ref, 
    _to_s591: Ref, 
    _value_s591: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, sum_balances0, M_Ref_int_balances0, Alloc;



procedure {:inline 1} transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s591: Ref, 
    _to_s591: Ref, 
    _value_s591: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__Alloc;



procedure {:inline 1} approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s609: Ref, 
    _value_s609: int)
   returns (__ret_0_: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s609: Ref, 
    _value_s609: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s627: Ref, 
    _addedValue_s627: int)
   returns (success_s627: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s627: Ref, 
    _addedValue_s627: int)
   returns (success_s627: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s645: Ref, 
    _subtractedValue_s645: int)
   returns (success_s645: bool);
  modifies gas, revert, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, Alloc;



procedure {:inline 1} decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s645: Ref, 
    _subtractedValue_s645: int)
   returns (success_s645: bool);
  modifies gas, revert, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__Alloc;



procedure {:inline 1} BrickblockToken_BrickblockToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref);
  modifies __tmp__Balance, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, __tmp__paused_Pausable, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic, gas;



procedure {:constructor} {:inline 1} BrickblockToken_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref);
  modifies Balance, totalSupply_ERC20Basic, balances_BasicToken, M_Ref_int_balances0, sum_balances0, Alloc, allowed_StandardToken, M_Ref_Ref_allowed1, M_Ref_int_allowed1, owner_Ownable, paused_Pausable, name_BrickblockToken, symbol_BrickblockToken, initialSupply_BrickblockToken, contributorsShare_BrickblockToken, companyShare_BrickblockToken, bonusShare_BrickblockToken, decimals_BrickblockToken, bonusDistributionAddress_BrickblockToken, fountainContractAddress_BrickblockToken, successorAddress_BrickblockToken, predecessorAddress_BrickblockToken, tokenSaleActive_BrickblockToken, dead_BrickblockToken, gas;



procedure {:constructor} {:inline 1} BrickblockToken_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref);
  modifies __tmp__Balance, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__Alloc, __tmp__allowed_StandardToken, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, gas;



procedure {:inline 1} unpause_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, paused_Pausable;



procedure {:inline 1} unpause_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert, __tmp__paused_Pausable;



procedure {:inline 1} changeBonusDistributionAddress_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s921: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, bonusDistributionAddress_BrickblockToken;



procedure {:inline 1} changeBonusDistributionAddress_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s921: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__bonusDistributionAddress_BrickblockToken;



procedure {:inline 1} changeFountainContractAddress_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s957: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, fountainContractAddress_BrickblockToken;



procedure {:inline 1} changeFountainContractAddress_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s957: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__fountainContractAddress_BrickblockToken;



procedure {:inline 1} distributeTokens_BrickblockToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1028: Ref, 
    _value_s1028: int)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0;



procedure {:inline 1} distributeTokens_BrickblockToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1028: Ref, 
    _value_s1028: int)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0;



procedure {:inline 1} finalizeTokenSale_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, M_Ref_Ref_allowed1, M_Ref_int_allowed1, sum_allowed1, totalSupply_ERC20Basic, tokenSaleActive_BrickblockToken, Alloc;



procedure {:inline 1} finalizeTokenSale_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__M_Ref_Ref_allowed1, __tmp__M_Ref_int_allowed1, __tmp__sum_allowed1, __tmp__totalSupply_ERC20Basic, __tmp__tokenSaleActive_BrickblockToken, __tmp__Alloc;



procedure {:inline 1} evacuate_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _user_s1233: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} evacuate_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _user_s1233: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} upgrade_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _successorAddress_s1275: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, successorAddress_BrickblockToken, dead_BrickblockToken, paused_Pausable;



procedure {:inline 1} upgrade_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _successorAddress_s1275: Ref)
   returns (__ret_0_: bool);
  modifies gas, revert, __tmp__successorAddress_BrickblockToken, __tmp__dead_BrickblockToken, __tmp__paused_Pausable;



procedure {:inline 1} rescue_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, revert, sum_balances0, M_Ref_int_balances0, totalSupply_ERC20Basic;



procedure {:inline 1} rescue_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);
  modifies gas, revert, __tmp__sum_balances0, __tmp__M_Ref_int_balances0, __tmp__totalSupply_ERC20Basic;



procedure {:inline 1} FallbackMethod_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
  modifies gas, revert, __tmp__Balance;



procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
  modifies __tmp__Balance;



procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies __tmp__Balance, __tmp__DType, __tmp__Alloc, __tmp__balance_ADDR, __tmp__M_Ref_int_balances0, __tmp__sum_balances0, __tmp__M_Ref_int_allowed1, __tmp__M_Ref_Ref_allowed1, __tmp__sum_allowed1, __tmp__Length, __tmp__now, __tmp__owner_Ownable, __tmp__paused_Pausable, __tmp__totalSupply_ERC20Basic, __tmp__balances_BasicToken, __tmp__allowed_StandardToken, __tmp__name_BrickblockToken, __tmp__symbol_BrickblockToken, __tmp__initialSupply_BrickblockToken, __tmp__contributorsShare_BrickblockToken, __tmp__companyShare_BrickblockToken, __tmp__bonusShare_BrickblockToken, __tmp__decimals_BrickblockToken, __tmp__bonusDistributionAddress_BrickblockToken, __tmp__fountainContractAddress_BrickblockToken, __tmp__successorAddress_BrickblockToken, __tmp__predecessorAddress_BrickblockToken, __tmp__tokenSaleActive_BrickblockToken, __tmp__dead_BrickblockToken, revert, gas;



procedure {:inline 1} onlyOwner_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenNotPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} whenPaused_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies gas, revert;



procedure {:inline 1} only_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, caller_s733: Ref);
  modifies gas, revert;



procedure {:inline 1} supplyAvailable_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s759: int);
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



implementation transferOwnership_Ownable__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 176;
    __var_1 := null;
    if (!(newOwner_s54 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 81068;
    __tmp__owner_Ownable[this] := newOwner_s54;
}



implementation transferOwnership_Ownable__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s54: Ref)
{
  var __var_1: Ref;

    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 176;
    __var_1 := null;
    if (!(newOwner_s54 != null))
    {
        revert := true;
        return;
    }

    assert {:EventEmitted "OwnershipTransferred_Ownable"} true;
    gas := gas - 81068;
    owner_Ownable[this] := newOwner_s54;
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



implementation sub_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s132: int, b_s132: int)
   returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 104;
    assume b_s132 >= 0;
    assume a_s132 >= 0;
    gas := gas - 56;
    assume a_s132 >= 0;
    assume b_s132 >= 0;
    assume a_s132 - b_s132 >= 0;
    __ret_0_ := a_s132 - b_s132;
    return;
}



implementation sub_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s132: int, b_s132: int)
   returns (__ret_0_: int)
{
    gas := gas - 12;
    gas := gas - 104;
    assume b_s132 >= 0;
    assume a_s132 >= 0;
    assert b_s132 <= a_s132;
    gas := gas - 56;
    assume a_s132 >= 0;
    assume b_s132 >= 0;
    assume a_s132 - b_s132 >= 0;
    __ret_0_ := a_s132 - b_s132;
    return;
}



implementation add_SafeMath__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s156: int, b_s156: int)
   returns (__ret_0_: int)
{
  var c_s155: int;

    gas := gas - 12;
    gas := gas - 68;
    assume c_s155 >= 0;
    assume a_s156 >= 0;
    assume b_s156 >= 0;
    assume a_s156 + b_s156 >= 0;
    c_s155 := a_s156 + b_s156;
    gas := gas - 104;
    assume c_s155 >= 0;
    assume a_s156 >= 0;
    gas := gas - 40;
    assume c_s155 >= 0;
    __ret_0_ := c_s155;
    return;
}



implementation add_SafeMath__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s156: int, b_s156: int)
   returns (__ret_0_: int)
{
  var c_s155: int;

    gas := gas - 12;
    gas := gas - 68;
    assume c_s155 >= 0;
    assume a_s156 >= 0;
    assume b_s156 >= 0;
    assume a_s156 + b_s156 >= 0;
    c_s155 := a_s156 + b_s156;
    gas := gas - 104;
    assume c_s155 >= 0;
    assume a_s156 >= 0;
    assert c_s155 >= a_s156;
    gas := gas - 40;
    assume c_s155 >= 0;
    __ret_0_ := c_s155;
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
  var __var_2: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_2 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__balances_BasicToken[this] := __var_2;
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]] := zeroRefIntArr();
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := 0;
}



implementation BasicToken_BasicToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_2: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_2 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    balances_BasicToken[this] := __var_2;
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
    _to_s253: Ref, 
    _value_s253: int)
   returns (__ret_0_: bool)
{
  var __var_3: Ref;
  var __var_4: int;
  var __var_5: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_3 := null;
    if (!(_to_s253 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s253 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s253
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s253 >= 0;
    call __var_4 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG], _value_s253);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG] := __var_4;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][msgsender_MSG];
    assume __var_4 >= 0;
    gas := gas - 81732;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s253] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s253] >= 0;
    assume _value_s253 >= 0;
    call __var_5 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s253], _value_s253);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s253];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s253] := __var_5;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s253];
    assume __var_5 >= 0;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation transfer_BasicToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s253: Ref, 
    _value_s253: int)
   returns (__ret_0_: bool)
{
  var __var_3: Ref;
  var __var_4: int;
  var __var_5: int;

    gas := gas - 12;
    gas := gas - 176;
    __var_3 := null;
    if (!(_to_s253 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 1308;
    assume _value_s253 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    if (!(_value_s253 <= M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 81748;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] >= 0;
    assume _value_s253 >= 0;
    call __var_4 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG], _value_s253);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG] := __var_4;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][msgsender_MSG];
    assume __var_4 >= 0;
    gas := gas - 81732;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s253] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s253] >= 0;
    assume _value_s253 >= 0;
    call __var_5 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s253], _value_s253);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s253];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s253] := __var_5;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s253];
    assume __var_5 >= 0;
    assert {:EventEmitted "Transfer_BasicToken"} true;
    gas := gas - 32;
    __ret_0_ := true;
    return;
}



implementation balanceOf_BasicToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref)
   returns (balance_s265: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s265] >= 0;
    balance_s265 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_owner_s265];
    return;
}



implementation balanceOf_BasicToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _owner_s265: Ref)
   returns (balance_s265: int)
{
    gas := gas - 12;
    gas := gas - 1216;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_owner_s265] >= 0;
    balance_s265 := M_Ref_int_balances0[balances_BasicToken[this]][_owner_s265];
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
  var __var_6: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    call __var_6 := FreshRefGenerator__fail();
    if (revert)
    {
        return;
    }

    __tmp__allowed_StandardToken[this] := __var_6;
    __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]] := zeroRefRefArr();
    __tmp__M_Ref_int_allowed1[null] := zeroRefIntArr();
}



implementation StandardToken_StandardToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_6: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    call __var_6 := FreshRefGenerator__success();
    if (revert)
    {
        return;
    }

    allowed_StandardToken[this] := __var_6;
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
    _from_s402: Ref, 
    _to_s402: Ref, 
    _value_s402: int)
   returns (__ret_0_: bool)
{
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: int;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_7 := null;
    if (!(_to_s402 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s402 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402] >= 0;
    if (!(_value_s402
       <= __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s402 >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]
       == null)
    {
        call __var_8 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402] := __var_8;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG]
       >= 0;
    if (!(_value_s402
       <= __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402] >= 0;
    assume _value_s402 >= 0;
    call __var_9 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402], _value_s402);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402] := __var_9;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_from_s402];
    assume __var_9 >= 0;
    gas := gas - 61299;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s402] >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s402] >= 0;
    assume _value_s402 >= 0;
    call __var_10 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s402], _value_s402);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s402];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s402] := __var_10;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_to_s402];
    assume __var_10 >= 0;
    gas := gas - 61833;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]
       == null)
    {
        call __var_11 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402] := __var_11;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG]
       >= 0;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]
       == null)
    {
        call __var_13 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402] := __var_13;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG]
       >= 0;
    assume _value_s402 >= 0;
    call __var_12 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG], _value_s402);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG] := __var_12;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_from_s402]][msgsender_MSG];
    assume __var_12 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation transferFrom_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s402: Ref, 
    _to_s402: Ref, 
    _value_s402: int)
   returns (__ret_0_: bool)
{
  var __var_7: Ref;
  var __var_8: Ref;
  var __var_9: int;
  var __var_10: int;
  var __var_11: Ref;
  var __var_12: int;
  var __var_13: Ref;

    gas := gas - 9;
    gas := gas - 132;
    __var_7 := null;
    if (!(_to_s402 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 984;
    assume _value_s402 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s402] >= 0;
    if (!(_value_s402 <= M_Ref_int_balances0[balances_BasicToken[this]][_from_s402]))
    {
        revert := true;
        return;
    }

    gas := gas - 1251;
    assume _value_s402 >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402] == null)
    {
        call __var_8 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402] := __var_8;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG]
       >= 0;
    if (!(_value_s402
       <= M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG]))
    {
        revert := true;
        return;
    }

    gas := gas - 61317;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s402] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_from_s402] >= 0;
    assume _value_s402 >= 0;
    call __var_9 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_from_s402], _value_s402);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_from_s402];
    M_Ref_int_balances0[balances_BasicToken[this]][_from_s402] := __var_9;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_from_s402];
    assume __var_9 >= 0;
    gas := gas - 61299;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s402] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_to_s402] >= 0;
    assume _value_s402 >= 0;
    call __var_10 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_to_s402], _value_s402);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_to_s402];
    M_Ref_int_balances0[balances_BasicToken[this]][_to_s402] := __var_10;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_to_s402];
    assume __var_10 >= 0;
    gas := gas - 61833;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402] == null)
    {
        call __var_11 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402] := __var_11;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG]
       >= 0;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402] == null)
    {
        call __var_13 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402] := __var_13;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG]
       >= 0;
    assume _value_s402 >= 0;
    call __var_12 := sub_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG], _value_s402);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG] := __var_12;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_from_s402]][msgsender_MSG];
    assume __var_12 >= 0;
    assert {:EventEmitted "Transfer_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s430: Ref, 
    _value_s430: int)
   returns (__ret_0_: bool)
{
  var __var_14: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_14 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_14;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s430]
       >= 0;
    assume _value_s430 >= 0;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s430];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s430] := _value_s430;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s430];
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation approve_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s430: Ref, 
    _value_s430: int)
   returns (__ret_0_: bool)
{
  var __var_14: Ref;

    gas := gas - 9;
    gas := gas - 60597;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_14 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_14;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s430]
       >= 0;
    assume _value_s430 >= 0;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s430];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s430] := _value_s430;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s430];
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation allowance_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s446: Ref, 
    _spender_s446: Ref)
   returns (__ret_0_: int)
{
  var __var_15: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s446]
       == null)
    {
        call __var_15 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s446] := __var_15;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s446]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s446]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s446]][_spender_s446]
       >= 0;
    __ret_0_ := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][_owner_s446]][_spender_s446];
    return;
}



implementation allowance_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _owner_s446: Ref, 
    _spender_s446: Ref)
   returns (__ret_0_: int)
{
  var __var_15: Ref;

    gas := gas - 9;
    gas := gas - 1182;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s446] == null)
    {
        call __var_15 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s446] := __var_15;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s446]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s446]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s446]][_spender_s446]
       >= 0;
    __ret_0_ := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][_owner_s446]][_spender_s446];
    return;
}



implementation increaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s487: Ref, 
    _addedValue_s487: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
       == null)
    {
        call __var_16 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_16;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s487]
       >= 0;
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

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s487]
       >= 0;
    assume _addedValue_s487 >= 0;
    call __var_17 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s487], _addedValue_s487);
    if (revert)
    {
        return;
    }

    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s487];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s487] := __var_17;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s487];
    assume __var_17 >= 0;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation increaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s487: Ref, 
    _addedValue_s487: int)
   returns (__ret_0_: bool)
{
  var __var_16: Ref;
  var __var_17: int;
  var __var_18: Ref;

    gas := gas - 9;
    gas := gas - 61851;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
    {
        call __var_16 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_16;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s487]
       >= 0;
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

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s487]
       >= 0;
    assume _addedValue_s487 >= 0;
    call __var_17 := add_SafeMath__success(this, this, 0, M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s487], _addedValue_s487);
    if (revert)
    {
        return;
    }

    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s487];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s487] := __var_17;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s487];
    assume __var_17 >= 0;
    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 24;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s547: Ref, 
    _subtractedValue_s547: int)
   returns (__ret_0_: bool)
{
  var oldValue_s546: int;
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s546 >= 0;
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

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547]
       >= 0;
    oldValue_s546 := __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
    gas := gas - 27;
    assume _subtractedValue_s547 >= 0;
    assume oldValue_s546 >= 0;
    if (_subtractedValue_s547 > oldValue_s546)
    {
        gas := gas - 15597;
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

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547]
           >= 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547] := 0;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
    }
    else
    {
        gas := gas - 60696;
        if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]
           == null)
        {
            call __var_21 := FreshRefGenerator__fail();
            if (revert)
            {
                return;
            }

            __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG] := __var_21;
            __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547]
           >= 0;
        assume oldValue_s546 >= 0;
        assume _subtractedValue_s547 >= 0;
        call __var_22 := sub_SafeMath__fail(this, this, 0, oldValue_s546, _subtractedValue_s547);
        if (revert)
        {
            return;
        }

        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547] := __var_22;
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]]
           + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
        assume __var_22 >= 0;
    }

    gas := gas - 30;
    __ret_0_ := true;
    return;
}



implementation decreaseApproval_StandardToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s547: Ref, 
    _subtractedValue_s547: int)
   returns (__ret_0_: bool)
{
  var oldValue_s546: int;
  var __var_19: Ref;
  var __var_20: Ref;
  var __var_21: Ref;
  var __var_22: int;

    gas := gas - 9;
    gas := gas - 1188;
    assume oldValue_s546 >= 0;
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

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547]
       >= 0;
    oldValue_s546 := M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
    gas := gas - 27;
    assume _subtractedValue_s547 >= 0;
    assume oldValue_s546 >= 0;
    if (_subtractedValue_s547 > oldValue_s546)
    {
        gas := gas - 15597;
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

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547]
           >= 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547] := 0;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
    }
    else
    {
        gas := gas - 60696;
        if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] == null)
        {
            call __var_21 := FreshRefGenerator__success();
            if (revert)
            {
                return;
            }

            M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG] := __var_21;
            M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := zeroRefIntArr();
            sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := 0;
        }

        assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547]
           >= 0;
        assume oldValue_s546 >= 0;
        assume _subtractedValue_s547 >= 0;
        call __var_22 := sub_SafeMath__success(this, this, 0, oldValue_s546, _subtractedValue_s547);
        if (revert)
        {
            return;
        }

        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547] := __var_22;
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]]
           + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][msgsender_MSG]][_spender_s547];
        assume __var_22 >= 0;
    }

    assert {:EventEmitted "Approval_StandardToken"} true;
    gas := gas - 30;
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
    _to_s570: Ref, 
    _value_s570: int)
   returns (__ret_0_: bool)
{
  var __var_23: bool;
  var __var_24: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s570 >= 0;
    if (__tmp__DType[this] == BrickblockToken)
    {
        call __var_23 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_23 := transfer_BasicToken__fail(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_23;
    return;
}



implementation transfer_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _to_s570: Ref, 
    _value_s570: int)
   returns (__ret_0_: bool)
{
  var __var_23: bool;
  var __var_24: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s570 >= 0;
    if (DType[this] == BrickblockToken)
    {
        call __var_23 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_23 := transfer_BasicToken__success(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_23;
    return;
}



implementation transferFrom_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s591: Ref, 
    _to_s591: Ref, 
    _value_s591: int)
   returns (__ret_0_: bool)
{
  var __var_25: bool;
  var __var_26: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s591 >= 0;
    if (__tmp__DType[this] == BrickblockToken)
    {
        call __var_25 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_25 := transferFrom_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_25;
    return;
}



implementation transferFrom_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _from_s591: Ref, 
    _to_s591: Ref, 
    _value_s591: int)
   returns (__ret_0_: bool)
{
  var __var_25: bool;
  var __var_26: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 36;
    assume _value_s591 >= 0;
    if (DType[this] == BrickblockToken)
    {
        call __var_25 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_25 := transferFrom_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    __ret_0_ := __var_25;
    return;
}



implementation approve_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s609: Ref, 
    _value_s609: int)
   returns (__ret_0_: bool)
{
  var __var_27: bool;
  var __var_28: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s609 >= 0;
    if (__tmp__DType[this] == BrickblockToken)
    {
        call __var_27 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_27 := approve_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
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



implementation approve_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s609: Ref, 
    _value_s609: int)
   returns (__ret_0_: bool)
{
  var __var_27: bool;
  var __var_28: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _value_s609 >= 0;
    if (DType[this] == BrickblockToken)
    {
        call __var_27 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_27 := approve_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
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



implementation increaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s627: Ref, 
    _addedValue_s627: int)
   returns (success_s627: bool)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s627 >= 0;
    if (__tmp__DType[this] == BrickblockToken)
    {
        call __var_29 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_29 := increaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s627 := __var_29;
    return;
}



implementation increaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s627: Ref, 
    _addedValue_s627: int)
   returns (success_s627: bool)
{
  var __var_29: bool;
  var __var_30: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _addedValue_s627 >= 0;
    if (DType[this] == BrickblockToken)
    {
        call __var_29 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_29 := increaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s627 := __var_29;
    return;
}



implementation decreaseApproval_PausableToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s645: Ref, 
    _subtractedValue_s645: int)
   returns (success_s645: bool)
{
  var __var_31: bool;
  var __var_32: int;

    gas := gas - 6;
    call whenNotPaused_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s645 >= 0;
    if (__tmp__DType[this] == BrickblockToken)
    {
        call __var_31 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[this] == PausableToken)
    {
        call __var_31 := decreaseApproval_StandardToken__fail(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s645 := __var_31;
    return;
}



implementation decreaseApproval_PausableToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _spender_s645: Ref, 
    _subtractedValue_s645: int)
   returns (success_s645: bool)
{
  var __var_31: bool;
  var __var_32: int;

    gas := gas - 6;
    call whenNotPaused_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 30;
    assume _subtractedValue_s645 >= 0;
    if (DType[this] == BrickblockToken)
    {
        call __var_31 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
        if (revert)
        {
            return;
        }
    }
    else if (DType[this] == PausableToken)
    {
        call __var_31 := decreaseApproval_StandardToken__success(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
        if (revert)
        {
            return;
        }
    }
    else
    {
        assume false;
    }

    success_s645 := __var_31;
    return;
}



implementation BrickblockToken_BrickblockToken_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref)
{
  var __var_36: Ref;
  var predecessor_s832: Ref;
  var __var_37: Ref;
  var __var_38: int;
  var __var_39: int;
  var __var_40: int;
  var __var_41: int;
  var __var_42: bool;
  var __var_43: int;
  var __var_44: Ref;
  var __var_45: int;
  var __var_46: Ref;
  var __var_47: int;
  var __var_48: Ref;

    assume msgsender_MSG != null;
    __tmp__Balance[this] := 0;
    __tmp__name_BrickblockToken[this] := -1942008550;
    __tmp__symbol_BrickblockToken[this] := -1420695297;
    __tmp__initialSupply_BrickblockToken[this] := 500 * 1000000 * 1000000000000000000;
    __tmp__contributorsShare_BrickblockToken[this] := 51;
    __tmp__companyShare_BrickblockToken[this] := 35;
    __tmp__bonusShare_BrickblockToken[this] := 14;
    __tmp__decimals_BrickblockToken[this] := 18;
    __tmp__bonusDistributionAddress_BrickblockToken[this] := null;
    __tmp__fountainContractAddress_BrickblockToken[this] := null;
    __tmp__successorAddress_BrickblockToken[this] := null;
    __tmp__predecessorAddress_BrickblockToken[this] := null;
    __tmp__tokenSaleActive_BrickblockToken[this] := false;
    __tmp__dead_BrickblockToken[this] := false;
    __tmp__paused_Pausable[this] := true;
    __var_36 := null;
    if (_predecessorAddress_s862 != null)
    {
        __tmp__predecessorAddress_BrickblockToken[this] := _predecessorAddress_s862;
        assume __tmp__DType[_predecessorAddress_s862] == BrickblockToken;
        predecessor_s832 := _predecessorAddress_s862;
        __var_37 := this;
        assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
        if (__tmp__DType[predecessor_s832] == BrickblockToken)
        {
            call __var_38 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == PausableToken)
        {
            call __var_38 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == StandardToken)
        {
            call __var_38 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == ERC20)
        {
            call __var_38 := balanceOf_ERC20Basic(predecessor_s832, this, __var_39, _predecessorAddress_s862);
        }
        else if (__tmp__DType[predecessor_s832] == BasicToken)
        {
            call __var_38 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == ERC20Basic)
        {
            call __var_38 := balanceOf_ERC20Basic(predecessor_s832, this, __var_39, _predecessorAddress_s862);
        }
        else
        {
            assume false;
        }

        __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
           - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
        __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] := __var_38;
        __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
           + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
        assume __var_38 >= 0;
        assume __tmp__totalSupply_ERC20Basic[this] >= 0;
        if (__tmp__DType[predecessor_s832] == BrickblockToken)
        {
            call __var_40 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == PausableToken)
        {
            call __var_40 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == StandardToken)
        {
            call __var_40 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == ERC20)
        {
            call __var_40 := balanceOf_ERC20Basic(predecessor_s832, this, __var_41, _predecessorAddress_s862);
        }
        else if (__tmp__DType[predecessor_s832] == BasicToken)
        {
            call __var_40 := balanceOf_BasicToken__fail(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (__tmp__DType[predecessor_s832] == ERC20Basic)
        {
            call __var_40 := balanceOf_ERC20Basic(predecessor_s832, this, __var_41, _predecessorAddress_s862);
        }
        else
        {
            assume false;
        }

        __tmp__totalSupply_ERC20Basic[this] := __var_40;
        assume __var_40 >= 0;
        assume __tmp__DType[predecessor_s832] == BrickblockToken;
        __var_42 := __tmp__tokenSaleActive_BrickblockToken[predecessor_s832];
        __tmp__tokenSaleActive_BrickblockToken[this] := __var_42;
        assume __tmp__DType[predecessor_s832] == BrickblockToken;
        __var_44 := __tmp__bonusDistributionAddress_BrickblockToken[predecessor_s832];
        __tmp__bonusDistributionAddress_BrickblockToken[this] := __var_44;
        assume __tmp__DType[predecessor_s832] == BrickblockToken;
        __var_46 := __tmp__fountainContractAddress_BrickblockToken[predecessor_s832];
        __tmp__fountainContractAddress_BrickblockToken[this] := __var_46;
    }
    else
    {
        assume __tmp__totalSupply_ERC20Basic[this] >= 0;
        assume __tmp__initialSupply_BrickblockToken[this] >= 0;
        __tmp__totalSupply_ERC20Basic[this] := __tmp__initialSupply_BrickblockToken[this];
        __var_48 := this;
        assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
        assume __tmp__initialSupply_BrickblockToken[this] >= 0;
        __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
           - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
        __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] := __tmp__initialSupply_BrickblockToken[this];
        __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
           + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
        __tmp__tokenSaleActive_BrickblockToken[this] := true;
    }
}



implementation BrickblockToken_BrickblockToken_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref)
{
  var __var_36: Ref;
  var predecessor_s832: Ref;
  var __var_37: Ref;
  var __var_38: int;
  var __var_39: int;
  var __var_40: int;
  var __var_41: int;
  var __var_42: bool;
  var __var_43: int;
  var __var_44: Ref;
  var __var_45: int;
  var __var_46: Ref;
  var __var_47: int;
  var __var_48: Ref;

    assume msgsender_MSG != null;
    Balance[this] := 0;
    name_BrickblockToken[this] := -1942008550;
    symbol_BrickblockToken[this] := -1420695297;
    initialSupply_BrickblockToken[this] := 500 * 1000000 * 1000000000000000000;
    contributorsShare_BrickblockToken[this] := 51;
    companyShare_BrickblockToken[this] := 35;
    bonusShare_BrickblockToken[this] := 14;
    decimals_BrickblockToken[this] := 18;
    bonusDistributionAddress_BrickblockToken[this] := null;
    fountainContractAddress_BrickblockToken[this] := null;
    successorAddress_BrickblockToken[this] := null;
    predecessorAddress_BrickblockToken[this] := null;
    tokenSaleActive_BrickblockToken[this] := false;
    dead_BrickblockToken[this] := false;
    paused_Pausable[this] := true;
    __var_36 := null;
    if (_predecessorAddress_s862 != null)
    {
        predecessorAddress_BrickblockToken[this] := _predecessorAddress_s862;
        assume DType[_predecessorAddress_s862] == BrickblockToken;
        predecessor_s832 := _predecessorAddress_s862;
        __var_37 := this;
        assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
        if (DType[predecessor_s832] == BrickblockToken)
        {
            call __var_38 := balanceOf_BasicToken__success(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == PausableToken)
        {
            call __var_38 := balanceOf_BasicToken__success(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == StandardToken)
        {
            call __var_38 := balanceOf_BasicToken__success(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == ERC20)
        {
            call __var_38 := balanceOf_ERC20Basic(predecessor_s832, this, __var_39, _predecessorAddress_s862);
        }
        else if (DType[predecessor_s832] == BasicToken)
        {
            call __var_38 := balanceOf_BasicToken__success(predecessor_s832, this, __var_39, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == ERC20Basic)
        {
            call __var_38 := balanceOf_ERC20Basic(predecessor_s832, this, __var_39, _predecessorAddress_s862);
        }
        else
        {
            assume false;
        }

        sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
           - M_Ref_int_balances0[balances_BasicToken[this]][this];
        M_Ref_int_balances0[balances_BasicToken[this]][this] := __var_38;
        sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
           + M_Ref_int_balances0[balances_BasicToken[this]][this];
        assume __var_38 >= 0;
        assert {:EventEmitted "Transfer_BrickblockToken"} true;
        assume totalSupply_ERC20Basic[this] >= 0;
        if (DType[predecessor_s832] == BrickblockToken)
        {
            call __var_40 := balanceOf_BasicToken__success(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == PausableToken)
        {
            call __var_40 := balanceOf_BasicToken__success(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == StandardToken)
        {
            call __var_40 := balanceOf_BasicToken__success(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == ERC20)
        {
            call __var_40 := balanceOf_ERC20Basic(predecessor_s832, this, __var_41, _predecessorAddress_s862);
        }
        else if (DType[predecessor_s832] == BasicToken)
        {
            call __var_40 := balanceOf_BasicToken__success(predecessor_s832, this, __var_41, _predecessorAddress_s862);
            if (revert)
            {
                return;
            }
        }
        else if (DType[predecessor_s832] == ERC20Basic)
        {
            call __var_40 := balanceOf_ERC20Basic(predecessor_s832, this, __var_41, _predecessorAddress_s862);
        }
        else
        {
            assume false;
        }

        totalSupply_ERC20Basic[this] := __var_40;
        assume __var_40 >= 0;
        assume DType[predecessor_s832] == BrickblockToken;
        __var_42 := tokenSaleActive_BrickblockToken[predecessor_s832];
        tokenSaleActive_BrickblockToken[this] := __var_42;
        assume DType[predecessor_s832] == BrickblockToken;
        __var_44 := bonusDistributionAddress_BrickblockToken[predecessor_s832];
        bonusDistributionAddress_BrickblockToken[this] := __var_44;
        assume DType[predecessor_s832] == BrickblockToken;
        __var_46 := fountainContractAddress_BrickblockToken[predecessor_s832];
        fountainContractAddress_BrickblockToken[this] := __var_46;
    }
    else
    {
        assume totalSupply_ERC20Basic[this] >= 0;
        assume initialSupply_BrickblockToken[this] >= 0;
        totalSupply_ERC20Basic[this] := initialSupply_BrickblockToken[this];
        __var_48 := this;
        assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
        assume initialSupply_BrickblockToken[this] >= 0;
        sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
           - M_Ref_int_balances0[balances_BasicToken[this]][this];
        M_Ref_int_balances0[balances_BasicToken[this]][this] := initialSupply_BrickblockToken[this];
        sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
           + M_Ref_int_balances0[balances_BasicToken[this]][this];
        assert {:EventEmitted "Transfer_BrickblockToken"} true;
        tokenSaleActive_BrickblockToken[this] := true;
    }
}



implementation BrickblockToken_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref)
{
  var __var_36: Ref;
  var predecessor_s832: Ref;
  var __var_37: Ref;
  var __var_38: int;
  var __var_39: int;
  var __var_40: int;
  var __var_41: int;
  var __var_42: bool;
  var __var_43: int;
  var __var_44: Ref;
  var __var_45: int;
  var __var_46: Ref;
  var __var_47: int;
  var __var_48: Ref;

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

    call PausableToken_PausableToken__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BrickblockToken_BrickblockToken_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG, _predecessorAddress_s862);
    if (revert)
    {
        return;
    }
}



implementation BrickblockToken_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _predecessorAddress_s862: Ref)
{
  var __var_36: Ref;
  var predecessor_s832: Ref;
  var __var_37: Ref;
  var __var_38: int;
  var __var_39: int;
  var __var_40: int;
  var __var_41: int;
  var __var_42: bool;
  var __var_43: int;
  var __var_44: Ref;
  var __var_45: int;
  var __var_46: Ref;
  var __var_47: int;
  var __var_48: Ref;

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

    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call BrickblockToken_BrickblockToken_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG, _predecessorAddress_s862);
    if (revert)
    {
        return;
    }
}



implementation unpause_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_49: int;

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

    gas := gas - 327;
    if (!(__tmp__dead_BrickblockToken[this] == false))
    {
        revert := true;
        return;
    }

    gas := gas - 4;
    if (__tmp__DType[this] == BrickblockToken)
    {
        call unpause_Pausable__fail(this, msgsender_MSG, msgvalue_MSG);
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



implementation unpause_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_49: int;

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

    gas := gas - 327;
    if (!(dead_BrickblockToken[this] == false))
    {
        revert := true;
        return;
    }

    gas := gas - 4;
    if (DType[this] == BrickblockToken)
    {
        call unpause_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
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



implementation changeBonusDistributionAddress_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s921: Ref)
   returns (__ret_0_: bool)
{
  var __var_50: Ref;

    gas := gas - 3;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 43;
    __var_50 := this;
    if (!(_newAddress_s921 != this))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__bonusDistributionAddress_BrickblockToken[this] := _newAddress_s921;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation changeBonusDistributionAddress_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s921: Ref)
   returns (__ret_0_: bool)
{
  var __var_50: Ref;

    gas := gas - 3;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 43;
    __var_50 := this;
    if (!(_newAddress_s921 != this))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    bonusDistributionAddress_BrickblockToken[this] := _newAddress_s921;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation changeFountainContractAddress_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s957: Ref)
   returns (__ret_0_: bool)
{
  var __var_51: bool;
  var __var_52: Ref;

    gas := gas - 3;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 38;
    call __var_51 := isContract_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _newAddress_s957);
    if (!__var_51)
    {
        revert := true;
        return;
    }

    gas := gas - 43;
    __var_52 := this;
    if (!(_newAddress_s957 != this))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    if (!(_newAddress_s957 != __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__fountainContractAddress_BrickblockToken[this] := _newAddress_s957;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation changeFountainContractAddress_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _newAddress_s957: Ref)
   returns (__ret_0_: bool)
{
  var __var_51: bool;
  var __var_52: Ref;

    gas := gas - 3;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 38;
    call __var_51 := isContract_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _newAddress_s957);
    if (!__var_51)
    {
        revert := true;
        return;
    }

    gas := gas - 43;
    __var_52 := this;
    if (!(_newAddress_s957 != this))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    if (!(_newAddress_s957 != owner_Ownable[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    fountainContractAddress_BrickblockToken[this] := _newAddress_s957;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation distributeTokens_BrickblockToken__fail(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1028: Ref, 
    _value_s1028: int)
   returns (__ret_0_: bool)
{
  var __var_53: Ref;
  var __var_54: Ref;
  var __var_55: int;
  var __var_56: Ref;
  var __var_57: int;

    gas := gas - 3;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call supplyAvailable_pre__fail(this, msgsender_MSG, msgvalue_MSG, _value_s1028);
    if (revert)
    {
        return;
    }

    gas := gas - 327;
    if (!(__tmp__tokenSaleActive_BrickblockToken[this] == true))
    {
        revert := true;
        return;
    }

    gas := gas - 44;
    __var_53 := null;
    if (!(_contributor_s1028 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    if (!(_contributor_s1028 != __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20437;
    __var_54 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    __var_56 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    assume _value_s1028 >= 0;
    call __var_55 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this], _value_s1028);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] := __var_55;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
    assume __var_55 >= 0;
    gas := gas - 20433;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_contributor_s1028]
       >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_contributor_s1028]
       >= 0;
    assume _value_s1028 >= 0;
    call __var_57 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_contributor_s1028], _value_s1028);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_contributor_s1028];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_contributor_s1028] := __var_57;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_contributor_s1028];
    assume __var_57 >= 0;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation distributeTokens_BrickblockToken__success(this: Ref, 
    msgsender_MSG: Ref, 
    msgvalue_MSG: int, 
    _contributor_s1028: Ref, 
    _value_s1028: int)
   returns (__ret_0_: bool)
{
  var __var_53: Ref;
  var __var_54: Ref;
  var __var_55: int;
  var __var_56: Ref;
  var __var_57: int;

    gas := gas - 3;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    call supplyAvailable_pre__success(this, msgsender_MSG, msgvalue_MSG, _value_s1028);
    if (revert)
    {
        return;
    }

    gas := gas - 327;
    if (!(tokenSaleActive_BrickblockToken[this] == true))
    {
        revert := true;
        return;
    }

    gas := gas - 44;
    __var_53 := null;
    if (!(_contributor_s1028 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    if (!(_contributor_s1028 != owner_Ownable[this]))
    {
        revert := true;
        return;
    }

    gas := gas - 20437;
    __var_54 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    __var_56 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    assume _value_s1028 >= 0;
    call __var_55 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][this], _value_s1028);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][this];
    M_Ref_int_balances0[balances_BasicToken[this]][this] := __var_55;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][this];
    assume __var_55 >= 0;
    gas := gas - 20433;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_contributor_s1028] >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_contributor_s1028] >= 0;
    assume _value_s1028 >= 0;
    call __var_57 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_contributor_s1028], _value_s1028);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_contributor_s1028];
    M_Ref_int_balances0[balances_BasicToken[this]][_contributor_s1028] := __var_57;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_contributor_s1028];
    assume __var_57 >= 0;
    assert {:EventEmitted "Transfer_BrickblockToken"} true;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation finalizeTokenSale_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_58: Ref;
  var __var_59: Ref;
  var _distributedTokens_s1192: int;
  var __var_60: Ref;
  var _companyTokens_s1192: int;
  var _bonusTokens_s1192: int;
  var _newTotalSupply_s1192: int;
  var __var_61: int;
  var _burnAmount_s1192: int;
  var __var_62: Ref;
  var __var_63: int;
  var __var_64: Ref;
  var __var_65: int;
  var __var_66: Ref;
  var __var_67: int;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: Ref;

    gas := gas - 3;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 327;
    if (!(__tmp__tokenSaleActive_BrickblockToken[this] == true))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    __var_58 := null;
    if (!(__tmp__bonusDistributionAddress_BrickblockToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    __var_59 := null;
    if (!(__tmp__fountainContractAddress_BrickblockToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 336;
    assume _distributedTokens_s1192 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] >= 0;
    __var_60 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    call _distributedTokens_s1192 := sub_SafeMath__fail(this, this, 0, __tmp__initialSupply_BrickblockToken[this], __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this]);
    if (revert)
    {
        return;
    }

    _distributedTokens_s1192 := _distributedTokens_s1192;
    gas := gas - 41;
    assume _companyTokens_s1192 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] * 35 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] * 35 / 100 >= 0;
    _companyTokens_s1192 := __tmp__initialSupply_BrickblockToken[this] * 35 / 100;
    gas := gas - 41;
    assume _bonusTokens_s1192 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] * 14 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] * 14 / 100 >= 0;
    _bonusTokens_s1192 := __tmp__initialSupply_BrickblockToken[this] * 14 / 100;
    gas := gas - 77;
    assume _newTotalSupply_s1192 >= 0;
    assume _distributedTokens_s1192 >= 0;
    assume __var_61 >= 0;
    assume _bonusTokens_s1192 >= 0;
    assume _companyTokens_s1192 >= 0;
    call __var_61 := add_SafeMath__fail(this, this, 0, _bonusTokens_s1192, _companyTokens_s1192);
    if (revert)
    {
        return;
    }

    assume __var_61 >= 0;
    call _newTotalSupply_s1192 := add_SafeMath__fail(this, this, 0, _distributedTokens_s1192, __var_61);
    if (revert)
    {
        return;
    }

    _newTotalSupply_s1192 := _newTotalSupply_s1192;
    gas := gas - 244;
    assume _burnAmount_s1192 >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume _newTotalSupply_s1192 >= 0;
    call _burnAmount_s1192 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply_ERC20Basic[this], _newTotalSupply_s1192);
    if (revert)
    {
        return;
    }

    _burnAmount_s1192 := _burnAmount_s1192;
    gas := gas - 20437;
    __var_62 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    __var_64 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    assume _bonusTokens_s1192 >= 0;
    call __var_63 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this], _bonusTokens_s1192);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] := __var_63;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
    assume __var_63 >= 0;
    gas := gas - 20905;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][__tmp__bonusDistributionAddress_BrickblockToken[this]]
       >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][__tmp__bonusDistributionAddress_BrickblockToken[this]]
       >= 0;
    assume _bonusTokens_s1192 >= 0;
    call __var_65 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][__tmp__bonusDistributionAddress_BrickblockToken[this]], _bonusTokens_s1192);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][__tmp__bonusDistributionAddress_BrickblockToken[this]];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][__tmp__bonusDistributionAddress_BrickblockToken[this]] := __var_65;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][__tmp__bonusDistributionAddress_BrickblockToken[this]];
    assume __var_65 >= 0;
    gas := gas - 20431;
    __var_66 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    __var_68 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    assume _burnAmount_s1192 >= 0;
    call __var_67 := sub_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this], _burnAmount_s1192);
    if (revert)
    {
        return;
    }

    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] := __var_67;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this];
    assume __var_67 >= 0;
    gas := gas - 20429;
    __var_69 := this;
    if (__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this] == null)
    {
        call __var_70 := FreshRefGenerator__fail();
        if (revert)
        {
            return;
        }

        __tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this] := __var_70;
        __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]] := zeroRefIntArr();
        __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]] := 0;
    }

    assume __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]][__tmp__fountainContractAddress_BrickblockToken[this]]
       >= 0;
    assume _companyTokens_s1192 >= 0;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]]
       - __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]][__tmp__fountainContractAddress_BrickblockToken[this]];
    __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]][__tmp__fountainContractAddress_BrickblockToken[this]] := _companyTokens_s1192;
    __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]] := __tmp__sum_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]]
       + __tmp__M_Ref_int_allowed1[__tmp__M_Ref_Ref_allowed1[__tmp__allowed_StandardToken[this]][this]][__tmp__fountainContractAddress_BrickblockToken[this]];
    gas := gas - 20014;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume _newTotalSupply_s1192 >= 0;
    __tmp__totalSupply_ERC20Basic[this] := _newTotalSupply_s1192;
    gas := gas - 20317;
    __tmp__tokenSaleActive_BrickblockToken[this] := false;
    gas := gas - 18;
    __ret_0_ := true;
    return;
}



implementation finalizeTokenSale_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_58: Ref;
  var __var_59: Ref;
  var _distributedTokens_s1192: int;
  var __var_60: Ref;
  var _companyTokens_s1192: int;
  var _bonusTokens_s1192: int;
  var _newTotalSupply_s1192: int;
  var __var_61: int;
  var _burnAmount_s1192: int;
  var __var_62: Ref;
  var __var_63: int;
  var __var_64: Ref;
  var __var_65: int;
  var __var_66: Ref;
  var __var_67: int;
  var __var_68: Ref;
  var __var_69: Ref;
  var __var_70: Ref;

    gas := gas - 3;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 327;
    if (!(tokenSaleActive_BrickblockToken[this] == true))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    __var_58 := null;
    if (!(bonusDistributionAddress_BrickblockToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 280;
    __var_59 := null;
    if (!(fountainContractAddress_BrickblockToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 336;
    assume _distributedTokens_s1192 >= 0;
    assume initialSupply_BrickblockToken[this] >= 0;
    __var_60 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    call _distributedTokens_s1192 := sub_SafeMath__success(this, this, 0, initialSupply_BrickblockToken[this], M_Ref_int_balances0[balances_BasicToken[this]][this]);
    if (revert)
    {
        return;
    }

    _distributedTokens_s1192 := _distributedTokens_s1192;
    gas := gas - 41;
    assume _companyTokens_s1192 >= 0;
    assume initialSupply_BrickblockToken[this] >= 0;
    assume initialSupply_BrickblockToken[this] * 35 >= 0;
    assume initialSupply_BrickblockToken[this] * 35 / 100 >= 0;
    _companyTokens_s1192 := initialSupply_BrickblockToken[this] * 35 / 100;
    gas := gas - 41;
    assume _bonusTokens_s1192 >= 0;
    assume initialSupply_BrickblockToken[this] >= 0;
    assume initialSupply_BrickblockToken[this] * 14 >= 0;
    assume initialSupply_BrickblockToken[this] * 14 / 100 >= 0;
    _bonusTokens_s1192 := initialSupply_BrickblockToken[this] * 14 / 100;
    gas := gas - 77;
    assume _newTotalSupply_s1192 >= 0;
    assume _distributedTokens_s1192 >= 0;
    assume __var_61 >= 0;
    assume _bonusTokens_s1192 >= 0;
    assume _companyTokens_s1192 >= 0;
    call __var_61 := add_SafeMath__success(this, this, 0, _bonusTokens_s1192, _companyTokens_s1192);
    if (revert)
    {
        return;
    }

    assume __var_61 >= 0;
    call _newTotalSupply_s1192 := add_SafeMath__success(this, this, 0, _distributedTokens_s1192, __var_61);
    if (revert)
    {
        return;
    }

    _newTotalSupply_s1192 := _newTotalSupply_s1192;
    gas := gas - 244;
    assume _burnAmount_s1192 >= 0;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume _newTotalSupply_s1192 >= 0;
    call _burnAmount_s1192 := sub_SafeMath__success(this, this, 0, totalSupply_ERC20Basic[this], _newTotalSupply_s1192);
    if (revert)
    {
        return;
    }

    _burnAmount_s1192 := _burnAmount_s1192;
    gas := gas - 20437;
    __var_62 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    __var_64 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    assume _bonusTokens_s1192 >= 0;
    call __var_63 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][this], _bonusTokens_s1192);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][this];
    M_Ref_int_balances0[balances_BasicToken[this]][this] := __var_63;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][this];
    assume __var_63 >= 0;
    gas := gas - 20905;
    assume M_Ref_int_balances0[balances_BasicToken[this]][bonusDistributionAddress_BrickblockToken[this]]
       >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][bonusDistributionAddress_BrickblockToken[this]]
       >= 0;
    assume _bonusTokens_s1192 >= 0;
    call __var_65 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][bonusDistributionAddress_BrickblockToken[this]], _bonusTokens_s1192);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][bonusDistributionAddress_BrickblockToken[this]];
    M_Ref_int_balances0[balances_BasicToken[this]][bonusDistributionAddress_BrickblockToken[this]] := __var_65;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][bonusDistributionAddress_BrickblockToken[this]];
    assume __var_65 >= 0;
    assert {:EventEmitted "Transfer_BrickblockToken"} true;
    gas := gas - 20431;
    __var_66 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    __var_68 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    assume _burnAmount_s1192 >= 0;
    call __var_67 := sub_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][this], _burnAmount_s1192);
    if (revert)
    {
        return;
    }

    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][this];
    M_Ref_int_balances0[balances_BasicToken[this]][this] := __var_67;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][this];
    assume __var_67 >= 0;
    assert {:EventEmitted "Burn_BrickblockToken"} true;
    gas := gas - 20429;
    __var_69 := this;
    if (M_Ref_Ref_allowed1[allowed_StandardToken[this]][this] == null)
    {
        call __var_70 := FreshRefGenerator__success();
        if (revert)
        {
            return;
        }

        M_Ref_Ref_allowed1[allowed_StandardToken[this]][this] := __var_70;
        M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]] := zeroRefIntArr();
        sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]] := 0;
    }

    assume M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]][fountainContractAddress_BrickblockToken[this]]
       >= 0;
    assume _companyTokens_s1192 >= 0;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]]
       - M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]][fountainContractAddress_BrickblockToken[this]];
    M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]][fountainContractAddress_BrickblockToken[this]] := _companyTokens_s1192;
    sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]] := sum_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]]
       + M_Ref_int_allowed1[M_Ref_Ref_allowed1[allowed_StandardToken[this]][this]][fountainContractAddress_BrickblockToken[this]];
    assert {:EventEmitted "Approval_BrickblockToken"} true;
    gas := gas - 20014;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume _newTotalSupply_s1192 >= 0;
    totalSupply_ERC20Basic[this] := _newTotalSupply_s1192;
    gas := gas - 20317;
    tokenSaleActive_BrickblockToken[this] := false;
    assert {:EventEmitted "TokenSaleFinished_BrickblockToken"} true;
    gas := gas - 18;
    __ret_0_ := true;
    return;
}



implementation evacuate_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _user_s1233: Ref)
   returns (__ret_0_: bool)
{
  var _balance_s1232: int;
  var __var_71: int;

    gas := gas - 3;
    call only_pre__fail(this, msgsender_MSG, msgvalue_MSG, __tmp__successorAddress_BrickblockToken[this]);
    if (revert)
    {
        return;
    }

    gas := gas - 309;
    if (!__tmp__dead_BrickblockToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 307;
    assume _balance_s1232 >= 0;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1233] >= 0;
    _balance_s1232 := __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1233];
    gas := gas - 5104;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1233] >= 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1233];
    __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1233] := 0;
    __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
       + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1233];
    gas := gas - 20247;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume __tmp__totalSupply_ERC20Basic[this] >= 0;
    assume _balance_s1232 >= 0;
    call __var_71 := sub_SafeMath__fail(this, this, 0, __tmp__totalSupply_ERC20Basic[this], _balance_s1232);
    if (revert)
    {
        return;
    }

    __tmp__totalSupply_ERC20Basic[this] := __var_71;
    assume __var_71 >= 0;
    gas := gas - 10;
    __ret_0_ := true;
    return;
}



implementation evacuate_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _user_s1233: Ref)
   returns (__ret_0_: bool)
{
  var _balance_s1232: int;
  var __var_71: int;

    gas := gas - 3;
    call only_pre__success(this, msgsender_MSG, msgvalue_MSG, successorAddress_BrickblockToken[this]);
    if (revert)
    {
        return;
    }

    gas := gas - 309;
    if (!dead_BrickblockToken[this])
    {
        revert := true;
        return;
    }

    gas := gas - 307;
    assume _balance_s1232 >= 0;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_user_s1233] >= 0;
    _balance_s1232 := M_Ref_int_balances0[balances_BasicToken[this]][_user_s1233];
    gas := gas - 5104;
    assume M_Ref_int_balances0[balances_BasicToken[this]][_user_s1233] >= 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       - M_Ref_int_balances0[balances_BasicToken[this]][_user_s1233];
    M_Ref_int_balances0[balances_BasicToken[this]][_user_s1233] := 0;
    sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
       + M_Ref_int_balances0[balances_BasicToken[this]][_user_s1233];
    gas := gas - 20247;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume totalSupply_ERC20Basic[this] >= 0;
    assume _balance_s1232 >= 0;
    call __var_71 := sub_SafeMath__success(this, this, 0, totalSupply_ERC20Basic[this], _balance_s1232);
    if (revert)
    {
        return;
    }

    totalSupply_ERC20Basic[this] := __var_71;
    assume __var_71 >= 0;
    assert {:EventEmitted "Evacuated_BrickblockToken"} true;
    gas := gas - 10;
    __ret_0_ := true;
    return;
}



implementation upgrade_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _successorAddress_s1275: Ref)
   returns (__ret_0_: bool)
{
  var __var_72: Ref;
  var __var_73: bool;

    gas := gas - 3;
    call onlyOwner_pre__fail(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_72 := null;
    if (!(_successorAddress_s1275 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 27;
    call __var_73 := isContract_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _successorAddress_s1275);
    if (!__var_73)
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    __tmp__successorAddress_BrickblockToken[this] := _successorAddress_s1275;
    gas := gas - 20317;
    __tmp__dead_BrickblockToken[this] := true;
    gas := gas - 20317;
    __tmp__paused_Pausable[this] := true;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation upgrade_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _successorAddress_s1275: Ref)
   returns (__ret_0_: bool)
{
  var __var_72: Ref;
  var __var_73: bool;

    gas := gas - 3;
    call onlyOwner_pre__success(this, msgsender_MSG, msgvalue_MSG);
    if (revert)
    {
        return;
    }

    gas := gas - 44;
    __var_72 := null;
    if (!(_successorAddress_s1275 != null))
    {
        revert := true;
        return;
    }

    gas := gas - 27;
    call __var_73 := isContract_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _successorAddress_s1275);
    if (!__var_73)
    {
        revert := true;
        return;
    }

    gas := gas - 20267;
    successorAddress_BrickblockToken[this] := _successorAddress_s1275;
    gas := gas - 20317;
    dead_BrickblockToken[this] := true;
    gas := gas - 20317;
    paused_Pausable[this] := true;
    assert {:EventEmitted "Upgrade_BrickblockToken"} true;
    gas := gas - 8;
    __ret_0_ := true;
    return;
}



implementation rescue_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_74: Ref;
  var _user_s1347: Ref;
  var predecessor_s1347: Ref;
  var _oldBalance_s1347: int;
  var __var_75: int;
  var __var_76: int;
  var __var_77: int;
  var __var_78: bool;
  var __var_79: int;

    gas := gas - 3;
    gas := gas - 280;
    __var_74 := null;
    if (!(__tmp__predecessorAddress_BrickblockToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    _user_s1347 := msgsender_MSG;
    gas := gas - 247;
    assume __tmp__DType[__tmp__predecessorAddress_BrickblockToken[this]] == BrickblockToken;
    predecessor_s1347 := __tmp__predecessorAddress_BrickblockToken[this];
    gas := gas - 3102;
    assume _oldBalance_s1347 >= 0;
    if (__tmp__DType[predecessor_s1347] == BrickblockToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__fail(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[predecessor_s1347] == PausableToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__fail(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[predecessor_s1347] == StandardToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__fail(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[predecessor_s1347] == ERC20)
    {
        call _oldBalance_s1347 := balanceOf_ERC20Basic(predecessor_s1347, this, __var_75, _user_s1347);
    }
    else if (__tmp__DType[predecessor_s1347] == BasicToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__fail(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[predecessor_s1347] == ERC20Basic)
    {
        call _oldBalance_s1347 := balanceOf_ERC20Basic(predecessor_s1347, this, __var_75, _user_s1347);
    }
    else
    {
        assume false;
    }

    _oldBalance_s1347 := _oldBalance_s1347;
    gas := gas - 9;
    assume _oldBalance_s1347 >= 0;
    if (_oldBalance_s1347 > 0)
    {
        gas := gas - 20439;
        assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1347] >= 0;
        assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1347] >= 0;
        assume _oldBalance_s1347 >= 0;
        call __var_76 := add_SafeMath__fail(this, this, 0, __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1347], _oldBalance_s1347);
        if (revert)
        {
            return;
        }

        __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
           - __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1347];
        __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1347] := __var_76;
        __tmp__sum_balances0[__tmp__balances_BasicToken[this]] := __tmp__sum_balances0[__tmp__balances_BasicToken[this]]
           + __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][_user_s1347];
        assume __var_76 >= 0;
        gas := gas - 20247;
        assume __tmp__totalSupply_ERC20Basic[this] >= 0;
        assume __tmp__totalSupply_ERC20Basic[this] >= 0;
        assume _oldBalance_s1347 >= 0;
        call __var_77 := add_SafeMath__fail(this, this, 0, __tmp__totalSupply_ERC20Basic[this], _oldBalance_s1347);
        if (revert)
        {
            return;
        }

        __tmp__totalSupply_ERC20Basic[this] := __var_77;
        assume __var_77 >= 0;
        gas := gas - 37099;
        call __var_78 := evacuate_BrickblockToken__fail(predecessor_s1347, this, __var_79, _user_s1347);
        if (revert)
        {
            return;
        }

        gas := gas - 25;
        __ret_0_ := true;
        return;
    }

    gas := gas - 14;
    __ret_0_ := false;
    return;
}



implementation rescue_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_74: Ref;
  var _user_s1347: Ref;
  var predecessor_s1347: Ref;
  var _oldBalance_s1347: int;
  var __var_75: int;
  var __var_76: int;
  var __var_77: int;
  var __var_78: bool;
  var __var_79: int;

    gas := gas - 3;
    gas := gas - 280;
    __var_74 := null;
    if (!(predecessorAddress_BrickblockToken[this] != null))
    {
        revert := true;
        return;
    }

    gas := gas - 10;
    _user_s1347 := msgsender_MSG;
    gas := gas - 247;
    assume DType[predecessorAddress_BrickblockToken[this]] == BrickblockToken;
    predecessor_s1347 := predecessorAddress_BrickblockToken[this];
    gas := gas - 3102;
    assume _oldBalance_s1347 >= 0;
    if (DType[predecessor_s1347] == BrickblockToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__success(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (DType[predecessor_s1347] == PausableToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__success(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (DType[predecessor_s1347] == StandardToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__success(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (DType[predecessor_s1347] == ERC20)
    {
        call _oldBalance_s1347 := balanceOf_ERC20Basic(predecessor_s1347, this, __var_75, _user_s1347);
    }
    else if (DType[predecessor_s1347] == BasicToken)
    {
        call _oldBalance_s1347 := balanceOf_BasicToken__success(predecessor_s1347, this, __var_75, _user_s1347);
        if (revert)
        {
            return;
        }
    }
    else if (DType[predecessor_s1347] == ERC20Basic)
    {
        call _oldBalance_s1347 := balanceOf_ERC20Basic(predecessor_s1347, this, __var_75, _user_s1347);
    }
    else
    {
        assume false;
    }

    _oldBalance_s1347 := _oldBalance_s1347;
    gas := gas - 9;
    assume _oldBalance_s1347 >= 0;
    if (_oldBalance_s1347 > 0)
    {
        gas := gas - 20439;
        assume M_Ref_int_balances0[balances_BasicToken[this]][_user_s1347] >= 0;
        assume M_Ref_int_balances0[balances_BasicToken[this]][_user_s1347] >= 0;
        assume _oldBalance_s1347 >= 0;
        call __var_76 := add_SafeMath__success(this, this, 0, M_Ref_int_balances0[balances_BasicToken[this]][_user_s1347], _oldBalance_s1347);
        if (revert)
        {
            return;
        }

        sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
           - M_Ref_int_balances0[balances_BasicToken[this]][_user_s1347];
        M_Ref_int_balances0[balances_BasicToken[this]][_user_s1347] := __var_76;
        sum_balances0[balances_BasicToken[this]] := sum_balances0[balances_BasicToken[this]]
           + M_Ref_int_balances0[balances_BasicToken[this]][_user_s1347];
        assume __var_76 >= 0;
        gas := gas - 20247;
        assume totalSupply_ERC20Basic[this] >= 0;
        assume totalSupply_ERC20Basic[this] >= 0;
        assume _oldBalance_s1347 >= 0;
        call __var_77 := add_SafeMath__success(this, this, 0, totalSupply_ERC20Basic[this], _oldBalance_s1347);
        if (revert)
        {
            return;
        }

        totalSupply_ERC20Basic[this] := __var_77;
        assume __var_77 >= 0;
        gas := gas - 37099;
        call __var_78 := evacuate_BrickblockToken__success(predecessor_s1347, this, __var_79, _user_s1347);
        if (revert)
        {
            return;
        }

        assert {:EventEmitted "Rescued_BrickblockToken"} true;
        gas := gas - 25;
        __ret_0_ := true;
        return;
    }

    gas := gas - 14;
    __ret_0_ := false;
    return;
}



implementation FallbackMethod_BrickblockToken__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 6;
    revert := true;
    return;
}



implementation FallbackMethod_BrickblockToken__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 6;
    revert := true;
    return;
}



implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
    if (__tmp__DType[to] == BrickblockToken)
    {
        call FallbackMethod_BrickblockToken__fail(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (__tmp__DType[to] == PausableToken)
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
    else if (__tmp__DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (__tmp__DType[to] == Ownable)
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
    if (DType[to] == BrickblockToken)
    {
        call FallbackMethod_BrickblockToken__success(to, from, amount);
        if (revert)
        {
            return;
        }
    }
    else if (DType[to] == PausableToken)
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
    else if (DType[to] == Pausable)
    {
        assume amount == 0;
    }
    else if (DType[to] == Ownable)
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
  var __snap___tmp__Length: [Ref]int;
  var __snap___tmp__now: int;
  var __snap___tmp__owner_Ownable: [Ref]Ref;
  var __snap___tmp__paused_Pausable: [Ref]bool;
  var __snap___tmp__totalSupply_ERC20Basic: [Ref]int;
  var __snap___tmp__balances_BasicToken: [Ref]Ref;
  var __snap___tmp__allowed_StandardToken: [Ref]Ref;
  var __snap___tmp__name_BrickblockToken: [Ref]int;
  var __snap___tmp__symbol_BrickblockToken: [Ref]int;
  var __snap___tmp__initialSupply_BrickblockToken: [Ref]int;
  var __snap___tmp__contributorsShare_BrickblockToken: [Ref]int;
  var __snap___tmp__companyShare_BrickblockToken: [Ref]int;
  var __snap___tmp__bonusShare_BrickblockToken: [Ref]int;
  var __snap___tmp__decimals_BrickblockToken: [Ref]int;
  var __snap___tmp__bonusDistributionAddress_BrickblockToken: [Ref]Ref;
  var __snap___tmp__fountainContractAddress_BrickblockToken: [Ref]Ref;
  var __snap___tmp__successorAddress_BrickblockToken: [Ref]Ref;
  var __snap___tmp__predecessorAddress_BrickblockToken: [Ref]Ref;
  var __snap___tmp__tokenSaleActive_BrickblockToken: [Ref]bool;
  var __snap___tmp__dead_BrickblockToken: [Ref]bool;

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
        __snap___tmp__Length := __tmp__Length;
        __snap___tmp__now := __tmp__now;
        __snap___tmp__owner_Ownable := __tmp__owner_Ownable;
        __snap___tmp__paused_Pausable := __tmp__paused_Pausable;
        __snap___tmp__totalSupply_ERC20Basic := __tmp__totalSupply_ERC20Basic;
        __snap___tmp__balances_BasicToken := __tmp__balances_BasicToken;
        __snap___tmp__allowed_StandardToken := __tmp__allowed_StandardToken;
        __snap___tmp__name_BrickblockToken := __tmp__name_BrickblockToken;
        __snap___tmp__symbol_BrickblockToken := __tmp__symbol_BrickblockToken;
        __snap___tmp__initialSupply_BrickblockToken := __tmp__initialSupply_BrickblockToken;
        __snap___tmp__contributorsShare_BrickblockToken := __tmp__contributorsShare_BrickblockToken;
        __snap___tmp__companyShare_BrickblockToken := __tmp__companyShare_BrickblockToken;
        __snap___tmp__bonusShare_BrickblockToken := __tmp__bonusShare_BrickblockToken;
        __snap___tmp__decimals_BrickblockToken := __tmp__decimals_BrickblockToken;
        __snap___tmp__bonusDistributionAddress_BrickblockToken := __tmp__bonusDistributionAddress_BrickblockToken;
        __snap___tmp__fountainContractAddress_BrickblockToken := __tmp__fountainContractAddress_BrickblockToken;
        __snap___tmp__successorAddress_BrickblockToken := __tmp__successorAddress_BrickblockToken;
        __snap___tmp__predecessorAddress_BrickblockToken := __tmp__predecessorAddress_BrickblockToken;
        __snap___tmp__tokenSaleActive_BrickblockToken := __tmp__tokenSaleActive_BrickblockToken;
        __snap___tmp__dead_BrickblockToken := __tmp__dead_BrickblockToken;
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
        __tmp__Length := __snap___tmp__Length;
        __tmp__now := __snap___tmp__now;
        __tmp__owner_Ownable := __snap___tmp__owner_Ownable;
        __tmp__paused_Pausable := __snap___tmp__paused_Pausable;
        __tmp__totalSupply_ERC20Basic := __snap___tmp__totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := __snap___tmp__balances_BasicToken;
        __tmp__allowed_StandardToken := __snap___tmp__allowed_StandardToken;
        __tmp__name_BrickblockToken := __snap___tmp__name_BrickblockToken;
        __tmp__symbol_BrickblockToken := __snap___tmp__symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := __snap___tmp__initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := __snap___tmp__contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := __snap___tmp__companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := __snap___tmp__bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := __snap___tmp__decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := __snap___tmp__bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := __snap___tmp__fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := __snap___tmp__successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := __snap___tmp__predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := __snap___tmp__tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := __snap___tmp__dead_BrickblockToken;
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
        __tmp__Length := Length;
        __tmp__now := now;
        __tmp__owner_Ownable := owner_Ownable;
        __tmp__paused_Pausable := paused_Pausable;
        __tmp__totalSupply_ERC20Basic := totalSupply_ERC20Basic;
        __tmp__balances_BasicToken := balances_BasicToken;
        __tmp__allowed_StandardToken := allowed_StandardToken;
        __tmp__name_BrickblockToken := name_BrickblockToken;
        __tmp__symbol_BrickblockToken := symbol_BrickblockToken;
        __tmp__initialSupply_BrickblockToken := initialSupply_BrickblockToken;
        __tmp__contributorsShare_BrickblockToken := contributorsShare_BrickblockToken;
        __tmp__companyShare_BrickblockToken := companyShare_BrickblockToken;
        __tmp__bonusShare_BrickblockToken := bonusShare_BrickblockToken;
        __tmp__decimals_BrickblockToken := decimals_BrickblockToken;
        __tmp__bonusDistributionAddress_BrickblockToken := bonusDistributionAddress_BrickblockToken;
        __tmp__fountainContractAddress_BrickblockToken := fountainContractAddress_BrickblockToken;
        __tmp__successorAddress_BrickblockToken := successorAddress_BrickblockToken;
        __tmp__predecessorAddress_BrickblockToken := predecessorAddress_BrickblockToken;
        __tmp__tokenSaleActive_BrickblockToken := tokenSaleActive_BrickblockToken;
        __tmp__dead_BrickblockToken := dead_BrickblockToken;
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
    gas := gas - 4416;
    if (!(msgsender_MSG == __tmp__owner_Ownable[this]))
    {
        revert := true;
        return;
    }
}



implementation onlyOwner_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 4416;
    if (!(msgsender_MSG == owner_Ownable[this]))
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
    gas := gas - 1236;
    if (!__tmp__paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation whenPaused_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
    gas := gas - 1236;
    if (!paused_Pausable[this])
    {
        revert := true;
        return;
    }
}



implementation only_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, caller_s733: Ref)
{
    gas := gas - 40;
    if (!(msgsender_MSG == caller_s733))
    {
        revert := true;
        return;
    }
}



implementation only_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, caller_s733: Ref)
{
    gas := gas - 40;
    if (!(msgsender_MSG == caller_s733))
    {
        revert := true;
        return;
    }
}



implementation supplyAvailable_pre__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s759: int)
{
  var __var_33: int;
  var __var_34: int;
  var __var_35: Ref;

    gas := gas - 420;
    assume __var_33 >= 0;
    assume __var_34 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] >= 0;
    __var_35 := this;
    assume __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this] >= 0;
    call __var_34 := sub_SafeMath__fail(this, this, 0, __tmp__initialSupply_BrickblockToken[this], __tmp__M_Ref_int_balances0[__tmp__balances_BasicToken[this]][this]);
    if (revert)
    {
        return;
    }

    assume __var_34 >= 0;
    assume _value_s759 >= 0;
    call __var_33 := add_SafeMath__fail(this, this, 0, __var_34, _value_s759);
    if (revert)
    {
        return;
    }

    assume __var_33 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] * 51 >= 0;
    assume __tmp__initialSupply_BrickblockToken[this] * 51 / 100 >= 0;
    if (!(__var_33 <= __tmp__initialSupply_BrickblockToken[this] * 51 / 100))
    {
        revert := true;
        return;
    }
}



implementation supplyAvailable_pre__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _value_s759: int)
{
  var __var_33: int;
  var __var_34: int;
  var __var_35: Ref;

    gas := gas - 420;
    assume __var_33 >= 0;
    assume __var_34 >= 0;
    assume initialSupply_BrickblockToken[this] >= 0;
    __var_35 := this;
    assume M_Ref_int_balances0[balances_BasicToken[this]][this] >= 0;
    call __var_34 := sub_SafeMath__success(this, this, 0, initialSupply_BrickblockToken[this], M_Ref_int_balances0[balances_BasicToken[this]][this]);
    if (revert)
    {
        return;
    }

    assume __var_34 >= 0;
    assume _value_s759 >= 0;
    call __var_33 := add_SafeMath__success(this, this, 0, __var_34, _value_s759);
    if (revert)
    {
        return;
    }

    assume __var_33 >= 0;
    assume initialSupply_BrickblockToken[this] >= 0;
    assume initialSupply_BrickblockToken[this] * 51 >= 0;
    assume initialSupply_BrickblockToken[this] * 51 / 100 >= 0;
    if (!(__var_33 <= initialSupply_BrickblockToken[this] * 51 / 100))
    {
        revert := true;
        return;
    }
}



implementation CorralChoice_Ownable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s54: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s54;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
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
       || DType[this] == Pausable
       || DType[this] == PausableToken
       || DType[this] == BrickblockToken;
    gas := gas - 53000;
    call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Ownable(this);
    }
}



implementation CorralChoice_Pausable(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s54: Ref;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s54;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
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
       || DType[this] == BrickblockToken;
    gas := gas - 53000;
    call Pausable_Pausable__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_Pausable(this);
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
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
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
  var who_s166: Ref;
  var __ret_0_balanceOf: int;
  var to_s175: Ref;
  var value_s175: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc who_s166;
    havoc __ret_0_balanceOf;
    havoc to_s175;
    havoc value_s175;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s166);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s175, value_s175);
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
       || DType[this] == PausableToken
       || DType[this] == BrickblockToken;
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
  var _owner_s265: Ref;
  var balance_s265: int;
  var _to_s253: Ref;
  var _value_s253: int;
  var __ret_0_transfer: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s265;
    havoc balance_s265;
    havoc _to_s253;
    havoc _value_s253;
    havoc __ret_0_transfer;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s265 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s265);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s253, _value_s253);
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
       || DType[this] == PausableToken
       || DType[this] == BrickblockToken;
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
  var who_s166: Ref;
  var __ret_0_balanceOf: int;
  var to_s175: Ref;
  var value_s175: int;
  var __ret_0_transfer: bool;
  var owner_s277: Ref;
  var spender_s277: Ref;
  var __ret_0_allowance: int;
  var from_s288: Ref;
  var to_s288: Ref;
  var value_s288: int;
  var __ret_0_transferFrom: bool;
  var spender_s297: Ref;
  var value_s297: int;
  var __ret_0_approve: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc who_s166;
    havoc __ret_0_balanceOf;
    havoc to_s175;
    havoc value_s175;
    havoc __ret_0_transfer;
    havoc owner_s277;
    havoc spender_s277;
    havoc __ret_0_allowance;
    havoc from_s288;
    havoc to_s288;
    havoc value_s288;
    havoc __ret_0_transferFrom;
    havoc spender_s297;
    havoc value_s297;
    havoc __ret_0_approve;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_balanceOf := balanceOf_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, who_s166);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_ERC20Basic(this, msgsender_MSG, msgvalue_MSG, to_s175, value_s175);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_ERC20(this, msgsender_MSG, msgvalue_MSG, owner_s277, spender_s277);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_ERC20(this, msgsender_MSG, msgvalue_MSG, from_s288, to_s288, value_s288);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_ERC20(this, msgsender_MSG, msgvalue_MSG, spender_s297, value_s297);
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
       || DType[this] == PausableToken
       || DType[this] == BrickblockToken;
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
  var _owner_s265: Ref;
  var balance_s265: int;
  var _to_s253: Ref;
  var _value_s253: int;
  var __ret_0_transfer: bool;
  var _owner_s446: Ref;
  var _spender_s446: Ref;
  var __ret_0_allowance: int;
  var _from_s402: Ref;
  var _to_s402: Ref;
  var _value_s402: int;
  var __ret_0_transferFrom: bool;
  var _spender_s430: Ref;
  var _value_s430: int;
  var __ret_0_approve: bool;
  var _spender_s487: Ref;
  var _addedValue_s487: int;
  var __ret_0_increaseApproval: bool;
  var _spender_s547: Ref;
  var _subtractedValue_s547: int;
  var __ret_0_decreaseApproval: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc _owner_s265;
    havoc balance_s265;
    havoc _to_s253;
    havoc _value_s253;
    havoc __ret_0_transfer;
    havoc _owner_s446;
    havoc _spender_s446;
    havoc __ret_0_allowance;
    havoc _from_s402;
    havoc _to_s402;
    havoc _value_s402;
    havoc __ret_0_transferFrom;
    havoc _spender_s430;
    havoc _value_s430;
    havoc __ret_0_approve;
    havoc _spender_s487;
    havoc _addedValue_s487;
    havoc __ret_0_increaseApproval;
    havoc _spender_s547;
    havoc _subtractedValue_s547;
    havoc __ret_0_decreaseApproval;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s265 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s265);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_BasicToken(this, msgsender_MSG, msgvalue_MSG, _to_s253, _value_s253);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s446, _spender_s446);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_StandardToken(this, msgsender_MSG, msgvalue_MSG, _from_s402, _to_s402, _value_s402);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s430, _value_s430);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_increaseApproval := increaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s487, _addedValue_s487);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_decreaseApproval := decreaseApproval_StandardToken(this, msgsender_MSG, msgvalue_MSG, _spender_s547, _subtractedValue_s547);
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
       || DType[this] == BrickblockToken;
    gas := gas - 53000;
    call StandardToken_StandardToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_StandardToken(this);
    }
}



implementation CorralChoice_PausableToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s54: Ref;
  var _owner_s265: Ref;
  var balance_s265: int;
  var _to_s570: Ref;
  var _value_s570: int;
  var __ret_0_transfer: bool;
  var _owner_s446: Ref;
  var _spender_s446: Ref;
  var __ret_0_allowance: int;
  var _from_s591: Ref;
  var _to_s591: Ref;
  var _value_s591: int;
  var __ret_0_transferFrom: bool;
  var _spender_s609: Ref;
  var _value_s609: int;
  var __ret_0_approve: bool;
  var _spender_s627: Ref;
  var _addedValue_s627: int;
  var success_s627: bool;
  var _spender_s645: Ref;
  var _subtractedValue_s645: int;
  var success_s645: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s54;
    havoc _owner_s265;
    havoc balance_s265;
    havoc _to_s570;
    havoc _value_s570;
    havoc __ret_0_transfer;
    havoc _owner_s446;
    havoc _spender_s446;
    havoc __ret_0_allowance;
    havoc _from_s591;
    havoc _to_s591;
    havoc _value_s591;
    havoc __ret_0_transferFrom;
    havoc _spender_s609;
    havoc _value_s609;
    havoc __ret_0_approve;
    havoc _spender_s627;
    havoc _addedValue_s627;
    havoc success_s627;
    havoc _spender_s645;
    havoc _subtractedValue_s645;
    havoc success_s645;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s265 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s265);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s446, _spender_s446);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s627 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s645 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
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
    assume DType[this] == PausableToken || DType[this] == BrickblockToken;
    gas := gas - 53000;
    call PausableToken_PausableToken__success(this, msgsender_MSG, msgvalue_MSG);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_PausableToken(this);
    }
}



implementation CorralChoice_BrickblockToken(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s54: Ref;
  var _owner_s265: Ref;
  var balance_s265: int;
  var _to_s570: Ref;
  var _value_s570: int;
  var __ret_0_transfer: bool;
  var _owner_s446: Ref;
  var _spender_s446: Ref;
  var __ret_0_allowance: int;
  var _from_s591: Ref;
  var _to_s591: Ref;
  var _value_s591: int;
  var __ret_0_transferFrom: bool;
  var _spender_s609: Ref;
  var _value_s609: int;
  var __ret_0_approve: bool;
  var _spender_s627: Ref;
  var _addedValue_s627: int;
  var success_s627: bool;
  var _spender_s645: Ref;
  var _subtractedValue_s645: int;
  var success_s645: bool;
  var _predecessorAddress_s862: Ref;
  var _newAddress_s921: Ref;
  var __ret_0_changeBonusDistributionAddress: bool;
  var _newAddress_s957: Ref;
  var __ret_0_changeFountainContractAddress: bool;
  var _contributor_s1028: Ref;
  var _value_s1028: int;
  var __ret_0_distributeTokens: bool;
  var __ret_0_finalizeTokenSale: bool;
  var _user_s1233: Ref;
  var __ret_0_evacuate: bool;
  var _successorAddress_s1275: Ref;
  var __ret_0_upgrade: bool;
  var __ret_0_rescue: bool;
  var tmpNow: int;

    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s54;
    havoc _owner_s265;
    havoc balance_s265;
    havoc _to_s570;
    havoc _value_s570;
    havoc __ret_0_transfer;
    havoc _owner_s446;
    havoc _spender_s446;
    havoc __ret_0_allowance;
    havoc _from_s591;
    havoc _to_s591;
    havoc _value_s591;
    havoc __ret_0_transferFrom;
    havoc _spender_s609;
    havoc _value_s609;
    havoc __ret_0_approve;
    havoc _spender_s627;
    havoc _addedValue_s627;
    havoc success_s627;
    havoc _spender_s645;
    havoc _subtractedValue_s645;
    havoc success_s645;
    havoc _predecessorAddress_s862;
    havoc _newAddress_s921;
    havoc __ret_0_changeBonusDistributionAddress;
    havoc _newAddress_s957;
    havoc __ret_0_changeFountainContractAddress;
    havoc _contributor_s1028;
    havoc _value_s1028;
    havoc __ret_0_distributeTokens;
    havoc __ret_0_finalizeTokenSale;
    havoc _user_s1233;
    havoc __ret_0_evacuate;
    havoc _successorAddress_s1275;
    havoc __ret_0_upgrade;
    havoc __ret_0_rescue;
    havoc tmpNow;
    havoc gas;
    assume gas > 4000000 && gas <= 8000000;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != Pausable;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != ERC20Basic;
    assume DType[msgsender_MSG] != BasicToken;
    assume DType[msgsender_MSG] != ERC20;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != PausableToken;
    assume DType[msgsender_MSG] != BrickblockToken;
    Alloc[msgsender_MSG] := true;
    if (choice == 17)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s54);
    }
    else if (choice == 16)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call pause_Pausable(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 15)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call unpause_BrickblockToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 14)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call balance_s265 := balanceOf_BasicToken(this, msgsender_MSG, msgvalue_MSG, _owner_s265);
    }
    else if (choice == 13)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transfer := transfer_PausableToken(this, msgsender_MSG, msgvalue_MSG, _to_s570, _value_s570);
    }
    else if (choice == 12)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_allowance := allowance_StandardToken(this, msgsender_MSG, msgvalue_MSG, _owner_s446, _spender_s446);
    }
    else if (choice == 11)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_transferFrom := transferFrom_PausableToken(this, msgsender_MSG, msgvalue_MSG, _from_s591, _to_s591, _value_s591);
    }
    else if (choice == 10)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_approve := approve_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s609, _value_s609);
    }
    else if (choice == 9)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s627 := increaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s627, _addedValue_s627);
    }
    else if (choice == 8)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call success_s645 := decreaseApproval_PausableToken(this, msgsender_MSG, msgvalue_MSG, _spender_s645, _subtractedValue_s645);
    }
    else if (choice == 7)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_changeBonusDistributionAddress := changeBonusDistributionAddress_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _newAddress_s921);
    }
    else if (choice == 6)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_changeFountainContractAddress := changeFountainContractAddress_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _newAddress_s957);
    }
    else if (choice == 5)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_distributeTokens := distributeTokens_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _contributor_s1028, _value_s1028);
    }
    else if (choice == 4)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_finalizeTokenSale := finalizeTokenSale_BrickblockToken(this, msgsender_MSG, msgvalue_MSG);
    }
    else if (choice == 3)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_evacuate := evacuate_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _user_s1233);
    }
    else if (choice == 2)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_upgrade := upgrade_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _successorAddress_s1275);
    }
    else if (choice == 1)
    {
        gas := gas - 21000;
        assume msgvalue_MSG == 0;
        call __ret_0_rescue := rescue_BrickblockToken(this, msgsender_MSG, msgvalue_MSG);
    }
}



implementation main()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _predecessorAddress_s862: Ref;

    assume null == 0;
    call this := FreshRefGenerator__success();
    assume now >= 0;
    assume DType[this] == BrickblockToken;
    gas := gas - 53000;
    call BrickblockToken_BrickblockToken(this, msgsender_MSG, msgvalue_MSG, _predecessorAddress_s862);
    assume !revert && gas >= 0;
    while (true)
    {
        call CorralChoice_BrickblockToken(this);
    }
}


